switch (state){
	case PLAYER_STATE.hurt:
		#region
		sprite_index = spr_player_walk
		dx = lerp(knockback_fr, 0, 0.10);
		
		if (abs(dx) < 1){
			state = PLAYER_STATE.in_control;
		}
		
		break;
		#endregion
		
	case PLAYER_STATE.in_control:
		#region
		sprite_index = spr_player_walk;
		
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
					dx = 1 * move_speed; // left of enemy
				}
			} else {
				if (instance_place(x + dx, y, obj_enemy)){
					global.playerHealth -= instance_place(x + dx, y, obj_enemy).damage;
				}
			}
			
			dx = -10* dx;
			//state = PLAYER_STATE.hurt;
			
		} else if (!keyboard_check(vk_space) and 
					(place_meeting(x - move_speed, y, obj_enemy) and instance_place(x - move_speed, y, obj_enemy).state != ENEMY_STATE.dead)){
			if (dx == 0) {
				if (instance_place(x - move_speed, y, obj_enemy)){
					global.playerHealth -= instance_place(x - move_speed, y, obj_enemy).damage;
					dx = -1 * move_speed; // left of enemy
				}
			} else {
				if (instance_place(x + dx, y, obj_enemy)){
					global.playerHealth -= instance_place(x + dx, y, obj_enemy).damage;
				}
			}
			
			dx = -10 * dx;
			//state = PLAYER_STATE.hurt;
			
		} else if (!keyboard_check(vk_space) and 
					(place_meeting(x, y + move_speed, obj_enemy) and instance_place(x, y + move_speed, obj_enemy).state != ENEMY_STATE.dead)){
			if (dy == 0) {
				if (instance_place(x, y + move_speed, obj_enemy)){
					global.playerHealth -= instance_place(x, y + move_speed, obj_enemy).damage;
					dy = 1 * move_speed; // left of enemy
				}
			} else {
				if (instance_place(x, y + dy, obj_enemy)){
					global.playerHealth -= instance_place(x, y + dy, obj_enemy).damage;
				}
			}
			
			dy = -10 * dy;
			//state = PLAYER_STATE.hurt;
			
		} else if (!keyboard_check(vk_space) and 
					(place_meeting(x, y - move_speed, obj_enemy) and instance_place(x, y - move_speed, obj_enemy).state != ENEMY_STATE.dead)){
			if (dx == 0) {
				if (instance_place(x, y - move_speed, obj_enemy)){
					global.playerHealth -= instance_place(x, y - move_speed, obj_enemy).damage;
					dy = -1 * move_speed; // left of enemy
				}
			} else {
				if (instance_place(x, y + dy, obj_enemy)){
					global.playerHealth -= instance_place(x, y + dy, obj_enemy).damage;
				}
			}
			
			dy = -10 * dy;
			//state = PLAYER_STATE.hurt;
			
		} 
		
		
		// horizontal collision
		if (place_meeting (x + dx, y, obj_collidable)){  dx = 0; }
		// vertical collision
		if (place_meeting (x, y + dy, obj_collidable)){ dy = 0; }
		
		
		x += dx;
		y += dy;
		
		if (!keyboard_check(vk_up) and !keyboard_check(vk_down) and !keyboard_check(vk_left) and !keyboard_check(vk_right)) {
			sprite_index = spr_player_idle;
		}
		
		break;
		#endregion
		
	default: 
		throw ("invalid state");
}

//if (state == PLAYER_STATE.in_control and place_meeting(x, y, obj_enemy) and !obj_enemy.alive){
//	dx = -dx;
//	state = PLAYER_STATE.hurt;
//}


/*
#region
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

if (!keyboard_check(vk_up) and !keyboard_check(vk_down) and !keyboard_check(vk_left) and !keyboard_check(vk_right)) {
	sprite_index = spr_player_idle
}
#endregion
*/