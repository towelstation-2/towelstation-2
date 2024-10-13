//////////////////////////Sushi Components///////////////////////

/obj/item/food/sushi_rice
	name = "Sushi Rice"
	desc = "A bowl of sticky rice for making sushi."
	icon_state = "sushi_rice"
	list_reagents = list(/datum/reagent/consumable/sodiumchloride = 5)
	tastes = list("rice" = 5, "salt" = 1)
	foodtype = GRAIN

/obj/item/food/sea_weed
	name = "Sea Weed Sheet"
	desc = "A thin, light salt sheet of plant mater. Used in sushi recipes,"
	icon_state = "sea_weed"
	list_reagents = list(/datum/reagent/consumable/sodiumchloride = 2)
	tastes = list("plants" = 2, "salt" = 1)
	foodtype = VEGETABLES

//////////////////////////Sushi/////////////////////////////////
/obj/item/food/sushi_basic
	name = "Funa Hosomaki"
	desc = "A small cylindrical filled with rice and fish."
	icon_state = "sushi_basic"
	bonus_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 1)
	bitesize = 1
	filling_color = "#F2EEEA" //rgb(242, 238, 234)
	tastes = list("fish" = 1, "rice" = 1, "salt" = 1)
	foodtype = MEAT | VEGETABLES

/obj/item/food/sushi_adv
	name = "Funa Nigiri"
	desc = "A piece of carp lightly placed on some rice."
	icon_state = "sushi_adv"
	bonus_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 2)
	bitesize = 1
	filling_color = "#F2EEEA" //rgb(242, 238, 234)
	tastes = list("fish" = 1, "rice" = 1, "salt" = 1)
	foodtype = MEAT | VEGETABLES

/obj/item/food/sushi_pro
	name = "Funa Nigiri"
	desc = "A well prepared piece of the best of the carp fillet placed on rice. Looks fancy and fresh!"
	icon_state = "sushi_pro"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 8, /datum/reagent/consumable/nutriment/vitamin = 1)
	bitesize = 1
	filling_color = "#F2EEEA" //rgb(242, 238, 234)
	tastes = list("fish" = 1, "rice" = 1, "salt" = 1)
	foodtype = MEAT | VEGETABLES

/obj/item/food/tobiko
	name = "Tobiko"
	desc = "Spider eggs wrapped in a thin salted seaweed sheet."
	icon_state = "sushi_egg"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	filling_color = "#FF3333" // R225 G051 B051
	tastes = list("seaweed" = 1, "salty" = 2)
	foodtype = MEAT | VEGETABLES

/obj/item/food/riceball
	name = "Onigiri"
	desc = "A ball of rice with some light salt and a wrap of seaweed."
	icon_state = "riceball"
	list_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/sodiumchloride = 2)
	tastes = list("rice" = 4, "salt" = 1)
	foodtype = GRAIN

/obj/item/food/sashimi
	name = "carp sashimi"
	desc = "Celebrate surviving attacks from super mutants by hospitalising yourself."
	icon_state = "sashimi"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/capsaicin = 4, /datum/reagent/consumable/nutriment/vitamin = 4)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/capsaicin = 5)
	filling_color = "#FA8072"
	tastes = list("fish" = 1, "hot peppers" = 1)
	foodtype = MEAT | TOXIC

/obj/item/food/fishing_sushi
	icon = 'icons/obj/fish/seafood.dmi'
	list_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/sodiumchloride = 2)
	tastes = list("rice" = 4, "salt" = 2, "seaweed" = 2, "fish" = 2)
	foodtype = GRAIN | MEAT | VEGETABLES

/obj/item/food/fishing_sushi/sake_sushi //salmon
	name = "sake sushi"
	desc = "Sushi that has been made with salmon."
	icon_state = "sushi_Sake"

/obj/item/food/fishing_sushi/sake_cookedsalmon
	name = "cooked salmon sushi"
	desc = "Rather than wanting raw fish, you ordered a cooked salmon sushi."
	icon_state = "sushi_SmokedSalmon"

/obj/item/food/fishing_sushi/ebi_sushi //cooked shrimp
	name = "ebi sushi"
	desc = "Sushi that has been made with cooked shrimp."
	icon_state = "sushi_Ebi"

/obj/item/food/fishing_sushi/ikura_sushi //salmon roe
	name = "ikura sushi"
	desc = "Sushi that has been made with salmon roe."
	icon_state = "sushi_Ikura"

/obj/item/food/fishing_sushi/maguro_sushi //tuna
	name = "maguro sushi"
	desc = "Sushi that has been made with tuna."
	icon_state = "sushi_Maguro"

/obj/item/food/fishing_sushi/masago_sushi //any roe(?)
	name = "masago sushi"
	desc = "Sushi that has been made with some kind of roe?"
	icon_state = "sushi_Masago"

//////////////////////////Lobster/////////////////////////////////
/obj/item/food/fishing
	icon = 'modular_towel/code/modules/modular_food/sushi/icons/lobster.dmi'

/obj/item/food/fishing/lobster_deluxe
	name = "lobster deluxe"
	desc = "A fancy lobster dish, served with some greens and a lemon."
	icon_state = "lobster_steamed_deluxe"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6)
	tastes = list("fish" = 2, "pan seared vegtables" = 1)
	foodtype = MEAT | VEGETABLES | FRUIT

/obj/item/food/fishing/lobster_roll
	name = "lobster roll"
	desc = "A wonderful cooked lobster inbetween a toasted roll."
	icon_state = "lobster_roll"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("fish" = 1, "breadcrumbs" = 1)
	foodtype = MEAT | GRAIN

//////////////////////////Fish Meat/////////////////////////////////
/obj/item/food/fishmeat
	icon_state = "fishfillet"
	bitesize = 6
	filling_color = "#FA8072"
	foodtype = MEAT
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("fish" = 1)

/obj/item/food/fishmeat/Initialize()
	. = ..()
	eatverb = pick("bite","chew","choke down","gnaw","swallow","chomp")

/obj/item/food/fishmeat/carp
	name = "carp fillet"
	desc = "A fillet of carp meat."
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/toxin/carpotoxin = 2, /datum/reagent/consumable/nutriment/vitamin = 2)
	cooked_type = /obj/item/food/meat/steak/fish
	tastes = list("fish" = 1)

/obj/item/food/fishmeat/carp/imitation
	name = "imitation carp fillet"
	desc = "Almost just like the real thing, kinda."

/obj/item/food/fishmeat/salmon
	name = "salmon fillet"
	desc = "A raw salmon fillet that has been prepared."
	cooked_type = /obj/item/food/fishmeat/salmon/cooked

/obj/item/food/fishmeat/salmon/cooked
	name = "cooked salmon fillet"
	desc = "A gorgeously cooked salmon fillet that has a sear that is to die for."
	icon = 'icons/obj/fish/seafood.dmi'
	icon_state = "smokedsalmon"

/obj/item/food/fishmeat/lobster
	name = "lobster meat"
	desc = "Raw lobster meat that has been prepared."
	icon = 'icons/obj/fish/food.dmi'
	icon_state = "raw_lobster_meat"
	cooked_type = /obj/item/food/fishmeat/lobster/cooked

/obj/item/food/fishmeat/lobster/cooked
	name = "cooked lobster meat"
	desc = "A deliciously cooked lobster, all ready to consume."
	icon = 'icons/obj/fish/food.dmi'
	icon_state = "lobster_steamed_simple"

/obj/item/food/fishmeat/shrimp
	name = "shrimp"
	desc = "Shrimp that has been prepared to be eaten raw."
	icon = 'icons/obj/fish/seafood.dmi'
	icon_state = "shrimp_raw"
	cooked_type = /obj/item/food/fishmeat/shrimp/cooked

/obj/item/food/fishmeat/shrimp/cooked
	name = "cooked shrimp"
	desc = "Shrimp that has been prepared and then cooked."
	icon = 'icons/obj/fish/seafood.dmi'
	icon_state = "shrimp_cooked"
