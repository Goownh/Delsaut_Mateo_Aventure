if(alarm_get(0) <= 0) {
	O_Perso.image_alpha = 0.5;
	O_Vie.Hp_Joueur -= 1;
	alarm_set(0,30);
}