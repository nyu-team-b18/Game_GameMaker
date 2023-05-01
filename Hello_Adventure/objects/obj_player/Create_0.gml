#region PLAYER
move_speed = 2;

dx = 0;
dy = 0;

enum PLAYER_STATE{
	not_in_control,
	in_control,
	hurt,
	attack
}

state = PLAYER_STATE.in_control;
sprite_index = spr_player_walk;
path = player_story_path
#endregion

#region COMPANION
array_size = 94; 

for (var i = array_size - 1; i >= 0; i-- ){
	pos_x[i] = x;
	pos_y[i] = y;
	
	comp_sprite[i] = baby_strawberry_cow_idle;
	comp_Xscale[i] = image_xscale;
}


var companion_1 = instance_create_layer(x, y, "Player", obj_companion);
companion_1.record = 10;
#endregion
