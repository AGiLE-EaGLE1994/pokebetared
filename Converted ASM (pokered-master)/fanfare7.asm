;
;;	Fanfare05
;
;;	Converting on Mon Mar 13 18:43:44 1995
;
;;				by ver 1.02
;





;;----------------------------------------
Fanfare7_Ch1:
;;----------------------------------------


	tempo 256
	volume 7, 7
	toggle_perfect_pitch
	duty_cycle 3
;; P1-1
	note_type 6, 11, 5
	octave 3
	note G#, 4
	note_type 4, 11, 2
	note F_, 2
	note G#, 2
	note A_, 2
	note A#, 2
	note F#, 2
	note A#, 2
	octave 4
	note C_, 4
	note C_, 2
;; P1-2
	note_type 4, 11, 6
	note C#, 12

	sound_ret

;;----------------------------------------
Fanfare7_Ch2:
;;----------------------------------------


	duty_cycle 2
;; P2-1
	note_type 6, 12, 5
	octave 4
	note C#, 6
	note_type 4, 12, 1
	note C#, 1
	note C#, 1
	note C#, 1
	note_type 4, 12, 2
	note D#, 2
	note C#, 2
	note D#, 2
	note E_, 4
	note E_, 2
;; P2-2
	note_type 4, 12, 6
	note F_, 12

	sound_ret

;;----------------------------------------
Fanfare7_Ch3:
;;----------------------------------------


;; P3-1
	note_type 6, 1, 0
	octave 5
	note C#, 2
	rest 2
	note C#, 2
	rest 2
	note_type 4, 1, 0
	note C#, 2
	rest 2
	note C#, 2
	note D#, 2
	rest 2
	note F_, 2
;; P3-2
	note G#, 6

	sound_ret


