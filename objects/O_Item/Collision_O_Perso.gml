if(!achetable && item != itemMobLoot) {
	Sc_Inventaire(self);
}
if(item == itemMobLoot) {
	score += 1;
	instance_destroy();
}