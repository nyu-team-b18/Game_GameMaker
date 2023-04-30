/// @Game Manager

#macro INVENTORY_SLOTS 10

global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;
global.playerStaminaMax = 5;
global.playerStamina = global.playerStaminaMax;

global.iUI = instance_create_layer(0, 0, "GUI_he_sta", obj_UI);
global.inventory_id = instance_create_layer(x, y, "GUI", obj_inventory);

global.l1state = "story"

global.kills = irandom(20);
global.kills = 0;
global.curr_kills = -1;
global.must_place = true;
global.key_used = false;

global.has_chicks = false;

global.level = LEVEL.START;