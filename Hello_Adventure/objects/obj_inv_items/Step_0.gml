if place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("A")) {
	InventoryAdd(global.inventory_id.inventory, inv_image_index)
	instance_destroy()
}