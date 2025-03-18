if(nbBouclier > 0 && alarm_get(1)<=0) {
	bouclierActif = true;
	nbBouclier -= 1;
	alarm_set(0, 150);
	alarm_set(1, 500);
}