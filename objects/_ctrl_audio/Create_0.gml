/*
Audio Variables
Music & Ambiance
Audio Emitters
*/

// Make the object a singleton
if (assign_singleton() == false) exit

global.master_audio_enable = true
global.master_audio_volume = 1.0

global.sfx_enable = true
global.sfx_volume = 0.8

global.music_enable = true
global.music_volume = 0.8

global.ambience_enable = true
global.ambience_volume = 0.8

global.ae_sfx = audio_emitter_create()
global.ae_music = audio_emitter_create()
global.ae_ambience = audio_emitter_create()

#region Music Fading
	
	song_instance = noone
	song_asset = noone
	next_song_asset = noone

	end_fade_out_time = 0 // Old song fade out time
	start_fade_in_time = 0 // New song fade in time
	fade_in_inst_volume = 1
	
	// For fading song out and turning them off
	fade_out_instances_id = [] // Audio Instances to fade out
	fade_out_instances_volume = [] // Volume of each instance
	fade_out_instances_time = [] // How fast the fadeout should happen
	
	song_overlap = false // Defualt is false
	
#endregion
