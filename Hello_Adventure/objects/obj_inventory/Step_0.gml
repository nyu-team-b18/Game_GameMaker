if keyboard_check_pressed(ord("S")) and global.inventory_id.selected_index != -1 {
	InventoryRemove(global.inventory_id.inventory, global.inventory_id.selected_index)
	
	if index_value == array_length(inventory){
		index_value = array_length(inventory) - 1
	}
		

}