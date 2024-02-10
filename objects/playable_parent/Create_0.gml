/// @desc



function set_on_ground(_val = true) {
	if _val == true {
		player_movement_state = PLAYER_MOVEMENT_STATE.ON_GROUND
		coyote_hang_timer = coyote_hang_frames
	} else {
		player_movement_state = PLAYER_MOVEMENT_STATE.AIR
		coyote_hang_timer = 0
	}
}



event_inherited()

#region Movement

	controls_player_setup()
	
	move_direction = 0
	move_speed = 1.7
	x_speed = 0
	y_speed = 0
	
	// Jumping
	term_velocity = 4
	jump_speed = [-4, -4, -4, -4, -4]
	
	jump_max = 1
	jump_count = 0
	jump_hold_timer = 0
	jump_hold_frames = [10, 4, 4, 4, 4]
	
	// Coyote System
	coyote_hang_frames = 2
	coyote_hang_timer = 0
	coyote_jump_frames = 5
	coyote_jump_timer = 0
	
	player_movement_state = PLAYER_MOVEMENT_STATE.ON_GROUND
	enum PLAYER_MOVEMENT_STATE {
		ON_GROUND,
		AIR
	}
	
#endregion
