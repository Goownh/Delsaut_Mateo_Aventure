if(isTextDisplay == true)
{
	draw_set_colour($7AFFFFFF & $ffffff);
	var l4ED50DA2_0=($7AFFFFFF >> 24);
	draw_set_alpha(l4ED50DA2_0 / $ff);

	draw_rectangle(600, 860, 1380, 1000, 0);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_set_font(Font1);

	draw_set_colour($FF000000 & $ffffff);
	draw_set_alpha(1);

	draw_text_ext(610,870,textToDisplay,25,1510)
}