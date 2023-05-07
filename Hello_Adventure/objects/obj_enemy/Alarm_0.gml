/// @Alarm for enemy movement

switch(state){
	case ENEMY_STATE.alive:
	switch(eneType){
		case ENEMY_TYPE.left_right:
		#region Left-Right Enemy Movement
		spd *= -1;
		alarm[0] = 120;
		break;
		#endregion
	
		case ENEMY_TYPE.up_down:
		#region Up-Down Enemy Movement
		spd *= -1;
		alarm[0] = 120;
		break;
		#endregion
	}
	break;
}
