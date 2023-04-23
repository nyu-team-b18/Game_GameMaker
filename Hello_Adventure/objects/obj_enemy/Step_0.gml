/// @Updates for enemy objects

switch(state){
	case ENEMY_STATE.left_right:
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
	//image_xscale = (spd < 0)
		// collisions
	if (place_meeting(x, y, obj_collidable)
		or place_meeting(x, y, obj_enemy)){
		spd *= -1;
	}
	
	break;
	#endregion
	
	case ENEMY_STATE.up_down:
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
	if (place_meeting(x, y, obj_collidable)
		or place_meeting(x, y, obj_enemy)){
		spd *= -1;
	}
	
	break;
	#endregion
	
	case ENEMY_STATE.in_place:
	#region In-Place
	sprite_index = fire_elem_attack;
	break;
	#endregion
	
	case ENEMY_STATE.knockback:
	#region Enemy gets knocked back
	
	
	break;
	#endregion
	
	case ENEMY_STATE.dead:
	#region Dead enemy (inactive)
	sprite_index = fire_elem_death;
	if animation_hit_frame(7){ image_index = 7; }
	break;
	#endregion
	
	default:
	throw ("invalid state");

}

if ( keyboard_check(vk_space) and 
	(place_meeting(x + obj_player.dx, y, obj_player) or
	 place_meeting(x, y + obj_player.dy, obj_player) or 
	 place_meeting(x - obj_player.dx, y, obj_player) or
	 place_meeting(x, y - obj_player.dy, obj_player))){
		state = ENEMY_STATE.dead;
}
