distancePerso = distance_to_object(O_Perso);
distanceStart = distance_to_point(xstart, ystart);

if (distancePerso < 20 00) {
	if (distancePerso > 0) {
		move_towards_point(O_Perso.x, O_Perso.y, 24);
	}
	else {
		speed = 0;
	}
}
else {
	if (distanceStart > 0) {
		move_towards_point(xstart, ystart, 24);
	}
	else {
		speed = 0;
	}
}

if(vspeed < 0) {
	sprite_index = S_EnnemiDroite;
}
if(vspeed > 0) {
	sprite_index = S_EnnemiDroite;
}
if(hspeed < 0) {
	sprite_index = S_EnnemiGauche;
}
if(hspeed > 0) {
	sprite_index = S_EnnemiDroite;
}