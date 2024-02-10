/// @desc

#region Initialize singleton objects

var _prefix = "_"
 
var _o_index = 0

while (object_exists(_o_index))
{
	var _name = object_get_name(_o_index)
	
	if (string_pos(_prefix,_name) == 1)
	{
		with (instance_create_depth(0, 0, SINGLETON_OBJ_DEPTH, _o_index))
			persistent = true
	}
	_o_index += 1
}

#endregion

//Goto next room to start the game
room_goto_next()
