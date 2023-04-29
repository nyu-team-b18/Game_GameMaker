move_speed = 2;

dx = 0;
dy = 0;
knockback_fr = .9;


enum PLAYER_STATE{
	story,
	in_control,
	hurt,
	attack
}

state = PLAYER_STATE.in_control;
sprite_index = spr_player_walk;

path = player_story_path