/// @description runs when we get response
//if(ds_map_find_value(async_load, "id", post)){
//	if (ds_map_find_value(async_load, "status") == 0){
//		show_message("Worked");
//	} else {
//		show_message("Did not work")
//	}
//} else {
	var _json = async_load[? "result"]; // result of request 

	// convert json to dsmap
	var _map = json_decode(_json);

	if (_map == -1){
		show_debug_message("Invalid result.");
		exit;
	}

	if (ds_map_exists(_map, "playerHealth")){
		var _data = _map[? "playerHealth"];
		show_message("Got data: " + string(_data));
	}
//}
