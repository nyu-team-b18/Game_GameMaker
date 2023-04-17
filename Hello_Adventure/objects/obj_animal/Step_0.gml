/// @Update animal object

if (   place_meeting(x+2, y+2, obj_collidable) 
	or place_meeting(x-2, y-2, obj_collidable)
	or place_meeting(x+2, y-2, obj_collidable)
	or place_meeting(x-2, y+2, obj_collidable)){
	spd *= -1;
}

hmove = 0;
vmove = 0;

if (dir == "hor"){
	hmove = 1;
} else if (dir == "ver"){
	vmove = 1;
}

xspd = spd * hmove;
yspd = spd * vmove;

for (var i = 0; i < abs(xspd); i++){
	if (!place_meeting(x + sign(xspd), y, obj_collidable)){
		x += sign(xspd);
	} else {
		x += sign(-xspd);
		break;
	}
}

for (var i = 0; i < abs(yspd); i++){
	if (!place_meeting(x, y + sign(yspd), obj_collidable)){
		y += sign(yspd);
	} else {
		y += sign(-yspd);
		break;
	}
}

if (spd < 0){
	image_xscale = -1;
	if (sprite_index == animals[animal_ind][0]){
		sprite_index = animals[animal_ind][1];
	}
} else if (spd > 0 ){
	image_xscale = 1;
	if (sprite_index == animals[animal_ind][0]){
		sprite_index = animals[animal_ind][1];
	}
} else {
	sprite_index = animals[animal_ind][0];
}
