draw_set_halign(fa_center);
draw_set_color(c_white)

if global.l1state == "Companion Selection" {
	being_drawn = true
	draw_sprite(spr_blackout2, 0, 300, 300)
	draw_text(300, 50, "Choose your Companion")
	draw_sprite(spr_companions, 0, 100, 150)
	draw_sprite(spr_companions, 1, 300, 150)
	draw_sprite(spr_companions, 2, 500, 150)
	draw_text(90, 250, "Q for black cow")
	draw_text(290, 250, "W for brown cow")
	draw_text(490, 250, "E for pink cow")
}

draw_set_halign(fa_left);
draw_set_color(c_black)