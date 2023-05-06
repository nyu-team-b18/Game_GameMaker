function SaveGame(){
	var _map = ds_map_create();
	
	_map[? "room"] = room;
	_map[? "playerHealth"] = global.playerHealth;
	_map[? "playerHealthMax"] = global.playerHealthMax;
	_map[? "playerStamina"] = global.playerStamina;
	_map[? "playerStaminaMax"] = global.playerStaminaMax;
	_map[? "kills"] = global.kills;
	_map[? "curr_kills"] = global.curr_kills;
	_map[? "key_used"] = global.key_used;
	_map[? "has_chicks"] = global.has_chicks;
	_map[? "targetX"] = global.targetX;
	_map[? "targetY"] = global.targetY;
	
	_map[? "inv_id"] = global.inventory_id;
	
	var inv = []
	for (var i = 0; i < array_length(global.inventory_id.inventory); i++){
		array_push(inv, global.inventory_id.inventory[i].obj)
	}
	
	_map[? "inventory"] = inv;
	//_map[? "inventory_id"] = global.inventory_id;
	//_map[? "inventory_id"] = global.inventory_id;
	
	// save all of this data into a string
	var _string = json_encode(_map);
	SaveStringToFile("save" + string(global.gameSaveSlot) + ".sav", _string);
	show_debug_message(_string);
	
	// nuke the data
	ds_map_destroy(_map);
	show_debug_message("Game saved!");
}


function SaveStringToFile(_filename, _string){
	var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, _filename);
	buffer_delete(_buffer);
}
