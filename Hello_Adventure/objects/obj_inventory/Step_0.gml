if array_length(inventory) > 0 and keyboard_check_pressed(ord("S")) and selected_index != -1 {
	InventoryDrop(inventory, selected_index)
	
	if index_value == array_length(inventory){
		index_value = array_length(inventory) - 1
	}
}


if (array_length(inventory) > 0 and keyboard_check_pressed(ord("D")) and selected_index != -1 
	and position_meeting (obj_player.x, obj_player.y, instance_find(obj_can_unlock, 0))
	){
	InventoryUse(inventory, selected_index);
	//global.key_used = true;
}

//item_array[inventory[selected_index]]