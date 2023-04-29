draw_set_halign(fa_left);
draw_set_color(c_black)

draw_self()

if global.l1state == "story" {
	curr_array = l1_before_dialogue
} else if global.l1state == "d1" {
	curr_array = l1_dialogue
} 

if room == rm_level_1 and keyboard_check_pressed(vk_enter) and (global.l1state == "story" or global.l1state == "d1"){
	
	if d_index < array_length(curr_array) - 1 {
		d_index += 1
	}	
}

draw_text(100,210,curr_array[d_index][0])
draw_text(80,175,curr_array[d_index][1])


if d_index == array_length(curr_array) - 1 {
	d_index = 0
	if global.l1state == "story" {
		global.l1state = "path"	
	} else if global.l1state == "d1" {
		global.l1state = "l1w1"	
	}
}
