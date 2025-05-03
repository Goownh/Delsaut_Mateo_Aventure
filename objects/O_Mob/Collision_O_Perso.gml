if(alarm_get(0) <= 0) {
	alarm_set(0, 40);
	O_Perso.image_alpha = 0.5;
	O_Vie.Hp_Joueur -= 1;
}
