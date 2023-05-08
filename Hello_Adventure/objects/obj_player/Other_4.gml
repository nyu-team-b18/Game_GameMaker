/// @description Place Copy Potion

#region PLACE POTION
if (!global.has_potion && room == rm_level_3_C){
	instance_create_layer(230, 780, "Instances", obj_copy_potion);
}
#endregion