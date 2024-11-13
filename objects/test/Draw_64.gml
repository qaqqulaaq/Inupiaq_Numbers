draw_set_font(Words);
draw_set_halign(fa_left);



if can_click == false {
	draw_set_font(EngWords);
	draw_text(440,337,(ceil((180-timeline_position)/60)));
	//draw_text (5,5, string(prevword) + ";")
};

/*
draw_set_font(InupiaqNumbers)
draw_text(30,30,inupiaq_numbers(testfont))
draw_set_font(EngWords)
draw_text(30,50,string(testfont))

*/

draw_set_font(EngWords)
draw_set_halign(fa_right)
draw_set_valign(fa_top)
draw_text(472,16,string(level))