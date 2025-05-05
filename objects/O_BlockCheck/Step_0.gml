if(instance_number(O_Mob1)>1 && instance_position(x,y,O_Perso)){
	instance_activate_layer("Door");
}
else {
	instance_deactivate_layer("Door");
}