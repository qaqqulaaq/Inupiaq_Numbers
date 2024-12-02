// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function level_change(_dir){
	var _box = false;
	if room == number_operations or (room == number_conversions and gamecontroller.kaktovik) _box = true;

	if _dir{
		var _maxlevel;
		var _box;

		switch room{
			case number_operations : _maxlevel = 7 ; break;
			case number_conversions: _maxlevel = 10; break;
			case vocab_multichoice : _maxlevel = 7 ; break;
			case vocab_wordbuild   : _maxlevel = 8 ; break;
			default: break;
		}

		with gamecontroller if level < _maxlevel {
			level += 1;
			prev_array = [];
			if _box = true box_create(level);
			reset();
	
		}
	}

	else {
	
		with gamecontroller{
			if level > 1 {
				level -= 1;
				prev_array = [];
				if _box box_create(level);
				reset();
			}
		}
	}
}