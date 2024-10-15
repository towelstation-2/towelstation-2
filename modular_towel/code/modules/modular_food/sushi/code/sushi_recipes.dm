///////////////////////Sushi Components///////////////////////////

/datum/crafting_recipe/food/sushi_rice
	name = "Sushi Rice"
	reqs = list(
		/datum/reagent/water  = 40,
		/datum/reagent/consumable/rice = 10
	)
	result = /obj/item/food/sushi_rice
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sea_weed
	name = "Sea Weed Sheet"
	reqs = list(
		/datum/reagent/water = 30,
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/grown/herbs = 1,
	)
	result = /obj/item/food/sea_weed
	subcategory = CAT_MISCFOOD

//////////////////////////Sushi/////////////////////////////////

/datum/crafting_recipe/food/sashimi
	name = "Sashimi"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/spidereggs = 1,
		/obj/item/food/fishmeat/carp = 1
	)
	result = /obj/item/food/sashimi
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/riceball
	name = "Onigiri"
	reqs = list(
		/datum/reagent/consumable/soysauce = 1,
		/obj/item/food/sea_weed = 1,
		/obj/item/food/sushi_rice = 1
	)
	result = /obj/item/food/riceball
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_egg
	name = "Tobiko"
	reqs = list(
		/datum/reagent/consumable/soysauce = 6,
		/obj/item/food/spidereggs = 1,
		/obj/item/food/sea_weed = 2,
	)
	result = /obj/item/food/tobiko
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_basic
	name = "Funa Hosomaki"
	reqs = list(
		/datum/reagent/consumable/soysauce = 3,
		/obj/item/food/sushi_rice = 1,
		/obj/item/food/fishmeat/carp = 2,
		/obj/item/food/sea_weed = 3,
	)
	result = /obj/item/food/sushi_basic
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_adv
	name = "Funa Nigiri"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 1,
		/obj/item/food/fishmeat/carp = 1
	)
	result = /obj/item/food/sushi_adv
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_pro
	name = "Well made Funa Nigiri"
	reqs = list(
		/datum/reagent/consumable/soysauce = 10,
		/obj/item/food/sushi_rice = 2,
		/obj/item/food/fishmeat/carp = 5,
		/obj/item/food/sea_weed = 1
	)
	result = /obj/item/food/sushi_pro
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_sake
	name = "Sake Sushi (Salmon)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 2,
		/obj/item/food/fishmeat/salmon = 2,
		/obj/item/food/sea_weed = 1
	)
	result = /obj/item/food/fishing_sushi/sake_sushi
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_cookedsalmon
	name = "Cooked Salmon Sushi"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 2,
		/obj/item/food/fishmeat/salmon/cooked = 2,
		/obj/item/food/sea_weed = 1
	)
	result = /obj/item/food/fishing_sushi/sake_cookedsalmon
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_ebi
	name = "Ebi Sushi (Cooked Shrimp)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 2,
		/obj/item/food/fishmeat/shrimp/cooked = 2,
		/obj/item/food/sea_weed = 1
	)
	result = /obj/item/food/fishing_sushi/ebi_sushi
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_ikura
	name = "Ikura Sushi (Moonfish Roe)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 2,
		/obj/item/fishegg/salmon = 2,
		/obj/item/food/sea_weed = 1
	)
	result = /obj/item/food/fishing_sushi/ikura_sushi
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_maguro
	name = "Maguro Sushi (Tuna)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 2,
		/obj/item/food/tuna = 1,
		/obj/item/food/sea_weed = 1
	)
	result = /obj/item/food/fishing_sushi/maguro_sushi
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/sushi_masago
	name = "Masago Sushi (Any Roe)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 2,
		/obj/item/fishyegg = 2,
		/obj/item/food/sea_weed = 1
	)
	result = /obj/item/food/fishing_sushi/masago_sushi
	subcategory = CAT_MISCFOOD


//////////////////////////////////////////////LOBER///////////////////////////////////////////

/datum/crafting_recipe/food/lobsterroll
	name = "Lobster Roll"
	reqs = list(
		/obj/item/food/bun = 1,
		/obj/item/food/fishmeat/lobster = 1
	)
	result = /obj/item/food/fishing/lobster_roll
	subcategory = CAT_MISCFOOD

/datum/crafting_recipe/food/lobsterdeluxe
	name = "Fish fry"
	reqs = list(
		/obj/item/food/fishmeat/lobster/cooked = 1,
		/obj/item/food/grown/citrus/lemon =1,
		/obj/item/food/grown/cabbage = 1
	)
	result = /obj/item/food/fishing/lobster_deluxe
	subcategory = CAT_MISCFOOD
