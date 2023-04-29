#region ROOM CONTROL
// START TO ROOM 1
// USE THIS CODE TO SWITCH ROOMS FOR TESTING
// comment out the if statement needed to start at the needed room
//room 1
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_1)
//	obj_player.x = 20
//	obj_player.y = 100
//}

// room 3a
if (room == rm_start and keyboard_check(vk_enter)) {
	room_goto(rm_level_3_A)
	obj_player.x = 800
	obj_player.y = 32
}

// room 3b
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_3_B)
//	obj_player.x = 600
//	obj_player.y = 21
//}

 //room 3c
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_3_C)
//	obj_player.x = 593
//	obj_player.y = 108
//}

 //room 3d
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_3_D)
//	obj_player.x = 103
//	obj_player.y = 285
//}

//room 3e
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_3_E)
//	obj_player.x = 740
//	obj_player.y = 445
//}

// ROOM 1 TO 3A SWITCH
if (room == rm_level_1 and obj_player.x >= 700 and obj_player.x <= 780 and obj_player.y >= 475) {
	room_goto(rm_level_3_A)
	obj_player.x = 800
	obj_player.y = 32
}

// ROOM 3A TO 1 SWITCH
if (room == rm_level_3_A and obj_player.x >= 760 and obj_player.x <= 840 and obj_player.y <= -10) {
	room_goto(rm_level_1)
	obj_player.x = 736
	obj_player.y = 440
}

// ROOM 3A TO 3B SWITCH
if (room == rm_level_3_A and obj_player.x >= 150 and obj_player.x <= 250 and obj_player.y >= 1025) {
	room_goto(rm_level_3_B)
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

// ROOM 3D TO 3C
if (room == rm_level_3_D and obj_player.x >= 90 and obj_player.x <= 124 and obj_player.y >= 320) {
	room_goto(rm_level_3_C)
	obj_player.x = 945
	obj_player.y = 900
}


// ROOM 3D TO 3E
if (room == rm_level_3_D and obj_player.x >= 620 and obj_player.y >= 113 and obj_player.y <= 176) {
	room_goto(rm_level_3_E)
	obj_player.x = 736
	obj_player.y = 440
}


// ROOM 3E TO 3D
if (room == rm_level_3_E and obj_player.x >= 700 and obj_player.x <= 780 and obj_player.y >= 475) {
	room_goto(rm_level_3_D)
	obj_player.x = 570
	obj_player.y = 150
}
#endregion

#region UNLOCK DOOR
if (global.key_used){
	layer_set_visible(layer_get_id("Door_Closed"), false);
	layer_set_visible(layer_get_id("Door_Open"), true);
}
#endregion