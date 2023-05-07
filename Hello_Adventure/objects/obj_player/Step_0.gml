#region PLAYER
if obj_dialogue.visible == true {
	state = PLAYER_STATE.not_in_control
}

if global.l1state == "pregame" and x == -30 and y == 110 {
	sprite_index = spr_player_walk;
	state = PLAYER_STATE.not_in_control;
	image_xscale = 1
	path_start(path, 1, path_action_stop, false)
} if global.l1state == "path" and x == 172 and y == 110 {
	path = player_follows_path
	sprite_index = spr_player_walk;
	state = PLAYER_STATE.not_in_control;
	image_xscale = 1
	path_start(path, 1, path_action_stop, false)
} 

#region PATH
if path_position == 1 {
	if path == player_story_path {
		sprite_index = spr_player_idle;
		global.l1state = "story"
	}
	
	if path == player_follows_path {
		sprite_index = spr_player_idle;
		global.l1state = "d1"
		path = "DONE"
	}
}
#endregion

if global.l1state == "l1w1" {state = PLAYER_STATE.in_control;}


switch (state){
	case PLAYER_STATE.not_in_control:
		#region
		break;
		#endregion
		
	case PLAYER_STATE.hurt:
		#region HURT
		hurt();
		break;
		#endregion
		
	case PLAYER_STATE.in_control:
		#region IN CONTROL
		in_control();
		break;
		#endregion
		
	case PLAYER_STATE.attack:
		#region ATTACK
		attack();
		break;
		#endregion
	default: 
		throw ("invalid state");
}
#endregion

#region COMPANION
if (x != xprevious or y != yprevious){
	for (var i = array_size - 1; i > 0; i --){
		pos_x[i] = pos_x[i-1];
		pos_y[i] = pos_y[i-1];
		
		comp_sprite[i] = comp_sprite[i-1];
		comp_Xscale[i] = comp_Xscale[i-1];
	}
	pos_x[0] = x;
	pos_y[0] = y;
	
	comp_sprite[0] = sprite_index;
	comp_Xscale[0] = image_xscale;
}
#endregion

#region DROPPING
spot_inst = instance_place(x, y, obj_animal_spots)
#endregion
