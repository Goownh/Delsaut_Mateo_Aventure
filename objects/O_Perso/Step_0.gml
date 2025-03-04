var QDown = keyboard_check(ord("Q"));
	var DDown = keyboard_check(ord("D"));
	var ZDown = keyboard_check(ord("Z"));
	var SDown = keyboard_check(ord("S"));
	//Speeding process
	if(QDown) {
		if(hspeed > -walkSpeed) {
			hspeed = -walkSpeed;
		}
	}
	if(DDown) {
		if(hspeed < walkSpeed) {
			hspeed = walkSpeed;
		}
	}
	if(ZDown) {
		if(vspeed > -walkSpeed) {
			vspeed = -walkSpeed;
		}
	}
	if(SDown) {
		if(vspeed < walkSpeed) {
			vspeed = walkSpeed;
		}
	}
	show_debug_message(hspeed,)
	show_debug_message("")
	show_debug_message(vspeed)
	show_debug_message("")
	show_debug_message(speed)
	show_debug_message("")
	
	if(!QDown && !DDown && !ZDown && !SDown) {
		speed = 0;
	}
	var QReleased = keyboard_check_released(ord("Q"));
	var DReleased = keyboard_check_released(ord("D"));
	var ZReleased = keyboard_check_released(ord("Z"));
	var SReleased = keyboard_check_released(ord("S"));
	//Slowing process
	/*
	if (QReleased) {
		hspeed = 0
	}
	if (DReleased) {
		hspeed = 0;
	}
	if (ZReleased) {
		vspeed = 0;
	}
	if (SReleased) {
		vspeed = 0;
	}	*/