if image_xscale == -1 {
	draw_sprite(spr_shadow, 0, floor(x) + 1, floor(y) + 3)
} else if image_xscale == 1 {
	draw_sprite(spr_shadow, 0, floor(x) - 3, floor(y) + 3)
}
draw_self()