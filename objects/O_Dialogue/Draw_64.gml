if(isTextDisplay == true)
{
	draw_set_colour($7AFFFFFF & $ffffff);
	var l4ED50DA2_0=($7AFFFFFF >> 24);
	draw_set_alpha(l4ED50DA2_0 / $ff);

	draw_rectangle(50, 720-230, 1620-50, 720-30, 0);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_set_font(Font1);

	draw_set_colour($FF000000 & $ffffff);
	draw_set_alpha(1);

	draw_text_ext(50+5,720-230+5,textToDisplay,25,1510)
}