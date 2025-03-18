
if(controles = "clavier") {
	var QDown = keyboard_check(ord("Q"));
	var DDown = keyboard_check(ord("D"));
	var ZDown = keyboard_check(ord("Z"));
	var SDown = keyboard_check(ord("S"));

	if(QDown) {
		dirX = -speedg;
	}
	if(DDown) {
		dirX = speedg;
	}
	if(ZDown) {
		dirY = -speedg;
	}
	if(SDown) {
		dirY = speedg;
	}

	if(!QDown  && !DDown ) {
		dirX = 0;
	}
	if(!SDown &&  !ZDown) {
		dirY = 0;
	}
}
else if(controles = "manette") {
		manette = gamepad_is_connected(0);
		dirX = gamepad_axis_value(manette, gp_axislh)
		dirY = gamepad_axis_value(manette, gp_axislh)
}
else {
	controles = "clavier";
}

x += dirX
y += dirY
