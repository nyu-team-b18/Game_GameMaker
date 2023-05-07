/// @Add to inventory
if (keyboard_check_pressed(ord("A"))){
	if array_length(global.inventory_id.inventory) < 10 {
		array_push(global.inventory_id.inventory, global.items[ITEM.WHEAT])
	}
}