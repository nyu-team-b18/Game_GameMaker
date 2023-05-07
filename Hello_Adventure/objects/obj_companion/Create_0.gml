record = 10;

think_bubble = instance_create_layer(x,y-16,"GUI", obj_bubble)
think_bubble_spr = spr_think_load
think_bubble.sprite_index = think_bubble_spr
think_bubble.visible = false
spr_img_ind = 0

thinking = false
dialogue = false

test_dialogue_1 = [
	[dialogue_player],
	["yoyoyoy testing companion", "Companion", dialogue_player],
	["heyyyy wassup", "Player", dialogue_player],
	["", "", NaN]
]

test_dialogue_2 = [
	[dialogue_player],
	["yoyoyoy testing companion", "Companion", dialogue_player],
	["heyyyy wassup", "Player", dialogue_player],
	["", "", NaN]
]