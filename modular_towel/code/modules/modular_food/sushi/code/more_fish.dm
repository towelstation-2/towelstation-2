/obj/item/fish/towel
	name = "towelfish"
	desc = "A debug 'fish', you shouldn't be seeing this."
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/fish_items.dmi'
	icon_state = "carp"
//ive taken it into my hands to have all the fish have puns, send help - jake
//also, please make more actual fish meat and food with the new fish meat, please
//and secondary_drops will not be fisheggs once actual fish tanks are implemented
/obj/item/fish/towel/carp
	name = "carp"
	desc = "Carpe diem, meaning seize the car-- day. It means seize the day."
	icon_state = "carp"
	fillet_type = /obj/item/food/fishmeat/carp
	secondary_drop = /obj/item/fishegg/carp

/obj/item/fish/towel/salmon
	name = "salmon"
	desc = "Salmon day, spending all day going upstream just to get screwed and die."
	icon_state = "salmon"
	fillet_type = /obj/item/food/fishmeat/salmon
	secondary_drop = /obj/item/fishegg/salmon

/obj/item/fish/towel/eel
	name = "electric eel"
	desc = "When you're down by the sea and an eel bites your knee, that's a moray."
	icon_state = "electric_eel"
	secondary_drop = /obj/item/fishegg/eel
	var/delay_shock = 0

/obj/item/fish/towel/eel/afterattack(atom/target, mob/user, proximity_flag, click_parameters)
	. = ..()
	if(delay_shock > world.time)
		return
	delay_shock = world.time + 1 MINUTES
	if(istype(target, /mob/living))
		var/mob/living/livingTarget = target
		livingTarget.electrocute_act(35, src, 1, flags = SHOCK_NOGLOVES|SHOCK_ILLUSION)

/obj/item/fish/towel/lobster
	name = "lobster"
	desc = "Lobsters have a hard time learning the alphabet, being stuck at C."
	icon_state = "lobster"
	fillet_type = /obj/item/food/fishmeat/lobster
	secondary_drop = /obj/item/fishegg/lobster

/obj/item/fish/towel/shrimp
	name = "shrimp"
	desc = "Whenever shrimps fight at bars, they get absolutely battered."
	icon_state = "shrimp"
	fillet_type = /obj/item/food/fishmeat/shrimp
	secondary_drop = /obj/item/fishegg/shrimp
