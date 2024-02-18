
if room == r_test_1 {

	var _x = room_width*0.5
	var _y = room_height*0.5
	mycon_button_dynamic_basic(_x, _y, , , , "r_test_1: Go to r_test_2", true, , my_room_goto, r_test_2, , , false, s_9slice_c_button_gray, 2)

}

if room == r_menu {
	
	var _x = room_width*0.5
	var _y = room_height*0.5 - 50
	mycon_button_dynamic_basic(_x, _y, , , , "Start Game", true, , my_room_goto, r_test_1, , , false, s_9slice_c_button_gray, 2)

	if IN_WINDOWS {
		var _x = room_width*0.5
		var _y = room_height*0.5 + 50
		mycon_button_dynamic_basic(_x, _y, , , , "Quit Game", true, , game_end, 0, , , false, s_9slice_c_button_gray, 2)
	}
}
