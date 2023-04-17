if keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(vk_up) or keyboard_check(vk_down) {
	if keyboard_check(vk_left) {
		if (!place_meeting(x-1,y,obj_collidable)) {
			x = x - move_speed;
		}
		image_xscale = -1
		sprite_index = spr_player_walk
	} if keyboard_check(vk_right) {
		if (!place_meeting(x+1,y,obj_collidable)) {
			x = x + move_speed;
		}
		image_xscale = 1
		sprite_index = spr_player_walk
	} if keyboard_check(vk_up) {
		if (!place_meeting(x,y-1,obj_collidable)) {
			y = y - move_speed;
		}
		sprite_index = spr_player_walk
	} if keyboard_check(vk_down) {
		if (!place_meeting(x,y+1,obj_collidable)) {
			y = y + move_speed;
		}
		sprite_index = spr_player_walk
	} 
} else {
	sprite_index = spr_player_idle
}