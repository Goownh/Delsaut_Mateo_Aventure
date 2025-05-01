if(!achetable && item != itemMobLoot) {
	Sc_Inventaire(self);
}
if(item == itemMobLoot) {
	O_Perso.pieces += 1;
	instance_destroy();
}
