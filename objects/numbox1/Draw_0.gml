/// @description Insert description here
// You can write your code in this editor

event_inherited();

var _sum = 0;
if instance_exists(numbox2) _sum += numbox2.number
if instance_exists(numbox3) _sum += numbox3.number
if instance_exists(numbox4) _sum += numbox4.number

if number == 0 and _sum > 0 draw_text(x-1,y+20,chr(58803));
else draw_text(x,y+20,chr(58783+number));