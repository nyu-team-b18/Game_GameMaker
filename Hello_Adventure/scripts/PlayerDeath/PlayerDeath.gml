function PlayerDeath(){
	with(obj_enemy){
		state = ENEMY_STATE.alive
	}
	
	var _map = ds_map_create();
	// ROOM
	_map[? "room"] = rm_level_3_A
	
	// PLAYER
	_map[? "playerX"] = 800;
	_map[? "playerY"] = 32;
	//_map[? "playerX"] = 600;
	//_map[? "playerY"] = 130;

	_map[? "playerStamina"] = global.playerStaminaMax;
	_map[? "playerStaminaMax"] = global.playerStaminaMax;
	
	// OTHER
	_map[? "l1state"] = global.l1state;
	_map[? "kills"] = global.kills;
	_map[? "curr_kills"] = -1;
	_map[? "key_used"] = 0;
	_map[? "must_place"] = true;
	_map[? "has_chicks"] = false;
	_map[? "has_potion"] = false;
	_map[? "level"] = LEVEL.LEVEL3;
	
	// GUI
	_map[? "iUI"] = global.iUI;
	
	// INVENTORY
	_map[? "inventory"] = [];
	
	// save all of this data into a string
	var _string = json_encode(_map);
	SaveStringToFile("save" + string(global.gameSaveSlot) + ".sav", _string);
	show_debug_message(_string);
	
	// nuke the data
	ds_map_destroy(_map);
	show_debug_message("Game saved!");
}
