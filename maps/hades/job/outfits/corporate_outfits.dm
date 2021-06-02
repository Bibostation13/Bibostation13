/decl/hierarchy/outfit/job/hades/passenger/research
	hierarchy_type = /decl/hierarchy/outfit/job/hades/passenger/research
	l_ear = /obj/item/device/radio/headset/hadesnanotrasen

/decl/hierarchy/outfit/job/hades/passenger/research/nt_pilot //pending better uniform
	name = OUTFIT_JOB_NAME("Corporate Pilot")
	uniform = /obj/item/clothing/under/rank/ntpilot
	shoes = /obj/item/clothing/shoes/workboots
	l_ear = /obj/item/device/radio/headset/headset_pilot
	id_types = list(/obj/item/card/id/hades/passenger/research/nt_pilot)

/decl/hierarchy/outfit/job/hades/passenger/research/scientist
	name = OUTFIT_JOB_NAME("Scientist - Hades")
	uniform = /obj/item/clothing/under/rank/scientist
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/science
	id_types = list(/obj/item/card/id/hades/passenger/research/scientist)

/decl/hierarchy/outfit/job/hades/passenger/research/scientist/New()
	..()
	BACKPACK_OVERRIDE_RESEARCH

/decl/hierarchy/outfit/job/hades/passenger/research/assist
	name = OUTFIT_JOB_NAME("Research Assistant - Hades")
	uniform = /obj/item/clothing/under/rank/scientist
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/science
	id_types = list(/obj/item/card/id/hades/passenger/research)

/decl/hierarchy/outfit/job/hades/passenger/research/assist/testsubject
	name = OUTFIT_JOB_NAME("Testing Assistant")
	uniform = /obj/item/clothing/under/rank/ntwork