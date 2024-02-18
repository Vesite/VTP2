
function set_song_ingane(_song, _fade_out_current_song_frames=0, _fade_in_frames=0, _song_overlap=false) {
	
	with (_ctrl_audio) {
		next_song_asset = _song
		end_fade_out_time = _fade_out_current_song_frames
		start_fade_in_time = _fade_in_frames
		song_overlap = _song_overlap
	}
	
}
