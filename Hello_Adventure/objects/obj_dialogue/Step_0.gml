if room == rm_level_1 and (obj_companion.dialogue == true or (global.l1state = "story" or global.l1state = "d1" or global.l1state = "post-level")) {
	visible = true
	if obj_companion.dialogue == true {
		show_debug_message("DIALGOUE TRUE")
	}
} else {visible = false}
