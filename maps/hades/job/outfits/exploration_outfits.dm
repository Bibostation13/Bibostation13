/decl/hierarchy/outfit/job/hades/crew/exploration/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/storage/backpack/explorer
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/storage/backpack/satchel/explorer
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/storage/backpack/messenger/explorer

/decl/hierarchy/outfit/job/hades/crew/exploration/pathfinder
	name = OUTFIT_JOB_NAME("Pathfinder")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/hades/crew/pathfinder)
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/pathfinder

/decl/hierarchy/outfit/job/hades/crew/exploration/explorer
	name = OUTFIT_JOB_NAME("Explorer")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/hades/crew/explorer)
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/exploration

/decl/hierarchy/outfit/job/hades/passenger/pilot
	name = OUTFIT_JOB_NAME("Shuttle Pilot")
	uniform = /obj/item/clothing/under/color/black
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/headset_pilot
	id_types = list(/obj/item/card/id/hades/passenger/research/nt_pilot)
	head = /obj/item/clothing/head/helmet/solgov/pilot

/decl/hierarchy/outfit/job/hades/crew/exploration/pilot
	name = OUTFIT_JOB_NAME("Shuttle Pilot - Expeditionary Corps")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/hades/crew/pilot)
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/headset_pilot

/decl/hierarchy/outfit/job/hades/crew/exploration/pilot/fleet
	name = OUTFIT_JOB_NAME("Shuttle Pilot - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
