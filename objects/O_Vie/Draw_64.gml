var taille = sprite_get_width(S_SarcocoVie)+10;
var pos = 0;
for(var i = Hp_Joueur; i > 0; --i) {
	draw_sprite(S_SarcocoVie, 0, pos,  0);
	pos += taille;
}