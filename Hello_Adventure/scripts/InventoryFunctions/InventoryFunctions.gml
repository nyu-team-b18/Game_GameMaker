// return item to world
function InventoryDrop(inv, index){
	if (array_length(global.inventory_id.inventory) > 0 and 
	index < array_length(global.inventory_id.inventory) and
	canUse(array_length(inv), index)){
		DepleteStamina(array_length(inv), selected_index);
		
		objname = inv[index].obj;
		var obj_to_create = asset_get_index(objname)
		
		var item_to_create = instance_create_layer(
			obj_player.x,
			obj_player.y,
			"Instances",
			obj_to_create
		)
		
		item_to_create.image_xscale = obj_player.image_xscale * -1
		array_delete(inv, index, 1);
		
		if index_value == array_length(inventory){
			index_value = array_length(inventory) - 1
		}
	}
}


// use item (del from inv and dont return to world)
function InventoryUse(inv, index){
	if (array_length(global.inventory_id.inventory) > 0 and 
	index < array_length(global.inventory_id.inventory) and
	canUse(array_length(inv), index)){
		// KEY
		if (inv[index].obj == "obj_key" and 
		position_meeting(obj_player.x, obj_player.y, instance_find(obj_can_unlock, 0))){
			DepleteStamina(array_length(inv), index);

			global.key_used += 1;
			array_delete(inv, index, 1);
			
			if index_value == array_length(inventory){
				index_value = array_length(inventory) - 1
			}
		}
		
		// COPY POTION
		else if (inv[index].obj == "obj_copy_potion" and 
		array_length(global.inventory_id.inventory) <= 6){
			DepleteStamina(array_length(inv), index);
			
			var array_temp = array_create(0);
			array_delete(inv, index, 1);

			for (var i = 0; i < array_length(inv); i += 1){
				array_push(array_temp, inv[i])
			}
			
			var new_inv = array_concat(inv, array_temp)
			global.inventory_id.inventory = new_inv;
			
			if index_value == array_length(inventory){
				index_value = array_length(inventory) - 1
			}
		} 
		// FOOD
		else if (inv[index].obj == "obj_berry" or inv[index].obj == "obj_wheat") {
			show_debug_message("HELP")
			
			var animal = instance_position(obj_player.x, obj_player.y-5, obj_level_animals)

			if animal != noone {
				if ((inv[index].obj == "obj_berry" and animal.food = spr_berry_bubble) or
				   (inv[index].obj == "obj_wheat" and animal.food = spr_wheat_bubble)) and
					!animal.full {
					DepleteStamina(array_length(inv), index);

					animal.hungry = false
					animal.full = true
					if animal.bubble != 0 { instance_destroy(animal.bubble) }
					show_debug_message(animal.full)

						
					array_delete(inv, index, 1);
			
					if index_value == array_length(inventory){
						index_value = array_length(inventory) - 1
					}
				}
			}
		}
	}	
}

function DepleteStamina(total, amt){
	if (global.level != LEVEL.LEVEL1){
		global.playerStamina -= (total - amt - 1) / 2;
	}
}

function canUse(total, amt){
	return (global.playerStamina - ((total - amt - 1) / 2)) >= 0;
}
