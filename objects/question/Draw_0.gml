draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(EngWords);

if room = vocab_multichoice or room = vocab_wordbuild{
	draw_text(x,y-75,say);
}

else if room = number_conversions{
	draw_text(x,y-75,say);
}