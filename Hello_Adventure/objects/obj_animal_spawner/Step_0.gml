rand_x = irandom_range(x_left, x_right)
rand_y = irandom_range(y_up, y_down)

if spawn_count == 0 {
	spawn = false	
}

if global.l1state == "story" {

} else if global.l1state == "l1_wave1" {
	if spawn {
		ind = irandom_range(0, array_length(l1_obj)-1)
		instance_create_layer(rand_x, rand_y, "Instances", l1_obj[ind])
		spawn_count -= 1
	}
	
} else if global.l1state == "l1_wave2" {
	if spawn {
		ind = irandom_range(0, array_length(l1_obj)-1)
		instance_create_layer(rand_x, rand_y, "Instances", l1_obj[ind])
		spawn_count -= 1
	}
	
} else if global.l1state == "l1_wave3" {
	if spawn {
		ind = irandom_range(0, array_length(l1_obj)-1)
		instance_create_layer(rand_x, rand_y, "Instances", l1_obj[ind])
		spawn_count -= 1
	}
	
} else if global.l1state == "l2_wave1" {
	if spawn {
		ind = irandom_range(0, array_length(l2_obj)-1)
		instance_create_layer(rand_x, rand_y, "Instances", l2_obj[ind])
		spawn_count -= 1
	}
	
} else if global.l1state == "l2_wave2" {
	if spawn {
		ind = irandom_range(0, array_length(l2_obj)-1)
		instance_create_layer(rand_x, rand_y, "Instances", l2_obj[ind])
		spawn_count -= 1
	}
	
} else if global.l1state == "l2_wave3" {
	if spawn {
		ind = irandom_range(0, array_length(l2_obj)-1)
		instance_create_layer(rand_x, rand_y, "Instances", l2_obj[ind])
		spawn_count -= 1
	}

}






