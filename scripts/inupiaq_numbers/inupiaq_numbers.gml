// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inupiaq_numbers(num){

	var _tp = floor(num/20);
	var _op = num mod 20;
	
	_tp = chr(KN+_tp);
	
	_op = chr(KN+_op);
	
	return (_tp +_op);
}