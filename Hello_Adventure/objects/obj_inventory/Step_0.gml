if array_length(inventory) > 0 and keyboard_check_pressed(ord("S")) and selected_index != -1 {
	InventoryDrop(inventory, selected_index)
	
	if index_value == array_length(inventory){
		index_value = array_length(inventory) - 1
	}
}

if (array_length(inventory) > 0 and keyboard_check_pressed(ord("D")) and selected_index != -1 ){
	InventoryUse(inventory, selected_index);
}

if (array_length(global.inventory_id.inventory) == 10){
	global.has_chicks = true;
	for (var i = 0; i < 10; i += 1){
		if (inventory[i].obj != "obj_baby_chick"){
			global.has_chicks = false;
		}
	}
} else { global.has_chicks = false; }