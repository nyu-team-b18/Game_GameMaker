/// @Update Up-Down enemy object

if (spd != 0){
	sprite_index = fire_elem_walk;
}

yspd = spd * vmove;

for (var i = 0; i < abs(yspd); i++){
	if (!place_meeting(x, y + sign(yspd), obj_collidable)){
		y += sign(yspd);
	} else if (!place_meeting(x, y - sign(yspd), obj_collidable)){
		y += sign(-yspd);
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