if(alarm_get(1)<=0) {
	hp-=1*O_Perso.vases;
	image_blend = c_red;
	alarm_set(1,20);
}