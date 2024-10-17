//////////////////////////Sushi/////////////////////////////////
/obj/item/food/sushi_basic
	name = "Funa Hosomaki"
	desc = "A small cylindrical filled with rice and fish."
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/seafood.dmi'
	icon_state = "sushi_basic"
	food_reagents = list(/datum/reagent/consumable/nutriment = 1)
	tastes = list("fish" = 1, "rice" = 1, "salt" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/sushi_adv
	name = "Funa Nigiri"
	desc = "A piece of carp lightly placed on some rice."
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/seafood.dmi'
	icon_state = "sushi_adv"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2)
	tastes = list("fish" = 1, "rice" = 1, "salt" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/sushi_pro
	name = "Funa Nigiri"
	desc = "A well prepared piece of the best of the carp fillet placed on rice. Looks fancy and fresh!"
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/seafood.dmi'
	icon_state = "sushi_pro"
	food_reagents = list(/datum/reagent/consumable/nutriment = 8, /datum/reagent/consumable/nutriment/vitamin = 1)
	tastes = list("fish" = 1, "rice" = 1, "salt" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/tobiko
	name = "Tobiko"
	desc = "Spider eggs wrapped in a thin salted seaweed sheet."
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/seafood.dmi'
	icon_state = "sushi_egg"
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("seaweed" = 1, "salty" = 2)
	foodtypes = MEAT | VEGETABLES
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/fishing_sushi
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/seafood.dmi'
	food_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/salt = 2)
	tastes = list("rice" = 4, "salt" = 2, "seaweed" = 2, "fish" = 2)
	foodtypes = GRAIN | MEAT | VEGETABLES | SEAFOOD
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/fishing_sushi/sake_sushi //salmon
	name = "sake sushi"
	desc = "Sushi that has been made with salmon."
	icon_state = "sushi_Sake"
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/fishing_sushi/sake_cookedsalmon
	name = "cooked salmon sushi"
	desc = "Rather than wanting raw fish, you ordered a cooked salmon sushi."
	icon_state = "sushi_SmokedSalmon"
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/fishing_sushi/ebi_sushi //cooked shrimp
	name = "ebi sushi"
	desc = "Sushi that has been made with cooked shrimp."
	icon_state = "sushi_Ebi"
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/fishing_sushi/maguro_sushi //tuna
	name = "maguro sushi"
	desc = "Sushi that has been made with tuna."
	icon_state = "sushi_Maguro"
	crafting_complexity = FOOD_COMPLEXITY_3

//////////////////////////Lobster/////////////////////////////////
/obj/item/food/fishing
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/lobster.dmi'

/obj/item/food/fishing/lobster_deluxe
	name = "lobster deluxe"
	desc = "A fancy lobster dish, served with some greens and a lemon."
	icon_state = "lobster_steamed_deluxe"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6)
	tastes = list("fish" = 2, "pan seared vegtables" = 1)
	foodtypes = MEAT | VEGETABLES | FRUIT | SEAFOOD
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/fishing/lobster_roll
	name = "lobster roll"
	desc = "A wonderful cooked lobster inbetween a toasted roll."
	icon_state = "lobster_roll"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("fish" = 1, "breadcrumbs" = 1)
	foodtypes = MEAT | GRAIN | SEAFOOD
	crafting_complexity = FOOD_COMPLEXITY_2

//////////////////////////Fish Meat/////////////////////////////////

/obj/item/food/fishmeat/salmon
	name = "salmon fillet"
	desc = "A raw salmon fillet that has been prepared."

/obj/item/food/fishmeat/salmon/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/fishmeat/salmon/cooked, rand(40 SECONDS, 50 SECONDS), TRUE, TRUE)

/obj/item/food/fishmeat/salmon/cooked
	name = "cooked salmon fillet"
	desc = "A gorgeously cooked salmon fillet that has a sear that is to die for."
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/seafood.dmi'
	icon_state = "smokedsalmon"

/obj/item/food/fishmeat/lobster
	name = "lobster meat"
	desc = "Raw lobster meat that has been prepared."
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/lobster.dmi'
	icon_state = "raw_lobster_meat"

/obj/item/food/fishmeat/lobster/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/fishmeat/lobster/cooked, rand(40 SECONDS, 50 SECONDS), TRUE, TRUE)

/obj/item/food/fishmeat/lobster/cooked
	name = "cooked lobster meat"
	desc = "A deliciously cooked lobster, all ready to consume."
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/lobster.dmi'
	icon_state = "lobster_steamed_simple"

/obj/item/food/fishmeat/shrimp
	name = "shrimp"
	desc = "Shrimp that has been prepared to be eaten raw."
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/seafood.dmi'
	icon_state = "shrimp_raw"

/obj/item/food/fishmeat/shrimp/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/fishmeat/shrimp/cooked, rand(10 SECONDS, 20 SECONDS), TRUE, TRUE)

/obj/item/food/fishmeat/shrimp/cooked
	name = "cooked shrimp"
	desc = "Shrimp that has been prepared and then cooked."
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/seafood.dmi'
	icon_state = "shrimp_cooked"
