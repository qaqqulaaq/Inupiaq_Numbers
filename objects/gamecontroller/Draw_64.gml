///@description Draws everything

//Sets to white, center and top by default
draw_set_font(EngWords);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

//draw the level at the top of the screen
if level < 10 draw_text(448,16,string(level));
else draw_text(448,16,"R");

switch room{
	
	case number_operations:
		if answered{
			if setnumber == totalAmount draw_text(150,20,"ARRIGAA!");
			else draw_text(120,20,"Naumi.");
		}
	
	
		draw_set_font(InupiaqNumbers);
		var _offset = 0;
		//sets the offset and draws the line below each problem
		switch (level){
			case 1: _offset = 320; draw_line_width(350,425,550,425,16); break;
			case 2: case 3: case 4: _offset = 240; draw_line_width(270,425,630,425,16) break;
			case 5: _offset = 160; draw_line_width(190,425,710,425,16) break;
			case 6: _offset = 80; draw_line_width(110,425,790,425,16) break;
			case 7: draw_line_width(30,425,870,425,16); break;
			default: break;
		}
		//draws the text and sprite for the math operation
		for (var _i = string_length(string1); _i >= 0; _i--) draw_text(288 - _offset + _i*160,75,string_char_at(string1,_i+1));
		for (var _i = 0; _i < string_length(string2); _i++) draw_text(288 - _offset + _i*160,95+font_get_size(InupiaqNumbers),string_char_at(string2,_i+1));
		if mathop == "plus" draw_sprite(spr_plus,0,_offset,150+font_get_size(InupiaqNumbers));
		else if mathop == "minus" draw_sprite(spr_minus,0,_offset,150+font_get_size(InupiaqNumbers));
		//draws the marker for the player
		for (var _i = 0; _i < array_length(linex); _i++){
			draw_rectangle_color(linex[_i]-5,liney[_i]-5,linex[_i]+5,liney[_i]+5,c_red,c_red,c_red,c_red,false);
		}
		//draws the word depending on the answer
		break;
		
		
	case vocab_wordbuild:
		draw_set_font(EngWords);
		draw_set_color(c_yellow);
		draw_text(450, 320, display_text);
		break;
	
	default: break;
}

if helpmode {
	//draws the canvas
	
	var _left = 30
	var _right = 870
	var _top = 50
	var _bottom = 610
	var _border = 10
	var _margin = 30
	var _spr_off = 72 
	var _line = 50
	
	draw_rectangle_color(_left,_top,_right,_bottom,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(_left + _border,_top + _border,_right - _border,_bottom - _border,c_black,c_black,c_black,c_black,false);
	
	
	draw_set_color(c_white);
	draw_set_font(EngWords);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	if page == 0 and (room == number_operations or room == number_conversions){
		if room == number_operations draw_text(_left + _margin, _top + _margin , "The goal of this exercise is to perform basic\noperations using the Kaktovik numeral system.");
		else if room == number_conversions draw_text(_left + _margin, _top + _margin , "The goal of this exercise is to convert from\nArabic numerals to Kaktovik numerals.");
		
		draw_text(_left + _margin, _top + _margin + _line*2 , "Clicking on the bottom portion of the number box will\nincrease the number by one, while clicking the top\nportion of the number box will increase the number\nby 5. Right clicking will decrease the number instead.");
		
		draw_sprite(spr_numbox,0,room_width/2,_top + _margin + _line * 5.5);
		draw_set_halign(fa_center);
		draw_text(room_width/2,_top + _margin + _line*5.5 + 24, "5");
		draw_text(room_width/2,_top + _margin + _line*5.5 + 112, "1");
		
		draw_set_halign(fa_left);
	}
	
	else if page == 0 and room == vocab_multichoice{
		draw_text(_left + _margin, _top + _margin , "The goal of this exercise is to practice vocabulary by\nselecting the correct word.");
		draw_text(_left + _margin, _top + _margin + _line*2 ,"You may click on the correct answer, or press\nthe number key that corresponds with the answer as\nfollows:");
		
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		
		draw_sprite_ext(choice_box,0,room_width/2 - sprite_get_width(choice_box)/4 - 10 ,_top + _margin + _line*5,0.5,0.5,0,c_white,1);
		draw_text(room_width/2 - sprite_get_width(choice_box)/4 - 10,_top + _margin + _line*5 - 2,"1");
		
		draw_sprite_ext(choice_box,0,room_width/2 + sprite_get_width(choice_box)/4 + 10 ,_top + _margin + _line*5,0.5,0.5,0,c_white,1);
		draw_text(room_width/2 + sprite_get_width(choice_box)/4 + 10,_top + _margin + _line*5 - 2,"2");
		
		draw_sprite_ext(choice_box,0,room_width/2 - sprite_get_width(choice_box)/4 - 10 ,_top + _margin + _line*5 + sprite_get_height(choice_box)/2+20,0.5,0.5,0,c_white,1);
		draw_text(room_width/2 - sprite_get_width(choice_box)/4 - 10,_top + _margin + _line*5 + sprite_get_height(choice_box)/2+20 - 2,"3");
		
		draw_sprite_ext(choice_box,0,room_width/2 + sprite_get_width(choice_box)/4 + 10 ,_top + _margin + _line*5 + sprite_get_height(choice_box)/2+20,0.5,0.5,0,c_white,1);
		draw_text(room_width/2 + sprite_get_width(choice_box)/4 + 10,_top + _margin + _line*5 + sprite_get_height(choice_box)/2+20 - 2,"4");
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		
		draw_sprite(spr_nextbox,1,_left + _margin,_top + _margin + _line*8)
		draw_text(_left + _spr_off,_top + _margin + _line*8, "or 'enter' will let you move to the next problem.");
		
		draw_sprite(spr_arrow,1, _left + _margin, _top + _margin + _line*9);
		draw_text(_left + _spr_off, _top + _margin + _line*9, "and");
		draw_sprite(spr_arrow,0, _left + _margin + font_get_size(EngWords)*4.5, _top + _margin + _line*9);
		draw_text(_left + _spr_off + font_get_size(EngWords)*4.5, _top + _margin + _line*9, " will change the level.");	
		
		
	}

	else if page == 0 and room == vocab_wordbuild{
		draw_text(_left + _margin, _top + _margin , "The goal of this exercise is to practice vocabulary by\nbuilding the correct word.");
		draw_text(_left + _margin, _top + _margin + _line*2 ,"Each word or postbase that you click on will be added\nto your answer. Once you have assembled the correct\nword, enter it to check your answer.");
	}

	else if page == 1 and room == number_conversions or room == number_operations or room == vocab_wordbuild
	{
		draw_sprite(spr_nextbox,0,_left + _margin, _top + _margin);
		draw_text(_left + _spr_off,_top + _margin , "or the 'enter' key will enter your answer.");
	
		draw_sprite(spr_nextbox,1,_left + _margin,_top + _margin + _line*1)
		draw_text(_left + _spr_off,_top + _margin + _line*1, "or 'enter' will let you move to the next problem.");
	
		draw_sprite(spr_arrow,1, _left + _margin, _top + _margin + _line*2);
		draw_text(_left + _spr_off, _top + _margin + _line * 2, "and");
		draw_sprite(spr_arrow,0, _left + _margin + font_get_size(EngWords)*4.5, _top + _margin + _line*2);
		draw_text(_left + _spr_off + font_get_size(EngWords)*4.5, _top + _margin + _line * 2, " will change the level.");
		
		if room == number_operations or room == number_conversions{
			draw_text(_left + _margin,_top + _margin + _line * 3,"Holding the left mouse button will let you draw.");
			draw_text(_left + _margin,_top + _margin + _line * 4,"The right mouse button will let you erase.");
	
			draw_sprite(spr_eraser,0,_left+_margin,_top + _margin + _line*5);
			draw_text(_left+_spr_off,_top + _margin + _line*5, "or 'backspace' will erase all drawings.");
			
			if room = number_operations{
				draw_sprite(spr_operation,1,_left+_margin,_top + _margin + _line*6);
				draw_text(_left+_spr_off,_top + _margin + _line*6, "will change the operation to subtraction.");
				
				draw_sprite(spr_operation,0,_left+_margin,_top + _margin + _line*7);
				draw_text(_left+_spr_off,_top + _margin + _line*7, "will change the operation back to addition.");
			}
		}
		
		else if room == vocab_wordbuild{
			draw_sprite(spr_eraser,0,_left+_margin,_top + _margin + _line*3);
			draw_text(_left+_spr_off,_top + _margin + _line*3, "or 'backspace' will delete the previous word.");			
		}	
	}
}



