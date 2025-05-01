if(O_PowerUp.bouclierActif != true) {
	draw_sprite_ext(S_ForceField, 0, x, y, 1, 1, 0, $FFFFFF & $ffffff, 1);
}
draw_set_font(Font1);
draw_text(200,200,"Pieces : " + string(pieces));