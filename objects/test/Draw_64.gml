
if room = vocab_wordbuild{
	draw_set_font(Words);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_yellow);
	draw_text(450, 320, display_text);
}


if can_click == false and room == vocab_multichoice {
	draw_set_font(EngWords);
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_color(c_white)
	if clear_timer > 0 draw_text(450,337,(ceil((clear_timer)/60)));
};



draw_set_font(EngWords);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(448,16,string(level));