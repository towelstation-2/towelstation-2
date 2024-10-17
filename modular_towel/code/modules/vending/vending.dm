//Taken from Modular Vending in Zubbers

/obj/machinery/vending
	/// Additions to the `products` list  of the vending machine, modularly. Will become null after Initialize, to free up memory.
	var/list/towel_products
	/// Additions to the `product_categories` list of the vending machine, modularly. Will become null after Initialize, to free up memory.
	var/list/towel_product_categories
	/// Additions to the `premium` list  of the vending machine, modularly. Will become null after Initialize, to free up memory.
	var/list/towel_premium
	/// Additions to the `contraband` list  of the vending machine, modularly. Will become null after Initialize, to free up memory.
	var/list/towel_contraband

/obj/machinery/vending/Initialize(mapload)
	if(towel_products)
		// We need this, because duplicates screw up the spritesheet!
		for(var/item_to_add in towel_products)
			products[item_to_add] = towel_products[item_to_add]

	if(towel_product_categories)
		for(var/category in towel_product_categories)
			var/already_exists = FALSE
			for(var/existing_category in product_categories)
				if(existing_category["name"] == category["name"])
					existing_category["products"] += category["products"]
					already_exists = TRUE
					break

			if(!already_exists)
				product_categories += category

	if(towel_premium)
		// We need this, because duplicates screw up the spritesheet!
		for(var/item_to_add in towel_premium)
			premium[item_to_add] = towel_premium[item_to_add]

	if(towel_contraband)
		// We need this, because duplicates screw up the spritesheet!
		for(var/item_to_add in towel_contraband)
			contraband[item_to_add] = towel_contraband[item_to_add]

	QDEL_NULL(towel_products)
	QDEL_NULL(towel_product_categories)
	QDEL_NULL(towel_premium)
	QDEL_NULL(towel_contraband)
	return ..()

