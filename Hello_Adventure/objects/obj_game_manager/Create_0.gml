/// @desc Game Manager
randomize();
room_goto(rm_start);

#region GlOBAL VARIABLES
global.gameSaveSlot = 0;
//global.playerHealthMax = 3;
//global.playerHealth = global.playerHealthMax;

global.iUI = instance_create_layer(0, 0, "GUI_he_sta", obj_UI);
global.inventory_id = instance_create_layer(x, y, "GUI", obj_inventory);

global.l1state = "pregame" // save  // DONE // ENUM

global.kills = irandom(20);
global.kills = 2;

global.curr_kills = -1;
global.must_place = true;
global.key_used = 0; 
global.has_chicks = false;
global.has_potion = false;

global.level = LEVEL.LEVEL1;
global.companion = "pink";
#endregion


post = undefined;