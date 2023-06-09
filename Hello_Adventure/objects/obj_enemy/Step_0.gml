/// @Updates for enemy objects

switch(state){
	case ENEMY_STATE.alive:
		#region Alive enemy
		
		switch(eneType){		
			case ENEMY_TYPE.left_right:
				#region Left-Right Enemy
				sprite_index = fire_elem_walk;
				xspd = spd * hmove;
					// movement
				for (var i = 0; i < abs(xspd); i++){
					if (!place_meeting(x + sign(xspd), y, obj_collidable)){
						x += sign(xspd);
					} else {
						x += sign(-xspd);
						break;
					}
				}
	
				if (spd < 0){ image_xscale = -1; } 
				else { image_xscale = 1; }
	
					// collisions
				if (place_meeting(x, y, obj_collidable) or place_meeting(x, y, obj_enemy)){ spd *= -1;}
	
				if (!keyboard_check(vk_space) and place_meeting(x + obj_player.dx, y, obj_player)){
					spd *= -1;
					alarm[0] = 121 - alarm[0];
				} 
				
				break;
				#endregion
			
			case ENEMY_TYPE.up_down:
				#region Up-Down Enemy
				sprite_index = fire_elem_walk;
				yspd = spd * vmove;
					// movement
				for (var i = 0; i < abs(yspd); i++){
					if (!place_meeting(x, y + sign(yspd), obj_collidable)){
						y += sign(yspd);
					} else if (!place_meeting(x, y - sign(yspd), obj_collidable)){
						y += sign(-yspd);
						break;
					}
				}

				if (spd < 0){ image_xscale = -1; } 
				else { image_xscale = 1; }
	
					// collisions
				if (place_meeting(x, y, obj_collidable) or place_meeting(x, y, obj_enemy)){ spd *= -1; }
	
				if (!keyboard_check(vk_space) and place_meeting(x, y + obj_player.dy, obj_player)){
					spd *= -1;
					alarm[0] = 121 - alarm[0];
				}  
	
				break;
				#endregion
	
			case ENEMY_TYPE.in_place:
				#region In-Place
				sprite_index = fire_elem_attack;
				break;
				#endregion
		
			default:
			throw ("invalid state");
		}
		
		break;
		#endregion

	case ENEMY_STATE.dead:
		#region Dead enemy (inactive)
		sprite_index = fire_elem_death;
		if animation_hit_frame(7){ image_index = 7; }
		if (not killed){
			global.curr_kills += 1;
			killed = true;
		}
		if (global.curr_kills == global.kills and global.must_place){
			instance_create_layer(x, y, "Instances", obj_key);
			global.must_place = false;
		}
	
		break;
		#endregion
	
	default:
	throw ("invalid state");
}

if ( obj_player.state == PLAYER_STATE.attack and 
	(place_meeting(x + obj_player.move_speed, y, obj_player) or
	 place_meeting(x - obj_player.move_speed, y, obj_player) or
	 place_meeting(x, y - obj_player.move_speed, obj_player) or
	 place_meeting(x, y + obj_player.move_speed, obj_player))){
	 state = ENEMY_STATE.dead;
} 
