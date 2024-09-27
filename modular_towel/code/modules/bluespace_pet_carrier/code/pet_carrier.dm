//bluespace carrier, a reskin of the pet carrier that can fit people
/obj/item/pet_carrier/bluespace
	name = "bluespace pet carrier"
	desc = "A pet carrier, that seems to be bigger on the inside, somehow allowing lifeforms to fit through its narrow entrance."
	max_occupant_weight = MOB_SIZE_HUMAN //can fit people, like a bluespace bodybag!
	max_occupants = 1
	custom_materials = list(/datum/material/iron = HALF_SHEET_MATERIAL_AMOUNT * 7.5, /datum/material/bluespace = HALF_SHEET_MATERIAL_AMOUNT * 5)
