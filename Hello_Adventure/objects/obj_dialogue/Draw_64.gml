draw_set_halign(fa_left);
draw_set_color(c_black)

//draw_self()

if room == rm_level_1 and global.l1state == "story"  and keyboard_check_pressed(vk_enter){
	
	if d_index < array_length(l1_before_dialogue) - 1 {
		d_index += 1
	}	
}

// text
draw_text(100,210,l1_before_dialogue[d_index][0])
		
// name
draw_text(80,175,l1_before_dialogue[d_index][1])

if d_index == array_length(l1_before_dialogue) - 1 {
	visible = false
	global.l1state = "path" 
}
