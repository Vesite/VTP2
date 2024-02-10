/// @desc 

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

//if false { 
	
//	var _x = GUI_WIDTH*0.1
//	var _y = GUI_HEIGHT*0.8
//	mycon_button_dynamic_basic(_x, _y,,32, 32,,,s_icon_fullscreen,my_toggle_fullscreen,,,,true, s_9slice_c_button_gray, 2)

//	var _x = GUI_WIDTH*0.9
//	var _y = GUI_HEIGHT*0.8
//	mycon_button_dynamic_basic(_x, _y,,32, 32,,,s_icon_size,my_toggle_screen_size,,,,true, s_9slice_c_button_gray, 2)

//}







