draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(Words_24);

if  room = vocab_multichoice or room = vocab_wordbuild{
	draw_text(x,y-75,say);
}

else{
		var _sayarr = string_split(say,"\n",false,1);
		draw_text(x,y-75,_sayarr[0]);
		
		if room == number_conversions {
			if gamecontroller.kaktovik draw_set_font(Words_48);
			else draw_set_font(InupiaqNumbers_48);
		}
		
		else if room == number_toword {
			if (gamecontroller.mode_number and gamecontroller.answered) or (not gamecontroller.mode_number and not gamecontroller.answered) draw_set_font(InupiaqNumbers_48);
			else draw_set_font(Words_24)
		}
		
		if array_length(_sayarr) > 1 draw_text(x, y-30,_sayarr[1]);
}