if(room_get_name(room) != "Pause") {
	varRoom.persistent = false;
	room_goto(Floor1);
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_alpha(back_id, 0.5);
	
}
else {
	varRoom.persistent = true;
	room_goto(Pause);
}