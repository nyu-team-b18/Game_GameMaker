/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (spd < 0){
	image_xscale = -1;
	if (sprite_index == baby_chicken_idle){
		sprite_index = baby_chicken_walk;
	}
} else if (spd > 0 ){
	image_xscale = 1;
	if (sprite_index == baby_chicken_idle){
		sprite_index = baby_chicken_walk;
	}
} else {
	sprite_index = baby_chicken_idle;
}
