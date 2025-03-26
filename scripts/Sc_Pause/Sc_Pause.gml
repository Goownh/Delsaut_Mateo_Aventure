function Sc_Pause(pause){	
	if(pause) {		
		screen_save("pause.png");
		O_Pause.pauseScreen = sprite_add("pause.png", 0, false, false, 0, 0);
		instance_deactivate_all(true);
		instance_activate_object(O_Pause);
	}
	else {
		instance_activate_all();
		file_delete("pause.png");
	}
}