//bluespace carrier, a reskin of the pet carrier that can fit people
/obj/item/pet_carrier/bluespace
	name = "bluespace pet carrier"
	desc = "A pet carrier, that seems to be bigger on the inside, somehow allowing lifeforms to fit through its narrow entrance."
	open = FALSE //starts closed so it looks better on menus
	icon_state = "bluespace_carrier"
	item_state = "bluespace_carrier"
	lefthand_file = ""
	righthand_file = ""
	max_occupant_weight = MOB_SIZE_HUMAN //can fit people, like a bluespace bodybag!
	load_time = 40 //loading things into a carrier takes longer than a regular pet carrier
	max_occupants = 1
	allows_hostiles = TRUE //can fit hostile creatures, with the move resist restrictions in place, this means they still cannot take things like legions/goliaths/etc regardless
	custom_materials = list(/datum/material/plasma = 500, /datum/material/iron = 500, /datum/material/bluespace = 600)
	escape_time = 200 //equal to the time of a bluespace bodybag
	alternate_escape_time = 100

	///gas supply for simplemobs so they don't die
	var/datum/gas_mixture/occupant_gas_supply

/obj/item/pet_carrier/bluespace/Initialize()
	. = ..()
	create_reagents(300, OPENCONTAINER, DEFAULT_REAGENTS_VALUE) //equivalent of bsbeakers

/obj/item/pet_carrier/bluespace/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/pet_carrier/bluespace/attack_self(mob/living/user)
	..()
	if(reagents)
		if(open)
			reagents.reagents_holder_flags = OPENCONTAINER
		else
			reagents.reagents_holder_flags = NONE

/obj/item/pet_carrier/bluespace/update_icon_state()
	if(open)
		icon_state = "bluespace_carrier_open"
	else
		icon_state = "bluespace_carrier"

/obj/item/pet_carrier/bluespace/add_occupant(mob/living/occupant) //update the gas supply as required, this acts like magical internals
	. = ..()
	if(ishuman(occupant)) //humans require resistance to cold/heat and living in no air while inside, and lose this when outside
		START_PROCESSING(SSobj, src)
		ADD_TRAIT(occupant, TRAIT_RESISTCOLD, "bluespace_carrier_cold_resist")
		ADD_TRAIT(occupant, TRAIT_RESISTHEAT, "bluespace_carrier_heat_resist")
		ADD_TRAIT(occupant, TRAIT_NOBREATH, "bluespace_carrier_no_breath")
		ADD_TRAIT(occupant, TRAIT_RESISTHIGHPRESSURE, "bluespace_carrier_resist_high_pressure")
		ADD_TRAIT(occupant, TRAIT_RESISTLOWPRESSURE, "bluespace_carrier_resist_low_pressure")

/obj/item/pet_carrier/bluespace/remove_occupant(mob/living/occupant)
	. = ..()
	if(ishuman(occupant))
		STOP_PROCESSING(SSobj, src)
		REMOVE_TRAIT(occupant, TRAIT_RESISTCOLD, "bluespace_carrier_cold_resist")
		REMOVE_TRAIT(occupant, TRAIT_RESISTHEAT, "bluespace_carrier_heat_resist")
		REMOVE_TRAIT(occupant, TRAIT_NOBREATH, "bluespace_carrier_no_breath")
		REMOVE_TRAIT(occupant, TRAIT_RESISTHIGHPRESSURE, "bluespace_carrier_resist_high_pressure")
		REMOVE_TRAIT(occupant, TRAIT_RESISTLOWPRESSURE, "bluespace_carrier_resist_low_pressure")
	name = initial(name)

/obj/item/pet_carrier/bluespace/load_occupant(mob/living/user, mob/living/target)
	if(..())
		name = "[initial(name)] ([target])"
