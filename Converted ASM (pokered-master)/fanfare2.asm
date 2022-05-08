;
;;	fanfare1
;
;;	Converting on Thu May 25 06:44:08 1978
;
;;				by ver 1.02
;





;;----------------------------------------
Fanfare2_Ch1:
;;----------------------------------------


	tempo 256
	volume 7, 7

	vibrato 6, 2, 6
	duty_cycle 2
	toggle_perfect_pitch
;; P1-1
	note_type 6, 11, 1
	octave 3
	note G#, 2
	note G#, 2
	note_type 6, 11, 3
	note G#, 2
	note B_, 2
	octave 4
	note E_, 8

	sound_ret

;;----------------------------------------
Fanfare2_Ch2:
;;----------------------------------------


	vibrato 8, 2, 7
	duty_cycle 2
;; P2-1
	note_type 6, 12, 1
	octave 4
	note E_, 2
	note E_, 1
	note E_, 1
	note_type 6, 12, 3
	note E_, 2
	note G#, 2
	note B_, 8

	sound_ret

;;----------------------------------------
Fanfare2_Ch3:
;;----------------------------------------

;; P3-1

	note_type 6, 1, 0
	octave 4
	note B_, 1
	rest 1
	note_type 3, 1, 0
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note_type 6, 1, 0
	note B_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note B_, 4
	rest 4
	sound_ret

