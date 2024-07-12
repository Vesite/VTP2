
function assign_singleton() {

	// Make the objet a singleton
	if (instance_number(object_index) > 1)
	{
		instance_destroy()
		return false
	}

	persistent = true
	return true

}

function default_func() {
	
}

function print_ds_list(_list) {
	
	var _txt = ""
	for (var _i = 0; _i < ds_list_size(_list); _i++) {
		_txt += string(ds_list_find_value(_list, _i)) + " "
	}
	
	show_message(_txt)

}

/*
Moves "a" towards "b" by "amount" and returns the result
Nice bcause it will not overshoot "b", and works in both directions
*/
function approach(_val_1, _val_2, _amount_to_move) {

	if (_val_1 < _val_2)
	{
	    _val_1 += _amount_to_move;
	    if (_val_1 > _val_2)
	        return _val_2;
	}
	else
	{
	    _val_1 -= _amount_to_move;
	    if (_val_1 < _val_2)
	        return _val_2;
	}
	return _val_1;

}

function my_room_goto(_room) {
	
	with (_ctrl_transition) {
		transition_mode = TRANSITION_MODE.GOTO
		target_room = _room
	}
	
}

function my_set_text_align(_halign, _valign) {
	
	draw_set_halign(_halign)
	draw_set_valign(_valign)
}
