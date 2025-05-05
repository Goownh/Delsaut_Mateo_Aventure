space = keyboard_check_pressed(vk_space);
Item = instance_nearest(x,y,O_Item);

if(space && score >= Item.price) {
	score -= Item.price;
	Item.acheter = true;
	instance_destroy();
}