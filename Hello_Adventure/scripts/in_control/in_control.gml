function in_control(){
	sprite_index = spr_player_walk;
	image_speed = 1;
		
	// horizontal movement
	dx = (keyboard_check(vk_right) - keyboard_check(vk_left)) * move_speed;
	if (dx != 0){ image_xscale = sign(dx); }
		
	// vertical movement
	dy = (keyboard_check(vk_down) - keyboard_check(vk_up)) * move_speed;
		
	#region ENEMY COLLISIONS
	if (!keyboard_check(vk_space) and 
		(place_meeting(x + move_speed, y, obj_enemy) and instance_place(x + move_speed, y, obj_enemy).state != ENEMY_STATE.dead)) {
		if (dx == 0) {
			if (instance_place(x + move_speed, y, obj_enemy)){
				global.playerHealth -= instance_place(x + move_speed, y, obj_enemy).damage;
				dx = move_speed; // left of enemy
			}
		} else {
			if (instance_place(x + dx, y, obj_enemy)){
				global.playerHealth -= instance_place(x + dx, y, obj_enemy).damage;
			}
		}
			
		dx = -10* dx;
		state = PLAYER_STATE.hurt;
			
	} else if (!keyboard_check(vk_space) and 
				(place_meeting(x - move_speed, y, obj_enemy) and instance_place(x - move_speed, y, obj_enemy).state != ENEMY_STATE.dead)){
		if (dx == 0) {
			if (instance_place(x - move_speed, y, obj_enemy)){
				global.playerHealth -= instance_place(x - move_speed, y, obj_enemy).damage;
				dx = -move_speed; // left of enemy
			}
		} else {
			if (instance_place(x + dx, y, obj_enemy)){
				global.playerHealth -= instance_place(x + dx, y, obj_enemy).damage;
			}
		}
			
		dx = -10 * dx;
		state = PLAYER_STATE.hurt;
			
	} else if (!keyboard_check(vk_space) and 
				(place_meeting(x, y + move_speed, obj_enemy) and instance_place(x, y + move_speed, obj_enemy).state != ENEMY_STATE.dead)){
		if (dy == 0) {
			if (instance_place(x, y + move_speed, obj_enemy)){
				global.playerHealth -= instance_place(x, y + move_speed, obj_enemy).damage;
				dy = move_speed; // below enemy
			}
		} else {
			if (instance_place(x, y + dy, obj_enemy)){
				global.playerHealth -= instance_place(x, y + dy, obj_enemy).damage;
			}
		}
			
		dy = -10 * dy;
		state = PLAYER_STATE.hurt;
			
	} else if (!keyboard_check(vk_space) and 
				(place_meeting(x, y - move_speed, obj_enemy) and instance_place(x, y - move_speed, obj_enemy).state != ENEMY_STATE.dead)){
		if (dx == 0) {
			if (instance_place(x, y - move_speed, obj_enemy)){
				global.playerHealth -= instance_place(x, y - move_speed, obj_enemy).damage;
				dy = -move_speed; // above enemy
			}
		} else {
			if (instance_place(x, y + dy, obj_enemy)){
				global.playerHealth -= instance_place(x, y + dy, obj_enemy).damage;
			}
		}
			
		dy = -10 * dy;
		state = PLAYER_STATE.hurt;
			
	}
	#endregion 
	#region COLLISIONS
	else {
		// horizontal collision
		if (place_meeting (x + dx, y, obj_collidable)){ dx = 0; }
		// vertical collision
		if (place_meeting (x, y + dy, obj_collidable)){ dy = 0; }
		
		
		x += dx;
		y += dy;
	}
	#endregion
			
	// IDLE
	if (!keyboard_check(vk_up) and !keyboard_check(vk_down) and !keyboard_check(vk_left) and !keyboard_check(vk_right)) {
		sprite_index = spr_player_idle;
		image_speed = 1;
	}
		
	// PLAYER ATTACKS
	if (keyboard_check(vk_space)){
		image_index = 0;
		state = PLAYER_STATE.attack;
		}
}