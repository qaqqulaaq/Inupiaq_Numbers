draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(Words_24);

if (room == number_toword and gamecontroller.mode_number) or room = vocab_multichoice or room = vocab_wordbuild{
	draw_text(x,y-75,say);
}

else if room = number_conversions or (room == number_toword and not gamecontroller.mode_number){
		var _sayarr = string_split(say,"\n");
		draw_text(x,y-75,_sayarr[0]);
		
		if room == number_conversions {
			if gamecontroller.kaktovik draw_set_font(Words_48);
			else draw_set_font(InupiaqNumbers_48);
		}
		
		else if room == number_toword draw_set_font(InupiaqNumbers_48);
		
		if array_length(_sayarr) > 1 draw_text(x, y-30,_sayarr[1]);
}