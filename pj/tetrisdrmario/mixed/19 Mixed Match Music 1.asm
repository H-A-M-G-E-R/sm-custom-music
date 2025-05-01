asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr02 = $17
!instr03 = $18
!instr05 = $19
!instr07 = $1A
!instr08 = $1B
!instr0A = $1C
!instr0C = $1D
!instr0F = $1E
!instr10 = $1F
!instr15 = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E1,$B8,$03,$00
  db !instr02,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr0A,$FF,$FD,$B8,$06,$F0
  db !instr0C,$FF,$E1,$B8,$07,$F0
  db !instr0F,$FF,$E1,$B8,$03,$00
  db !instr10,$FF,$E1,$B8,$08,$F0
  db !instr15,$FF,$E1,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+27
  dw Sample02,Sample02+27
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample07,Sample07+1971
  dw Sample08,Sample08+1332
  dw Sample0A,Sample0A+27
  dw Sample0C,Sample0C+27
  dw Sample0F,Sample0F+27
  dw Sample10,Sample10+27
  dw Sample15,Sample15+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample02: incbin "Sample02.brr"
  Sample03: incbin "Sample03.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"
  Sample15: incbin "Sample15.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD1DF

TrackerD1DF:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, 0, 0

.pattern0_0
  !musicVolume,210;240
  !tempo,28
  !volume,240
  !pan,10
  !echo,%00010101,20,20
  !echoParameters,4,80,0
  db 24
  !rest
  !end

.pattern0_1
  !volume,200
  !pan,10
  db 24
  !rest

.pattern0_2
  !volume,200
  !pan,10
  db 24
  !rest

.pattern0_3
  !volume,150
  !pan,10
  db 24
  !rest

.pattern0_4
  !volume,200
  !pan,10
  db 24
  !rest

.pattern0_5
  !volume,200
  !pan,10
  db 24
  !rest

.pattern1_0
  !instr,!instr05
  !loop : dw .subD5EF : db 2
  !end

.pattern1_1
  !loop : dw .subD57E : db 4

.pattern1_2
  !endVibrato
  !instr,!instr0F
  db 48
  !rest
  db 48,$32
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4

.pattern1_3
  !instr,!instr0A
  !loop : dw .subD5A1 : db 4

.pattern1_4
  !instr,!instr0F
  !loop : dw .subD696 : db 4

.pattern1_5
  !instr,!instr03
  db 12,$02
  !as7
  !as7
  !as7
  db 6,$02
  !as7
  db 12,$02
  !as7
  !as7
  db 6,$02
  !as7
  db 12,$02
  !as7
  !as7
  !loop : dw .subD6A4 : db 3

.pattern2_0
  !instr,!instr05
  db 96
  !rest
  !rest
  !loop : dw .subD567 : db 2
  !end

.pattern2_1
  !loop : dw .subD57E : db 6

.pattern2_2
  !instr,!instr0C
  !volume,200
  !endVibrato
  db 24
  !rest
  db 12,$0F
  !e5
  !g4
  !d5
  db 24
  !rest
  db 12
  !b4
  !c5
  !e5
  !g5
  !rest
  !d6
  db 36
  !rest
  !instr,!instr01
  !vibrato,0,50,150
  !volume,100
  !dynamicVolume,192,200
  db 12,$27
  !ds5
  !e5
  !ds5
  !e5
  db 48
  !c5
  db 12
  !ds5
  !e5
  !ds5
  !e5
  db 48
  !c5
  !dynamicVolume,192,100
  !loop : dw .subD599 : db 2

.pattern2_3
  !loop : dw .subD5A1 : db 6

.pattern2_4
  !instr,!instr0F
  db 6,$23
  !c6
  !c6
  !c7
  !c6
  !c6
  !c7
  !c6
  !c6
  db 48
  !rest
  !loop : dw .subD5BA : db 5

.pattern3_0
  !loop : dw .subD5EF : db 2
  !end

.pattern3_1
  !loop : dw .subD57E : db 4

.pattern3_2
  !instr,!instr0C
  !volume,200
  !endVibrato
  db 24
  !rest
  db 12,$0F
  !a5
  !c5
  !g5
  db 24
  !rest
  db 12
  !f5
  !a5
  !c6
  !b5
  db 60
  !rest
  !volume,0
  !dynamicVolume,192,200
  !instr,!instr03
  db 96,$7F
  !b7
  !pitchSlide,0,192 : !c2
  !tie

.pattern3_3
  !loop : dw .subD5A1 : db 4

.pattern3_4
  db 6,$23
  !ds6
  !ds6
  !ds7
  !ds6
  !ds6
  !ds7
  !ds6
  !ds6
  db 48
  !rest
  !loop : dw .subD606 : db 3

.pattern4_0
  !instr,!instr05
  db 96
  !rest
  !rest
  !loop : dw .subD567 : db 2
  !end

.pattern4_1
  !loop : dw .subD57E : db 6

.pattern4_2
  !instr,!instr0C
  !volume,200
  !endVibrato
  db 24
  !rest
  db 12,$0F
  !e5
  !g4
  !d5
  db 24
  !rest
  db 12
  !b4
  !c5
  !e5
  !g5
  !rest
  !d6
  db 36
  !rest
  !instr,!instr01
  !vibrato,0,50,150
  !volume,100
  !dynamicVolume,192,200
  db 12,$27
  !ds5
  !e5
  !ds5
  !e5
  db 48
  !c5
  db 12
  !ds5
  !e5
  !ds5
  !e5
  db 48
  !c5
  !dynamicVolume,192,100
  !loop : dw .subD599 : db 2

.pattern4_3
  !loop : dw .subD5A1 : db 6

.pattern4_4
  !instr,!instr0F
  db 6,$23
  !c6
  !c6
  !c7
  !c6
  !c6
  !c7
  !c6
  !c6
  db 48
  !rest
  !loop : dw .subD5BA : db 5

.pattern5_0
  !loop : dw .subD5EF : db 2
  !end

.pattern5_1
  !loop : dw .subD57E : db 3
  !instr,!instr07
  db 12,$7F
  !c3
  !c3
  !instr,!instr08
  db 18
  !a4
  db 3,$73
  !a4
  !a4
  db 6,$7F
  !a4
  db 12
  !a4
  !a4
  db 6,$7B
  !a4
  db 6,$7F
  !a4
  !instr,!instr07
  !c3

.pattern5_2
  !instr,!instr0C
  !volume,200
  !endVibrato
  db 24
  !rest
  db 12,$0F
  !a5
  !c5
  !g5
  db 24
  !rest
  db 12
  !e5
  !f5
  !gs5
  !c6
  !rest
  !g6
  !rest
  !f6
  !rest
  !instr,!instr03
  !volume,50
  !dynamicVolume,192,200
  db 6,$77
  !g5
  !gs5
  !c6
  !ds6
  !g6
  !gs6
  !c7
  !ds7
  !g7
  !ds7
  !c7
  !gs6
  !g6
  !ds6
  !c6
  !gs5
  !g5
  !gs5
  !c6
  !ds6
  !g6
  !gs6
  !c7
  !ds7
  !g7
  !ds7
  !c7
  !gs6
  !g6
  !ds6
  !c6
  !gs5

.pattern5_3
  !loop : dw .subD5A1 : db 4

.pattern5_4
  db 6,$23
  !ds6
  !ds6
  !ds7
  !ds6
  !ds6
  !ds7
  !ds6
  !ds6
  db 48
  !rest
  !loop : dw .subD612 : db 3

.pattern6_0
  db 12,$7F
  !g2
  db 12,$3F
  !g2
  !rest
  db 12,$7F
  !fs2
  db 12,$3F
  !g2
  db 24
  !rest
  db 12
  !g2
  !rest
  db 12,$7F
  !fs2
  db 12,$3F
  !g2
  !rest
  !instr,!instr15
  db 36,$55
  !g4
  !instr,!instr05
  db 12,$3F
  !e2
  db 12,$7F
  !f2
  db 12,$3F
  !f2
  !rest
  db 12,$7F
  !e2
  db 12,$3F
  !f2
  db 24
  !rest
  db 12
  !f2
  !rest
  db 12,$7F
  !e2
  db 12,$3F
  !f2
  !rest
  !instr,!instr15
  db 36,$55
  !g4
  !instr,!instr05
  db 12,$3F
  !d2
  !end

.pattern6_1
  !loop : dw .subD61E : db 2

.pattern6_2
  !instr,!instr02
  !vibrato,20,40,50
  db 12
  !rest
  db 12,$77
  !fs6
  !pitchSlide,0,2 : !g6
  !fs6
  !g6
  !g6
  !pitchSlide,0,2 : !c6
  !d6
  !d6
  !pitchSlide,0,2 : !e6
  !d6
  !tie
  db 12,$57
  !c6
  db 72
  !c6
  db 12
  !rest
  db 12,$77
  !c6
  !b5
  !c6
  !c6
  !pitchSlide,0,2 : !f5
  !g5
  !a5
  !a5
  !pitchSlide,0,2 : !g5
  db 96,$58
  !tie

.pattern6_3
  !loop : dw .subD653 : db 2

.pattern6_4
  db 6,$23
  !g6
  !g6
  !g7
  !g6
  !g6
  !g6
  !g7
  !g6
  !g6
  !g6
  !g7
  !g6
  !g6
  !g6
  !g7
  !g6
  !loop : dw .subD685 : db 3

.pattern7_0
  db 12,$3F
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !gs2
  !gs2
  !gs2
  !gs2
  !as2
  !as2
  !as2
  !as2
  !loop : dw .subD6B6 : db 3
  !end

.pattern7_1
  !loop : dw .subD6C7 : db 7
  !instr,!instr07
  db 12,$7F
  !c3
  !c3
  !instr,!instr08
  db 18
  !a4
  db 3,$73
  !a4
  !a4
  db 6,$7F
  !a4
  db 12
  !a4
  !a4
  db 6,$7B
  !a4
  db 6,$7F
  !a4
  !instr,!instr07
  !c3

.pattern7_2
  db 96
  !rest
  !rest
  !rest
  !rest
  !instr,!instr10
  !volume,50
  !dynamicVolume,192,100
  db 96,$7F
  !a4
  !pitchSlide,0,6 : !as4
  db 36
  !cs5
  !ds5
  db 24
  !cs5
  !dynamicVolume,192,200
  db 96
  !a4
  !pitchSlide,0,6 : !as4
  db 36
  !cs5
  !ds5
  db 24
  !cs5

.pattern7_3
  !loop : dw .subD5A1 : db 7
  db 12,$7B
  !c5
  db 12,$77
  !c5
  db 12,$7F
  !c5
  db 12,$77
  !c5
  db 48
  !rest

.pattern7_4
  db 6,$23
  !ds5
  !ds5
  !ds6
  !ds6
  !ds5
  !ds5
  !ds6
  !ds6
  !ds5
  !ds5
  !ds6
  !ds6
  !ds5
  !ds5
  !ds6
  !ds6
  !gs5
  !gs5
  !gs6
  !gs6
  !gs5
  !gs5
  !gs6
  !gs6
  !as5
  !as5
  !as6
  !as6
  !as5
  !as5
  !as6
  !as6
  !loop : dw .subD6E3 : db 3

.pattern8_0
  !instr,!instr05
  !loop : dw .subD5EF : db 2
  !end

.pattern8_1
  !loop : dw .subD57E : db 4

.pattern8_2
  !endVibrato
  !instr,!instr0F
  db 48
  !rest
  db 48,$32
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4

.pattern8_3
  !instr,!instr0A
  !loop : dw .subD5A1 : db 4

.pattern8_4
  !instr,!instr0F
  !loop : dw .subD696 : db 4

.pattern8_5
  !instr,!instr03
  db 12,$02
  !as7
  !as7
  !as7
  db 6,$02
  !as7
  db 12,$02
  !as7
  !as7
  db 6,$02
  !as7
  db 12,$02
  !as7
  !as7
  !loop : dw .subD6A4 : db 3

.subD5EF
  db 12,$7F
  !ds2
  db 12,$3F
  !f2
  db 48
  !rest
  db 12,$7F
  !ds2
  db 12,$3F
  !f2
  db 12,$7F
  !ds2
  db 12,$3F
  !f2
  db 72
  !rest
  !end

.subD57E
  !instr,!instr07
  db 12,$7F
  !c3
  !c3
  !instr,!instr08
  !a4
  !instr,!instr07
  db 12,$7B
  !c3
  db 24,$7F
  !c3
  !instr,!instr08
  db 12
  !a4
  !instr,!instr07
  db 12,$7B
  !c3
  !end

.subD5A1
  db 12,$7B
  !c5
  db 12,$77
  !c5
  db 12,$7F
  !c5
  db 12,$77
  !c5
  db 12,$7B
  !c5
  db 12,$77
  !c5
  db 12,$7F
  !c5
  db 12,$77
  !c5
  !end

.subD696
  db 6,$23
  !ds6
  !ds6
  !ds7
  !ds6
  !ds6
  !ds7
  !ds6
  !ds6
  db 48,$32
  !gs4
  !end

.subD6A4
  !as7
  !as7
  !as7
  db 6,$02
  !as7
  db 12,$02
  !as7
  !as7
  db 6,$02
  !as7
  db 12,$02
  !as7
  !as7
  !end

.subD567
  db 12,$7F
  !as2
  db 12,$3F
  !c3
  db 48
  !rest
  db 12,$7F
  !as2
  db 12,$3F
  !c3
  db 12,$7F
  !as2
  db 12,$3F
  !c3
  db 72
  !rest
  !end

.subD599
  db 12
  !ds5
  !e5
  !ds5
  !e5
  db 48
  !c5
  !end

.subD5BA
  db 6
  !c6
  !c6
  !c7
  !c6
  !c6
  !c7
  !c6
  !c6
  db 48
  !rest
  !end

.subD606
  db 6
  !ds6
  !ds6
  !ds7
  !ds6
  !ds6
  !ds7
  !ds6
  !ds6
  db 48
  !rest
  !end

.subD612
  db 6
  !ds6
  !ds6
  !ds7
  !ds6
  !ds6
  !ds7
  !ds6
  !ds6
  db 48
  !rest
  !end

.subD61E
  !instr,!instr07
  db 12,$7F
  !c3
  !c3
  !instr,!instr08
  !a4
  !instr,!instr07
  db 12,$7B
  !c3
  db 24,$7F
  !c3
  !instr,!instr08
  db 12
  !a4
  !instr,!instr07
  db 12,$7B
  !c3
  !instr,!instr07
  db 24,$7F
  !c3
  !instr,!instr08
  db 12
  !a4
  !instr,!instr07
  db 12,$7B
  !c3
  db 24,$7F
  !c3
  !instr,!instr08
  db 12
  !a4
  !instr,!instr07
  db 12,$7B
  !c3
  !end

.subD653
  db 12,$7B
  !c5
  db 12,$77
  !c5
  db 12,$7F
  !c5
  db 12,$77
  !c5
  db 12,$7B
  !c5
  db 12,$77
  !c5
  db 12,$7F
  !c5
  db 12,$77
  !c5
  db 12,$7B
  !c5
  db 12,$77
  !c5
  db 12,$7F
  !c5
  db 6,$77
  !c5
  db 12,$7B
  !c5
  db 6,$77
  !c5
  db 12,$7F
  !c5
  !c5
  db 12,$77
  !c5
  !end

.subD685
  !g6
  !g6
  !g7
  !g6
  !g6
  !g6
  !g7
  !g6
  !g6
  !g6
  !g7
  !g6
  !g6
  !g6
  !g7
  !g6
  !end

.subD6B6
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !gs2
  !gs2
  !gs2
  !gs2
  !as2
  !as2
  !as2
  !as2
  !end

.subD6C7
  !instr,!instr07
  db 12,$7F
  !c3
  !c3
  !instr,!instr08
  !a4
  !instr,!instr07
  db 12,$7B
  !c3
  db 24,$7F
  !c3
  !instr,!instr08
  db 12
  !a4
  !instr,!instr07
  db 6,$7B
  !c3
  !c3
  !end

.subD6E3
  !ds5
  !ds5
  !ds6
  !ds6
  !ds5
  !ds5
  !ds6
  !ds6
  !ds5
  !ds5
  !ds6
  !ds6
  !ds5
  !ds5
  !ds6
  !ds6
  !gs5
  !gs5
  !gs6
  !gs6
  !gs5
  !gs5
  !gs6
  !gs6
  !as5
  !as5
  !as6
  !as6
  !as5
  !as5
  !as6
  !as6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
