/// @Game Manager

#macro INVENTORY_SLOTS 10

global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;
global.playerStaminaMax = 5;
global.playerStamina = global.playerStaminaMax;

global.iUI = instance_create_layer(0, 0, "GUI_he_sta", obj_UI);
