/// @description Insert description here
// You can write your code in this editor

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

//// room 3b
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_3_B)
//	obj_player.x = 600
//	obj_player.y = 21
//}

//// room 3c
//if (room == rm_start and keyboard_check(vk_enter)) {
//	room_goto(rm_level_3_B)
//	obj_player.x = 593
//	obj_player.y = 102
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
	obj_player.y = 102
}

// ROOM 3C TO 3B SWITCH
if (room == rm_level_3_C and obj_player.x >= 575 and obj_player.x <= 610 and obj_player.y >= 60 and obj_player.y <= 90) {
	room_goto(rm_level_3_B)
	obj_player.x = 287
	obj_player.y = 1249
}

