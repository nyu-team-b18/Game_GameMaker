#region COLOR SELECTION

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

#endregion

#region FOLLOW PLAYER
image_xscale = obj_player.image_xscale;

x = obj_player.pos_x[record];
y = obj_player.pos_y[record];
#endregion

#region DIALOGUE

if global.level == "l1w1" {
	obj_dialogue.curr_array = test_dialogue_1
	thinking = true
}

if keyboard_check_pressed(vk_enter) and thinking and visible == true {
	thinking = false
	dialogue = true
}
#endregion