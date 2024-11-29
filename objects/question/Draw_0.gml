draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

if room = vocab_multichoice or room = vocab_wordbuild{
	if not gamecontroller.answered draw_set_font(EngWords);
	else draw_set_font(Words);
	draw_text(x,y-75,say);
}

else if room = number_conversions{
	draw_set_font(EngWords);
	draw_text(x,y-75,say);
}