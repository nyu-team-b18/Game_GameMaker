if place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("A")) {
	if array_length(global.inventory_id.inventory) < 10 {
		array_push(global.inventory_id.inventory, global.items[ITEM.WHEAT])

	}
}