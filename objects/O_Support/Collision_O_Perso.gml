space = keyboard_check_pressed(vk_space);

if(space && score >= Item.price && instance_position(x,y,O_Item)) {
	score -= Item.price;
	Item.acheter = true;
}