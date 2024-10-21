#define DEFAULT_XENO_CREW_NAME "Default Cyborg Name"

/datum/preference/name/xeno_crew
	savefile_key = "xeno_crew_name"

	allow_numbers = TRUE
	can_randomize = FALSE

	explanation = "Xenomorph crew name"
	group = "bitrunner"
	relevant_job = /datum/job/xenomorph_crew

/datum/preference/name/cyborg/create_default_value()
	return DEFAULT_CYBORG_NAME
