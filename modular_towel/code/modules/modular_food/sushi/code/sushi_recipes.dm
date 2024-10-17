///////////////////////Sushi Components///////////////////////////

/datum/crafting_recipe/food/sushi_rice
	name = "Sushi Rice"
	reqs = list(
		/datum/reagent/water  = 40,
		/datum/reagent/consumable/rice = 10
	)
	result = /obj/item/food/sushi_rice
	category = CAT_SEAFOOD

//////////////////////////Sushi/////////////////////////////////

/datum/crafting_recipe/food/sushi_egg
	name = "Tobiko"
	reqs = list(
		/datum/reagent/consumable/soysauce = 6,
		/obj/item/food/spidereggs = 1,
		/obj/item/food/seaweedsheet = 2,
	)
	result = /obj/item/food/tobiko
	category = CAT_SEAFOOD

/datum/crafting_recipe/food/sushi_basic
	name = "Funa Hosomaki"
	reqs = list(
		/datum/reagent/consumable/soysauce = 3,
		/obj/item/food/sushi_rice = 1,
		/obj/item/food/fishmeat/carp = 2,
		/obj/item/food/seaweedsheet = 3,
	)
	result = /obj/item/food/sushi_basic
	category = CAT_SEAFOOD

/datum/crafting_recipe/food/sushi_adv
	name = "Funa Nigiri"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 1,
		/obj/item/food/fishmeat/carp = 1
	)
	result = /obj/item/food/sushi_adv
	category = CAT_SEAFOOD

/datum/crafting_recipe/food/sushi_pro
	name = "Well made Funa Nigiri"
	reqs = list(
		/datum/reagent/consumable/soysauce = 10,
		/obj/item/food/sushi_rice = 2,
		/obj/item/food/fishmeat/carp = 5,
		/obj/item/food/seaweedsheet = 1
	)
	result = /obj/item/food/sushi_pro
	category = CAT_SEAFOOD

/datum/crafting_recipe/food/sushi_sake
	name = "Sake Sushi (Salmon)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 2,
		/obj/item/food/fishmeat/salmon = 2,
		/obj/item/food/seaweedsheet = 1
	)
	result = /obj/item/food/fishing_sushi/sake_sushi
	category = CAT_SEAFOOD

/datum/crafting_recipe/food/sushi_cookedsalmon
	name = "Cooked Salmon Sushi"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 2,
		/obj/item/food/fishmeat/salmon/cooked = 2,
		/obj/item/food/seaweedsheet = 1
	)
	result = /obj/item/food/fishing_sushi/sake_cookedsalmon
	category = CAT_SEAFOOD

/datum/crafting_recipe/food/sushi_ebi
	name = "Ebi Sushi (Cooked Shrimp)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 2,
		/obj/item/food/fishmeat/shrimp/cooked = 2,
		/obj/item/food/seaweedsheet = 1
	)
	result = /obj/item/food/fishing_sushi/ebi_sushi
	category = CAT_SEAFOOD

/datum/crafting_recipe/food/sushi_maguro
	name = "Maguro Sushi (Tuna)"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/food/sushi_rice = 2,
		/obj/item/food/tuna = 1,
		/obj/item/food/seaweedsheet = 1
	)
	result = /obj/item/food/fishing_sushi/maguro_sushi
	category = CAT_SEAFOOD


//////////////////////////////////////////////LOBER///////////////////////////////////////////

/datum/crafting_recipe/food/lobsterroll
	name = "Lobster Roll"
	reqs = list(
		/obj/item/food/bun = 1,
		/obj/item/food/fishmeat/lobster = 1
	)
	result = /obj/item/food/fishing/lobster_roll
	category = CAT_SEAFOOD

/datum/crafting_recipe/food/lobsterdeluxe
	name = "Fish fry"
	reqs = list(
		/obj/item/food/fishmeat/lobster/cooked = 1,
		/obj/item/food/grown/citrus/lemon =1,
		/obj/item/food/grown/cabbage = 1
	)
	result = /obj/item/food/fishing/lobster_deluxe
	category = CAT_SEAFOOD
