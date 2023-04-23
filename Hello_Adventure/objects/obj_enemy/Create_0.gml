/// @Create Enemy object
damage = .5;

enum ENEMY_STATE{
	left_right,
	up_down,
	in_place,
	knockback,
	dead
}
 
state = ENEMY_STATE.in_place;