function InventoryRemove(inv, index){
	if array_length(global.inventory_id.inventory) > 0 and index < array_length(global.inventory_id.inventory) {
		array_delete(inv, index, 1);
	}	
}

function InventoryAdd(inv, itemType){
	if array_length(global.inventory_id.inventory) < 10 {
		array_push(inv, itemType)
	}
}