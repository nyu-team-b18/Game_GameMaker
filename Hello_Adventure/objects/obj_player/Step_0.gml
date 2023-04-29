if global.l1state == "pregame" and x == -30 and y == 110 {
	state = PLAYER_STATE.story;
	sprite_index = spr_player_walk;
	image_xscale = 1
	path_start(path, 1, path_action_stop, false)
} 

//if path_position == 1 {
////	 change to idle when exists
//	state = PLAYER_STATE.in_control;
//}



switch (state){
	case PLAYER_STATE.story:
		#region
		if path_position == 1 {
			sprite_index = spr_player_idle
			global.l1state = "story"
			state = PLAYER_STATE.in_control;
		}
		break;
		#endregion
		
	case PLAYER_STATE.hurt:
		#region
		sprite_index = spr_player_walk
		
		if (abs(dx) > 0){
			x += (dx / 2);
			dx /= 2;
		} else if (abs(dy) > 0){
			y += (dy / 2);
			dy /= 2;
		} else {
			state = PLAYER_STATE.in_control;
		}
		
		break;
		#endregion
		
	case PLAYER_STATE.in_control:
		#region
		sprite_index = spr_player_walk;
		image_speed = 1;
		
		// horizontal movement
		dx = (keyboard_check(vk_right) - keyboard_check(vk_left)) * move_speed;
		if (dx != 0){ image_xscale = sign(dx); }
		
		// vertical movement
		dy = (keyboard_check(vk_down) - keyboard_check(vk_up)) * move_speed;
		
		// enemy collision
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
			
		} else {
			// horizontal collision
			if (place_meeting (x + dx, y, obj_collidable)){ dx = 0; }
			// vertical collision
			if (place_meeting (x, y + dy, obj_collidable)){ dy = 0; }
		
		
			x += dx;
			y += dy;
		}
		
		// horizontal collision
		if (place_meeting (x + dx, y, obj_collidable)){ dx = 0; }
		// vertical collision
		if (place_meeting (x, y + dy, obj_collidable)){ dy = 0; }
		
		
		if (!keyboard_check(vk_up) and !keyboard_check(vk_down) and !keyboard_check(vk_left) and !keyboard_check(vk_right)) {
			sprite_index = spr_player_idle;
			image_speed = 1;
		}
		
		// Player attacks
		if (keyboard_check(vk_space)){
			image_index = 0;
			state = PLAYER_STATE.attack;
			}
		
		break;
		#endregion
		
	case PLAYER_STATE.attack:
	#region
		sprite_index = spr_player_attack_3;
		image_speed = 3;
	break;
	#endregion
	
	default: 
		throw ("invalid state");
}
