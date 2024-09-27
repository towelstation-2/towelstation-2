//bluespace carrier, a reskin of the pet carrier that can fit people
/obj/item/pet_carrier/bluespace
	name = "bluespace pet carrier"
	desc = "A pet carrier, that seems to be bigger on the inside, somehow allowing lifeforms to fit through its narrow entrance."
	max_occupant_weight = MOB_SIZE_HUMAN //can fit people, like a bluespace bodybag!
	max_occupants = 1
	custom_materials = list(/datum/material/iron = HALF_SHEET_MATERIAL_AMOUNT * 7.5, /datum/material/bluespace = HALF_SHEET_MATERIAL_AMOUNT * 5)

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
		REMOVE_TRAIT(occupant, TRAIT_RESISTCOLD, "bluespace_container_cold_resist")
		REMOVE_TRAIT(occupant, TRAIT_RESISTHEAT, "bluespace_container_heat_resist")
		REMOVE_TRAIT(occupant, TRAIT_NOBREATH, "bluespace_container_no_breath")
		REMOVE_TRAIT(occupant, TRAIT_RESISTHIGHPRESSURE, "bluespace_container_resist_high_pressure")
		REMOVE_TRAIT(occupant, TRAIT_RESISTLOWPRESSURE, "bluespace_container_resist_low_pressure")
