d_index = 2

l1_before_dialogue = [
    [0],
	[dialogue_mother_hen],
	["HELPPPPP!!", "Mother Hen", dialogue_mother_hen],
	["What's wrong?", "You", dialogue_player],
	["Our babies were taken! You have to help!!", "Mother Hen", dialogue_mother_hen],
	["Anything to help, lead the way!", "You", dialogue_player],
	["", "", NaN]
]

l1_dialogue = [
    [0],
	[dialogue_mother_hen],
	["Oh dear...", "Mother Hen", dialogue_mother_hen],
	["The others are a bit more worried than I.", "Mother Hen", dialogue_mother_hen],
	["Don't worry, I can calm them down.", "You", dialogue_player],
	["", "", NaN]
]

l2_start_dialogue = [
    [0],
	[dialogue_mother_hen],
	["Almost done!", "Mother Hen", dialogue_mother_hen],
	["To make this a little easier,", "Mother Hen", dialogue_mother_hen],
	["let me tell you a little secret.", "Mother Hen", dialogue_mother_hen],
	["By using the numbers 1-9 on your keyboard...", "Mother Hen", dialogue_mother_hen],
	["...you can access all of your inventory.", "Mother Hen", dialogue_mother_hen],
	["Be mindful of your stamina, though.", "Mother Hen", dialogue_mother_hen],
	["Once you run through that,", "Mother Hen", dialogue_mother_hen],
	["you're back to removing from the end of the list.", "Mother Hen", dialogue_mother_hen],
	["Your stamina is shown as 5 stars at the top.", "Mother Hen", dialogue_mother_hen],
	["Good luck!", "Mother Hen", dialogue_mother_hen],
	["", "", NaN]
]

l2_end_dialogue = [
    [0],
	[dialogue_mother_hen],
	["Thank you.", "Mother Hen", dialogue_mother_hen],
	["Of course. This barn means a lot to me.", "You", dialogue_player],
	["Before you embark on your journey...", "Mother Hen", dialogue_mother_hen],
	["...bring one of us with you.", "Mother Hen", dialogue_mother_hen],
	["", "", NaN]
]

curr_array = l1_before_dialogue

sprite_index = spr_dialogue

x = 300
y = 300

visible = false