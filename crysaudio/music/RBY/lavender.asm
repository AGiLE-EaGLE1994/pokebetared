Music_Lavender::
	channel_count 4
	channel 1, Music_Lavender_Ch1
	channel 2, Music_Lavender_Ch2
	channel 3, Music_Lavender_Ch3
	channel 4, Music_Lavender_Ch4

Music_Lavender_Ch1::
	tempo 152
	volume 7, 7
	duty_cycle 1
	toggle_perfect_pitch
	vibrato 0, 8, 8
	note_type 12, 8, 7

	note_type 12, 10, 7

Music_Lavender_branch_bb6b::
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note B_, 4
	note C#, 8
	note C#, 8
	note G_, 8
	note G_, 8
	note F#, 8
	note F#, 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note C_, 8
	note C_, 8
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note B_, 4
	note C#, 8
	note C#, 8
	note G_, 8
	note G_, 8
	note F#, 8
	note F#, 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	note C_, 8
	note C_, 8
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, Music_Lavender_branch_bb6b


Music_Lavender_Ch2::
	vibrato 0, 3, 4
	duty_cycle 3
	note_type 12, 9, 1

Music_Lavender_branch_bba5::
	note_type 12, 11, 5
	octave 3	

	note_type 6, 11, 5
		octave 3
	note F#, 6 ;start between this note
	;    note [...] ; a note half as long as note 27
    sound_jump Music_Cinnabar_branch_b878.note28 ; jump to note 28
	
	;note E_, 1  and this one, which is 28 notes in
	note F#, 2
	note A_, 2
	note_type 12, 10, 2
	note G_, 4
	octave 4
	note D_, 1
	note E_, 1
	note D_, 4
	note_type 12, 7, 2
	note D_, 1
	note E_, 1
	note D_, 4
	note_type 12, 10, 7
	octave 3
	note B_, 6
	note G_, 2
	note E_, 8
	octave 4
	note C_, 6
	octave 3
	note A_, 2
	note F#, 8
	octave 4
	note F#, 6
	note D_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 8
	note F#, 4
	note E_, 4

	sound_loop 0, Music_Lavender_branch_bba5


Music_Lavender_Ch3::
	vibrato 4, 1, 1
	note_type 12, 3, 15
	note_type 12, 2, 15
	load_wave 2, 1, 14, 2, 3, 3, 2, 8, 14, 1, 2, 2, 15, 15, 14, 10, 1, 0, 1, 4, 13, 12, 1, 0, 14, 3, 4, 1, 5, 1, 7, 3

Music_Lavender_branch_bbb9::
	octave 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note_type 12, 3, 15
	octave 6
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	note_type 12, 2, 15
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 7
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note_type 12, 2, 15
	octave 6
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 7
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	sound_loop 0, Music_Lavender_branch_bbb9


Music_Lavender_Ch4::
	toggle_noise 0
	drum_speed 12


Music_Lavender_branch_bc26::
	drum_note 7, 8
	drum_note 7, 8
	sound_loop 0, Music_Lavender_branch_bc26
