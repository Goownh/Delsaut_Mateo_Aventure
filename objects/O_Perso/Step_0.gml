if(O_Controles.controles = "clavier") {
	var QDown = keyboard_check(ord("Q"));
	var DDown = keyboard_check(ord("D"));
	var ZDown = keyboard_check(ord("Z"));
	var SDown = keyboard_check(ord("S"));

	dirX = 0;
	dirY = 0;
	if(QDown) {
		dirX = -1;
	}
	if(DDown) {
		dirX = 1;
	}
	if(ZDown) {
		dirY = -1;
	}
	if(SDown) {
		dirY = 1;
	}
}
else if(O_Controles.controles = "manette") {
		var manette = gamepad_is_connected(0);
		show_debug_message(manette);
		if(!manette) {
			controles = "clavier";
		}
		gamepad_set_axis_deadzone(0, 0.3);
		dirX = gamepad_axis_value(0, gp_axislh);
		dirY = gamepad_axis_value(0, gp_axislv);
}
else {
	O_Controles.controles = "clavier";
}
xspd = dirX * walkSpeed;
yspd = dirY * walkSpeed;
if(xspd != 0 && yspd != 0) {
	xspd *= 0.707;
	yspd *= 0.707;
}
switch (xspd) {
	case (xspd == 0):
		switch (yspd) {
			case (yspd == 0):
				sprite_index = S_PersoFront;//idle
			break;
			
			case (yspd > 0):
				sprite_index = S_PersoFront;//avancer bas
			break;
			
			case (yspd < 0):
				sprite_index = S_PersoBack;//avancer haut
			break;
		}
	break;
	
	case (xspd > 0):
		switch (yspd) {
			case (yspd == 0):
				sprite_index = S_PersoRight;//droite
			break;
			
			case (yspd > 0):
				sprite_index = S_PersoRight;//diago bas droite
			break;
			
			case (yspd < 0):
				sprite_index = S_PersoRight;//diago haut droite
			break;
		}
	break;
	
	case (xspd < 0):
		switch (yspd) {
			case (yspd == 0):
				sprite_index = S_PersoLeft;//gauche
			break;
			
			case (yspd > 0):
				sprite_index = S_PersoLeft;//diago bas gauche
			break;
			
			case (yspd < 0):
				sprite_index = S_PersoLeft;//diago haut gauhe
			break;
		}
	break;
	
}

x += xspd;
y += yspd;