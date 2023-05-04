if being_drawn {
	if keyboard_check_pressed(ord("Q")) or keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("E")) {	
		if keyboard_check_pressed(ord("Q")) {
			global.companion = "black"
		} if keyboard_check_pressed(ord("W")) {
			global.companion = "brown"
		} if keyboard_check_pressed(ord("E")) {
			global.companion = "pink"
		}
		instance_destroy()
		
		obj_player.state = PLAYER_STATE.in_control
		global.l1state = "DONE"
	}
}