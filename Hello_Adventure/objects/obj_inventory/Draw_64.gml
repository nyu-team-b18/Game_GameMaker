if (room != rm_start) {
	draw_sprite_stretched
	(
		spr_inv_base,
		0,
		(INVENTORY_SLOTS * 29) / 2,
		250,
		INVENTORY_SLOTS * 29,
		36
	)

	for (var i = 0; i < INVENTORY_SLOTS; i += 1)
	{
		var xx = ((INVENTORY_SLOTS * 29) / 2) + (i mod rowLength) * 28 + 19
		var yy = 250 + (i div rowLength) * 30 + 17
		draw_sprite(spr_inv_slot, 0, xx, yy)
	}
	
	for (var i = 0; i < array_length(inventory); i += 1)
	{
		var xx = ((INVENTORY_SLOTS * 29) / 2) + (i mod rowLength) * 28 + 19
		var yy = 250 + (i div rowLength) * 30 + 17
		draw_sprite(spr_inv_items, inventory[i], xx, yy)
	}
	
	// given the key input (0-9), determine highlighted slot
	if keyboard_check_pressed(ord("1")) {
		if array_length(inventory) > 1 { // if the value exists
			index_value = 0
		} else { // if not, go to the end of list
			index_value = array_length(inventory) - 1
		}	
	} else if keyboard_check_pressed(ord("2")) {
		if array_length(inventory) > 2 { // if the value exists
			index_value = 1
		} else { // if not, go to the end of list
			index_value = array_length(inventory) - 1
		}
	} else if keyboard_check_pressed(ord("3")) {
		if array_length(inventory) > 3 { // if the value exists
			index_value = 2
		} else { // if not, go to the end of list
			index_value = array_length(inventory) - 1
		}
	} else if keyboard_check_pressed(ord("4")) {
		if array_length(inventory) > 4 { // if the value exists
			index_value = 3
		} else { // if not, go to the end of list
			index_value = array_length(inventory) - 1
		}
	} else if keyboard_check_pressed(ord("5")) {
		if array_length(inventory) > 5 { // if the value exists
			index_value = 4
		} else { // if not, go to the end of list
			index_value = array_length(inventory) - 1
		}
	} else if keyboard_check_pressed(ord("6")) {
		if array_length(inventory) > 6 { // if the value exists
			index_value = 5
		} else { // if not, go to the end of list
			index_value = array_length(inventory) - 1
		}
	} else if keyboard_check_pressed(ord("7")) {
		if array_length(inventory) > 7 { // if the value exists
			index_value = 6
		} else { // if not, go to the end of list
			index_value = array_length(inventory) - 1
		}
	} else if keyboard_check_pressed(ord("8")) {
		if array_length(inventory) > 8 { // if the value exists
			index_value = 7
		} else { // if not, go to the end of list
			index_value = array_length(inventory) - 1
		}
	} else if keyboard_check_pressed(ord("9")) {
		if array_length(inventory) > 9 { // if the value exists
			index_value = 8
		} else { // if not, go to the end of list
			index_value = array_length(inventory) - 1
		}
	} else if keyboard_check_pressed(ord("0")) {
		if array_length(inventory) > 10 { // if the value exists
			index_value = 9
		} else { // if not, go to the end of list
			index_value = array_length(inventory) - 1
		}
	} 
	
	// slot position
	var xx = ((INVENTORY_SLOTS * 29) / 2) + (index_value mod rowLength) * 28 + 19
	var yy = 250 + (index_value div rowLength) * 30 + 17
	
	
	if array_length(inventory) > 0 and index_value != -1 {
		// draw selected ui sprite
		draw_sprite(spr_inv_selected, 0, xx, yy)
		
		// set selected item to true
		selected_index = index_value
	}
	
}