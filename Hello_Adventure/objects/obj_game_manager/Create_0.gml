/// @desc Game Manager
randomize();
room_goto(ROOM_START);

#region GlOBAL VARIABLES
global.gameSaveSlot =0;
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;

global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;
global.playerStaminaMax = 5;
global.playerStamina = global.playerStaminaMax;

global.iUI = instance_create_layer(0, 0, "GUI_he_sta", obj_UI);

global.inventory_id = instance_create_layer(x, y, "GUI", obj_inventory);
global.l1state = "pregame"
global.kills = irandom(20);
global.curr_kills = -1;
global.must_place = true;
global.key_used = 0; 
global.has_chicks = false;

global.level = LEVEL.START;
global.companion = "";
#endregion
