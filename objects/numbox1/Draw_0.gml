/// @description Insert description here
// You can write your code in this editor

event_inherited();

var _sum = 0;
if instance_exists(numbox2) _sum += numbox2.number
if instance_exists(numbox3) _sum += numbox3.number
if instance_exists(numbox4) _sum += numbox4.number

if number > 0 or _sum > 0 draw_text(x,y,chr(KN+number));