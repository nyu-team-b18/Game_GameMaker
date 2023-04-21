/// @Update LR enemy object

if (spd != 0){
	sprite_index = fire_elem_walk;
}

xspd = spd * hmove;

for (var i = 0; i < abs(xspd); i++){
	if (!place_meeting(x + sign(xspd), y, obj_collidable)){
		x += sign(xspd);
	} else {
		x += sign(-xspd);
		break;
	}
}

if (spd < 0){
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if (place_meeting(x, y, obj_collidable)
	or place_meeting(x, y, obj_enemy_LR)){
	spd *= -1;
}