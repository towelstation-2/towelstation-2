/datum/job/xenomorph_crew
	title = JOB_XENOMORPH_CREW
	description = "Assist the crew, do not impregnate unwilling crewmembers."
	faction = FACTION_STATION
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Queen"
	spawn_type = /mob/living/carbon/alien/larva
	minimal_player_age = 21
	exp_requirements = 120
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "XENO_CREW"

	display_order = JOB_DISPLAY_ORDER_XENOMORPH_CREW

	departments_list = list(
		/datum/job_department/assistant,
		)
	random_spawns_possible = FALSE
	job_flags = JOB_NEW_PLAYER_JOINABLE | JOB_EQUIP_RANK | JOB_CANNOT_OPEN_SLOTS

/datum/job/xenomorph_crew/get_roundstart_spawn_point()
	if (length(GLOB.start_landmarks_list["Assistant"]))
		return pick(GLOB.start_landmarks_list["Assistant"])
	return ..()

/datum/job/xenomorph_crew/get_latejoin_spawn_point()
	if (length(GLOB.start_landmarks_list["Assistant"]))
		return pick(GLOB.start_landmarks_list["Assistant"])
	return ..()

/datum/job/xenomorph_crew/after_spawn(mob/living/spawned, client/player_client)
	. = ..()
	if(!isalien(spawned))
		return
	spawned.apply_pref_name(/datum/preference/name/xeno_crew, player_client)
