draw_set_font(silver_font);

#region INVENTORY VISIBILITY
if global.l1state == "pregame" or global.l1state == "path" or obj_dialogue.visible == true {
	global.inventory_id.visible = false
} else {
	global.inventory_id.visible = true
}
#endregion

#region COMPANION VISIBILITY
if room == rm_start or global.level == LEVEL.LEVEL1 or global.level == LEVEL.LEVEL2 {
	if global.l1state == "DONE" {
		obj_companion.visible = true 
	} else {
		obj_companion.visible = false 
	}
}
#endregion

#region ROOM CONTROL
// START TO ROOM 1
// USE THIS CODE TO SWITCH ROOMS FOR TESTING
// comment out the if statement needed to start at the needed room

//room 1
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_1)
//	global.level = LEVEL.LEVEL1
//	obj_player.x = -30
//	obj_player.y = 110
//}

// room 3a
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_3_A)
//	global.level = LEVEL.LEVEL3
//	obj_player.x = 800
//	obj_player.y = 32
//}

 //room 3b
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_3_B)
//	global.level = LEVEL.LEVEL3
//	obj_player.x = 600
//	obj_player.y = 21
//}

 //room 3c
if (room == rm_start and keyboard_check(vk_enter)) {
	room_goto(rm_level_3_C)
	global.level = LEVEL.LEVEL3
	obj_player.x = 593
	obj_player.y = 108
}

 //room 3d
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_3_D)
//	global.level = LEVEL.LEVEL3
//	obj_player.x = 103
//	obj_player.y = 285
//}

//room 3e
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_3_E)
//	global.level = LEVEL.LEVEL3
//	obj_player.x = 740
//	obj_player.y = 445
//}

// GLOBAL CHECKS
if room == rm_level_1 { 
	global.level = LEVEL.LEVEL1
}
if room == rm_level_1 and (global.l1state == "l2w1" or global.l1state == "l2w2" or global.l1state == "l2w3") { 
	global.level = LEVEL.LEVEL2
} else if room == rm_level_3_A or room == rm_level_3_B or room == rm_level_3_C {
	global.level = LEVEL.LEVEL3
} else if room == rm_level_3_D {
	global.level = LEVEL.ENEMY_LAIR
} else if room == rm_level_3_E {
	global.level = LEVEL.END
}

// ROOM 1 TO 3A SWITCH
if (room == rm_level_1 and global.l1state == "DONE" and obj_player.x >= 700 and obj_player.x <= 780 and obj_player.y >= 475) {
	room_goto(rm_level_3_A)
	show_debug_message("3A SHOWN")
	obj_player.x = 800
	obj_player.y = 32
}

// ROOM 3A TO 1 SWITCH
//if (room == rm_level_3_A and obj_player.x >= 760 and obj_player.x <= 840 and obj_player.y <= -10) {
//	room_goto(rm_level_1)
//	obj_player.x = 736
//	obj_player.y = 440
//}


// ROOM 3A TO 3B SWITCH
if (room == rm_level_3_A and obj_player.x >= 150 and obj_player.x <= 250 and obj_player.y >= 1025) {
	room_goto(rm_level_3_B)
	show_debug_message("3B SHOWN")
	obj_player.x = 600
	obj_player.y = 21
}

// ROOM 3B TO 3A SWITCH
if (room == rm_level_3_B and obj_player.x >= 500 and obj_player.x <= 700 and obj_player.y <= -20) {
	room_goto(rm_level_3_A)
	obj_player.x = 200
	obj_player.y = 985
}

// ROOM 3B TO 3C SWITCH
if (room == rm_level_3_B and obj_player.x >= 270 and obj_player.x <= 300 and obj_player.y >= 1210 and obj_player.y <= 1230) {
	room_goto(rm_level_3_C)
	obj_player.x = 593
	obj_player.y = 135
}

// ROOM 3C TO 3B SWITCH
if (room == rm_level_3_C and obj_player.x >= 575 and obj_player.x <= 610 and obj_player.y >= 60 and obj_player.y <= 90) {
	room_goto(rm_level_3_B)
	obj_player.x = 287
	obj_player.y = 1274
}

// ROOM 3B TO 3C SWITCH -ALTERNATIVE-
if (room == rm_level_3_B and obj_player.x >= 868 and obj_player.x <= 890 and obj_player.y >= 414 and obj_player.y <= 430) {
	room_goto(rm_level_3_C)
	obj_player.x = 967
	obj_player.y = 700
}

// ROOM 3C TO 3B SWITCH -ALTERNATIVE-
if (room == rm_level_3_C and obj_player.x >= 955 and obj_player.x <= 990 and obj_player.y >= 610 and obj_player.y <= 645) {
	room_goto(rm_level_3_B)
	obj_player.x = 880
	obj_player.y = 410
}


// ROOM 3C TO 3D
if (room == rm_level_3_C and obj_player.x >= 935 and obj_player.x <= 954 and obj_player.y >= 862 and obj_player.y <= 872) {
	room_goto(rm_level_3_D)
	obj_player.x = 103
	obj_player.y = 285
}

/*
// ROOM 3D TO 3C
if (room == rm_level_3_D and obj_player.x >= 90 and obj_player.x <= 124 and obj_player.y >= 320) {
	room_goto(rm_level_3_C)
	obj_player.x = 945
	obj_player.y = 900
}
*/

// ROOM 3D TO 3E
if (global.has_chicks){
	if (room == rm_level_3_D and obj_player.x >= 620 and obj_player.y >= 113 and obj_player.y <= 176) {
		room_goto(rm_level_3_E)
		obj_player.x = 736
		obj_player.y = 440
	}
}

/*
// ROOM 3E TO 3D
if (room == rm_level_3_E and obj_player.x >= 700 and obj_player.x <= 780 and obj_player.y >= 475) {
	room_goto(rm_level_3_D)
	obj_player.x = 570
	obj_player.y = 150
}
*/
#endregion

#region UNLOCK DOOR
if (global.key_used == 2 and room == rm_level_3_C){
	layer_set_visible(layer_get_id("Door_Closed"), false);
	layer_set_visible(layer_get_id("Door_Open"), true);
	instance_destroy(instance_find(obj_door_lock, 0));
}
#endregion
