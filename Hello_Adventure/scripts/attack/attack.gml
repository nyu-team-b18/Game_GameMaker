function attack(){
	sprite_index = spr_player_attack_3;
	image_speed = 3;
	#region MOVEMENT
	// horizontal movement
	dx = (keyboard_check(vk_right) - keyboard_check(vk_left)) * move_speed;
	if (dx != 0){ image_xscale = sign(dx); }
		
	// vertical movement
	dy = (keyboard_check(vk_down) - keyboard_check(vk_up)) * move_speed;
		
	// horizontal collision
	if (place_meeting (x + dx, y, obj_collidable)){ dx = 0; }
	// vertical collision
	if (place_meeting (x, y + dy, obj_collidable)){ dy = 0; }
		
	x += dx;
	y += dy;
	#endregion
}