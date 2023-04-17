/// @Update enemy object

xspd = speed * hmove;

for (var i = 0; i < abs(xspd); i++){
	if (!place_meeting(x + sign(xspd), y, obj_collidable)){
		x += sign(xspd);
	} else {
		x += sign(-xspd);
		break;
	}
}

if (speed < 0){
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if (place_meeting(x, y, obj_collidable)
	or place_meeting(x, y, obj_cactus) 
	or place_meeting(x, y, obj_enemy_LR)){
	speed *= 1;
}