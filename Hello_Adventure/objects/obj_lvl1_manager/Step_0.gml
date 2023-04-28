//if global.l1state == "story" {
//	// do stuff for story
//}


if obj_animal_spawner.curr_spawn_count == calmed_animal_count {
	obj_animal_spawner.spawn = true
	calmed_animal_count = 0
	
	// 11 -> 12
	if global.l1state == "l1w1" {
		global.l1state = "l1w2"
		obj_animal_spawner.curr_spawn_count = 5
		obj_animal_spawner.spawn_count = 5
		
	// 12 -> 13
	} else if global.l1state == "l1w2" {
		global.l1state = "l1w3"
		obj_animal_spawner.curr_spawn_count = 7
		obj_animal_spawner.spawn_count = 7
		
	// 13 -> 21
	} else if global.l1state == "l1w3" {
		global.l1state = "l2w1"
		obj_animal_spawner.curr_spawn_count = 3
		obj_animal_spawner.spawn_count = 3
		
	// 21 -> 22
	} else if global.l1state == "l2w1" {
		global.l1state = "l2w2"
		obj_animal_spawner.curr_spawn_count = 5
		obj_animal_spawner.spawn_count = 5
		
	// 22 -> 23
	} else if global.l1state == "l2w2" {
		global.l1state = "l2w3"
		obj_animal_spawner.curr_spawn_count = 8
		obj_animal_spawner.spawn_count = 8
	}
}