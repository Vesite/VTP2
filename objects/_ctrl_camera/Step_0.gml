
// Screen shake
screen_shake_timer = max(screen_shake_timer - 1, 0)
if screen_shake_timer > 0 {
	var _amount = (3 + screen_shake_timer)*0.35
	random_change_x = random_range(-_amount, _amount) 
	random_change_y = random_range(-_amount, _amount)
} else {
	random_change_x = 0
	random_change_y = 0	
}

var _cam_width = camera_get_view_width(view_camera[0])
var _cam_height = camera_get_view_height(view_camera[0])

if not is_undefined(follow_target) {

	// Get target position
	var _cam_x = follow_target.x - _cam_width/2
	var _cam_y = follow_target.y - _cam_height/2
	
	// Clamp
	if clamp_inside_room {
		_cam_x = clamp(_cam_x, 0, room_width - _cam_width)
		_cam_y = clamp(_cam_y, 0, room_height - _cam_height)
	}
	
	// Set cam coordinate variables
	final_cam_x += (_cam_x - final_cam_x) * cam_trail_speed
	final_cam_y += (_cam_y - final_cam_y) * cam_trail_speed
	
	camera_set_view_pos(view_camera[0], final_cam_x + random_change_x, final_cam_y + random_change_x)
	
} else {
	
	// Any menu rooms will be centered
	camera_set_view_pos(view_camera[0], x - _cam_width/2 + random_change_x, y - _cam_height/2 + random_change_x)
}
