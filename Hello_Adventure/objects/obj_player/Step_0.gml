if keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(vk_up) or keyboard_check(vk_down) {
	if keyboard_check(vk_left) {
	    x = x - move_speed;
		image_xscale = -1
		sprite_index = spr_player_walk
	} if keyboard_check(vk_right) {
	    x = x + move_speed;
		image_xscale = 1
		sprite_index = spr_player_walk
	} if keyboard_check(vk_up) {
	    y = y - move_speed;
		sprite_index = spr_player_walk
	} if keyboard_check(vk_down) {
	    y = y + move_speed;
		sprite_index = spr_player_walk
	} 
} else {
	sprite_index = spr_player_idle
}