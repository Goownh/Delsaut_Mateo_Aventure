draw_text(100, 100, string("Shield : ") + string(nbBouclier));
if(bouclierActif != true) {
	draw_sprite_ext(S_ForceField, 0, bouclierX, bouclierY, 1, 1, 0, $FFFFFF & $ffffff, 1);
}