/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_top)

if room = number_operations{

	draw_set_font(InupiaqNumbers);

	for (var _i = 0; _i < string_length(string1); _i++) draw_text(332 + _i*160,50,string_char_at(string1,_i+1))
	for (var _i = 0; _i < string_length(string2); _i++) draw_text(332 + _i*160,75+font_get_size(InupiaqNumbers),string_char_at(string2,_i+1))

}

for(var _i = 0; _i < array_length(linex); _i++){
	draw_rectangle_color(linex[_i]-5,liney[_i]-5,linex[_i]+5,liney[_i]+5,c_red,c_red,c_red,c_red,false);
}

draw_set_font(EngWords);
if clear_timer > 0{
	if setnumber == totalAmount draw_text(150,20,"ARRIGAA!");
	else draw_text(120,20,"Naumi");
}
//draw_text(room_width - 20, 20, "Points: " + string(points));

if level < 10 draw_text(472,16,string(level));
else draw_text(472,16,"R");