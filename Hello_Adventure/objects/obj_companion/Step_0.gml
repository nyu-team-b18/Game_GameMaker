#region COLOR SELECTION

if global.companion == "pink" {
	dialogue_spr = dialogue_pink_companion
	if (obj_player.sprite_index == spr_player_idle){
		sprite_index = baby_strawberry_cow_idle;
		
	} else if (obj_player.sprite_index == spr_player_walk){
		sprite_index = baby_strawberry_cow_walk;
	}
} else if global.companion == "black" {
	dialogue_spr = dialogue_black_companion
	show_debug_message(dialogue_spr)
	show_debug_message(dialogue_black_companion)
	show_debug_message(dialogue_pink_companion)
	if (obj_player.sprite_index == spr_player_idle){
		sprite_index = baby_black_cow_idle;
		
	} else if (obj_player.sprite_index == spr_player_walk){
		sprite_index = baby_black_cow_walk;
	}
} else if global.companion == "brown" {
	dialogue_spr = dialogue_brown_companion
	if (obj_player.sprite_index == spr_player_idle){
		sprite_index = baby_brown_cow_idle;
		
	} else if (obj_player.sprite_index == spr_player_walk){
		sprite_index = baby_black_cow_walk;
	}
}

#endregion

#region DIALOGUE LOAD
if dialogue_spr != 0 and !dialogue_loaded {
	dialogue_loaded = true
	a3 = [
	    [0],
		[dialogue_spr],
		["Hello! I am your companion.", "Companion", dialogue_spr],
		["I will guide you through each world.", "Companion", dialogue_spr],
		["Whenever you see me thinking,", "Companion", dialogue_spr],
		["press enter to interact!", "Companion", dialogue_spr],
		["", "", NaN]
	]

	b3 = [
	    [0],
		[dialogue_spr],
		["These fireballs are a bit aggressive", "Companion", dialogue_spr],
		["Try pressing space to hit the fire enemies", "Companion", dialogue_spr],
		["Maybe one will drop something...", "Companion", dialogue_spr],
		["", "", NaN]
	]

	key_pickup = [
	    [0],
		[dialogue_spr],
		["Nice! You found a key!", "Companion", dialogue_spr],
		["There must be a door somewhere to unlock.", "Companion", dialogue_spr],
		["", "", NaN]
	]

	c3 = [
	    [0],
		[dialogue_spr],
		["I have a strong suspicion that the door is here.", "Companion", dialogue_spr],
		["Look around!", "Companion", dialogue_spr],
		["", "", NaN]
	]

	try_to_open_door = [
	    [0],
		[dialogue_spr],
		["Looks like the door needs more than one key.", "Companion", dialogue_spr],
		["Look around!", "Companion", dialogue_spr],
		["", "", NaN]
	]

	copy_pickup = [
	    [0],
		[dialogue_spr],
		["Nice! You found a copy potion.", "Companion", dialogue_spr],
		["Use it on your inventory to duplicate your items.", "Companion", dialogue_spr],
		["Remember, you can only have 1-5 items to copy.", "Companion", dialogue_spr],
		["", "", NaN]
	]

	enemy_lair = [
	    [0],
		[dialogue_spr],
		["The chicks!!", "Companion", dialogue_spr],
		["Pick them all up and get out of here...", "Companion", dialogue_spr],
		["... before the enemy wakes up.", "Companion", dialogue_spr],
		["", "", NaN]
	]

	get_home = [
	    [0],
		[dialogue_spr],
		["We made it!", "Companion", dialogue_spr],
		["Let's drop the chicks back to where they belong", "Companion", dialogue_spr],
		["", "", NaN]
	]
}


#endregion

#region FOLLOW PLAYER
image_xscale = obj_player.image_xscale;

x = obj_player.pos_x[record];
y = obj_player.pos_y[record];
#endregion

#region DIALOGUE

if global.level == LEVEL.LEVEL3 and room == rm_level_3_A{
	if a3[0][0] == 0 {
		obj_dialogue.curr_array = a3
		thinking = true
	    a3[0][0] = 1
	}
}

if global.level == LEVEL.LEVEL3 and room == rm_level_3_B {
	if b3[0][0] == 0 {
		obj_dialogue.curr_array = b3
		thinking = true
	    b3[0][0] = 1
	}
}

if global.level == LEVEL.LEVEL3 and room == rm_level_3_C {
	if c3[0][0] == 0 {
		obj_dialogue.curr_array = c3
		thinking = true
	    c3[0][0] = 1
	}
}

if global.level == LEVEL.ENEMY_LAIR and room == rm_level_3_D {
	if enemy_lair[0][0] == 0 {
		obj_dialogue.curr_array = enemy_lair
		thinking = true
	    enemy_lair[0][0] = 1
	}
}

if global.level == LEVEL.END and room == rm_level_3_E {
	if get_home[0][0] == 0 {
		obj_dialogue.curr_array = get_home
		thinking = true
	    get_home[0][0] = 1
	}
}

if keyboard_check_pressed(vk_enter) and thinking and visible == true {
	thinking = false
	dialogue = true
}
#endregion