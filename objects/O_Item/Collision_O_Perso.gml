if(!achetable && item != itemGold) {
	Sc_Inventaire(self);
}
if(item == itemGold) {
	score += 1;
	instance_destroy();
}