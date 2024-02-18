
if P exit

get_controls_player()

#region Horizontal
	
	move_direction = right_hold - left_hold
	
	x_speed = move_direction * move_speed
	
	// X Collision
	var _sub_pixel = 0.5
	if place_meeting(x + x_speed, y, parent_collision) {
		// Move into wall precisely
		var _pixel_check = _sub_pixel * sign(x_speed)
		while not place_meeting(x + _pixel_check, y, parent_collision) {
			x += _pixel_check	
		}
		// Set speed to 0 to collide
		event_user(10)
		x_speed = 0	
	}
	
	// Effect
	x += x_speed
	
#endregion

#region Vertical

	// Gravity
	if coyote_hang_timer > 0 {
		coyote_hang_timer -= 1
	} else {
		y_speed += GRAVITY
		set_on_ground(false)
	}
	
	// Reset Jumping Variables
	if player_movement_state == PLAYER_MOVEMENT_STATE.ON_GROUND {
		jump_count = 0
		jump_hold_timer = 0
		coyote_jump_timer = coyote_jump_frames
	} else {
		coyote_jump_timer = max(coyote_jump_timer - 1, 0)
		if jump_count == 0 and coyote_jump_timer == 0 {
			jump_count = 1
		}
	}
	
	// Initiate Jump
	if action_1_buffered and jump_count < jump_max {
		
		action_1_buffered = false
		action_1_buffer_timer = 0
		
		// Jump
		jump_count += 1
		
		// Set the jump-hold timer
		jump_hold_timer = jump_hold_frames[jump_count - 1]
		
		set_on_ground(false)
		coyote_jump_timer = 0
	}
	
	// Cut off the jump bu releasing the jump button
	if not action_1_hold {
		jump_hold_timer = 0	
	}
	
	// Jump Holding
	if jump_hold_timer > 0 {
		y_speed = jump_speed[jump_count - 1]
		jump_hold_timer -= 1
	}
	
	if y_speed > term_velocity {
		y_speed = term_velocity	
	}
	
	// Y Collision
	var _sub_pixel = 0.5
	if place_meeting(x, y + y_speed, parent_collision) {
		var _pixel_check = _sub_pixel + sign(y_speed)
		while not place_meeting(x, y + _pixel_check, parent_collision) {
			y += _pixel_check	
		}
		// Bonk
		if y_speed < 0 {
			jump_hold_timer = 0	
		}
		
		event_user(11)
		y_speed = 0
	}
	
	// Set "player_movement_state"
	if y_speed >= 0 and place_meeting(x, y + 1, parent_collision) {
		if player_movement_state == PLAYER_MOVEMENT_STATE.AIR {
			event_user(4) // Land Event
		}
		set_on_ground(true)
	}
	
	// Effect
	y += y_speed

#endregion
