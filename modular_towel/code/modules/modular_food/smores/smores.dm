// FOOD ITEMS
/obj/item/food/smore
	name = "s'more"
	desc = "A modern take on a delightful campfire treat, made with chocolate, mothmallow, and graham cracker."
	w_class = WEIGHT_CLASS_TINY
	icon = 'modular_towel/code/modules/modular_food/smores/smores.dmi'
	icon_state = "smore"
	food_flags = FOOD_FINGER_FOOD
	foodtypes = GRAIN | SUGAR
	food_reagents = list(/datum/reagent/consumable/nutriment = 8)
	tastes = list("graham crackers" = 1, "chocolate" = 1, "marshmallows" = 1)
	crafting_complexity = FOOD_COMPLEXITY_3
/obj/item/food/graham_cracker
	name = "graham cracker"
	desc = "A sweet, crunchy graham cracker, perfect for snacking or s'mores."
	w_class = WEIGHT_CLASS_TINY
	icon = 'modular_towel/code/modules/modular_food/smores/smores.dmi'
	icon_state = "graham_cracker"
	food_flags = FOOD_FINGER_FOOD
	foodtypes = GRAIN
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("sugar" = 1, "crunchy cardboard but in a good way" = 1)
	crafting_complexity = FOOD_COMPLEXITY_2

//S'mores Crafting
/datum/crafting_recipe/food/smore
	name = "S'more"
	reqs = list(
		/obj/item/food/cakeslice/mothmallow = 1,
		/obj/item/food/graham_cracker = 2,
		/obj/item/food/chocolatebar = 1
	)
	result = /obj/item/food/smore
	category = CAT_MISCFOOD
/datum/crafting_recipe/food/graham_cracker
	name = "Graham Cracker"
	reqs = list(
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/flour = 5
	)
	result = /obj/item/food/graham_cracker
	category = CAT_MISCFOOD
