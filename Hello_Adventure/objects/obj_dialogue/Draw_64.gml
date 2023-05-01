draw_set_halign(fa_left);
draw_set_color(c_black)

if global.l1state == "story" {
	curr_array = l1_before_dialogue
} else if global.l1state == "d1" {
	curr_array = l1_dialogue
} 

player_spr = dialogue_player
other_spr = curr_array[0][0]

if curr_array[d_index][2] == player_spr {
	draw_sprite(other_spr, 0, 550, 300)
	draw_sprite(spr_blackout, 0, x, y)
	draw_sprite(player_spr, 0, 50, 300)
} else {
	draw_sprite(player_spr, 0, 50, 300)
	draw_sprite(spr_blackout, 0, x, y)
	draw_sprite(other_spr, 0, 550, 300)

}
draw_self()

if room == rm_level_1 and keyboard_check_pressed(vk_enter) and (global.l1state == "story" or global.l1state == "d1"){
	
	if d_index < array_length(curr_array) - 1 {
		d_index += 1
	}	
}

draw_text(110,205,curr_array[d_index][1])
draw_text(130,240,curr_array[d_index][0])


if d_index == array_length(curr_array) - 1 {
	d_index = 1
	if global.l1state == "story" {
		global.l1state = "path"	
	} else if global.l1state == "d1" {
		global.l1state = "l1w1"	
	}
}