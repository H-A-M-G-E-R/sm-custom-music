asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr03 = $17
!instr05 = $18
!instr07 = $19
!instr08 = $1A
!instr0A = $1B
!instr0C = $1C
!instr0D = $1D
!instr0E = $1E
!instr11 = $1F
!instr12 = $20
!instr13 = $21
!instr14 = $22
!instr15 = $23

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr0A,$FF,$FD,$B8,$06,$F0
  db !instr0C,$FF,$E1,$B8,$07,$F0
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr0E,$FF,$E1,$B8,$03,$00
  db !instr11,$FF,$E1,$B8,$04,$00
  db !instr12,$CF,$74,$B8,$03,$00
  db !instr13,$F8,$E1,$B8,$03,$00
  db !instr14,$FF,$E1,$B8,$04,$70
  db !instr15,$FF,$E1,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+27
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample07,Sample07+1971
  dw Sample08,Sample08+1332
  dw Sample0A,Sample0A+27
  dw Sample0C,Sample0C+27
  dw Sample0D,Sample0D+441
  dw Sample0E,Sample0E+3213
  dw Sample11,Sample11+27
  dw Sample12,Sample12+27
  dw Sample13,Sample13+27
  dw Sample14,Sample14+27
  dw Sample15,Sample15+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample03: incbin "Sample03.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0E: incbin "Sample0E.brr"
  Sample11: incbin "Sample11.brr"
  Sample12: incbin "Sample12.brr"
  Sample13: incbin "Sample13.brr"
  Sample14: incbin "Sample14.brr"
  Sample15: incbin "Sample15.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern4
  dw .pattern4
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern8
  dw .pattern8
  dw .pattern9
  dw .pattern10
  dw .pattern10
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern1_3, 0, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, 0, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, 0, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, 0, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, 0, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, 0, 0, 0, 0
.pattern9: dw .pattern8_2, .pattern9_1, .pattern8_2, .pattern9_3, 0, 0, 0, 0
.pattern10: dw .pattern10_0, .pattern5_2, .pattern10_2, .pattern10_3, 0, 0, 0, 0

.pattern0_0
  !tempo,27
  !musicVolume,210
  !instr,!instr11
  !volume,200
  !pan,10
  !echo,%00000111,20,20
  !echoParameters,4,80,0
  db 12
  !rest
  db 12,$2B
  !e5
  db 24
  !rest
  db 12
  !e5
  db 36
  !rest
  db 12
  !ds5
  db 24
  !rest
  db 6,$7B
  !ds5
  !instr,!instr14
  db 54,$75
  !c6
  db 12
  !tie
  !instr,!instr11
  db 12,$2B
  !d5
  db 24
  !rest
  db 12
  !d5
  db 36
  !rest
  db 24,$7B
  !c5
  !pitchSlide,10,14 : !c3
  db 36
  !rest
  !instr,!instr14
  !dynamicVolume,41,250
  db 41,$7F
  !c7
  !pitchSlide,0,41 : !c3
  !volume,200
  db 2
  !rest
  db 5
  !rest
  !end

.pattern0_1
  !instr,!instr11
  !volume,200
  !pan,10
  db 12
  !rest
  db 12,$2B
  !g5
  db 24
  !rest
  db 12
  !g5
  db 36
  !rest
  db 12
  !fs5
  db 24
  !rest
  db 6,$7B
  !fs5
  !instr,!instr14
  db 16,$75
  !cs6
  !g5
  !cs6
  db 6
  !b5
  db 12
  !tie
  !instr,!instr11
  db 12,$2B
  !f5
  db 24
  !rest
  db 12
  !f5
  db 36
  !rest
  db 24,$7B
  !e5
  !pitchSlide,10,14 : !e3
  db 42
  !rest
  !instr,!instr15
  db 7,$75
  !c4
  db 8,$77
  !g3
  db 9,$79
  !d3
  db 13,$7F
  !a2
  db 5
  !rest
  !end

.pattern0_2
  !instr,!instr05
  !volume,200
  !pan,10
  db 12,$2F
  !a2
  !a2
  !c3
  !a2
  db 6,$3F
  !e2
  !e3
  db 12,$2F
  !e2
  !g2
  !gs2
  !a2
  !a2
  !c3
  !a2
  db 6,$7F
  !e2
  db 42
  !rest
  db 12
  !rest
  db 12,$2F
  !a2
  !c3
  !a2
  db 6,$3F
  !e2
  !e3
  db 12,$2F
  !e2
  !g2
  !e2
  !a2
  db 84
  !rest
  db 12
  !rest
  !end

.pattern0_3
  !volume,240
  !pan,10
  !instr,!instr15
  db 24,$75
  !c4
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr15
  db 24,$75
  !g4
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr15
  db 24,$75
  !d4
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr15
  db 12,$75
  !a3
  !instr,!instr07
  !g3
  db 24,$7F
  !g3
  !instr,!instr15
  db 24,$75
  !c4
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr15
  db 24,$75
  !f4
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr15
  db 22,$75
  !g3
  !instr,!instr08
  db 2
  !a4
  db 18,$7F
  !a4
  db 6
  !a3
  db 7
  !g3
  db 8
  !e3
  db 14
  !c3
  db 30
  !g2
  db 1
  !rest
  !end

.pattern0_4
  !instr,!instr03
  !volume,200
  !pan,10
  db 20,$72
  !d7
  !ds7
  !d7
  !ds7
  db 16
  !d7
  db 4
  !tie
  db 20
  !ds7
  !d7
  !ds7
  !d7
  db 12
  !ds7
  db 8
  !tie
  db 20
  !d7
  !ds7
  !d7
  !ds7
  db 8
  !d7
  db 12
  !tie
  db 96
  !rest
  !end

.pattern1_0
  !instr,!instr11
  !loop : dw .subD92B : db 1
  db 12
  !d5
  db 24
  !rest
  db 12
  !e5
  db 48
  !rest
  !loop : dw .subD92B : db 1
  db 60,$79
  !g3
  !pitchSlide,0,3 : !d4
  !pitchSlide,2,55 : !f2
  db 36
  !rest
  !end

.pattern1_1
  !instr,!instr11
  !subtranspose,0
  !loop : dw .subD94C : db 1
  db 12
  !g5
  db 24
  !rest
  db 12
  !a5
  db 48
  !rest
  !loop : dw .subD94C : db 1
  db 60,$79
  !d4
  !pitchSlide,0,3 : !a4
  !pitchSlide,2,55 : !c3
  db 36
  !rest
  !end

.pattern1_2
  !instr,!instr05
  db 12,$2F
  !gs2
  !a2
  !a2
  !a2
  !gs2
  !a2
  !a2
  !a2
  !loop : dw .subD96D : db 7
  !end

.pattern1_3
  !loop : dw .subD976 : db 7
  !instr,!instr07
  db 13,$7F
  !g3
  !instr,!instr0A
  db 9,$75
  !c5
  !instr,!instr08
  db 2,$77
  !g4
  db 13,$7F
  !g4
  !instr,!instr0A
  db 5,$75
  !c5
  !instr,!instr08
  db 6,$7F
  !g4
  !g4
  !g4
  !g4
  !g4
  db 24
  !g4
  !end

.pattern1_4
  !loop : dw .subD99F : db 4
  !instr,!instr03
  db 6,$55
  !f7
  db 5,$25
  !f7
  db 6
  !f7
  db 8
  !f7
  db 14,$55
  !f7
  db 7,$25
  !f7
  db 12,$55
  !f7
  db 10
  !f7
  db 6,$25
  !f7
  db 12,$55
  !f7
  db 6,$25
  !f7
  db 4,$75
  !f7
  db 6,$55
  !f7
  db 5,$25
  !f7
  db 6
  !f7
  db 8
  !f7
  db 14,$55
  !f7
  db 7,$25
  !f7
  db 12,$55
  !f7
  db 10
  !f7
  db 6,$25
  !f7
  db 12,$55
  !f7
  db 6,$25
  !f7
  db 4,$75
  !f7
  db 6,$55
  !f7
  db 5,$25
  !f7
  db 6
  !f7
  db 8
  !f7
  db 14,$55
  !f7
  db 7,$25
  !f7
  db 12,$55
  !f7
  db 10
  !f7
  db 6,$25
  !f7
  db 8,$55
  !f7
  !instr,!instr15
  db 14,$77
  !g4
  db 48
  !tie
  !rest
  !end

.pattern1_5
  !volume,0
  !instr,!instr11
  db 12
  !rest
  db 12,$2B
  !e5
  db 24
  !rest
  db 12
  !e5
  db 36
  !rest
  !loop : dw .subD9BA : db 1
  db 12
  !d5
  db 24
  !rest
  db 12
  !e5
  db 48
  !rest
  db 12
  !rest
  !e5
  db 24
  !rest
  db 12
  !e5
  db 36
  !rest
  !loop : dw .subD9BA : db 1
  !instr,!instr01
  db 3,$3B
  !cs5
  !c5
  !b4
  !as4
  !a4
  !gs4
  !g4
  !fs4
  !f4
  !e4
  !ds4
  !d4
  !cs4
  !c4
  !b3
  !as3
  !a3
  db 45
  !rest
  !end

.pattern1_6
  !volume,0
  !instr,!instr11
  db 12
  !rest
  db 12,$2B
  !a5
  db 24
  !rest
  db 12
  !a5
  db 36
  !rest
  !loop : dw .subD9CC : db 1
  db 12
  !g5
  db 24
  !rest
  db 12
  !a5
  db 48
  !rest
  db 12
  !rest
  !a5
  db 24
  !rest
  db 12
  !a5
  db 36
  !rest
  !loop : dw .subD9CC : db 1
  !instr,!instr01
  db 3,$3B
  !f5
  !e5
  !ds5
  !d5
  !cs5
  !c5
  !b4
  !as4
  !a4
  !gs4
  !g4
  !fs4
  !f4
  !e4
  !ds4
  !d4
  !cs4
  db 45
  !rest
  !end

.pattern2_0
  !instr,!instr0C
  !loop : dw .subD9DE : db 1
  !end

.pattern2_1
  !instr,!instr0C
  !subtranspose,20
  !loop : dw .subD9DE : db 1
  !end

.pattern2_2
  !loop : dw .subDA26 : db 1
  !a2
  db 84
  !rest
  !loop : dw .subDA26 : db 1
  !a2
  db 84
  !rest
  !end

.pattern3_0
  !instr,!instr0C
  db 6,$0B
  !a2
  !a3
  !a2
  !a2
  !a3
  !a2
  !a2
  !a3
  !a2
  !a3
  !a2
  !a2
  !a3
  !a2
  !a2
  !a3
  !loop : dw .subDA53 : db 2
  !a2
  !a3
  !a2
  !a2
  !a3
  !a2
  !a2
  !a3
  !a2
  !a3
  !a2
  !a2
  !a3
  db 18
  !rest
  db 20
  !rest
  !end

.pattern3_1
  !instr,!instr13
  !subtranspose,0
  db 3
  !rest
  db 96,$7F
  !a2
  !loop : dw .subDA64 : db 1
  db 78
  !tie
  !pitchSlide,0,6 : !ds3
  db 15
  !rest
  db 20
  !rest
  !end

.pattern3_2
  !instr,!instr13
  db 96,$7F
  !a2
  !loop : dw .subDA64 : db 1
  db 78
  !tie
  !pitchSlide,0,6 : !ds3
  db 18
  !rest
  db 20
  !rest
  !end

.pattern3_3
  !instr,!instr0A
  db 12,$77
  !c5
  !c5
  !instr,!instr07
  db 12,$2F
  !g3
  !instr,!instr0A
  db 12,$77
  !c5
  !c5
  !c5
  !instr,!instr07
  db 12,$2F
  !g3
  !instr,!instr0A
  db 12,$77
  !c5
  !instr,!instr0A
  !c5
  !c5
  !instr,!instr07
  db 12,$2F
  !g3
  !instr,!instr0A
  db 12,$77
  !c5
  !c5
  !c5
  !instr,!instr07
  db 12,$2F
  !g3
  !instr,!instr0A
  db 12,$77
  !c5
  !instr,!instr07
  db 12,$2F
  !g3
  !instr,!instr0A
  db 12,$77
  !c5
  !instr,!instr07
  db 12,$2F
  !g3
  !instr,!instr0A
  db 12,$77
  !c5
  !instr,!instr07
  db 12,$2F
  !g3
  !instr,!instr0A
  db 12,$77
  !c5
  !instr,!instr07
  db 12,$2F
  !g3
  !instr,!instr0A
  db 12,$77
  !c5
  !instr,!instr07
  db 12,$2F
  !g3
  !g3
  !g3
  db 6,$7F
  !g3
  !instr,!instr08
  db 3
  !g4
  !g4
  db 6
  !g4
  !g4
  db 7
  !g4
  db 7,$7D
  !g4
  db 28
  !g4
  db 14
  !rest
  !end

.pattern3_4
  !loop : dw .subDA6F : db 1
  !rest
  db 74
  !rest
  !instr,!instr14
  db 10,$75
  !g5
  db 20
  !c6
  !instr,!instr15
  db 6
  !c5
  !rest
  !end

.pattern3_5
  !volume,0
  !instr,!instr12
  db 6,$0B
  !a5
  !a6
  !a5
  !a5
  !a6
  !a5
  !a5
  !a6
  !a5
  !a6
  !a5
  !a5
  !a6
  !a5
  !a5
  !a6
  !loop : dw .subDA73 : db 2
  !a5
  !a6
  !a5
  !a5
  !a6
  !a5
  db 6,$0B
  !a5
  db 6,$0C
  !a6
  db 6,$0C
  !a5
  db 6,$0D
  !a6
  db 7,$0D
  !a5
  db 7,$0E
  !a5
  db 8,$0F
  !a6
  db 20
  !rest
  db 14
  !rest
  !end

.pattern4_0
  !instr,!instr03
  db 12
  !rest
  db 12,$29
  !a7
  db 24
  !rest
  db 12
  !a7
  db 36
  !rest
  db 12
  !a7
  db 24
  !rest
  db 12
  !a7
  db 48
  !rest
  !end

.pattern4_1
  !instr,!instr03
  !transpose,12
  db 12
  !rest
  db 12,$2D
  !c7
  !a6
  !e6
  db 24,$0D
  !cs7
  db 12,$2D
  !a6
  !e6
  !d7
  !a6
  !e6
  !cs7
  db 48
  !rest
  !end

.pattern4_2
  !instr,!instr05
  db 12,$3F
  !a2
  !a2
  !c3
  !c3
  !a2
  db 36
  !rest
  db 12
  !rest
  !a2
  !c3
  !c3
  !a2
  db 36
  !rest
  !end

.pattern4_3
  !instr,!instr07
  db 13,$2F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr07
  db 11,$2B
  !g3
  db 13,$2F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr07
  db 13,$2F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr07
  db 11,$2B
  !g3
  db 12,$2F
  !g3
  !instr,!instr0A
  db 12,$75
  !c5
  !c5
  !c5
  !end

.pattern5_0
  !instr,!instr11
  !loop : dw .subDA84 : db 1
  db 12
  !d5
  db 84
  !rest
  !end

.pattern5_1
  !subtranspose,0
  !instr,!instr11
  !transpose,0
  !loop : dw .subDAA6 : db 1
  db 12
  !g5
  db 84
  !rest
  !end

.pattern5_2
  !loop : dw .subDA6F : db 1
  !rest
  !rest
  !end

.pattern5_3
  !instr,!instr07
  db 13,$7F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr07
  db 13,$7F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr07
  db 13,$7F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr07
  db 11
  !g3
  db 12
  !g3
  !rest
  !instr,!instr08
  db 6
  !g4
  db 18
  !g4
  !instr,!instr07
  db 13
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr07
  db 13,$7F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr07
  db 13,$2F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 6,$7F
  !g4
  !g4
  !instr,!instr07
  db 20
  !g3
  !instr,!instr08
  db 8
  !g4
  !g4
  !instr,!instr07
  !g3
  !g3
  !g3
  !end

.pattern6_0
  !loop : dw .subDA84 : db 1
  db 12
  !d5
  db 24
  !rest
  db 12
  !d5
  db 48
  !rest
  !end

.pattern6_1
  !loop : dw .subDAA6 : db 1
  db 12
  !g5
  db 24
  !rest
  db 12
  !g5
  db 48
  !rest
  !end

.pattern6_2
  db 6,$3F
  !g2
  !g2
  db 12,$2F
  !g2
  !g2
  !as2
  !g2
  !g2
  !g2
  !d2
  db 6,$3F
  !g2
  !g2
  db 12,$2F
  !g2
  !g2
  !as2
  !g2
  !gs2
  !g2
  !gs2
  db 6,$3F
  !g2
  !g2
  db 12,$2F
  !g2
  !g2
  !as2
  !g2
  !g2
  !g2
  !d2
  db 6,$3F
  !g2
  !g2
  db 12,$2F
  !g2
  !g2
  !as2
  db 48
  !rest
  !end

.pattern6_3
  !loop : dw .subDAC8 : db 3
  !instr,!instr07
  db 6,$7F
  !g3
  !instr,!instr0A
  db 18,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 59,$75
  !c5
  !end

.pattern7_0
  !instr,!instr0D
  !vibrato,12,40,60
  db 6,$7F
  !as6
  !g6
  !as6
  !g6
  !as6
  !g6
  !as6
  !g6
  !as6
  !g6
  !as6
  !g6
  !as6
  !g6
  !as6
  !g6
  !c7
  !e6
  !f6
  !fs6
  !g6
  !a6
  !as6
  db 6,$5F
  !a6
  !rest
  db 6,$7F
  !d7
  !c7
  !as6
  !a6
  !g6
  !f6
  !e6
  db 12
  !f6
  db 3,$79
  !e6
  !d6
  !c6
  !g5
  db 24,$7F
  !f5
  db 7
  !rest
  db 5
  !as5
  db 6
  !d5
  !e5
  !f5
  !g5
  !a5
  !g5
  !d6
  !a5
  !as5
  !c6
  !d6
  !e6
  !f6
  !e6
  !rest
  !g6
  !as5
  !c6
  !d6
  !e6
  !f6
  !e6
  !g6
  db 6,$5F
  !g6
  !rest
  !a5
  !rest
  !as5
  !rest
  db 6,$7F
  !c6
  !d6
  !c6
  db 6,$5F
  !d6
  !rest
  db 24,$7F
  !e6
  db 6
  !g6
  db 6,$5F
  !g6
  !rest
  !a5
  !rest
  !as5
  !rest
  db 6,$7F
  !c6
  !d6
  !c6
  db 6,$5F
  !d6
  !rest
  db 24,$7F
  !e6
  db 8
  !e6
  !as6
  !c7
  !b6
  !as6
  !a6
  !gs6
  !g6
  !fs6
  !f6
  !e6
  !ds6
  !d6
  !cs6
  !c6
  !b5
  !as5
  !a5
  db 6
  !gs5
  !g5
  !fs5
  !f5
  db 4,$7B
  !e5
  !ds5
  db 3
  !d5
  !cs5
  db 2
  !c5
  !b4
  !as4
  !a4
  !gs4
  !instr,!instr0E
  db 18,$7F
  !g5
  db 6
  !c6
  db 12
  !b5
  !a5
  !g5
  !a5
  !e5
  !f5
  !g5
  !c6
  !b5
  db 60
  !c6
  db 18
  !a5
  db 6
  !e6
  db 12
  !d6
  !cs6
  !b5
  !cs6
  db 24
  !g5
  !pitchSlide,6,18 : !fs5
  !a5
  !pitchSlide,6,18 : !gs5
  !d6
  !pitchSlide,6,18 : !cs6
  db 48
  !gs6
  !pitchSlide,6,42 : !d6
  !end

.pattern7_1
  db 96
  !rest
  !loop : dw .subD8BA : db 11
  !end

.pattern7_2
  !loop : dw .subD8BC : db 6
  !end

.pattern7_3
  !instr,!instr07
  db 6,$7F
  !g3
  !g3
  !instr,!instr0A
  db 12,$75
  !c5
  !instr,!instr08
  db 6,$7F
  !g4
  !instr,!instr07
  !g3
  !instr,!instr0A
  db 12,$75
  !c5
  !instr,!instr07
  db 12,$7F
  !g3
  !instr,!instr0A
  db 12,$75
  !c5
  !instr,!instr08
  db 12,$7F
  !g4
  !instr,!instr07
  !g3
  !instr,!instr07
  !g3
  !instr,!instr0A
  db 12,$75
  !c5
  !instr,!instr08
  db 12,$7F
  !g4
  !instr,!instr07
  !g3
  !g3
  !instr,!instr08
  db 6
  !g4
  db 12
  !g4
  !g4
  db 6
  !g4
  !loop : dw .subD8E8 : db 5
  !end

.pattern8_0
  !instr,!instr01
  db 12,$19
  !gs2
  db 12,$1B
  !a2
  db 12,$1D
  !a2
  db 12,$1F
  !a2
  db 12,$19
  !gs2
  db 12,$1B
  !a2
  db 12,$1D
  !a2
  db 12,$1F
  !a2
  !end

.pattern8_1
  !volume,200
  db 96
  !rest
  !end

.pattern8_2
  db 12,$19
  !gs2
  db 12,$1B
  !a2
  db 12,$1D
  !a2
  db 12,$1F
  !a2
  db 12,$19
  !gs2
  db 12,$1B
  !a2
  db 12,$1D
  !a2
  db 12,$1F
  !a2
  !end

.pattern8_3
  !instr,!instr07
  db 12,$2F
  !g3
  !instr,!instr0A
  db 12,$75
  !c5
  !c5
  !instr,!instr07
  db 12,$2F
  !g3
  !instr,!instr0A
  db 12,$75
  !c5
  !c5
  !c5
  !c5
  !end

.pattern9_1
  db 96
  !rest
  !end

.pattern9_3
  !instr,!instr07
  db 36,$7F
  !g3
  db 12
  !g3
  !instr,!instr08
  db 6
  !g4
  db 12
  !g4
  !instr,!instr07
  db 6
  !g3
  !g3
  !instr,!instr08
  !g4
  !g4
  !g4
  !end

.pattern10_0
  !loop : dw .subDAF1 : db 1
  !a2
  db 84
  !rest
  !end

.pattern10_2
  !loop : dw .subDAF1 : db 1
  !a2
  db 84
  !rest
  !end

.pattern10_3
  !instr,!instr07
  db 13,$7F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 6,$73
  !c5
  db 5,$7B
  !c5
  !instr,!instr07
  db 12,$7F
  !g3
  !g3
  !instr,!instr08
  db 13
  !g4
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr07
  db 12,$7F
  !g3
  !g3
  !instr,!instr08
  db 24
  !g4
  !instr,!instr07
  db 12
  !g3
  !g3
  !instr,!instr08
  db 24
  !g4
  !instr,!instr07
  db 13
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 6,$73
  !c5
  db 5,$7B
  !c5
  !instr,!instr07
  db 12,$7F
  !g3
  !g3
  !instr,!instr08
  db 13
  !g4
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr07
  db 12,$7F
  !g3
  db 24
  !rest
  db 6
  !g3
  !instr,!instr0A
  db 6,$75
  !c5
  !instr,!instr07
  db 48,$7F
  !g3
  !end

.subD92B
  db 12
  !rest
  db 12,$59
  !e5
  db 24
  !rest
  db 12,$39
  !e5
  db 36
  !rest
  db 12
  !e5
  db 24
  !rest
  db 12
  !e5
  db 48
  !rest
  db 12
  !rest
  db 12,$59
  !e5
  db 24
  !rest
  db 12,$39
  !e5
  db 36
  !rest
  !end

.subD94C
  db 12
  !rest
  db 12,$59
  !a5
  db 24
  !rest
  db 12,$39
  !a5
  db 36
  !rest
  db 12
  !a5
  db 24
  !rest
  db 12
  !a5
  db 48
  !rest
  db 12
  !rest
  db 12,$59
  !a5
  db 24
  !rest
  db 12,$39
  !a5
  db 36
  !rest
  !end

.subD96D
  !gs2
  !a2
  !a2
  !a2
  !gs2
  !a2
  !a2
  !a2
  !end

.subD976
  !instr,!instr07
  db 13,$7F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr07
  db 13,$7F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 11,$75
  !c5
  !end

.subD99F
  !instr,!instr03
  db 6,$55
  !f7
  db 5,$25
  !f7
  db 6
  !f7
  db 8
  !f7
  db 14,$55
  !f7
  db 7,$25
  !f7
  db 2,$75
  !f7
  !instr,!instr15
  db 48,$25
  !g4
  !end

.subD9BA
  db 12
  !e5
  db 24
  !rest
  db 12
  !e5
  db 48
  !rest
  db 12
  !rest
  !e5
  db 24
  !rest
  db 12
  !e5
  db 36
  !rest
  !end

.subD9CC
  db 12
  !a5
  db 24
  !rest
  db 12
  !a5
  db 48
  !rest
  db 12
  !rest
  !a5
  db 24
  !rest
  db 12
  !a5
  db 36
  !rest
  !end

.subD9DE
  db 12
  !rest
  db 12,$2B
  !e6
  !c6
  !e6
  !c6
  db 36
  !rest
  db 12
  !a5
  !a5
  !c6
  !a5
  !c6
  db 36
  !rest
  db 12
  !rest
  !e6
  !c6
  !e6
  !g6
  !rest
  !fs6
  !d6
  !dynamicVolume,96,0
  db 96,$79
  !f6
  !pitchSlide,0,96 : !d6
  !volume,200
  db 12
  !rest
  db 6,$2B
  !e6
  !e6
  db 12
  !c6
  !e6
  !c6
  db 36
  !rest
  db 12
  !a5
  !a5
  !c6
  !a5
  !e5
  db 36
  !rest
  db 12
  !rest
  !e6
  !c6
  !e6
  !g6
  !rest
  !fs6
  !d6
  !e6
  db 84
  !rest
  !end

.subDA26
  db 6,$7F
  !a2
  !a2
  db 12,$2F
  !a2
  !c3
  !d3
  db 6,$7F
  !ds3
  !ds3
  db 12,$2F
  !ds3
  !d3
  !c3
  !a2
  !a2
  !c3
  !rest
  !a2
  !a2
  !c3
  !rest
  db 6,$7F
  !a2
  !a2
  db 12,$2F
  !a2
  !c3
  !d3
  db 6,$7F
  !ds3
  !ds3
  db 12,$2F
  !ds3
  !d3
  !c3
  !end

.subDA53
  !a2
  !a3
  !a2
  !a2
  !a3
  !a2
  !a2
  !a3
  !a2
  !a3
  !a2
  !a2
  !a3
  !a2
  !a2
  !a3
  !end

.subDA64
  !tie
  !pitchSlide,0,6 : !c3
  !tie
  !pitchSlide,0,6 : !d3
  !end

.subDA6F
  db 96
  !rest
  !rest
  !end

.subDA73
  !a5
  !a6
  !a5
  !a5
  !a6
  !a5
  !a5
  !a6
  !a5
  !a6
  !a5
  !a5
  !a6
  !a5
  !a5
  !a6
  !end

.subDA84
  db 12
  !rest
  db 12,$59
  !d5
  db 24
  !rest
  db 12,$39
  !d5
  db 36
  !rest
  db 12
  !d5
  db 24
  !rest
  db 12
  !d5
  db 24
  !rest
  db 12,$59
  !g5
  !rest
  !rest
  !d5
  db 24
  !rest
  db 12,$39
  !d5
  db 36
  !rest
  !end

.subDAA6
  db 12
  !rest
  db 12,$59
  !g5
  db 24
  !rest
  db 12,$39
  !g5
  db 36
  !rest
  db 12
  !g5
  db 24
  !rest
  db 12
  !g5
  db 24
  !rest
  db 12,$59
  !c5
  !rest
  !rest
  !g5
  db 24
  !rest
  db 12,$39
  !g5
  db 36
  !rest
  !end

.subDAC8
  !instr,!instr07
  db 6,$7F
  !g3
  !instr,!instr0A
  db 18,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr07
  db 13,$2F
  !g3
  !instr,!instr0A
  db 11,$75
  !c5
  !instr,!instr08
  db 13,$7F
  !g4
  !instr,!instr0A
  db 11,$75
  !c5
  !end

.subD8BA
  !rest
  !end

.subD8BC
  db 6,$6F
  !c3
  !c3
  db 18
  !rest
  !e2
  db 24,$7F
  !f2
  !g2
  db 12,$1F
  !as2
  !a2
  db 7,$6F
  !g2
  db 5
  !a2
  db 7
  !rest
  db 5,$09
  !a3
  db 12
  !rest
  db 6,$7F
  !ds2
  db 6,$3F
  !e2
  db 7
  !rest
  db 5,$5B
  !c3
  db 7
  !rest
  db 5,$5F
  !c2
  !end

.subD8E8
  !instr,!instr07
  !g3
  !g3
  !instr,!instr0A
  db 12,$75
  !c5
  !instr,!instr08
  db 6,$7F
  !g4
  !instr,!instr07
  !g3
  !instr,!instr0A
  db 12,$75
  !c5
  !instr,!instr07
  db 12,$7F
  !g3
  !instr,!instr0A
  db 12,$75
  !c5
  !instr,!instr08
  db 12,$7F
  !g4
  !instr,!instr07
  !g3
  !instr,!instr07
  !g3
  !instr,!instr0A
  db 12,$75
  !c5
  !instr,!instr08
  db 12,$7F
  !g4
  !instr,!instr07
  !g3
  !g3
  !instr,!instr08
  db 6
  !g4
  db 12
  !g4
  !g4
  db 6
  !g4
  !end

.subDAF1
  db 6,$1F
  !a2
  !a2
  db 12
  !a2
  !c3
  !d3
  db 6
  !ds3
  !ds3
  db 12
  !ds3
  !d3
  !c3
  !a2
  !a2
  !c3
  !rest
  !a2
  !a2
  !c3
  !rest
  db 6
  !a2
  !a2
  db 12
  !a2
  !c3
  !d3
  db 6
  !ds3
  !ds3
  db 12
  !ds3
  !d3
  !c3
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
