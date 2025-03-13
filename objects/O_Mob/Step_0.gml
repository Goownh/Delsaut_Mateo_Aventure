distancePerso = distance_to_object(O_Perso);
distanceStart = distance_to_point(xstart, ystart);

if (distancePerso < 300) {
	if (distancePerso > 0) {
		move_towards_point(O_Perso.x, O_Perso.y, 3);
	}
	else {
		speed = 0;
	}
}
else {
	if (distanceStart > 100) {
		move_towards_point(xstart, ystart, 3);
	}
	else {
		speed = 0;
	}
}