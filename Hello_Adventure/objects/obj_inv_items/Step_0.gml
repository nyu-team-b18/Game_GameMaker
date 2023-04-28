if place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("A")) {
	InventoryAdd(global.inventory_id.inventory, self)
	if room == rm_level_1 and place_meeting(x,y,obj_animal_spots) {
		obj_lvl1_manager.calmed_animal_count -= 1
	}
	instance_destroy()
}