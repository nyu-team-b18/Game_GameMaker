// return item to world
function InventoryDrop(inv, index){
	if array_length(global.inventory_id.inventory) > 0 and index < array_length(global.inventory_id.inventory) {
		var obj_to_create = global.inventory_id.item_array[inv[index].inv_image_index]
		instance_create_layer(
			obj_player.x,
			obj_player.y,
			"Instances",
			obj_to_create
		)
		array_delete(inv, index, 1);
	}	
}

// use item (del from inv and dont return to world)
function InventoryUse(inv, index){
	if array_length(global.inventory_id.inventory) > 0 and index < array_length(global.inventory_id.inventory) {
		array_delete(inv, index, 1);
	}	
}

// put item in inv
function InventoryAdd(inv, itemType){
	if array_length(global.inventory_id.inventory) < 10 {
		array_push(inv, itemType)
	}
}