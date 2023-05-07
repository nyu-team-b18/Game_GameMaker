/// @Create Enemy object
damage = .5;

enum ENEMY_TYPE{
	left_right,
	up_down,
	in_place
}

enum ENEMY_STATE{
	alive,
	dead
}

eneType = ENEMY_TYPE.in_place;
state = ENEMY_STATE.alive;
killed = false;