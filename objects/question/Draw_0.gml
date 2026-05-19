if room == lessons{
	if lessoncontroller.timer*20 < sprite_height draw_sprite_part(sprite_index,0,0,0,sprite_width,min(sprite_height,lessoncontroller.timer*20),x-sprite_xoffset,y-sprite_yoffset)
	else {
		draw_self()
	
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_white);
		draw_set_font(fnt_lesson_148);
	
		draw_text(x,y,say);
	}
}

else{
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
}