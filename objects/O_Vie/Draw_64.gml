/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 6EA3C9BA
/// @DnDArgument : "sprite" "S_Coeur"
/// @DnDArgument : "number" "Hp_Joueur"
/// @DnDSaveInfo : "sprite" "S_Coeur"
var l6EA3C9BA_0 = sprite_get_width(S_Coeur);var l6EA3C9BA_1 = 0;for(var l6EA3C9BA_2 = Hp_Joueur; l6EA3C9BA_2 > 0; --l6EA3C9BA_2) {	draw_sprite(S_Coeur, 0, 0 + l6EA3C9BA_1, 0);	l6EA3C9BA_1 += l6EA3C9BA_0;}