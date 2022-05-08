;
;;	Fanfare9
;
;;	Converting on Mon Mar 13 18:43:50 1995
;
;;				by ver 1.02
;





;;----------------------------------------
Fanfare9_Ch1:
;;----------------------------------------


	tempo 256
	volume 7, 7
	duty_cycle 3
	toggle_perfect_pitch
;; P1-1
	note_type 6, 11, 3
	octave 3
	note F_, 4
	note C#, 4
	note F#, 4
	note D#, 4
;; P1-2
	note G#, 4
	note F_, 4
	note A#, 4
	note F#, 4
;; P1-3
	note_type 4, 11, 3
	note A#, 4
	note B_, 4
	octave 4
	note C_, 4
	note C#, 4
	note D#, 4
	note C_, 4
;; P1-4
	note_type 4, 11, 6
	note C#, 12

	sound_ret

;;----------------------------------------
Fanfare9_Ch2:
;;----------------------------------------

	duty_cycle 2
;; P2-1
	note_type 6, 12, 4
	octave 4
	note C#, 4
	note_type 4, 12, 4
	note C#, 2
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	note D#, 6
	note D#, 2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
;; P2-2
	note F_, 6
	note F_, 2
	note C#, 2
	note F_, 2
	note F#, 6
	note F#, 2
	note D#, 2
	note F#, 2
;; P2-3
	note C#, 4
	note D#, 4
	note E_, 4
	note F_, 4
	note F#, 4
	note G#, 4
;; P2-4
	note_type 4, 12, 6
	note F#, 12

	sound_ret

;;----------------------------------------
Fanfare9_Ch3:
;;----------------------------------------


;; P3-1
	note_type 6, 1, 0
	octave 4
	note A#, 4
	rest 4
	note B_, 4
	rest 4
;; P3-2
	octave 5
	note C#, 4
	rest 4
	note D#, 4
	rest 4
;; P3-3
	note_type 4, 1, 0
	note F_, 4
	note D#, 4
	note C#, 4
	note A#, 4
	note G#, 4
	note F_, 4
;; P3-4
	note F#, 6

	sound_ret

