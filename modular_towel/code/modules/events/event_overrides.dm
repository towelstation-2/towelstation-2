/datum/round_event_control/anomaly
	min_players = 15 // Destructive events are 15 player minimum

/datum/round_event_control/bureaucratic_error
	min_players = 5 // Prevents it from firing in the twilight zone times where rounds will go on for like 6 hours

/datum/round_event_control/gravity_generator_blackout
	min_players = 10
	weight = 10 //why is this event so common by default

/datum/round_event_control/grey_tide
	min_players = 15 // For some reason its 5 player default when without an AI, this is on-par with meteors for destruction

/datum/round_event_control/mice_migration
	min_players = 3 // Avoid shafting REALLY low pop

/datum/round_event_control/radiation_leak
	min_players = 10

/datum/round_event_control/radiation_storm
	min_players = 10

/datum/round_event_control/shuttle_catastrophe
	min_players = 5 //prevents twilight zone hour issues

/datum/round_event_control/stray_cargo
	min_players = 2 // random damage, probably best to keep it when we can make sure *someone* is on

/datum/round_event_control/vent_clog
	min_players = 5
