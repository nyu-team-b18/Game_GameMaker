record = 10;

think_bubble = instance_create_layer(x,y-16,"GUI", obj_bubble)
think_bubble_spr = spr_think_load
think_bubble.sprite_index = think_bubble_spr
think_bubble.visible = false
spr_img_ind = 0

thinking = false
dialogue = false

dialogue_spr = 0
dialogue_loaded = false

a3 = []
b3 = []
key_pickup = []
c3 = []
try_to_open_door = []
copy_pickup = []
enemy_lair = []
get_home = []