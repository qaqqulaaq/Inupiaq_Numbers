// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_help(){
	//draws the canvas
	
	var _left = 30
	var _right = room_width - 30
	var _top = 50
	var _bottom = room_height = 30
	var _border = 10
	var _margin = 30
	var _spr_off = 72 
	var _line = 50
	
	draw_rectangle_color(_left,_top,_right,_bottom,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(_left + _border,_top + _border,_right - _border,_bottom - _border,c_black,c_black,c_black,c_black,false);
	
	
	draw_set_color(c_white);
	draw_set_font(Words_24);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	if page == 0 and (room == number_operations){
		if room == number_operations draw_text(_left + _margin, _top + _margin , "The goal of this exercise is to perform basic\noperations using the Kaktovik numeral system.");
		
		draw_text(_left + _margin, _top + _margin + _line*2 , "Clicking on the bottom portion of the number box will\nincrease the number by one, while clicking the top\nportion of the number box will increase the number\nby 5. Right clicking will decrease the number instead.");
		
		draw_sprite(spr_numbox,0,room_width/2,_top + _margin + _line * 5.5);
		draw_set_halign(fa_center);
		draw_text(room_width/2,_top + _margin + _line*5.5 + 24, "5");
		draw_text(room_width/2,_top + _margin + _line*5.5 + 112, "1");
		
		draw_set_halign(fa_left);
	}
	
	else if page == 0 and room == number_conversions{
		if room == number_conversions draw_text(_left + _margin, _top + _margin , "The goal of this exercise is to convert between\nArabic numerals and Kaktovik numerals.");
		
		draw_text(_left + _margin, _top + _margin + _line*2 , "Clicking on the bottom portion of the number box will\nincrease the number by one, while clicking the top\nportion of the number box will increase the number\nby 5. Right clicking will decrease the number instead.");
		
		draw_sprite(spr_numbox,0,room_width/5,_top + _margin + _line * 5.5);
		draw_set_halign(fa_center);
		draw_text(room_width/5,_top + _margin + _line*5.5 + 24, "5");
		draw_text(room_width/5,_top + _margin + _line*5.5 + 112, "1");
		
		draw_set_halign(fa_left);
		draw_text(room_width*3/8,_top + _margin + _line*5.5,"In Arabic numeral entry mode, the\ndigital keypad and numbers on the\nkeyboard input the numbers.\nPress backspace or click the \n\"del\" button to delete numbers.");
		
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
		draw_sprite(spr_arrow,0, _left + _margin + font_get_size(Words_24)*4.5, _top + _margin + _line*9);
		draw_text(_left + _spr_off + font_get_size(Words_24)*4.5, _top + _margin + _line*9, " will change the level.");	
		
		
	}

	else if page == 0 and room == vocab_wordbuild{
		draw_text(_left + _margin, _top + _margin , "The goal of this exercise is to practice vocabulary by\nbuilding the correct word.");
		draw_text(_left + _margin, _top + _margin + _line*2 ,"Each word or postbase that you click on will be added\nto your answer. Once you have assembled the correct\nword, enter it to check your answer.");
	}
	
	else if page == 0 and room == number_toword{
		draw_text(_left + _margin, _top + _margin , "The goal of this exercise is to bridge words and numbers.");
		draw_text(_left + _margin, _top + _margin + _line*1, "Set the number box to match the displayed word, or\nbuild the word to match the displayed number.");
		draw_text(_left + _margin, _top + _margin + _line*3 , "Clicking on the bottom portion of the number box will\nincrease the number by one, while clicking the top\nportion of the number box will increase the number\nby 5.");
		
		draw_sprite(spr_numbox,0,room_width/2,_top + _margin + _line * 5.5);
		draw_set_halign(fa_center);
		draw_text(room_width/2,_top + _margin + _line*5.5 + 24, "5");
		draw_text(room_width/2,_top + _margin + _line*5.5 + 112, "1");
		
		draw_set_halign(fa_left);
		
	}

	else if page == 1 and room == number_conversions or room == number_operations or room == vocab_wordbuild or room == number_toword
	{
		draw_sprite(spr_nextbox,0,_left + _margin, _top + _margin);
		draw_text(_left + _spr_off,_top + _margin , "or the 'enter' key will enter your answer.");
	
		draw_sprite(spr_nextbox,1,_left + _margin,_top + _margin + _line*1)
		draw_text(_left + _spr_off,_top + _margin + _line*1, "or 'enter' will let you move to the next problem.");
	
		draw_sprite(spr_arrow,1, _left + _margin, _top + _margin + _line*2);
		draw_text(_left + _spr_off, _top + _margin + _line * 2, "and");
		draw_sprite(spr_arrow,0, _left + _margin + font_get_size(Words_24)*4.5, _top + _margin + _line*2);
		draw_text(_left + _spr_off + font_get_size(Words_24)*4.5, _top + _margin + _line * 2, " will change the level.");
		
		if room == number_operations or room == number_conversions{
			draw_text(_left + _margin,_top + _margin + _line * 3,"Holding the left mouse button will let you draw.");
			draw_text(_left + _margin,_top + _margin + _line * 4,"The right mouse button will let you erase.");
	
			
			if room = number_operations{
				
				draw_sprite(spr_eraser,0,_left+_margin,_top + _margin + _line*5);
				draw_text(_left+_spr_off,_top + _margin + _line*5, "or 'backspace' will erase all drawings.");
				
				draw_sprite(spr_operation,1,_left+_margin,_top + _margin + _line*6);
				draw_text(_left+_spr_off,_top + _margin + _line*6, "will change the operation to subtraction.");
				
				draw_sprite(spr_operation,0,_left+_margin,_top + _margin + _line*7);
				draw_text(_left+_spr_off,_top + _margin + _line*7, "will change the operation back to addition.");
			}
			
			else if room = number_conversions{

				draw_sprite(spr_convert,0,_left+_margin,_top + _margin + _line*5);
				draw_text(_left+_spr_off,_top + _margin + _line*5, "will change to Arabic numeral mode.");
				
				draw_sprite(spr_convert,1,_left+_margin,_top + _margin + _line*6);
				draw_text(_left+_spr_off,_top + _margin + _line*6, "will change to Kaktovik numeral mode.");				
				
			}
		}
		
		else if room == vocab_wordbuild or room == number_toword{
			draw_sprite(spr_eraser,0,_left+_margin,_top + _margin + _line*3);
			draw_text(_left+_spr_off,_top + _margin + _line*3, "or 'backspace' will delete the previous word.");
			
			if room == number_toword{
				draw_sprite(spr_convert,0,_left+_margin,_top + _margin + _line*4);
				draw_text(_left+_spr_off,_top + _margin + _line*4, "will change to word entry mode.");
				
				draw_sprite(spr_convert,1,_left+_margin,_top + _margin + _line*5);
				draw_text(_left+_spr_off,_top + _margin + _line*5, "will change to numerber entry mode.");				
			}
		}	
	}
}