asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr03 = $17
!instr07 = $18
!instr08 = $19
!instr0A = $1A
!instr0D = $1B
!instr0F = $1C
!instr13 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr0A,$FF,$FD,$B8,$06,$F0
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr0F,$FF,$E1,$B8,$03,$00
  db !instr13,$F8,$E1,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+27
  dw Sample03,Sample03+27
  dw Sample07,Sample07+1971
  dw Sample08,Sample08+1332
  dw Sample0A,Sample0A+27
  dw Sample0D,Sample0D+441
  dw Sample0F,Sample0F+27
  dw Sample13,Sample13+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample03: incbin "Sample03.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample13: incbin "Sample13.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerF52A

TrackerF52A:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw .pattern10
-
  dw .pattern11
  dw .pattern12
  dw .pattern13
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, 0, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, 0, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, 0, 0
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, 0, 0, 0
.pattern10: dw .pattern10_0, .pattern10_1, .pattern10_2, .pattern10_3, .pattern10_4, .pattern10_5, 0, 0
.pattern11: dw .pattern11_0, .pattern11_1, .pattern11_2, .pattern11_3, .pattern11_4, .pattern11_5, 0, 0
.pattern12: dw .pattern12_0, .pattern12_1, .pattern12_2, .pattern12_3, .pattern12_4, .pattern12_5, 0, 0
.pattern13: dw .pattern13_0, .pattern13_1, .pattern13_2, .pattern13_3, .pattern13_4, .pattern13_5, 0, 0

.pattern0_0
  !musicVolume,44;50
  !dynamicMusicVolume,240,210;240
  !tempo,23
  !volume,200
  !pan,10
  !subtranspose,10
  !echo,%00011111,20,20
  !echoParameters,8,80,0
  !instr,!instr13
  !subtranspose,50
  !loop : dw .subF792 : db 1
  !end

.pattern0_1
  !volume,200
  !pan,10
  !instr,!instr13
  !loop : dw .subF792 : db 1

.pattern0_2
  !loop : dw .subF7AD : db 1

.pattern0_3
  !loop : dw .subF7AD : db 1

.pattern0_4
  !loop : dw .subF7AD : db 1

.pattern0_5
  !loop : dw .subF7AD : db 1

.pattern1_0
  !subtranspose,0
  !transpose,12
  !instr,!instr03
  db 12,$27
  !d7
  !d6
  !g6
  !d6
  !a6
  !d6
  !fs6
  !g6
  !d7
  !d6
  !g6
  !d6
  !a6
  !d6
  !b6
  !g6
  !g6
  !d6
  !a6
  !d6
  !d7
  !d6
  !g6
  !d6
  !g6
  !as5
  !c6
  !d6
  !c6
  !g5
  !c6
  !ds5
  !end

.pattern1_1
  !instr,!instr0D
  !vibrato,20,40,20
  db 12,$7F
  !b5
  !c6
  !d6
  !e6
  db 48
  !d6
  db 12
  !g5
  !a5
  !b5
  !c6
  db 48
  !b5
  db 12
  !e5
  !g5
  db 24
  !g5
  db 12
  !d5
  !g5
  db 24
  !g5
  db 48
  !c5
  db 24
  !b4
  !d5

.pattern1_2
  !volume,240
  !instr,!instr13
  db 48,$7B
  !g3
  !fs3
  db 48,$7D
  !e3
  !d3
  db 48,$7F
  !c3
  !b2
  !as2
  db 24
  !a2
  !gs2

.pattern1_3
  !instr,!instr13
  db 96,$75
  !d5
  db 24
  !tie
  db 48
  !c5
  db 24
  !b4
  db 48
  !tie
  !a4
  db 96
  !g4

.pattern1_4
  !instr,!instr07
  db 48,$7F
  !g3
  !instr,!instr08
  !g3
  !loop : dw .subF7B9 : db 3

.pattern1_5
  !instr,!instr0A
  !loop : dw .subF7C0 : db 4

.pattern2_0
  !instr,!instr0F
  db 14,$79
  !gs4
  !pitchSlide,0,1 : !cs7
  !pitchSlide,4,2 : !as5
  !pitchSlide,0,1 : !ds7
  !pitchSlide,4,2 : !ds5
  !end

.pattern2_1
  !instr,!instr0F
  db 14,$79
  !a4
  !pitchSlide,0,1 : !d7
  !pitchSlide,4,2 : !b5
  !pitchSlide,0,1 : !e7
  !pitchSlide,4,2 : !e5

.pattern2_2
  db 14,$77
  !ds4
  !pitchSlide,0,1 : !gs7
  !pitchSlide,4,2 : !f5
  !pitchSlide,0,1 : !as7
  !pitchSlide,4,2 : !as5

.pattern2_3
  db 14
  !rest

.pattern3_0
  !loop : dw .subF7CD : db 1
  !end

.pattern3_1
  !instr,!instr0D
  db 96,$7F
  !b6
  db 48
  !a6
  db 24
  !g6
  !fs6
  db 96
  !g6
  !c6

.pattern3_2
  !loop : dw .subF7F2 : db 3
  !g3
  db 24,$77
  !g4
  db 24,$7F
  !g3

.pattern3_3
  db 96,$75
  !d5
  !tie
  !e5
  !ds5

.pattern3_4
  !instr,!instr07
  db 48,$7F
  !g3
  !instr,!instr08
  !g3
  !loop : dw .subF7B9 : db 3

.pattern3_5
  !loop : dw .subF7C0 : db 4

.pattern4_0
  !instr,!instr0F
  db 16,$79
  !cs7
  !pitchSlide,6,2 : !ds7
  !end

.pattern4_1
  !instr,!instr0F
  db 6
  !rest
  db 10,$79
  !g7
  !pitchSlide,0,2 : !a7

.pattern4_2
  db 6
  !rest
  db 10,$77
  !gs7
  !pitchSlide,0,2 : !as7

.pattern4_3
  db 16
  !rest

.pattern4_4
  db 16
  !rest

.pattern5_0
  !loop : dw .subF7CD : db 1
  !end

.pattern5_1
  !instr,!instr0D
  db 96,$7F
  !b6
  db 48
  !a6
  !d7
  db 96
  !g7
  !instr,!instr01
  !a7

.pattern5_2
  !loop : dw .subF7F2 : db 3
  !g3
  db 24,$77
  !g4
  db 24,$7F
  !g3

.pattern5_3
  db 96,$75
  !d5
  !tie
  !e5
  !ds5

.pattern5_4
  !instr,!instr07
  db 48,$7F
  !g3
  !instr,!instr08
  !g3
  !loop : dw .subF7B9 : db 3

.pattern5_5
  !loop : dw .subF7C0 : db 4

.pattern6_0
  !subtranspose,0
  !transpose,12
  !instr,!instr03
  db 12,$27
  !d7
  !d6
  !g6
  !d6
  !a6
  !d6
  !fs6
  !g6
  !d7
  !d6
  !g6
  !d6
  !a6
  !d6
  !b6
  !g6
  !g6
  !d6
  !a6
  !d6
  !d7
  !d6
  !g6
  !d6
  !g6
  !as5
  !c6
  !d6
  !c6
  !g5
  !c6
  !ds5
  !end

.pattern6_1
  !instr,!instr0D
  !vibrato,20,40,20
  db 12,$7F
  !b5
  !c6
  !d6
  !e6
  db 48
  !d6
  db 12
  !g5
  !a5
  !b5
  !c6
  db 48
  !b5
  db 12
  !e5
  !g5
  db 24
  !g5
  db 12
  !d5
  !g5
  db 24
  !g5
  db 48
  !c5
  db 24
  !b4
  !d5

.pattern6_2
  !volume,240
  !instr,!instr13
  db 48,$7B
  !g3
  !fs3
  db 48,$7D
  !e3
  !d3
  db 48,$7F
  !c3
  !b2
  !as2
  db 24
  !a2
  !gs2

.pattern6_3
  !instr,!instr13
  db 96,$75
  !d5
  db 24
  !tie
  db 48
  !c5
  db 24
  !b4
  db 48
  !tie
  !a4
  db 96
  !g4

.pattern6_4
  !instr,!instr07
  db 48,$7F
  !g3
  !instr,!instr08
  !g3
  !loop : dw .subF7B9 : db 3

.pattern6_5
  !instr,!instr0A
  !loop : dw .subF7C0 : db 4

.pattern7_0
  !instr,!instr0F
  db 14,$79
  !gs4
  !pitchSlide,0,1 : !cs7
  !pitchSlide,4,2 : !as5
  !pitchSlide,0,1 : !ds7
  !pitchSlide,4,2 : !ds5
  !end

.pattern7_1
  !instr,!instr0F
  db 14,$79
  !a4
  !pitchSlide,0,1 : !d7
  !pitchSlide,4,2 : !b5
  !pitchSlide,0,1 : !e7
  !pitchSlide,4,2 : !e5

.pattern7_2
  db 14,$77
  !ds4
  !pitchSlide,0,1 : !gs7
  !pitchSlide,4,2 : !f5
  !pitchSlide,0,1 : !as7
  !pitchSlide,4,2 : !as5

.pattern7_3
  db 14
  !rest

.pattern8_0
  !loop : dw .subF7CD : db 1
  !end

.pattern8_1
  !instr,!instr0D
  db 96,$7F
  !b6
  db 48
  !a6
  db 24
  !g6
  !fs6
  db 96
  !g6
  !c6

.pattern8_2
  !loop : dw .subF7F2 : db 3
  !g3
  db 24,$77
  !g4
  db 24,$7F
  !g3

.pattern8_3
  db 96,$75
  !d5
  !tie
  !e5
  !ds5

.pattern8_4
  !instr,!instr07
  db 48,$7F
  !g3
  !instr,!instr08
  !g3
  !loop : dw .subF7B9 : db 3

.pattern8_5
  !loop : dw .subF7C0 : db 4

.pattern9_0
  !instr,!instr0F
  db 16,$79
  !cs7
  !pitchSlide,6,2 : !ds7
  !end

.pattern9_1
  !instr,!instr0F
  db 6
  !rest
  db 10,$79
  !g7
  !pitchSlide,0,2 : !a7

.pattern9_2
  db 6
  !rest
  db 10,$77
  !gs7
  !pitchSlide,0,2 : !as7

.pattern9_3
  db 16
  !rest

.pattern9_4
  db 16
  !rest

.pattern10_0
  !loop : dw .subF7CD : db 1
  !end

.pattern10_1
  !instr,!instr0D
  db 96,$7F
  !b6
  db 48
  !a6
  !d7
  db 96
  !g7
  !instr,!instr01
  !a7

.pattern10_2
  !loop : dw .subF7F2 : db 2
  db 48,$7B
  !b3
  !c4
  db 16,$7F
  !ds3
  !d3
  !c3
  !as2
  !a2
  !g2

.pattern10_3
  db 96,$75
  !d5
  !tie
  !e5
  !ds5

.pattern10_4
  !instr,!instr07
  db 48,$7F
  !g3
  !instr,!instr08
  !g3
  !loop : dw .subF7B9 : db 2
  !instr,!instr07
  !g3
  !instr,!instr08
  db 16
  !g3
  !instr,!instr07
  !g3
  !g3

.pattern10_5
  !loop : dw .subF7C0 : db 3
  db 24,$7B
  !g4
  db 24,$77
  !g4
  db 16,$7F
  !g4
  db 16,$77
  !g4
  !g4

.pattern11_0
  !subtranspose,0
  !transpose,12
  !instr,!instr03
  db 12,$27
  !d7
  !d6
  !g6
  !d6
  !a6
  !d6
  !fs6
  !g6
  !d7
  !d6
  !g6
  !d6
  !a6
  !d6
  !b6
  !g6
  !g6
  !d6
  !a6
  !d6
  !d7
  !d6
  !g6
  !d6
  !g6
  !as5
  !c6
  !d6
  !c6
  !g5
  !c6
  !ds5
  !end

.pattern11_1
  !instr,!instr0D
  !vibrato,20,40,20
  db 12,$7F
  !b5
  !c6
  !d6
  !e6
  db 48
  !d6
  db 12
  !g5
  !a5
  !b5
  !c6
  db 48
  !b5
  db 12
  !e5
  !g5
  db 24
  !g5
  db 12
  !d5
  !g5
  db 24
  !g5
  db 48
  !c5
  db 24
  !b4
  !d5

.pattern11_2
  !volume,240
  !instr,!instr13
  db 48,$7B
  !g3
  !fs3
  db 48,$7D
  !e3
  !d3
  db 48,$7F
  !c3
  !b2
  !as2
  db 24
  !a2
  !gs2

.pattern11_3
  !instr,!instr13
  db 96,$75
  !d5
  db 24
  !tie
  db 48
  !c5
  db 24
  !b4
  db 48
  !tie
  !a4
  db 96
  !g4

.pattern11_4
  !instr,!instr07
  db 48,$7F
  !g3
  !instr,!instr08
  !g3
  !loop : dw .subF7B9 : db 3

.pattern11_5
  !instr,!instr0A
  !loop : dw .subF7C0 : db 4

.pattern12_0
  !loop : dw .subF7CD : db 1
  !end

.pattern12_1
  !instr,!instr0D
  db 96,$7F
  !b6
  db 48
  !a6
  db 24
  !g6
  !fs6
  db 96
  !g6
  !c6

.pattern12_2
  !loop : dw .subF7F2 : db 3
  !g3
  db 24,$77
  !g4
  db 24,$7F
  !g3

.pattern12_3
  db 96,$75
  !d5
  !tie
  !e5
  !ds5

.pattern12_4
  !instr,!instr07
  db 48,$7F
  !g3
  !instr,!instr08
  !g3
  !loop : dw .subF7B9 : db 3

.pattern12_5
  !loop : dw .subF7C0 : db 4

.pattern13_0
  !loop : dw .subF7CD : db 1
  !end

.pattern13_1
  !instr,!instr0D
  db 96,$7F
  !b6
  db 48
  !a6
  !d7
  db 96
  !g7
  !instr,!instr01
  !a7

.pattern13_2
  !loop : dw .subF7F2 : db 2
  db 48,$7B
  !b3
  !c4
  db 16,$7F
  !ds3
  !d3
  !c3
  !as2
  !a2
  !g2

.pattern13_3
  db 96,$75
  !d5
  !tie
  !e5
  !ds5

.pattern13_4
  !instr,!instr07
  db 48,$7F
  !g3
  !instr,!instr08
  !g3
  !loop : dw .subF7B9 : db 2
  !instr,!instr07
  !g3
  !instr,!instr08
  db 16
  !g3
  !instr,!instr07
  !g3
  !g3

.pattern13_5
  !loop : dw .subF7C0 : db 3
  db 24,$7B
  !g4
  db 24,$77
  !g4
  db 16,$7F
  !g4
  db 16,$77
  !g4
  !g4

.subF792
  db 12,$2F
  !g7
  !fs7
  !d7
  !c7
  !g7
  !fs7
  !d7
  !c7
  !g7
  !fs7
  !d7
  !c7
  !g7
  !fs7
  !d7
  !c7
  !g7
  !fs7
  !d7
  !c7
  db 69
  !rest
  db 3
  !rest
  !end

.subF7AD
  !volume,200
  !pan,10
  db 96
  !rest
  !rest
  db 48
  !rest
  db 72
  !rest
  !end

.subF7B9
  !instr,!instr07
  !g3
  !instr,!instr08
  !g3
  !end

.subF7C0
  db 24,$7B
  !g4
  db 24,$77
  !g4
  db 24,$7F
  !g4
  db 24,$77
  !g4
  !end

.subF7CD
  !instr,!instr03
  db 12,$25
  !g6
  !d6
  !b5
  !g5
  !d5
  !g5
  !b5
  !d6
  !fs6
  !d6
  !a5
  !fs5
  !d5
  !fs5
  !a5
  !d6
  !g6
  !e6
  !c6
  !g5
  !e5
  !g5
  !c6
  !e6
  !g6
  !ds6
  !c6
  !g5
  !ds6
  !g5
  !c6
  !ds6
  !end

.subF7F2
  db 48,$7B
  !g3
  db 48,$7F
  !g2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
