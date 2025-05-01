/datum/round_event_control/antagonist/team/assault_ops
	name = "Assault Operatives"
	roundstart = TRUE

	antag_flag = ROLE_ASSAULT_OPERATIVE
	antag_datum = /datum/antagonist/assault_operative

	weight = 4
	min_players = 35
	tags = list(TAG_CREW_ANTAG, TAG_CHAOTIC, TAG_COMBAT)

	base_antags = 2
	maximum_antags = 5
	maximum_antags_global = 5

	typepath = /datum/round_event/antagonist/team/nukie

	ruleset_lazy_templates = list(LAZY_TEMPLATE_KEY_NUKIEBASE)

/datum/round_event/antagonist/team/assault_operative
	var/datum/job/job_type = /datum/job/assault_operative
	var/required_role = ROLE_ASSAULT_OPERATIVE

	var/datum/assault_operatives/assault_team

/datum/round_event/antagonist/team/assault_operative/candidate_roles_setup(mob/candidate)
	candidate.mind.set_assigned_role(SSjob.get_job_type(job_type))

/datum/round_event/antagonist/team/assault_operative/start()
	for(var/datum/mind/assigned_player in setup_minds)
		if(assigned_player)
			continue
		add_datum_to_mind(assigned_player)
	return TRUE
