space = keyboard_check_pressed (vk_space);

	show_debug_message("")
	show_debug_message(Item)
	show_debug_message(Item.item);
	show_debug_message(Item.price);
if(space && O_Perso.pieces >= Item.price) {
	O_Perso.pieces -= Item.price;
	Sc_Inventaire(Item);
	instance_destroy(Item);
}