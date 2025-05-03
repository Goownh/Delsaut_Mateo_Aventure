space = keyboard_check_pressed(vk_space);

	show_debug_message("")
	show_debug_message(Item)
	show_debug_message(Item.item);
	show_debug_message(Item.price);
if(space && O_Perso.pieces >= Item.price && instance_position(x,y,O_Item)) {
	O_Perso.pieces -= Item.price;
	Item.acheter = true;
}