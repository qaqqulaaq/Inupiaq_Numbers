/// @description Insert description here
// You can write your code in this editor

if menuhelp{
	var _left = 10
	var _right = 890
	var _top = 10
	var _bottom = 640
	var _border = 10
	var _margin = 30
	
	draw_rectangle_color(_left,_top,_right,_bottom,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(_left + _border,_top + _border,_right - _border,_bottom - _border,c_black,c_black,c_black,c_black,false);
	
	
	draw_set_color(c_white);
	draw_set_font(Words_20);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_text(_left + _margin, _top + _margin , text);
}