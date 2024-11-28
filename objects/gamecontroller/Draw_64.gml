/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top)

if room = number_operations{
	
	var _offset = 0;
	
	switch (level){
		
		case 1: _offset = 320; draw_line_width(350,425,550,425,16); break;
		case 2: case 3: case 4: _offset = 240; draw_line_width(270,425,630,425,16) break;
		case 5: _offset = 160; draw_line_width(190,425,710,425,16) break;
		case 6: _offset = 80; draw_line_width(110,425,790,425,16) break;
		case 7: draw_line_width(30,425,870,425,16); break;
		
		default: break;
	}
	
	draw_set_font(InupiaqNumbers);

	for (var _i = string_length(string1); _i >= 0; _i--) draw_text(288 - _offset + _i*160,75,string_char_at(string1,_i+1))
	for (var _i = 0; _i < string_length(string2); _i++) draw_text(288 - _offset + _i*160,95+font_get_size(InupiaqNumbers),string_char_at(string2,_i+1))
	
}

for(var _i = 0; _i < array_length(linex); _i++){
	draw_rectangle_color(linex[_i]-5,liney[_i]-5,linex[_i]+5,liney[_i]+5,c_red,c_red,c_red,c_red,false);
}

draw_set_font(EngWords);
if clear_timer > 0 and room == number_operations{
	if setnumber == totalAmount draw_text(150,20,"ARRIGAA!");
	else draw_text(120,20,"Naumi");
}
//draw_text(room_width - 20, 20, "Points: " + string(points));

if level < 10 draw_text(448,16,string(level));
else draw_text(448,16,"R");