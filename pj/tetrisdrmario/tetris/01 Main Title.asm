asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr02 = $16
!instr03 = $17
!instr04 = $18
!instr05 = $19
!instr07 = $1A
!instr08 = $1B
!instr09 = $1C
!instr0A = $1D
!instr0C = $1E
!instr0D = $1F
!instr11 = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr04,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr09,$F8,$E1,$B8,$03,$00
  db !instr0A,$FF,$FD,$B8,$06,$F0
  db !instr0C,$FF,$E1,$B8,$07,$F0
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr11,$F8,$E1,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+27
  dw Sample03,Sample03+27
  dw Sample04,Sample04+27
  dw Sample05,Sample05+27
  dw Sample07,Sample07+1971
  dw Sample08,Sample08+1332
  dw Sample09,Sample09+27
  dw Sample0A,Sample0A+27
  dw Sample0C,Sample0C+27
  dw Sample0D,Sample0D+441
  dw Sample11,Sample11+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample02.brr"
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample09: incbin "Sample09.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample11: incbin "Sample11.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
  dw .pattern1
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !loop : dw .subD6D7 : db 1
  db 8,$7F
  !a6
  db 4
  !f6
  db 8
  !d6
  db 4
  !b5
  db 8
  !g5
  db 4
  !e5
  db 8
  !c5
  db 4
  !a4
  db 8
  !f4
  db 4
  !d4
  db 8
  !b3
  db 4
  !g3
  db 8
  !e3
  db 4
  !c3
  db 8
  !a2
  db 4
  !g2
  db 8
  !f2
  db 4
  !g2
  db 8
  !a2
  db 4
  !c3
  db 8
  !e3
  db 4
  !g3
  db 8
  !b3
  db 4
  !d4
  db 8
  !f4
  db 4
  !a4
  db 8
  !c5
  db 4
  !e5
  db 8
  !g5
  db 4
  !b5
  db 8
  !d6
  db 4
  !f6
  !loop : dw .subD780 : db 2
  !loop : dw .subD7EB : db 2
  !end

.pattern0_1
  !loop : dw .subD749 : db 1
  !volume,50
  !dynamicVolume,192,200
  !instr,!instr02
  db 96
  !a2
  !pitchSlide,0,192 : !c3
  !tie
  !instr,!instr07
  db 24
  !c3
  !instr,!instr08
  !g4
  !instr,!instr07
  !c3
  !instr,!instr08
  !g4
  !loop : dw .subD87F : db 5
  !end

.pattern0_2
  !loop : dw .subD75A : db 1
  db 12
  !rest
  db 24
  !c7
  db 8
  !g5
  db 16
  !g5
  db 24
  !c7
  db 8
  !g5
  db 4
  !g5
  db 12
  !rest
  db 24
  !c7
  db 8
  !g5
  db 12
  !g5
  !c7
  !g5
  db 4
  !c7
  db 8
  !g5
  db 4
  !g5
  !instr,!instr05
  !loop : dw .subD88C : db 3
  !end

.pattern0_3
  !instr,!instr09
  !volume,200
  !pan,10
  db 96
  !rest
  !rest
  !loop : dw .subD8E8 : db 1
  !tie
  !instr,!instr0D
  !vibrato,8,40,40
  !transpose,12
  !loop : dw .subD88C : db 3
  !end

.pattern0_4
  !instr,!instr09
  !volume,200
  !pan,10
  db 96
  !rest
  !rest
  !volume,50
  !dynamicVolume,192,200
  !instr,!instr11
  db 96,$7F
  !b5
  !pitchSlide,0,192 : !d6
  !tie
  !rest
  !rest
  !instr,!instr0D
  !vibrato,8,30,40
  !loop : dw .subD8F7 : db 2
  !end

.pattern0_5
  !volume,200
  !pan,10
  db 96
  !rest
  !rest
  !volume,50
  !dynamicVolume,192,200
  !instr,!instr11
  !subtranspose,10
  db 96,$7F
  !b5
  !pitchSlide,0,192 : !d6
  !tie
  !rest
  !rest
  !instr,!instr0D
  !rest
  !vibrato,8,50,30
  !rest
  db 24,$5D
  !g4
  db 20,$7D
  !f4
  db 12,$2D
  !g4
  !f4
  !g4
  db 4,$7D
  !e4
  db 8
  !f4
  db 4
  !fs4
  db 24,$5D
  !g4
  db 20,$7D
  !f4
  db 12,$2D
  !g4
  db 40
  !rest
  !end

.pattern0_6
  !volume,200
  !pan,10
  db 96
  !rest
  !rest
  !rest
  !instr,!instr04
  db 48
  !rest
  db 4,$7F
  !a7
  !f7
  !d7
  !as6
  !a6
  !f6
  !d6
  !as5
  !a5
  !f5
  !d5
  !as4
  !f4
  !d4
  !as3
  !a3
  !f3
  !d3
  !as2
  !f2
  !d2
  db 60
  !rest
  db 96
  !rest
  !instr,!instr0D
  !vibrato,8,40,40
  db 24,$55
  !e5
  db 20,$75
  !d5
  db 12,$25
  !e5
  !d5
  !e5
  db 4,$75
  !c5
  db 8
  !d5
  db 4
  !ds5
  db 24,$55
  !e5
  db 20,$75
  !d5
  db 12,$25
  !e5
  db 40
  !rest
  db 24,$55
  !g5
  db 20,$75
  !f5
  db 12,$25
  !g5
  !f5
  !g5
  db 4,$75
  !e5
  db 8
  !f5
  db 4
  !fs5
  db 24,$55
  !g5
  db 20,$75
  !f5
  db 12,$25
  !g5
  db 40
  !rest
  !end

.pattern0_7
  !volume,200
  !pan,10
  db 96
  !rest
  !loop : dw .subD915 : db 9
  !end

.pattern1_0
  !loop : dw .subD7EB : db 2
  !loop : dw .subD81B : db 5
  db 12,$73
  !c5
  db 8,$7F
  !c5
  db 4,$77
  !c5
  db 12,$73
  !c5
  db 8,$7F
  !c5
  db 4,$77
  !c5
  db 12,$73
  !c5
  db 8,$7F
  !c5
  db 4,$77
  !c5
  db 12,$73
  !c5
  db 12,$7F
  !c5
  db 96
  !rest
  !end

.pattern1_1
  !instr,!instr07
  db 24,$7F
  !c3
  !instr,!instr08
  !g4
  !instr,!instr07
  !c3
  !instr,!instr08
  !g4
  !instr,!instr07
  !c3
  !instr,!instr08
  !g4
  !instr,!instr07
  db 18
  !c3
  !instr,!instr08
  db 3
  !g4
  !g4
  !tempo,23
  db 8
  !g4
  db 12
  !g4
  db 4
  !g4
  db 96
  !rest
  db 80
  !rest
  db 12
  !g4
  !instr,!instr07
  db 4
  !c3
  db 96
  !c3
  db 72
  !rest
  db 8
  !c3
  !instr,!instr08
  db 12
  !g4
  db 4
  !g4
  !instr,!instr07
  db 12
  !c3
  !instr,!instr08
  !g4
  !instr,!instr07
  !c3
  !instr,!instr08
  !g4
  !instr,!instr07
  !c3
  !instr,!instr08
  !g4
  !instr,!instr07
  !c3
  !instr,!instr08
  !g4
  !instr,!instr07
  !c3
  !instr,!instr08
  !g4
  !instr,!instr07
  !c3
  !instr,!instr08
  !g4
  db 4
  !g4
  !g4
  !g4
  !g4
  !g4
  !g4
  !tempo,20
  !instr,!instr07
  db 12
  !c3
  !instr,!instr08
  !g4
  db 96
  !rest
  !end

.pattern1_2
  db 24,$5F
  !c3
  db 20,$7F
  !as2
  db 12,$2F
  !c3
  !as2
  !c3
  db 4,$7F
  !g2
  db 8
  !as2
  db 4
  !b2
  db 24,$5F
  !c3
  db 20,$7F
  !as2
  db 12,$2F
  !c3
  db 16
  !rest
  db 8,$7F
  !c3
  db 12,$2F
  !cs3
  db 4,$7F
  !d3
  db 12
  !tie
  !a2
  !d3
  !cs3
  !c3
  !b2
  !a2
  !g2
  !fs2
  !fs2
  !g2
  !gs2
  !a2
  !d2
  !a2
  !gs2
  !g2
  !b2
  !d3
  !c3
  !b2
  !d3
  !f3
  !e3
  !d3
  !d3
  !c3
  !c3
  !b2
  !b2
  !ds2
  !ds2
  !e2
  !fs2
  !g2
  !gs2
  !a2
  !b2
  !cs3
  !a2
  !d3
  !a2
  !d3
  !d3
  !d3
  !d3
  db 12,$3F
  !a2
  db 12,$7F
  !d3
  db 96
  !rest
  !end

.pattern1_3
  db 24,$5F
  !c3
  db 20,$7F
  !as2
  db 12,$2F
  !c3
  !as2
  !c3
  db 4,$7F
  !g2
  db 8
  !as2
  db 4
  !b2
  db 24,$5F
  !c3
  db 20,$7F
  !as2
  db 12,$2F
  !c3
  db 16
  !rest
  db 8,$7F
  !e3
  db 12,$2F
  !f3
  db 4,$7F
  !fs3
  db 36
  !tie
  !pitchSlide,12,24 : !fs2
  !transpose,0
  !instr,!instr0C
  !subtranspose,30
  db 8
  !rest
  db 2,$7B
  !as5
  !b5
  db 12
  !c6
  db 4
  !a5
  !f5
  !cs5
  db 12
  !c5
  db 8
  !as4
  db 4
  !gs4
  !loop : dw .subD840 : db 1
  db 8
  !g5
  db 4
  !gs5
  db 8
  !a5
  db 4
  !b5
  db 8
  !c6
  db 4
  !d6
  db 8
  !ds6
  db 4
  !f6
  db 8
  !fs6
  db 4
  !gs6
  db 8
  !a6
  db 16
  !gs6
  db 2
  !fs6
  !ds6
  !cs6
  !as5
  !instr,!instr0D
  !subtranspose,0
  db 4,$7F
  !gs4
  !pitchSlide,0,4 : !a4
  db 12
  !tie
  db 8,$7B
  !fs4
  db 4
  !d4
  db 20,$1F
  !f4
  db 16,$7F
  !ds4
  !pitchSlide,0,4 : !e4
  db 8,$7B
  !cs4
  db 4
  !a3
  db 8
  !as3
  db 4,$7F
  !g4
  db 8,$7B
  !e4
  db 4
  !f4
  db 8,$7F
  !fs4
  db 4,$7B
  !d4
  db 8
  !cs4
  db 4
  !b3
  db 8
  !as3
  db 4
  !ds4
  db 8
  !g4
  db 4
  !as4
  db 8,$7F
  !b4
  db 4,$7B
  !gs4
  db 8
  !e4
  db 4
  !b3
  db 12,$3F
  !c4
  db 12,$7F
  !d5
  !tie
  !pitchSlide,0,12 : !d3
  db 84
  !rest
  !end

.pattern1_4
  db 24,$5F
  !e5
  db 20,$7F
  !d5
  db 12,$2F
  !e5
  !d5
  !e5
  db 4,$7F
  !c5
  db 8
  !d5
  db 4
  !ds5
  db 24,$5F
  !e5
  db 20,$7F
  !d5
  db 12,$2F
  !e5
  db 16
  !rest
  db 8,$7F
  !g5
  db 12,$2F
  !gs5
  db 4,$7F
  !a5
  db 36
  !tie
  !pitchSlide,12,24 : !a3
  !instr,!instr0C
  db 8
  !rest
  db 2,$7B
  !as5
  !b5
  db 12
  !c6
  db 4
  !a5
  !f5
  !cs5
  db 12
  !c5
  db 8
  !as4
  db 4
  !gs4
  !loop : dw .subD840 : db 1
  db 8
  !g5
  db 4
  !gs5
  db 8
  !a5
  db 4
  !b5
  db 8
  !c6
  db 4
  !d6
  db 8
  !ds6
  db 4
  !f6
  db 8
  !fs6
  db 4
  !gs6
  db 8
  !a6
  db 16
  !gs6
  db 2
  !fs6
  !ds6
  !cs6
  !as5
  !instr,!instr0D
  db 4,$7F
  !gs5
  !pitchSlide,0,4 : !a5
  db 12
  !tie
  db 8,$7B
  !fs5
  db 4
  !d5
  db 20,$1F
  !f5
  db 16,$7F
  !ds5
  !pitchSlide,0,4 : !e5
  db 8,$7B
  !cs5
  db 4
  !a4
  db 8
  !as4
  db 4,$7F
  !g5
  db 8,$7B
  !e5
  db 4
  !f5
  db 8,$7F
  !fs5
  db 4,$7B
  !d5
  db 8
  !cs5
  db 4
  !b4
  db 8
  !as4
  db 4
  !ds5
  db 8
  !g5
  db 4
  !as5
  db 8,$7F
  !b5
  db 4,$7B
  !gs5
  db 8
  !e5
  db 4
  !b4
  db 12,$3F
  !c5
  db 12,$7F
  !a5
  !tie
  !pitchSlide,0,12 : !a3
  db 84
  !rest
  !end

.pattern1_5
  db 24,$5F
  !g5
  db 20,$7F
  !f5
  db 12,$2F
  !g5
  !f5
  !g5
  db 4,$7F
  !e5
  db 8
  !f5
  db 4
  !fs5
  db 24,$5F
  !g5
  db 20,$7F
  !f5
  db 12,$2F
  !g5
  db 16
  !rest
  db 8,$7F
  !a5
  db 12,$2F
  !as5
  db 4,$7F
  !b5
  db 36
  !tie
  !pitchSlide,12,24 : !b3
  !endVibrato
  db 60
  !rest
  db 96
  !rest
  !rest
  db 92
  !rest
  !instr,!instr0D
  db 4
  !gs6
  !pitchSlide,0,4 : !a6
  db 12
  !tie
  db 8,$7B
  !fs6
  db 4
  !d6
  db 20,$1F
  !f6
  db 16,$7F
  !ds6
  !pitchSlide,0,4 : !e6
  db 8,$7B
  !cs6
  db 4
  !a5
  db 8
  !as5
  db 4,$7F
  !g6
  db 8,$7B
  !e6
  db 4
  !f6
  db 8,$7F
  !fs6
  db 4,$7B
  !d6
  db 8
  !cs6
  db 4
  !b5
  db 8
  !as5
  db 4
  !ds6
  db 8
  !g6
  db 4
  !as6
  db 8,$7F
  !b6
  db 4,$7B
  !gs6
  db 8
  !e6
  db 4
  !b5
  db 12,$3F
  !c6
  db 12,$7F
  !d7
  !tie
  !pitchSlide,0,12 : !d4
  db 84
  !rest
  !end

.pattern1_6
  db 24,$5F
  !c6
  db 20,$7F
  !as5
  db 12,$2F
  !c6
  !as5
  !c6
  db 4,$7F
  !g5
  db 8
  !as5
  db 4
  !b5
  db 24,$5F
  !c6
  db 20,$7F
  !as5
  db 12,$2F
  !c6
  db 16
  !rest
  db 8,$7F
  !c6
  db 12,$2F
  !cs6
  db 4,$7F
  !d6
  db 36
  !tie
  !pitchSlide,12,24 : !d4
  db 60
  !rest
  db 96
  !rest
  !rest
  db 92
  !rest
  db 4,$7B
  !as5
  !pitchSlide,0,4 : !b5
  db 24,$3B
  !tie
  db 20,$1B
  !b5
  db 28,$3B
  !fs5
  !pitchSlide,0,4 : !g5
  db 24,$1B
  !cs5
  db 24,$77
  !e5
  !f5
  db 12
  !fs5
  !g5
  !gs5
  db 12,$7F
  !b5
  !tie
  !pitchSlide,0,12 : !b3
  db 84
  !rest
  !end

.pattern1_7
  !instr,!instr03
  db 96,$7F
  !g3
  !pitchSlide,0,192 : !g5
  !tie
  !dynamicVolume,96,0
  db 6
  !tie
  !pitchSlide,0,6 : !g7
  db 90
  !tie
  !pitchSlide,0,90 : !g6
  db 96
  !rest
  !rest
  !volume,200
  !instr,!instr0D
  db 92
  !rest
  db 4,$7B
  !cs6
  !pitchSlide,0,4 : !d6
  db 24,$3B
  !tie
  db 20,$1B
  !c6
  db 28,$3B
  !as5
  !pitchSlide,0,4 : !b5
  db 24,$1B
  !fs5
  db 24,$77
  !a5
  !as5
  db 12
  !b5
  !c6
  !cs6
  db 12,$7F
  !fs5
  !tie
  !pitchSlide,0,12 : !fs3
  db 84
  !rest
  !end

.subD6D7
  !musicVolume,210;240
  !tempo,25
  !instr,!instr0A
  !volume,200
  !pan,10
  !echo,%11111100,20,20
  !echoParameters,4,80,0
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$7F
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$7D
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$7F
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$7D
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$7F
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$7D
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$7F
  !a6
  db 4,$75
  !a6
  db 8,$72
  !a6
  db 4
  !a6
  !end

.subD780
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$7F
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$7D
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$7F
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$7D
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$7F
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$7D
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$7F
  !a6
  db 4,$75
  !a6
  db 8,$72
  !a6
  db 4
  !a6
  !end

.subD7EB
  db 8,$75
  !a6
  db 4,$7D
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$7F
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$7D
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$75
  !a6
  db 4,$72
  !a6
  db 8,$7F
  !a6
  db 4,$75
  !a6
  db 8,$72
  !a6
  db 4
  !a6
  !end

.subD749
  !instr,!instr07
  !volume,240
  !pan,10
  db 24,$7F
  !c3
  !c3
  !c3
  !c3
  !c3
  !c3
  !c3
  !c3
  !end

.subD87F
  !instr,!instr07
  !c3
  !instr,!instr08
  !g4
  !instr,!instr07
  !c3
  !instr,!instr08
  !g4
  !end

.subD75A
  !volume,240
  !pan,10
  !instr,!instr07
  db 12
  !rest
  db 24,$7B
  !c7
  db 8
  !g5
  db 16
  !g5
  db 24
  !c7
  db 8
  !g5
  db 4
  !g5
  db 12
  !rest
  db 24
  !c7
  db 8
  !g5
  db 12
  !g5
  !c7
  !g5
  db 4
  !c7
  db 8
  !g5
  db 4
  !g5
  !end

.subD88C
  db 24,$5F
  !c3
  db 20,$7F
  !as2
  db 12,$2F
  !c3
  !as2
  !c3
  db 4,$7F
  !g2
  db 8
  !as2
  db 4
  !b2
  db 24,$5F
  !c3
  db 20,$7F
  !as2
  db 12,$2F
  !c3
  db 40
  !rest
  !end

.subD8E8
  !volume,50
  !dynamicVolume,192,200
  !instr,!instr11
  db 96,$7F
  !g5
  !pitchSlide,0,192 : !as5
  !end

.subD8F7
  db 24,$5B
  !e4
  db 20,$7B
  !d4
  db 12,$2B
  !e4
  !d4
  !e4
  db 4,$7B
  !c4
  db 8
  !d4
  db 4
  !ds4
  db 24,$5B
  !e4
  db 20,$7B
  !d4
  db 12,$2B
  !e4
  db 40
  !rest
  !end

.subD915
  !rest
  !end

.subD81B
  db 12,$73
  !c5
  db 8,$7F
  !c5
  db 4,$77
  !c5
  db 12,$73
  !c5
  db 8,$7F
  !c5
  db 4,$77
  !c5
  db 12,$73
  !c5
  db 8,$7F
  !c5
  db 4,$77
  !c5
  db 12,$73
  !c5
  db 8,$7F
  !c5
  db 4,$77
  !c5
  !end

.subD840
  db 8
  !a4
  db 4,$2B
  !b4
  db 8,$7B
  !cs5
  db 4
  !e5
  db 8
  !d5
  db 12,$2B
  !a4
  !c5
  db 4,$7B
  !c5
  db 8
  !c5
  db 2
  !b4
  !a4
  !g4
  !f4
  !e4
  !d4
  db 16
  !rest
  db 8
  !rest
  db 4
  !d5
  db 8
  !f5
  db 4
  !fs5
  db 8
  !g5
  db 4
  !gs5
  db 8
  !a5
  db 4
  !d5
  db 8
  !f5
  db 4
  !fs5
  db 8
  !g5
  db 4
  !gs5
  db 8
  !a5
  db 4
  !d5
  db 8
  !f5
  db 4
  !fs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
