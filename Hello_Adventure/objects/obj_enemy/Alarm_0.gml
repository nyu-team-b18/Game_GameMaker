/// @Alarm for enemy movement

switch(state){
	case ENEMY_STATE.left_right:
	#region Left-Right Enemy Movement
	spd *= -1;
	alarm[0] = 120;
	break;
	#endregion
	
	case ENEMY_STATE.up_down:
	#region Up-Down Enemy Movement
	spd *= -1;
	alarm[0] = 120;
	break;
	#endregion
}
