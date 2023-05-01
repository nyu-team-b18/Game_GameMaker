event_inherited();

if !alarm_is_set and safe {
	alarm[1] = 300
	alarm_is_set = true
	show_hunger = true
}

if (   place_meeting(x+2, y+2, obj_collidable) 
	or place_meeting(x-2, y-2, obj_collidable)
	or place_meeting(x+2, y-2, obj_collidable)
	or place_meeting(x-2, y+2, obj_collidable)){
	spd *= -1;
}

if (   place_meeting(x+2, y+2, obj_animal_farm_collide) 
	or place_meeting(x-2, y-2, obj_animal_farm_collide)
	or place_meeting(x+2, y-2, obj_animal_farm_collide)
	or place_meeting(x-2, y+2, obj_animal_farm_collide)){
	spd *= -1;
}

if place_meeting(x,y,obj_animal_spots) and !hungry {
	spd = 0
	if not safe {
		if full {
			obj_lvl1_manager.calmed_animal_count += 1
		} else {
			obj_lvl1_manager.in_barn += 1
		}
		safe = true
	}
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
	if (!place_meeting(x + sign(xspd), y, obj_collidable)) or (!place_meeting(x + sign(xspd), y, obj_animal_farm_collide)){
		x += sign(xspd);
	} else {
		x += sign(-xspd);
		break;
	}
}

for (var i = 0; i < abs(yspd); i++){
	if (!place_meeting(x, y + sign(yspd), obj_collidable)) or (!place_meeting(x + sign(xspd), y, obj_animal_farm_collide)){
		y += sign(yspd);
	} else {
		y += sign(-yspd);
		break;
	}
}
