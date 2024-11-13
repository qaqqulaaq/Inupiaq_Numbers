// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inupiaq_numbers(num){

	_tp = floor(num/20);
	_op = num mod 20;
	
	if _tp >= 1 and _tp <= 19 _tp = chr(58783+_tp);
	else _tp = chr(58803)
	
	if _op >= 1 and _op <= 19 _op = chr(58783+_op);
	else _op = chr(58803);
	
	return (_tp +_op);
}