// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_number_operations(){
	//draws the word depending on the answer
	if answered{
		if setnumber == totalAmount draw_text(150,20,"AARIGAA!");
		else draw_text(450,20,"Naumi.");
	}
	

	
	draw_set_font(InupiaqNumbers_150);
	

	
	var _string_left = room_width div 2 - 80 * (string_length(string1) - 1)
	
	var _line_height = 64 + 2*(string_height(string1))-40;
	var _line_start = _string_left - 120
	var _len = string_length(string2)
	var _line_end = _string_left + (string_length(string2))*160-40
	
	for (var _i = 0; _i < string_length(string1); _i++){
		draw_text(_string_left+160*_i, 64, string_char_at(string1,_i+1))
		draw_text(_string_left+160*_i, 32 + string_height(string1), string_char_at(string2,_i+1))
	}

	draw_line_width(_line_start,_line_height,_line_end,_line_height,16)

	if mathop == "plus" draw_sprite(spr_plus,0,_string_left - 160,112 + string_height(string1));
	else if mathop == "minus" draw_sprite(spr_minus,0,_offset,150+font_get_size(InupiaqNumbers_150));
	
	
	
	//draws the marker for the player
	for (var _i = 0; _i < array_length(linex); _i++){
		draw_rectangle_color(linex[_i]-5,liney[_i]-5,linex[_i]+5,liney[_i]+5,c_red,c_red,c_red,c_red,false);
	}
		
	

}