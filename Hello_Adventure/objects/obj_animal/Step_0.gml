/// @Update animal instance

xspd = speed * hmove;
yspd = speed * vmove;

if (dir == "hor") {
	for (var i = 0; i < abs(xspd); i++){
		if (!place_meeting(x + sign(xspd), y, obj_collidable)){
			x += sign(xspd);
		} else {
			x += sign(-xspd);
			break;
		}
	}
}

if (dir == "ver" ){
	for (var i = 0; i < abs(xspd); i++){
		if (!place_meeting(x, y + sign(xspd), obj_collidable)){
			y += sign(xspd);
		} else {
			y += sign(-xspd);
			break;
		}
	}
}

if (speed < 0){
	image_xscale = -1;
	if (sprite_index == animals[animal_ind][0]){
		sprite_index = animals[animal_ind][1];
	}
} else if (speed > 0 ){
	image_xscale = 1;
	if (sprite_index == animals[animal_ind][0]){
		sprite_index = animals[animal_ind][1];
	}
} else {
	sprite_index = animals[animal_ind][0];
}

if (place_meeting(x, y, obj_collidable) or place_meeting(x, y, obj_animal)){
	speed *= 1;
}
