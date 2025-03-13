var QDown = keyboard_check(ord("Q"));
var DDown = keyboard_check(ord("D"));
var ZDown = keyboard_check(ord("Z"));
var SDown = keyboard_check(ord("S"));
//Speeding process
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

var object = instance_place(x + dirX*32, y + dirY*32, [O_Block]);
if (!(object > 0)) {
	if(isMoving == false) {
		targetX = dirX*32;
		targetY = dirY*32;
		isMoving = true;
	
		alarm_set(0, nbOfFrameToChangeCase);
	}
}

if(isMoving == true) {
	x += targetX/nbOfFrameToChangeCase;
	y += targetY/nbOfFrameToChangeCase;
}
if (!QDown && !SDown && !DDown && !ZDown) {
	dirX = 0;
	dirY = 0;
}