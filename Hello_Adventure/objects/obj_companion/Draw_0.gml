draw_self()

show_debug_message(dialogue)

if thinking and visible == true {
	if think_bubble.visible == true {
		spr_img_ind = think_bubble.image_index
	}
	think_bubble.x = x
	think_bubble.y = y-16
	if think_bubble_spr == spr_think_load and (think_bubble.image_index > think_bubble.image_number - 1) {
		think_bubble_spr = spr_think
	}
	think_bubble.sprite_index = think_bubble_spr
	think_bubble.image_index = spr_img_ind
	
	think_bubble.visible = true
} else {
	think_bubble.visible = false
}