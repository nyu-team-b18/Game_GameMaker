if global.l1state == "path" and x == 206 and y == 112 {
	image_xscale = 1
	sprite_index = white_brown_chicken_walk
	path_start(path, 1, path_action_stop, false)
}

if global.l1state == "story" {
	sprite_index = white_brown_chicken_stand
} 

if path_position == 1 {
	image_xscale = -1
	sprite_index = white_brown_chicken_stand
}