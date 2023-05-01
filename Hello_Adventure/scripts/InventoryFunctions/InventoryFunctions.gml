// return item to world
function InventoryDrop(inv, index){
	if array_length(global.inventory_id.inventory) > 0 and index < array_length(global.inventory_id.inventory) {
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
	}	
}


// use item (del from inv and dont return to world)
function InventoryUse(inv, index){
	if array_length(global.inventory_id.inventory) > 0 and index < array_length(global.inventory_id.inventory){
		// KEY
		if (inv[index].obj == "obj_key" and 
			position_meeting(obj_player.x, obj_player.y, instance_find(obj_can_unlock, 0))){
			global.key_used += 1;
			array_delete(inv, index, 1);
		}
		
		
		// COPY POTION
		else if (inv[index].obj == "obj_copy_potion"){
			var array_temp = array_create(0);
			array_delete(inv, index, 1);

			for (var i = 0; i < array_length(inv); i += 1){
				array_push(array_temp, inv[i])
			}
			
			var new_inv = array_concat(inv, array_temp)
			global.inventory_id.inventory = new_inv;
		}
	}	
}




