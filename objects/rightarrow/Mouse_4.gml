/// @description Insert description here
// You can write your code in this editor


var _maxlevel;
var _box;

switch room{
	case number_operations : _maxlevel = 7 ; _box = true ; break;
	case number_conversions: _maxlevel = 10; _box = true ; break;
	case vocab_multichoice : _maxlevel = 7 ; _box = false; break;
	case vocab_wordbuild   : _maxlevel = 9 ; _box = false; break;
	default: break;
}

if level < _maxlevel with gamecontroller{
	level += 1;
	clear_timer = 1;
	prev_array = [];
	if _box = true box_create(level);
	
}
