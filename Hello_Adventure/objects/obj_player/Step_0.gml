if keyboard_check(vk_left) {
	if (not place_meeting(x-2,y,obj_collidable)) {
		x = x - move_speed;
	}
	image_xscale = -1
	sprite_index = spr_player_walk
} if keyboard_check(vk_right) {
	if (!place_meeting(x+2,y,obj_collidable)) {
		x = x + move_speed;
	}
	image_xscale = 1
	sprite_index = spr_player_walk
} if keyboard_check(vk_up) {
	if (!place_meeting(x,y-2,obj_collidable)) {
		y = y - move_speed;
	}
	sprite_index = spr_player_walk
} if keyboard_check(vk_down) {
	if (!place_meeting(x,y+2,obj_collidable)) {
		y = y + move_speed;
	}
	sprite_index = spr_player_walk
} else {
	sprite_index = spr_player_idle
}