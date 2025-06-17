asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr02 = $17
!instr03 = $18
!instr07 = $19
!instr08 = $1A
!instr0A = $1B
!instr0D = $1C
!instr0E = $1D
!instr10 = $1E
!instr15 = $1F

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E1,$B8,$03,$00
  db !instr02,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr0A,$FF,$FD,$B8,$06,$F0
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr0E,$FF,$E1,$B8,$03,$00
  db !instr10,$FF,$E1,$B8,$08,$F0
  db !instr15,$FF,$E1,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+27
  dw Sample02,Sample02+27
  dw Sample03,Sample03+27
  dw Sample07,Sample07+1971
  dw Sample08,Sample08+1332
  dw Sample0A,Sample0A+27
  dw Sample0D,Sample0D+441
  dw Sample0E,Sample0E+3213
  dw Sample10,Sample10+27
  dw Sample15,Sample15+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample02: incbin "Sample02.brr"
  Sample03: incbin "Sample03.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0E: incbin "Sample0E.brr"
  Sample10: incbin "Sample10.brr"
  Sample15: incbin "Sample15.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD704

TrackerD704:
  dw .pattern0
  dw .pattern1
  dw .pattern1
  dw .pattern2
  dw .pattern2
-
  dw .pattern3
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern1_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, 0, 0, 0
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, 0, 0, 0

.pattern0_0
  !musicVolume,210
  !tempo,27
  !echo,%00001111,20,20
  !echoParameters,4,80,0
  !volume,240
  !pan,10
  db 24
  !rest
  !end

.pattern0_1
  !volume,200
  !pan,10
  !instr,!instr07
  db 24
  !rest
  !end

.pattern0_2
  !volume,200
  !pan,10
  db 24
  !rest
  !end

.pattern0_3
  !volume,200
  !pan,10
  db 24
  !rest
  !end

.pattern0_4
  !volume,200
  !pan,10
  !instr,!instr0A
  db 24
  !rest
  !end

.pattern1_0
  !instr,!instr02
  !slideIn,0,2,248
  !loop : dw .subDE7E : db 1
  !end

.pattern1_1
  !instr,!instr07
  !loop : dw .subDE92 : db 1
  !end

.pattern1_2
  !loop : dw .subDEA5 : db 1
  db 96
  !rest
  !end

.pattern1_3
  db 96
  !rest
  !rest
  !end

.pattern1_4
  !loop : dw .subDDD2 : db 2
  !end

.pattern2_0
  !loop : dw .subDE7E : db 1
  !end

.pattern2_1
  !loop : dw .subDE92 : db 1
  !end

.pattern2_2
  db 15
  !rest
  db 3,$5F
  !g4
  !a4
  !b4
  db 12,$0F
  !a4
  !g4
  db 48
  !rest
  db 6,$07
  !g7
  !g6
  !g7
  !g6
  !g7
  !g6
  db 60
  !rest
  !end

.pattern2_3
  !instr,!instr08
  db 90
  !rest
  db 6,$77
  !c4
  !c3
  !c3
  !c3
  !c3
  !c3
  !c4
  !c3
  !c3
  !c4
  !c3
  !c4
  !c3
  !c3
  !c4
  !c3
  !c3
  !end

.pattern3_0
  !instr,!instr02
  !slideIn,0,2,248
  !loop : dw .subDE7E : db 1
  !loop : dw .subDDF3 : db 1
  !end

.pattern3_1
  !instr,!instr07
  !loop : dw .subDE92 : db 1
  !loop : dw .subDEB5 : db 2
  !end

.pattern3_2
  !loop : dw .subDE19 : db 1
  !loop : dw .subDEA5 : db 1
  db 6,$07
  !g7
  !g6
  !g7
  !g6
  !g7
  !g6
  db 60
  !rest
  !end

.pattern3_3
  !loop : dw .subDE40 : db 1
  db 96
  !rest
  !rest
  !end

.pattern3_4
  !loop : dw .subDDD2 : db 4
  !end

.pattern4_0
  !loop : dw .subDE7E : db 1
  !loop : dw .subDDF3 : db 3
  !end

.pattern4_1
  !loop : dw .subDE92 : db 1
  !loop : dw .subDEB5 : db 6
  !end

.pattern4_2
  !loop : dw .subDEBE : db 1
  !rest
  !loop : dw .subDEEC : db 1
  !end

.pattern4_3
  !instr,!instr08
  db 12,$77
  !c4
  db 6
  !c3
  !c3
  db 12
  !c4
  db 6
  !c3
  !c3
  !c3
  !c4
  !c3
  !c3
  db 12
  !c4
  db 6
  !c3
  !c3
  !loop : dw .subDF13 : db 7
  !end

.pattern4_4
  !loop : dw .subDDD2 : db 8
  !end

.pattern5_0
  !instr,!instr02
  db 12,$5B
  !c3
  db 24
  !rest
  db 12
  !g2
  db 48
  !rest
  db 36
  !rest
  db 12
  !g2
  !c3
  !rest
  !ds3
  !e3
  !loop : dw .subDDF3 : db 2
  !end

.pattern5_1
  !volume,200
  !instr,!instr07
  db 12,$7F
  !g2
  !g2
  db 24
  !g2
  db 42
  !g3
  db 6
  !g5
  !loop : dw .subDE05 : db 1
  db 96
  !rest
  !rest
  !volume,200
  db 42
  !rest
  db 6
  !g5
  !loop : dw .subDE05 : db 1
  db 24
  !rest
  !rest
  !end

.pattern5_2
  !loop : dw .subDE19 : db 1
  !instr,!instr03
  db 4,$75
  !b7
  !g7
  !a7
  !e7
  !g7
  !d7
  !e7
  !c7
  !d7
  !b6
  !c7
  !a6
  !b6
  !g6
  !a6
  !e6
  !g6
  !d6
  !e6
  !c6
  !d6
  !b5
  !c6
  !a5
  !b5
  !g5
  !a5
  !e5
  !g5
  !d5
  !e5
  !c5
  !d5
  !b4
  !c5
  !a4
  !b4
  !g4
  !a4
  !e4
  !g4
  !d4
  !e4
  !c4
  !d4
  !b3
  !c4
  !a3
  !loop : dw .subDE36 : db 1
  !end

.pattern5_3
  !loop : dw .subDE40 : db 1
  !instr,!instr15
  db 6
  !rest
  db 66,$77
  !a3
  db 54
  !ds3
  !dynamicVolume,240,50
  db 66
  !a3
  db 54
  !ds3
  db 66
  !a3
  db 54
  !ds3
  !volume,200
  db 18
  !rest
  !end

.pattern5_4
  db 6,$7B
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  db 6,$7B
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  db 6,$7B
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  db 6,$7B
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  !dynamicVolume,192,50
  !loop : dw .subDDD2 : db 2
  !volume,200
  db 96
  !rest
  !rest
  db 84
  !rest
  db 4
  !g4
  !g4
  !g4
  !end

.pattern6_0
  db 12,$5B
  !c3
  db 24
  !rest
  db 12
  !g2
  !c3
  !rest
  !ds3
  !e3
  db 96
  !rest
  !end

.pattern6_1
  !volume,200
  !instr,!instr10
  !slideOut,5,2,244
  db 84
  !rest
  db 12,$7F
  !as5
  !dynamicVolume,54,50
  db 6
  !rest
  db 12
  !as5
  db 6
  !rest
  db 12
  !as5
  db 6
  !rest
  db 12
  !as5
  !endSlide
  db 42
  !rest
  !end

.pattern6_2
  !instr,!instr03
  db 84,$77
  !g4
  !pitchSlide,24,60 : !g5
  !instr,!instr10
  db 12,$7F
  !g2
  !pitchSlide,0,6 : !g6
  !dynamicVolume,96,0
  db 96
  !tie
  !pitchSlide,0,72 : !f6
  !end

.pattern6_3
  !instr,!instr03
  db 7
  !rest
  db 12,$73
  !fs7
  db 5
  !rest
  db 6
  !fs7
  db 66
  !rest
  db 96
  !rest
  !end

.pattern6_4
  !dynamicVolume,192,50
  !loop : dw .subDDD2 : db 2
  !end

.pattern7_0
  !instr,!instr02
  !endSlide
  db 24,$7B
  !fs2
  !g2
  db 48
  !rest
  db 96
  !rest
  !end

.pattern7_1
  !volume,200
  !instr,!instr07
  !loop : dw .subDD60 : db 1
  !end

.pattern7_2
  !volume,200
  db 96
  !rest
  !rest
  !end

.pattern7_3
  !volume,200
  !instr,!instr03
  !loop : dw .subDD7A : db 1
  !end

.pattern7_4
  !instr,!instr0A
  !volume,200
  !loop : dw .subDDA4 : db 2
  !end

.pattern8_0
  db 24,$7B
  !fs2
  !g2
  db 36
  !rest
  db 12
  !ds2
  !d2
  db 24
  !rest
  db 12
  !ds2
  !d2
  db 36
  !rest
  db 96
  !rest
  !rest
  !end

.pattern8_1
  !loop : dw .subDD60 : db 1
  !loop : dw .subDDC5 : db 2
  !end

.pattern8_2
  !instr,!instr10
  db 96,$77
  !c6
  !tie
  !tie
  !tie
  !end

.pattern8_3
  !instr,!instr10
  db 96,$77
  !fs5
  !tie
  !tie
  !tie
  !end

.pattern8_4
  !loop : dw .subDDA4 : db 2
  db 7
  !c5
  db 5
  !as4
  db 7
  !gs4
  db 5
  !fs4
  db 7
  !e4
  db 5
  !d4
  db 7,$75
  !c4
  db 5
  !as3
  db 7,$77
  !gs3
  db 5
  !fs3
  db 7,$79
  !e3
  db 5
  !d3
  db 7,$7B
  !c3
  db 5
  !as2
  db 7,$7D
  !gs2
  db 5
  !fs2
  db 7,$7F
  !e2
  db 5
  !fs2
  db 7,$7D
  !gs2
  db 5
  !as2
  db 7,$7B
  !c3
  db 5
  !d3
  db 7,$79
  !e3
  db 5
  !fs3
  db 7,$77
  !gs3
  db 5
  !as3
  db 7
  !c4
  db 5
  !d4
  db 7
  !e4
  db 5
  !fs4
  db 7
  !gs4
  db 5
  !as4
  !end

.pattern9_0
  db 96
  !rest
  !rest
  !loop : dw .subDE7E : db 1
  !loop : dw .subDDF3 : db 1
  !end

.pattern9_1
  !loop : dw .subDE92 : db 1
  !loop : dw .subDEB5 : db 4
  !end

.pattern9_2
  !instr,!instr0D
  !volume,200
  db 24
  !rest
  db 12,$2B
  !as5
  !as5
  db 12,$7F
  !as5
  db 12,$2B
  !a5
  !a5
  !a5
  db 12,$7F
  !a5
  db 12,$2B
  !as5
  !as5
  db 12,$2F
  !as5
  db 48
  !rest
  !instr,!instr03
  !loop : dw .subDD7A : db 1
  !loop : dw .subDF27 : db 2
  !end

.pattern9_3
  !instr,!instr0D
  !volume,200
  db 24
  !rest
  db 12,$2B
  !d5
  !d5
  db 12,$7F
  !d5
  db 12,$2B
  !cs5
  !cs5
  !cs5
  db 12,$7F
  !cs5
  db 12,$2B
  !d5
  !d5
  db 12,$2F
  !d5
  db 48
  !rest
  db 96
  !rest
  !rest
  !rest
  !rest
  !end

.pattern9_4
  !volume,200
  !loop : dw .subDDD2 : db 6
  !end

.subDE7E
  db 12,$5B
  !c3
  db 24
  !rest
  db 12
  !g2
  !c3
  !rest
  !ds3
  !e3
  db 36
  !rest
  db 12
  !g2
  !c3
  !rest
  !ds3
  !e3
  !end

.subDE92
  db 12,$7F
  !g2
  !g2
  db 24
  !g2
  db 36
  !g3
  db 12
  !g2
  !g2
  !g2
  db 24
  !g2
  db 36
  !g3
  db 12
  !g2
  !end

.subDEA5
  !instr,!instr01
  db 15
  !rest
  db 3,$5F
  !g4
  !a4
  !b4
  db 12,$0F
  !a4
  !g4
  db 48
  !rest
  !end

.subDDD2
  db 6,$7B
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  db 6,$7B
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  db 6,$7B
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  db 6,$7B
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  !end

.subDDF3
  !c3
  db 24
  !rest
  db 12
  !g2
  !c3
  !rest
  !ds3
  !e3
  db 36
  !rest
  db 12
  !g2
  !c3
  !rest
  !ds3
  !e3
  !end

.subDEB5
  !g2
  !g2
  db 24
  !g2
  db 36
  !g3
  db 12
  !g2
  !end

.subDE19
  !instr,!instr0D
  db 24
  !rest
  db 12,$2B
  !c6
  !c6
  db 12,$7F
  !c6
  db 12,$2B
  !as5
  !as5
  !as5
  db 12,$7F
  !as5
  db 12,$2B
  !c6
  !c6
  db 12,$2F
  !c6
  db 48
  !rest
  !end

.subDE40
  !instr,!instr0D
  db 24
  !rest
  db 12,$2B
  !e5
  !e5
  db 12,$7F
  !e5
  db 12,$2B
  !d5
  !d5
  !d5
  db 12,$7F
  !d5
  db 12,$2B
  !e5
  !e5
  db 12,$2F
  !e5
  db 48
  !rest
  !end

.subDEBE
  !instr,!instr0E
  !vibrato,0,30,80
  db 18
  !rest
  db 6,$7F
  !c4
  db 12,$2F
  !b3
  !c4
  db 12,$7F
  !cs4
  db 12,$2F
  !c4
  !e4
  !g4
  !as4
  db 6,$7F
  !as4
  !cs5
  db 12,$2F
  !c5
  !as4
  db 4,$7F
  !gs4
  !as4
  !gs4
  db 12,$2F
  !g4
  !fs4
  !g4
  db 96,$7F
  !gs4
  !end

.subDEEC
  db 18
  !rest
  db 6
  !c4
  db 12,$2F
  !b3
  !c4
  db 12,$7F
  !cs4
  db 12,$2F
  !c4
  !e4
  !g4
  !as4
  db 6
  !as4
  !cs5
  db 12
  !c5
  !as4
  db 4,$7F
  !gs4
  !as4
  !gs4
  db 12,$2F
  !g4
  !fs4
  !f4
  db 96,$7F
  !e4
  !endVibrato
  !rest
  !end

.subDF13
  db 12
  !c4
  db 6
  !c3
  !c3
  db 12
  !c4
  db 6
  !c3
  !c3
  !c3
  !c4
  !c3
  !c3
  db 12
  !c4
  db 6
  !c3
  !c3
  !end

.subDE05
  !dynamicVolume,96,50
  !g6
  !g5
  !g5
  !g6
  !g5
  !g6
  !g5
  !g6
  !g5
  !g6
  !g6
  !g5
  !g6
  !g5
  !g6
  !g6
  !end

.subDE36
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.subDD60
  db 12,$7F
  !g2
  db 6
  !g2
  !g2
  !g2
  db 12
  !g2
  db 6
  !g2
  db 48
  !g3
  db 12
  !g2
  db 6
  !g2
  !g2
  !g2
  db 12
  !g2
  db 6
  !g2
  db 48
  !g3
  !end

.subDD7A
  db 6,$25
  !as7
  db 12
  !rest
  db 6
  !as7
  db 12
  !rest
  db 6
  !as7
  db 18
  !rest
  db 6
  !as7
  db 12
  !rest
  db 6
  !as7
  db 12
  !rest
  db 6
  !as7
  db 12
  !rest
  db 6
  !as7
  db 12
  !rest
  db 6
  !as7
  db 18
  !rest
  db 6
  !as7
  db 12
  !rest
  db 6
  !as7
  db 12
  !rest
  !end

.subDDA4
  db 6,$77
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  db 6,$77
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  db 6,$77
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  db 6,$77
  !c5
  db 6,$73
  !c5
  !c5
  !c5
  !end

.subDDC5
  db 12
  !g2
  db 6
  !g2
  !g2
  !g2
  db 12
  !g2
  db 6
  !g2
  db 48
  !g3
  !end

.subDF27
  db 6
  !as7
  db 12
  !rest
  db 6
  !as7
  db 12
  !rest
  db 6
  !as7
  db 18
  !rest
  db 6
  !as7
  db 12
  !rest
  db 6
  !as7
  db 12
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
