// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function http_post(){
	/// @description http_post
	var _map = ds_map_create();
	
	// ROOM
	_map[? "room"] = room;
	
	// PLAYER
	_map[? "playerX"] = obj_player.x;
	_map[? "playerY"] = obj_player.y;

	_map[? "playerStamina"] = global.playerStamina;
	_map[? "playerStaminaMax"] = global.playerStaminaMax;
	
	// OTHER
	_map[? "l1state"] = global.l1state;
	_map[? "kills"] = global.kills;
	_map[? "curr_kills"] = global.curr_kills;
	_map[? "key_used"] = global.key_used;
	_map[? "must_place"] = global.must_place;
	_map[? "has_chicks"] = global.has_chicks;
	_map[? "has_potion"] = global.has_potion;
	_map[? "level"] = global.level;
	
	// INVENTORY
	var inv = ""
	for (var i = 0; i < array_length(global.inventory_id.inventory); i++){
		inv += ("," + global.inventory_id.inventory[i].obj);
	}
	_map[? "inventory"] = inv;
	
	
	var _string = json_encode(_map);
	ds_map_destroy(_map);
	show_debug_message("Data ready to post!");

	var _headerMap = ds_map_create();
	ds_map_add(_headerMap, "Content-Type", "application/json");

	post = http_request("http://127.0.0.1:5000/updatePlayerState", "POST", _headerMap, _string);
	ds_map_destroy(_headerMap);
}