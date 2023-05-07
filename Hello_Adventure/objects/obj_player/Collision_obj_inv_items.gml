/// @Add to inventory
if (keyboard_check_pressed(ord("A"))){
	//if room == rm_level_1 and place_meeting(x,y,obj_animal_spots) {
		//obj_lvl1_manager.in_barn -= 1
	//}
	
	if array_length(global.inventory_id.inventory) < 10 {
		
		if other.item == global.items[ITEM.KEY] {
			if obj_companion.key_pickup[0][0] == 0 {
				obj_dialogue.curr_array = obj_companion.key_pickup
				obj_companion.thinking = true
			    obj_companion.key_pickup[0][0] = 1
			}
			array_push(global.inventory_id.inventory, other.item)
			instance_destroy(other);
		}
		
		else if other.item == global.items[ITEM.COPY_POTION] {
			if obj_companion.copy_pickup[0][0] == 0 {
				obj_dialogue.curr_array = obj_companion.copy_pickup
				obj_companion.thinking = true
			    obj_companion.copy_pickup[0][0] = 1
			}
			array_push(global.inventory_id.inventory, other.item)
			instance_destroy(other);
		}

		else if object_get_parent(asset_get_index(other.item.obj)) == obj_level_animals {
			if !place_meeting(other.x, other.y,  obj_animal_spots) {
				if other.bubble != 0 { instance_destroy(other.bubble) }
				if other.hungry or !other.full or (other.full and !place_meeting(asset_get_index(other.item.obj).x, asset_get_index(other.item.obj).y,  obj_animal_spots)){
					array_push(global.inventory_id.inventory, other.item)
					instance_destroy(other);
				} else {show_debug_message("i cant pickup bc ur full")}
			} else {
				show_debug_message("i cant pickup bc in the barn")
				show_debug_message("PLAYER X AND Y")
				show_debug_message(x)
				show_debug_message(y)
				show_debug_message("CHICKEN X AND Y")
				show_debug_message(asset_get_index(other.item.obj).x)
				show_debug_message(asset_get_index(other.item.obj).y)
				}
		} else {
			if (other.item == global.items[ITEM.COPY_POTION]){
				global.has_potion = true;
			}
			array_push(global.inventory_id.inventory, other.item)
			instance_destroy(other);
		}
	}
}