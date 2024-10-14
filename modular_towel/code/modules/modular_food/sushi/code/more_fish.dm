/obj/item/fish/towel
	name = "towelfish"
	desc = "A debug 'fish', you shouldn't be seeing this."
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/fish_items.dmi'
	icon_state = "carp"
	meat_type = /obj/item/food/fishmeat/carp
	secondary_drop = /obj/item/fishegg/carp
//ive taken it into my hands to have all the fish have puns, send help - jake
//also, please make more actual fish meat and food with the new fish meat, please
//and secondary_drops will not be fisheggs once actual fish tanks are implemented
/obj/item/fish/towel/carp
	name = "carp"
	desc = "Carpe diem, meaning seize the car-- day. It means seize the day."
	icon_state = "carp"
	meat_type = /obj/item/food/fishmeat/carp
	secondary_drop = /obj/item/fishegg/carp

/obj/item/fish/salmon
	name = "salmon"
	desc = "Salmon day, spending all day going upstream just to get screwed and die."
	icon_state = "salmon"
	meat_type = /obj/item/food/fishmeat/salmon
	secondary_drop = /obj/item/fishegg/salmon

/obj/item/fish/eel
	name = "electric eel"
	desc = "When you're down by the sea and an eel bites your knee, that's a moray."
	icon_state = "electric_eel"
	secondary_drop = /obj/item/fishegg/eel
	var/delay_shock = 0

/obj/item/fish/eel/afterattack(atom/target, mob/user, proximity_flag, click_parameters)
	. = ..()
	if(delay_shock > world.time)
		return
	delay_shock = world.time + 1 MINUTES
	if(istype(target, /mob/living))
		var/mob/living/livingTarget = target
		livingTarget.electrocute_act(35, src, 1, flags = SHOCK_NOGLOVES|SHOCK_ILLUSION)

/obj/item/fish/lobster
	name = "lobster"
	desc = "Lobsters have a hard time learning the alphabet, being stuck at C."
	icon_state = "lobster"
	meat_type = /obj/item/food/fishmeat/lobster
	secondary_drop = /obj/item/fishegg/lobster

/obj/item/fish/shrimp
	name = "shrimp"
	desc = "Whenever shrimps fight at bars, they get absolutely battered."
	icon_state = "shrimp"
	meat_type = /obj/item/food/fishmeat/shrimp
	secondary_drop = /obj/item/fishegg/shrimp

/obj/item/fishegg
	name = "parent fish egg"
	desc = "debug, report to coders if you see this."
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/fish_items.dmi'
	grind_results = list(/datum/reagent/nutracid = 1)

/obj/item/fishegg/carp
	name = "carp fish egg"
	icon_state = "carp_eggs"
	desc = "Carp roe is often referred to the 'poor man's caviar'. This particular set of eggs seems to be unfit even for hoboes, though."

/obj/item/fishegg/salmon
	name = "salmon fish egg"
	icon_state = "salmon_eggs"
	desc = "Salmon roe is an inexpensive alternative to sturgeon caviar. If you're eating this, it's probably not for the taste."

/obj/item/fishegg/eel
	name = "eel fish egg"
	icon_state = "electric_eel_eggs"
	desc = "Eel eggs are not, typically, considered food. Then again, haute cuisine has fallen mostly by the wayside in the modern era, so go ham."

/obj/item/fishegg/lobster
	name = "lobster fish egg"
	icon_state = "catfish_eggs"
	desc = "Lobster eggs are historically widely eaten by absolutely nobody."

/obj/item/fishegg/shrimp
	name = "shrimp fish egg"
	icon_state = "shrimp_eggs"
	desc = "Don't put it in your mouth. Don't do it. Trust your instincts on this one."
