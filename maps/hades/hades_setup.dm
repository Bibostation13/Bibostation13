/datum/map/hades/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/hades/get_map_info()
	. = list()
	. +=  "You're aboard the " + replacetext("<b>[station_name]</b>", "\improper", "") + ", a missing-in-action Expeditionary Corps starship. After being attacked by an Ascent vessel several months ago, the vessel's bluespace drive allowing it to jump massive distances was destroyed, leaving it stranded."
	. +=  "The vessel is staffed with a mix of SCG government personnel from the Expeditionary Corps and Fleet, exchange personnel from other alien governments, and hired contractors."
	. +=  "This area of space is uncharted, away from any recognized government's territory. Communications with the SCG are few and far between, and morale is at an all-time low as the SEV Hades attempts to limp back home through the stars."
	return jointext(., "<br>")

/datum/map/hades/send_welcome()
	var/obj/effect/overmap/visitable/ship/hades = SSshuttle.ship_by_type(/obj/effect/overmap/visitable/ship/hades)

	var/welcome_text = "<center><img src = sollogo.png /><br /><font size = 3><b>SEV Hades</b> Sensor Readings:</font><br>"
	welcome_text += "Report generated on [stationdate2text()] at [stationtime2text()]</center><br /><br />"
	welcome_text += "<hr>Current system:<br /><b>[hades ? system_name : "Unknown"]</b><br /><br>"

	if (hades) //If the overmap is disabled, it's possible for there to be no hades.
		var/list/space_things = list()
		welcome_text += "Current Coordinates:<br /><b>[hades.x]:[hades.y]</b><br /><br>"
		welcome_text += "Next system targeted for jump:<br /><b>[generate_system_name()]</b><br /><br>"
		welcome_text += "Travel time to Sol:<br /><b>[rand(15,45)] days</b><br /><br>"
		welcome_text += "Time since last port visit:<br /><b>[rand(60,180)] days</b><br /><hr>"
		welcome_text += "Scan results show the following points of interest:<br />"

		for(var/zlevel in map_sectors)
			var/obj/effect/overmap/visitable/O = map_sectors[zlevel]
			if(O.name == hades.name)
				continue
			if(istype(O, /obj/effect/overmap/visitable/ship/landable)) //Don't show shuttles
				continue
			if (O.hide_from_reports)
				continue
			space_things |= O

		var/list/distress_calls
		for(var/obj/effect/overmap/visitable/O in space_things)
			var/location_desc = " at present co-ordinates."
			if(O.loc != hades.loc)
				var/bearing = round(90 - Atan2(O.x - hades.x, O.y - hades.y),5) //fucking triangles how do they work
				if(bearing < 0)
					bearing += 360
				location_desc = ", bearing [bearing]."
			if(O.has_distress_beacon)
				LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
			welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

		if(LAZYLEN(distress_calls))
			welcome_text += "<br><b>Distress calls logged:</b><br>[jointext(distress_calls, "<br>")]<br>"
		else
			welcome_text += "<br>No distress calls logged.<br />"
		welcome_text += "<hr>"

	post_comm_message("SEV Hades Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "New [GLOB.using_map.company_name] Update available at all communication consoles.")
