var ZDown = keyboard_check(ord("Z"));
var SDown = keyboard_check(ord("S"));
var QDown = keyboard_check(ord("Q"));
var DDown = keyboard_check(ord("D"));


dirCX = 0;
dirCY = 0;
dirMX = 0;
dirMY = 0;
	
if(ZDown) {
	sprite_index = S_PersoHaut;
	diridle = false;
	dirCY = -1;
}
if(SDown) {
	sprite_index = S_PersoBas;
	diridle = true;
	dirCY = 1;
}
if(QDown) {
	sprite_index = S_PersoGauche;
	diridle = true;
	dirCX = -1;
}
if(DDown) {
	sprite_index = S_PersoDroite;
	diridle = true;
	dirCX = 1;
}

var manette = gamepad_is_connected(0);
if(manette) {
	gamepad_set_axis_deadzone(0, 0.3);
	dirMX = gamepad_axis_value(0, gp_axislh);
	dirMY = gamepad_axis_value(0, gp_axislv);
}

if(dirCX == 0) {
	xspd = dirMX * walkSpeed;
}
else {
	xspd = dirCX * walkSpeed;
}
if(dirCY == 0) {
	yspd = dirMY * walkSpeed;
}
else {
	yspd = dirCY * walkSpeed;
}

if(xspd != 0 && yspd != 0) {
	xspd *= 0.707;
	yspd *= 0.707;
}

if(xspd == 0 && yspd == 0) {
	if(diridle) {
		sprite_index = S_PersoIdleBas;
	}
	else {	
		sprite_index = S_PersoIdleHaut;
	}
}

x += xspd;
y += yspd;

var ClickDown = mouse_check_button_pressed(mb_left);

if(ClickDown) {
	if(xprevious < x) {
		atk = instance_create_layer(x+512, y, "Character", O_Atk);
		atk.image_angle = -90;
	}
	else if(xprevious > x) {
		atk = instance_create_layer(x-512, y, "Character", O_Atk);
		atk.image_angle = 90;
	}
	else {
		if(yprevious < y) {
			atk = instance_create_layer(x, y+512, "Character", O_Atk);
			atk.image_angle = 180;
		}
		else if(yprevious > y) {
			atk = instance_create_layer(x, y-512, "Character", O_Atk);
			atk.image_angle = 0;
		}
	}
}


