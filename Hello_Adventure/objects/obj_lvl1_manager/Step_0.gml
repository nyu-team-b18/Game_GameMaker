show_debug_message("LEVEL STATE")
show_debug_message(global.l1state)


if room == rm_level_1 {
	all_full = -1
	full_array = []
	with (obj_level_animals) {
		array_push(obj_lvl1_manager.full_array, full)
	}

	for (var i=0; i < array_length(obj_lvl1_manager.full_array); i++) {
		if !obj_lvl1_manager.full_array[i] { all_full = false}
	}

	if all_full == -1 { all_full = true}

	
	if obj_animal_spawner.curr_spawn_count == in_barn and all_full {
		obj_animal_spawner.spawn = true
		calmed_animal_count = 0
	
		// 11 -> 12
		if global.l1state == "l1w1" {
			with (obj_level_animals) { instance_destroy()}
			calmed_animal_count = 0
			in_barn = 0
			global.l1state = "l1w2"
			obj_animal_spawner.curr_spawn_count = 5
			obj_animal_spawner.spawn_count = 5
		
		// 12 -> 13
		} else if global.l1state == "l1w2" {
			with (obj_level_animals) { instance_destroy()}
			calmed_animal_count = 0
			in_barn = 0
			global.l1state = "l1w3"
			obj_animal_spawner.curr_spawn_count = 7
			obj_animal_spawner.spawn_count = 7
		
		// 13 -> 21
		} else if global.l1state == "l1w3" {
			with (obj_level_animals) { instance_destroy()}
			calmed_animal_count = 0
			in_barn = 0
			global.l1state = "l2w1"
			obj_animal_spawner.curr_spawn_count = 3
			obj_animal_spawner.spawn_count = 3
			global.level = LEVEL.LEVEL2
		
		// 21 -> 22
		} else if global.l1state == "l2w1" {
			with (obj_level_animals) { instance_destroy()}
			calmed_animal_count = 0
			in_barn = 0
			global.l1state = "l2w2"
			obj_animal_spawner.curr_spawn_count = 5
			obj_animal_spawner.spawn_count = 5
		
		// 22 -> 23
		} else if global.l1state == "l2w2" {
			with (obj_level_animals) { instance_destroy()}
			calmed_animal_count = 0
			in_barn = 0
			global.l1state = "l2w3"
			obj_animal_spawner.curr_spawn_count = 8
			obj_animal_spawner.spawn_count = 8
		} else if global.l1state == "l2w3" {
			with (obj_level_animals) { instance_destroy()}
			global.l1state = "post-level"
		}
	}
}
