record = 10;

think_bubble = instance_create_layer(x,y-16,"GUI", obj_bubble)
think_bubble_spr = spr_think_load
think_bubble.sprite_index = think_bubble_spr
think_bubble.visible = false
spr_img_ind = 0

thinking = false
dialogue = false

#region DIALOGUE

a3 = [
    [0],
	[dialogue_companion],
	["Hello! I am your companion.", "Companion", dialogue_companion],
	["I will guide you through each world.", "Companion", dialogue_companion],
	["Whenever you see me thinking,", "Companion", dialogue_companion],
	["press enter to interact!", "Companion", dialogue_companion],
	["", "", NaN]
]

b3 = [
    [0],
	[dialogue_companion],
	["These fireballs are a bit aggressive", "Companion", dialogue_companion],
	["Don't let them hit you. You'll lose hearts", "Companion", dialogue_companion],
	["Try pressing space to hit the fire enemies", "Companion", dialogue_companion],
	["Maybe one will drop something.", "Companion", dialogue_companion],
	["", "", NaN]
]

key_pickup = [
    [0],
	[dialogue_companion],
	["Nice! You found a key!", "Companion", dialogue_companion],
	["There must be a door somewhere to unlock.", "Companion", dialogue_companion],
	["", "", NaN]
]

c3 = [
    [0],
	[dialogue_companion],
	["I have a strong suspicion that the door is here.", "Companion", dialogue_companion],
	["Look around!", "Companion", dialogue_companion],
	["", "", NaN]
]

try_to_open_door = [
    [0],
	[dialogue_companion],
	["Looks like the door needs more than one key.", "Companion", dialogue_companion],
	["Look around!", "Companion", dialogue_companion],
	["", "", NaN]
]

copy_pickup = [
    [0],
	[dialogue_companion],
	["Nice! You found a copy potion.", "Companion", dialogue_companion],
	["Use it on your inventory to duplicate your items.", "Companion", dialogue_companion],
	["Remember, you can only have 1-5 items to copy.", "Companion", dialogue_companion],
	["", "", NaN]
]

enemy_lair = [
    [0],
	[dialogue_companion],
	["The chicks!!", "Companion", dialogue_companion],
	["Pick them all up and get out of here...", "Companion", dialogue_companion],
	["... before the enemy wakes up.", "Companion", dialogue_companion],
	["", "", NaN]
]

get_home = [
    [0],
	[dialogue_companion],
	["We made it!", "Companion", dialogue_companion],
	["Let's drop the chicks back to where they belong", "Companion", dialogue_companion],
	["", "", NaN]
]
#endregion