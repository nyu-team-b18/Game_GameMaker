if array_length(inventory) > 0 and keyboard_check_pressed(ord("S")) and selected_index != -1 {
	InventoryDrop(inventory, selected_index)
	
	if index_value == array_length(inventory){
		index_value = array_length(inventory) - 1
	}
	

}