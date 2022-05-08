Music_PkmnHealed:
	dbw $80, Music_PkmnHealed_Ch1
	dbw $01, Music_PkmnHealed_Ch2
	dbw $02, Music_PkmnHealed_Ch3

Music_PkmnHealed_Ch1::
	ftempo 		144
	volume 119
	vibrato		8, $24
	notetype	12, $82
    fdutycycle	2
	octave		4
	;note		B_, 2
	;note		A_, 2
	;note		G#, 2
	;note		E_, 2
	note __, 8
	fdutycycle	3
	notetype	12, $c5
	octave		3
	note		G#, 2
	note		E_, 2
	note		F#, 2
	note		G#, 2
	note		E_, 8
	endchannel

Music_PkmnHealed_Ch2::
	vibrato		5, $15
	notetype	12, $d4
	octave		4
    fdutycycle	2
	note		B_, 2
	note		A_, 2
	note		G#, 2
	note		E_, 2
	octave		5
	note		E_, 2
	octave		4
	note		C#, 2
	octave		3
	note		B_, 2
	note		A_, 2
	note		G#, 8
	endchannel

Music_PkmnHealed_Ch3::
	notetype	12, $10
	octave		4
	note		E_, 2
	note		F#, 2
	note		G#, 2
	note		A_, 2
	note		G#, 4
	note		E_, 2
	note		F#, 2
	note		E_, 6
	note		__, 2
	endchannel
