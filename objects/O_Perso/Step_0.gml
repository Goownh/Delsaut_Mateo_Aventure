//if(O_Controles.controles = "clavier") {
var QDown = keyboard_check(ord("Q"));
var DDown = keyboard_check(ord("D"));
var ZDown = keyboard_check(ord("Z"));
var SDown = keyboard_check(ord("S"));

dirCX = 0;
dirCY = 0;
dirMX = 0;
dirMY = 0;
	
if(QDown) {
	dirCX = -1;
}
if(DDown) {
	dirCX = 1;
}
if(ZDown) {
	dirCY = -1;
}
if(SDown) {
	dirCY = 1;
}
//}
//else if(O_Controles.controles = "manette") {
var manette = gamepad_is_connected(0);
if(manette) {
	gamepad_set_axis_deadzone(0, 0.3);
	dirMX = gamepad_axis_value(0, gp_axislh);
	dirMY = gamepad_axis_value(0, gp_axislv);
}
show_debug_message(dirMX);
show_debug_message(dirMY);
/*}
else {
	O_Controles.controles = "clavier";
}*/
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


show_debug_message(xspd);
show_debug_message(yspd);

x += xspd;
y += yspd;
show_debug_message(x)
show_debug_message(y)