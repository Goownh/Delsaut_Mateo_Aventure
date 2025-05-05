if(!achetable && item != Gold) {
	Sc_Inventaire(self);
}
if(item == Gold) {
	score += 1;
	instance_destroy();
}