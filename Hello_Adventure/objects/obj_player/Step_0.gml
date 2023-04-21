
if keyboard_check(vk_down) {
	if (!place_meeting(x,y+move_speed,obj_collidable)) {
		y = y + move_speed;
	}
	sprite_index = spr_player_walk
	show_debug_message("down")
}

if keyboard_check(vk_left) {
	if (!place_meeting(x-move_speed,y,obj_collidable)) {
		x = x - move_speed;
	}
	image_xscale = -1
	sprite_index = spr_player_walk
	show_debug_message("left")
	
} 

if keyboard_check(vk_right) {
	if (!place_meeting(x+move_speed,y,obj_collidable)) {
		x = x + move_speed;
	}
	image_xscale = 1
	sprite_index = spr_player_walk
	show_debug_message("right")
} 


if keyboard_check(vk_up) {
	if (!place_meeting(x,y-move_speed,obj_collidable)) {
		y = y - move_speed;
	}
	sprite_index = spr_player_walk
	show_debug_message("up")
}

if (!keyboard_check(vk_up) and !keyboard_check(vk_down) and !keyboard_check(vk_left) and !keyboard_check(vk_right)) 
{
	sprite_index = spr_player_idle
}
