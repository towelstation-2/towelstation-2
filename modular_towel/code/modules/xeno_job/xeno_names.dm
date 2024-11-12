#define DEFAULT_XENO_CREW_NAME "Xenomorph"

/datum/preference/name/xeno_crew
	savefile_key = "xeno_crew_name"

	allow_numbers = TRUE
	can_randomize = FALSE

	explanation = "Xenomorph crew name"
	group = "xeno_crew"
	relevant_job = /datum/job/xenomorph_crew

/datum/preference/name/xeno_crew/create_default_value()
	return DEFAULT_XENO_CREW_NAME
