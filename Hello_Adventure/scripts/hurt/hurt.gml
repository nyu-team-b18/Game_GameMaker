// Player in hurt state
function hurt(){
	sprite_index = spr_player_walk
		
	if (abs(dx) > 0){
		x += (dx / 2);
		dx /= 2;
	} else if (abs(dy) > 0){
		y += (dy / 2);
		dy /= 2;
	} else {
		state = PLAYER_STATE.in_control;
	}

}