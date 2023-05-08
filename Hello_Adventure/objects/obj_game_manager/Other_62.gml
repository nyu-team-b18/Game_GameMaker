/// @description runs when we get response
if(ds_map_find_value(async_load, "id") == post){
	if (ds_map_find_value(async_load, "status") == 0){
		//show_message("Worked");
	} else {
		//show_message("Did not work")
	}
} else {
	var _json = async_load[? "result"]; // result of request 

	// convert json to dsmap
	var _map = json_decode(_json);

	if (_map == -1){
		show_debug_message("Invalid result.");
		exit;
	} else {
		//var _data = _map[? "playerHealth"];
		//show_message("Got data: " + string(_data));
		
		// PLAYER
		obj_player.x = _map[? "playerX"];
		obj_player.y = _map[? "playerY"];
	
		//global.playerHealth = _map[? "playerHealth"];
		//global.playerHealthMax= _map[? "playerHealth"];

		global.playerStamina = _map[? "playerStamina"];
		global.playerStaminaMax = _map[? "playerStaminaMax"];
		
		// OTHER
		global.l1state = _map[? "l1state"];
		global.kills = _map[? "kills"];
		global.curr_kills = _map[? "curr_kills"];
		global.key_used = _map[? "key_used"];
		global.must_place = _map[? "must_place"];
		global.has_chicks = _map[? "has_chicks"];
		global.has_potion = _map[? "has_potion"];
		global.level = _map[? "level"];
		
		// GUI
		//global.iUI = _map[? "iUI"];
		
		// INVENTORY
		var _inv = _map[? "inventory"];
		global.inventory_id.inventory = []
		
		if (!is_ptr(_inv)){
			var inv = string_split(_inv, ",");
			for (var i = 0; i < array_length(inv); i++){
					 if(inv[i] == "obj_brown_chicken"){ array_push(global.inventory_id.inventory, global.items[ITEM.BR_CHICKEN]); }
				else if(inv[i] == "obj_black_chicken"){ array_push(global.inventory_id.inventory, global.items[ITEM.BL_CHICKEN]); }
				else if(inv[i] == "obj_copy_potion"){ array_push(global.inventory_id.inventory, global.items[ITEM.COPY_POTION]); }
				else if(inv[i] == "obj_key"){ array_push(global.inventory_id.inventory, global.items[ITEM.KEY]); }
				else if(inv[i] == "obj_black_cow"){ array_push(global.inventory_id.inventory, global.items[ITEM.BL_COW]); }
				else if(inv[i] == "obj_brown_cow"){ array_push(global.inventory_id.inventory, global.items[ITEM.BR_COW]); }
				else if(inv[i] == "obj_strawberry_cow"){ array_push(global.inventory_id.inventory, global.items[ITEM.ST_COW]); }
				else if(inv[i] == "obj_baby_chick"){ array_push(global.inventory_id.inventory, global.items[ITEM.BABY_CHICK]); }
				else if(inv[i] == "obj_wheat"){ array_push(global.inventory_id.inventory, global.items[ITEM.WHEAT]); }
				else if(inv[i] == "obj_berry"){ array_push(global.inventory_id.inventory, global.items[ITEM.BERRY]); }
			}
		}
		
		// ROOM
		room_goto(_map[? "room"]);
	}

	/*
	if (ds_map_exists(_map, "playerHealth")){
		var _data = _map[? "playerHealth"];
		show_message("Got data: " + string(_data));
	}
	*/
}
