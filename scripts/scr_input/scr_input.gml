


// Run this one in the create event if we use get_controls_player
function controls_player_setup() {
	
	action_1_buffer_time = 5
	
	action_1_buffered = false
	action_1_buffer_timer = 0
	
}

// Run this in the step event where i need the input variables
function get_controls_player() {
	
	//Workaround for inputs in html
	if mouse_check_button(mb_any) { focus_window() }

	mouse_left_clicked = mouse_check_button_pressed(mb_left)
	mouse_right_clicked = mouse_check_button_pressed(mb_right)
	mouse_any_clicked = mouse_check_button_pressed(mb_any)
	mouse_wheel_up_clicked = mouse_wheel_up()
	mouse_wheel_down_clicked = mouse_wheel_down()
	mouse_left_hold = mouse_check_button(mb_left)

	left_hold = keyboard_check(vk_left) or keyboard_check(ord("A")) or gamepad_button_check(0, gp_padl)
	right_hold = keyboard_check(vk_right) or keyboard_check(ord("D"))  or gamepad_button_check(0, gp_padr)
	down_hold = keyboard_check(vk_down) or keyboard_check(ord("S")) or gamepad_button_check(0, gp_padd)
	up_hold = keyboard_check(vk_up) or keyboard_check(ord("W")) or gamepad_button_check(0, gp_padu)

	left_clicked = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A")) or gamepad_button_check_pressed(0, gp_padl)
	right_clicked = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0, gp_padr)
	down_clicked = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(0, gp_padd)
	up_clicked = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) or gamepad_button_check_pressed(0, gp_padu)

	action_1_hold = keyboard_check(ord("Z")) or keyboard_check(vk_space)
					or keyboard_check(vk_up) or keyboard_check(ord("W"))
					or gamepad_button_check(0, gp_face1) or gamepad_button_check(0, gp_padu)
	action_1_clicked = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_space)
					   or keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
					   or gamepad_button_check_pressed(0, gp_face1) or gamepad_button_check_pressed(0, gp_padu)

	pause_clicked = keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("P")) or gamepad_button_check(0, gp_select) or gamepad_button_check(0, gp_start)
	
	
	if action_1_clicked {
		action_1_buffer_timer = action_1_buffer_time	
	}
	if action_1_buffer_timer > 0 {
		action_1_buffered = true
		action_1_buffer_timer -= 1
	} else {
		action_1_buffered = 0
	}
	
	
}
