// hunger
hungry = true
show_hunger = false

if image_xscale == 1 { 
	spd = 1
	path_start(animal_hunger_maxRS, 1, path_action_stop, false)
}
if image_xscale == -1 { 
	spd = -1
	path_start(animal_hunger_maxLS, 1, path_action_stop, false)
}

alarm[0] = 1000

obj_lvl1_manager.calmed_animal_count -= 1