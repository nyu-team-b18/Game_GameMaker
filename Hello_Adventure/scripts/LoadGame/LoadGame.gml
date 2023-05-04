function LoadGame(_slot){
/*
	global.gameSaveSlot =_slot;
	var _file = "save" + string(global.gameSaveSlot) + ".sav";
	if(file_exists(_file)){
		// Load the game data
		var _json = LoadJSONFile(_file);
		
		// Global Variables
		global.playerHealth = _json[? "playerHealth"];
		global.playerHealthMax= _json[? "playerHealth"];
		global.playerStamina = _json[? "playerStamina"];
		global.playerStaminaMax = _json[? "playrStaminaMax"];
		global.kills = _json[? "kills"];
		global.curr_kills = _json[? "curr_kills"];
		global.key_used = _json[? "key_used"];
		global.has_chicks = _json[? "has_chicks"];
		global.inventory_id = _json[? "inv_id"];
		
		var inv = _json[? "inventory"];
		global.inventory_id.inventory = []
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
		
		// Room
		room = _json[? "playerHealth"];
		ds_map_destroy(_json);
		
		return true;
	} else {
		show_debug_message("no save in this slot");
		return false; 
	}
}

function LoadJSONFile(_filename){
	var _buffer = buffer_load(_filename);
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _json = json_decode(_string); // contains DS map
	return _json;
	*/
}