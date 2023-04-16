/// @description Insert description here
// You can write your code in this editor

show_debug_message("HELLO")
show_debug_message(obj_player.x, obj_player.y)

if (room == rm_level_3_A and obj_player.x == 200 and obj_player.y == 1025) {
	room_goto(rm_level_3_B)
}

if (room == rm_level_3_B and obj_player.x >= 500 and obj_player.x <= 700 and obj_player.y <= -20) {
	room_goto(rm_level_3_A)

}

