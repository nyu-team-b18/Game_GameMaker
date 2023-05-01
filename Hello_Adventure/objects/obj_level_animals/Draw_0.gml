draw_self()

if show_hunger and bubble == 0 {
	bubble = instance_create_layer(x,y-16,"GUI", obj_hunger_bubble)
	bubble.sprite_index = food
} 

if !show_hunger and bubble != 0 {
	instance_destroy(bubble) // delete in inventoryadd as well
	bubble = 0
}

