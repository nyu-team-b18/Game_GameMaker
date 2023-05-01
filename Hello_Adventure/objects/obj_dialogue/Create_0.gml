d_index = 1

l1_before_dialogue = [
	[dialogue_mother_hen],
	["HELPPPPP!!", "Mother Hen", dialogue_mother_hen],
	["What's wrong?", "You", dialogue_player],
	["Our babies were taken! You have to help!!", "Mother Hen", dialogue_mother_hen],
	["Anything to help, lead the way!", "You", dialogue_player],
	["", "", NaN]
]

l1_dialogue = [
	[dialogue_mother_hen],
	["Oh dear...", "Mother Hen", dialogue_mother_hen],
	["The rest of the barn seems to be a little more frazzeled than myself...", "Mother Hen", dialogue_mother_hen],
	["Don't worry, I can calm them down.", "You", dialogue_player],
	["", "", NaN]
]

curr_array = l1_before_dialogue

sprite_index = spr_dialogue

x = 300
y = 300

visible = false