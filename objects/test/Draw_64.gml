draw_set_font(Words);
draw_set_halign(fa_left);



if can_click == false {
	draw_set_font(EngWords);
	draw_text(440,337,(ceil((180-timeline_position)/60)));
	//draw_text (5,5, string(prevword) + ";")
};




