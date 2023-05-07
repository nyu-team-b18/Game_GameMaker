/// @Add to inventory
if (keyboard_check_pressed(ord("A"))){
	//if room == rm_level_1 and place_meeting(x,y,obj_animal_spots) {
		//obj_lvl1_manager.in_barn -= 1
	//}
	
	if array_length(global.inventory_id.inventory) < 10 {

		if object_get_parent(asset_get_index(other.item.obj)) == obj_level_animals {
			if !place_meeting(asset_get_index(other.item.obj).x, asset_get_index(other.item.obj).y,  obj_animal_spots) {
				if other.bubble != 0 { instance_destroy(other.bubble) }
				if !other.full {
					array_push(global.inventory_id.inventory, other.item)
					instance_destroy(other);
				}
			}
		} else {
			array_push(global.inventory_id.inventory, other.item)
			instance_destroy(other);
		}
	}
}