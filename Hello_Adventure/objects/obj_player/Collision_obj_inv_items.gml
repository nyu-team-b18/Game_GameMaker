/// @Add to inventory
if (keyboard_check_pressed(ord("A"))){
	if array_length(global.inventory_id.inventory) < 10 {
		array_push(global.inventory_id.inventory, other.item)

		if object_get_parent(asset_get_index(other.item.obj)) == obj_level_animals {
			if other.bubble != 0 { instance_destroy(other.bubble) }
		}
	}
	
	if room == rm_level_1 and place_meeting(x,y,obj_animal_spots) {
		obj_lvl1_manager.calmed_animal_count -= 1
	}
	
	instance_destroy(other);
}