if global.companion == "pink" {
	if (obj_player.sprite_index == spr_player_idle){
		sprite_index = baby_strawberry_cow_idle;
		
	} else if (obj_player.sprite_index == spr_player_walk){
		sprite_index = baby_strawberry_cow_walk;
	}
} else if global.companion == "black" {
	if (obj_player.sprite_index == spr_player_idle){
		sprite_index = baby_black_cow_idle;
		
	} else if (obj_player.sprite_index == spr_player_walk){
		sprite_index = baby_black_cow_walk;
	}
} else if global.companion == "brown" {
	if (obj_player.sprite_index == spr_player_idle){
		sprite_index = baby_brown_cow_idle;
		
	} else if (obj_player.sprite_index == spr_player_walk){
		sprite_index = baby_black_cow_walk;
	}
}







image_xscale = obj_player.image_xscale;

x = obj_player.pos_x[record];
y = obj_player.pos_y[record];
