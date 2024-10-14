/datum/chemical_reaction/fermi/enthrall //check this
	results = list(/datum/reagent/fermi/enthrall = 5)
	required_reagents = list(/datum/reagent/consumable/coco = 1, /datum/reagent/bluespace = 1, /datum/reagent/toxin/mindbreaker = 1, /datum/reagent/medicine/psicodine = 1, /datum/reagent/drug/happiness = 1)
	required_catalysts = list(/datum/reagent/blood = 1)
	mix_message = "the reaction gives off a burgundy plume of smoke!"
	//FermiChem vars:
	required_temp 			= 780
	optimal_temp			= 820
	overheat_temp 			= 840
	optimal_ph_min 			= 12
	optimal_ph_max			= 13
	determin_ph_range 		= 2
	//CatalystFact 			= 0
	temp_exponent_factor 	= 0.5
	ph_exponent_factor 		= 4
	thermic_constant 		= 15
	H_ion_release 			= 0.1
	rate_up_lim 			= 1
	purity_min 				= 0.2
	reaction_tags = REACTION_TAG_HARD | REACTION_TAG_EXPLOSIVE | REACTION_TAG_OTHER | REACTION_TAG_DANGEROUS

//Kaboom
/datum/chemical_reaction/fermi/enthrall/overheated(datum/reagents/holder, datum/equilibrium/equilibrium, step_volume_added)
	. = ..()
	enthrall_explosion(holder, equilibrium.reacted_vol)

/datum/chemical_reaction/fermi/enthrall/overly_impure(datum/reagents/holder, datum/equilibrium/equilibrium, step_volume_added)
	. = ..()
	enthrall_explosion(holder, equilibrium.reacted_vol)

/datum/chemical_reaction/fermi/enthrall/reaction_finish(datum/reagents/holder, atom/my_atom)
	var/datum/reagent/blood/B = locate(/datum/reagent/blood) in holder.reagent_list
	var/datum/reagent/fermi/enthrall/E = locate(/datum/reagent/fermi/enthrall) in holder.reagent_list
	if(!B || !E)
		return
	if(!B.data)
		my_atom.visible_message("<span class='warning'>The reaction splutters and fails to react properly.</span>") //Just in case
		E.purity = 0
		return
	if (B.data["gender"] == "female")
		E.data["creatorGender"] = "Mistress"
		E.creatorGender = "Mistress"
	else
		E.data["creatorGender"] = "Master"
		E.creatorGender = "Master"
	E.data["creatorName"] = B.data["real_name"]
	E.creatorName = B.data["real_name"]
	E.data["creatorID"] = B.data["ckey"]
	E.creatorID = B.data["ckey"]

//So slimes can play too.
/datum/chemical_reaction/fermi/enthrall/slime
	required_catalysts = list(/datum/reagent/toxin/slimejelly = 1)

/datum/chemical_reaction/fermi/enthrall/slime/reaction_finish(datum/reagents/holder, atom/my_atom)
	var/datum/reagent/toxin/slimejelly/B = locate(/datum/reagent/toxin/slimejelly) in holder.reagent_list//The one line change.
	var/datum/reagent/fermi/enthrall/E = locate(/datum/reagent/fermi/enthrall) in holder.reagent_list
	if(!B || !E)
		return
	if(!B.data)
		my_atom.visible_message("<span class='warning'>The reaction splutters and fails to react properly.</span>") //Just in case
		E.purity = 0
		return
	if (B.data["gender"] == "female")
		E.data["creatorGender"] = "Mistress"
		E.creatorGender = "Mistress"
	else
		E.data["creatorGender"] = "Master"
		E.creatorGender = "Master"
	E.data["creatorName"] = B.data["real_name"]
	E.creatorName = B.data["real_name"]
	E.data["creatorID"] = B.data["ckey"]
	E.creatorID = B.data["ckey"]

//Podpeople
/datum/chemical_reaction/fermi/enthrall/pod
	required_catalysts = list(/datum/reagent/water = 1)

/datum/chemical_reaction/fermi/enthrall/pod/reaction_finish(datum/reagents/holder, atom/my_atom)
	var/datum/reagent/water/B = locate(/datum/reagent/water) in holder.reagent_list//The one line change.
	var/datum/reagent/fermi/enthrall/E = locate(/datum/reagent/fermi/enthrall) in holder.reagent_list
	if(!B || !E)
		return
	if(!B.data)
		my_atom.visible_message("<span class='warning'>The reaction splutters and fails to react properly.</span>") //Just in case
		E.purity = 0
		return
	if (B.data["gender"] == "female")
		E.data["creatorGender"] = "Mistress"
		E.creatorGender = "Mistress"
	else
		E.data["creatorGender"] = "Master"
		E.creatorGender = "Master"
	E.data["creatorName"] = B.data["real_name"]
	E.creatorName = B.data["real_name"]
	E.data["creatorID"] = B.data["ckey"]
	E.creatorID = B.data["ckey"]

//Ethereals
/datum/chemical_reaction/fermi/enthrall/ethereal
	required_catalysts = list(/datum/reagent/consumable/liquidelectricity = 1)

/datum/chemical_reaction/fermi/enthrall/ethereal/reaction_finish(datum/reagents/holder, atom/my_atom)
	var/datum/reagent/consumable/liquidelectricity/B = locate(/datum/reagent/consumable/liquidelectricity) in holder.reagent_list//The one line change.
	var/datum/reagent/fermi/enthrall/E = locate(/datum/reagent/fermi/enthrall) in holder.reagent_list
	if(!B || !E)
		return
	if(!B.data)
		my_atom.visible_message("<span class='warning'>The reaction splutters and fails to react properly.</span>") //Just in case
		E.purity = 0
		return
	if (B.data["gender"] == "female")
		E.data["creatorGender"] = "Mistress"
		E.creatorGender = "Mistress"
	else
		E.data["creatorGender"] = "Master"
		E.creatorGender = "Master"
	E.data["creatorName"] = B.data["real_name"]
	E.creatorName = B.data["real_name"]
	E.data["creatorID"] = B.data["ckey"]
	E.creatorID = B.data["ckey"]

//Xeno Hybrids -- Does anyone even play them?
/datum/chemical_reaction/fermi/enthrall/xeno
	required_catalysts = list(/datum/reagent/toxin/acid = 1)

/datum/chemical_reaction/fermi/enthrall/xeno/reaction_finish(datum/reagents/holder, atom/my_atom)
	var/datum/reagent/toxin/acid/B = locate(/datum/reagent/toxin/acid) in holder.reagent_list//The one line change.
	var/datum/reagent/fermi/enthrall/E = locate(/datum/reagent/fermi/enthrall) in holder.reagent_list
	if(!B || !E)
		return
	if(!B.data)
		my_atom.visible_message("<span class='warning'>The reaction splutters and fails to react properly.</span>") //Just in case
		E.purity = 0
		return
	if (B.data["gender"] == "female")
		E.data["creatorGender"] = "Mistress"
		E.creatorGender = "Mistress"
	else
		E.data["creatorGender"] = "Master"
		E.creatorGender = "Master"
	E.data["creatorName"] = B.data["real_name"]
	E.creatorName = B.data["real_name"]
	E.data["creatorID"] = B.data["ckey"]
	E.creatorID = B.data["ckey"]

//My le bomb... It le killed people?? || Stolen meth code :)
/datum/chemical_reaction/fermi/enthrall/proc/enthrall_explosion(datum/reagents/holder, explode_vol)
	var/power = 5 + round(explode_vol/18, 1) //MKU strengthdiv is 18
	if(power <= 0)
		return
	var/turf/T = get_turf(holder.my_atom)
	var/inside_msg
	if(ismob(holder.my_atom))
		var/mob/M = holder.my_atom
		inside_msg = " inside [ADMIN_LOOKUPFLW(M)]"
		return
	var/lastkey = holder.my_atom.fingerprintslast
	var/touch_msg = "N/A"
	if(lastkey)
		var/mob/toucher = get_mob_by_key(lastkey)
		touch_msg = "[ADMIN_LOOKUPFLW(toucher)]"
	if(!istype(holder.my_atom, /obj/machinery/plumbing)) //excludes standard plumbing equipment from spamming admins with this shit
		message_admins("Reagent explosion reaction occurred at [ADMIN_VERBOSEJMP(T)][inside_msg]. Last Fingerprint: [touch_msg].")
	log_game("Reagent explosion reaction occurred at [AREACOORD(T)]. Last Fingerprint: [lastkey ? lastkey : "N/A"]." )
	var/datum/effect_system/reagents_explosion/e = new()
	e.set_up(power, T, 0, 0)
	e.start(holder.my_atom)
	holder.clear_reagents()
