if (distance_to_object(O_Perso) < 300) {
	move_towards_point(O_Perso.x, O_Perso.y, 3);
}
else {
	if (distance_to_point(xstart, ystart) > 100) {
		move_towards_point(xstart, ystart, 3);
	}
	else {
		speed = 0;
	}
}