
var _m = global.master_audio_volume

if global.sfx_enable and global.master_audio_enable
	audio_emitter_gain(global.ae_sfx, global.sfx_volume*_m)
else
	audio_emitter_gain(global.ae_sfx, 0)

if global.music_enable and global.master_audio_enable
	audio_emitter_gain(global.ae_music, global.music_volume*_m)
else
	audio_emitter_gain(global.ae_music, 0)

if global.ambience_enable and global.master_audio_enable
	audio_emitter_gain(global.ae_ambience, global.ambience_volume*_m)
else
	audio_emitter_gain(global.ae_ambience, 0)





// Play the next song
if song_asset != next_song_asset {
	
	
	// Tell the old song to fade out
	if audio_is_playing(song_instance) {
		
		array_push(fade_out_instances_id, song_instance)
		// Add starting volume so no abrupt changes
		array_push(fade_out_instances_volume, fade_in_inst_volume)
		// Add 
		array_push(fade_out_instances_time, end_fade_out_time)
		
		// Reset song_instance and song_asset variables
		song_instance = noone
		song_asset = noone
	}
	
	// Play the song, if the old song has faded out
	if array_length(fade_out_instances_id) == 0 or song_overlap {
		if audio_exists(next_song_asset) {
			song_instance = my_play_audio( next_song_asset, global.ae_music, , true)
	
			// Start the songs volume at 0
			audio_sound_gain(song_instance, 0, 0)
			fade_in_inst_volume = 0
		}
	
		// Set the song_asset to match the next_song_asset
		song_asset = next_song_asset
		song_overlap = false
	}
	
}


var _final_volume = global.master_audio_volume * global.music_volume

// Volume Control
	// Main Song Volume
	if audio_is_playing(song_instance) {
	
		if start_fade_in_time > 0 {
			if fade_in_inst_volume < 1 {
				fade_in_inst_volume += 1/start_fade_in_time	
			} else {
				fade_in_inst_volume = 1	
			}
		} else {
			// Will instantly start song if the fade time is 0
			fade_in_inst_volume = 1	
		}
		
		// Set gain
		audio_sound_gain(song_instance, fade_in_inst_volume*_final_volume, 0)
	
	}


	// Fading songs out
	for (var i = 0; i < array_length(fade_out_instances_id); i++) {
	    
		// Fade the volume
		if fade_out_instances_time[i] > 0 {
			
			if fade_out_instances_volume[i] > 0 {
				fade_out_instances_volume[i] -= 1/fade_out_instances_time[i]	
			}
		} else { // Immidiately cut volume to 0
			fade_out_instances_volume[i] = 0
		}
		
		// Set gain
		audio_sound_gain(fade_out_instances_id[i], fade_out_instances_volume[i]*_final_volume, 0)
		
		// Stop and remove the song on 0 volume
		if fade_out_instances_volume[i] <= 0 {
			
			if audio_is_playing(fade_out_instances_id[i]) {
				audio_stop_sound(fade_out_instances_id[i])	
			}
			
			array_delete(fade_out_instances_id, i, 1)
			array_delete(fade_out_instances_volume, i, 1)
			array_delete(fade_out_instances_time, i, 1)
			
			// Set the loop back 1 element
			i -= 1
		}
	}








