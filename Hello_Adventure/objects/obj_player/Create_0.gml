move_speed = 2;

dx = 0;
dy = 0;
knockback_fr = .9;


enum PLAYER_STATE{
	in_control,
	hurt
}

state = PLAYER_STATE.in_control;
sprite_index = spr_player_idle;