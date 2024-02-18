
// Workaround for inputs in html?
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



