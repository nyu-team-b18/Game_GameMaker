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

// test dialogue switch
if global.level == LEVEL.LEVEL3 and room == rm_level_3_A{
	if a3[0][0] == 0 {
		obj_dialogue.curr_array = a3
		thinking = true
	    a3[0][0] = 1
	}
}

if global.level == LEVEL.LEVEL3 and room == rm_level_3_B{
	if b3[0][0] == 0 {
		obj_dialogue.curr_array = b3
		thinking = true
	    b3[0][0] = 1
	}
}

if keyboard_check_pressed(vk_enter) and thinking and visible == true {
	thinking = false
	dialogue = true
}
#endregion