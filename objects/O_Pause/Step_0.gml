if (gamepad_button_check_pressed(0, gp_start)) {
	if(!pause) {
		pause = true;
	}
	else {
		pause = false;
	}
	Sc_Pause(pause);
}