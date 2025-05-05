var ZDown = keyboard_check(ord("Z"));
var SDown = keyboard_check(ord("S"));
var QDown = keyboard_check(ord("Q"));
var DDown = keyboard_check(ord("D"));
var EPress = keyboard_check_pressed(ord("E"));
var ClickDown = mouse_check_button_pressed(mb_left);

directionPerso = 0;
dirCX = 0;
dirCY = 0;
dirMX = 0;
dirMY = 0;

//movement clavier
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
//movement manette
var manette = gamepad_is_connected(0);
if(manette) {
	gamepad_set_axis_deadzone(0, 0.3);
	start = gamepad_button_check_pressed(0,gp_start);
	EPress = gamepad_button_check_pressed(0,gp_padr);
	ClickDown = gamepad_button_check_pressed(0,gp_padl);
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
		directionPerso = 180;
	}
	else {	
		sprite_index = S_PersoIdleHaut;
		directionPerso = 0;
	}
}

x += xspd;
y += yspd;




if(yspd<0 && yspd>xspd) {
	directionPerso = 0;
}
else if(yspd>0 && yspd>=xspd){
	directionPerso = 180;
}
if(xspd<0 && xspd<=yspd) {
	directionPerso = 90;
}
else if(xspd>0 && yspd<=xspd) {
	directionPerso = -90;
}

if(ClickDown && !instance_exists(O_Atk)) {
	if(directionPerso == -90) {
		atk = instance_create_layer(x+512, y, "Character", O_Atk);
		atk.image_angle = -90;
	}
	else if(directionPerso == 90) {
		atk = instance_create_layer(x-512, y, "Character", O_Atk);
		atk.image_angle = 90;
	}
	else if(directionPerso == 180) {
		atk = instance_create_layer(x, y+512, "Character", O_Atk);
		atk.image_angle = 180;
	}
	else if(directionPerso == 0) {
		atk = instance_create_layer(x, y-512, "Character", O_Atk);
		atk.image_angle = 0;
	}
}

if(EPress && O_Inventory.soin>0 && O_Vie.Hp_Joueur < 10) {
	O_Inventory.soin -= 1;
	O_Vie.Hp_Joueur += 1;
	Sc_InventaireSoin()
}


if(manette && start) {
	if(!O_Pause.pause) {
		O_Pause.pause = true;
	}
	else {
		O_Pause.pause = false;
	}
	Sc_Pause(O_Pause.pause);
}

if(O_Inventory.vases = 4) {
	room_goto(Victoire)	;
}