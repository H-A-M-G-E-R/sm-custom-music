asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr05 = $17
!instr07 = $18
!instr0A = $19
!instr0C = $1A
!instr0D = $1B
!instr0E = $1C
!instr0F = $1D
!instr13 = $1E
!instr14 = $1F
!instr15 = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr0A,$FF,$FD,$B8,$06,$F0
  db !instr0C,$FF,$E1,$B8,$07,$F0
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr0E,$FF,$E1,$B8,$03,$00
  db !instr0F,$FF,$E1,$B8,$03,$00
  db !instr13,$F8,$E1,$B8,$03,$00
  db !instr14,$FF,$E1,$B8,$04,$70
  db !instr15,$FF,$E1,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+27
  dw Sample05,Sample05+27
  dw Sample07,Sample07+1971
  dw Sample0A,Sample0A+27
  dw Sample0C,Sample0C+27
  dw Sample0D,Sample0D+441
  dw Sample0E,Sample0E+3213
  dw Sample0F,Sample0F+27
  dw Sample13,Sample13+27
  dw Sample14,Sample14+27
  dw Sample15,Sample15+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0E: incbin "Sample0E.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample13: incbin "Sample13.brr"
  Sample14: incbin "Sample14.brr"
  Sample15: incbin "Sample15.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDB17

TrackerDB17:
  dw .pattern0
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

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, 0, .pattern1_5, .pattern1_6, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, 0, .pattern2_5, .pattern2_6, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, 0, .pattern3_5, .pattern3_6, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, 0, 0, .pattern4_6, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern3_2, .pattern5_3, 0, 0, .pattern5_6, 0
.pattern6: dw .pattern6_0, 0, .pattern6_2, .pattern6_3, 0, 0, 0, 0
.pattern7: dw .pattern7_0, 0, .pattern7_2, .pattern7_3, 0, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, 0, 0, 0

.pattern0_0
  !musicTranspose,2
  !musicVolume,210
  !tempo,30
  !instr,!instr01
  !volume,200
  !pan,10
  !echo,%00000111,20,20
  !echoParameters,4,80,0
  db 12,$2F
  !g2
  !g2
  !as2
  !b2
  !c3
  !b2
  !as2
  !a2
  !end

.pattern0_1
  !volume,200
  !pan,10
  db 96
  !rest
  !end

.pattern0_2
  !instr,!instr05
  !volume,200
  !pan,10
  db 12,$4F
  !g2
  !g2
  !as2
  !b2
  !c3
  !b2
  !as2
  !a2
  !end

.pattern0_3
  !volume,240
  !pan,10
  !instr,!instr07
  db 12,$7F
  !g3
  !g3
  db 72
  !rest
  !end

.pattern1_0
  !instr,!instr0C
  db 12,$19
  !d4
  !e4
  !d4
  !e4
  !e4
  !ds4
  !d4
  !c4
  !d4
  !e4
  !d4
  !d4
  !e4
  db 15
  !rest
  db 3,$1D
  !g3
  !fs3
  !f3
  !e3
  !ds3
  db 6
  !rest
  db 12,$19
  !d4
  !e4
  !ds4
  !e4
  !e4
  !ds4
  !d4
  !e4
  db 6,$25
  !g3
  !g3
  db 12
  !g3
  db 6,$27
  !g3
  !g3
  db 12
  !g3
  db 6,$29
  !g3
  !g3
  db 12
  !g3
  db 6,$2B
  !g3
  db 6,$2D
  !g3
  db 12,$2F
  !g3
  db 12,$19
  !d4
  !e4
  !d4
  !e4
  !e4
  !ds4
  !d4
  !c4
  !d4
  !e4
  !d4
  !d4
  !e4
  db 36
  !rest
  db 12
  !d4
  !e4
  !d4
  !e4
  !e4
  !e4
  !e4
  db 4,$79
  !e4
  !instr,!instr15
  db 8,$7F
  !g3
  !instr,!instr14
  db 3
  !rest
  db 9,$7D
  !gs7
  db 6
  !rest
  db 3
  !b6
  db 6
  !rest
  db 12
  !c6
  db 9
  !rest
  db 12,$5D
  !d7
  db 3
  !rest
  db 6
  !g5
  db 3
  !rest
  db 18,$7D
  !g7
  !pitchSlide,0,18 : !g6
  db 6
  !rest
  !end

.pattern1_1
  !instr,!instr0C
  db 12,$1D
  !as5
  !b5
  !as5
  !b5
  !a5
  !g5
  !g5
  !a5
  !as5
  !b5
  !a5
  !g5
  !g5
  db 15
  !rest
  db 3
  !g2
  !fs2
  !f2
  !e2
  !ds2
  db 6
  !rest
  db 12
  !as5
  !b5
  !as5
  !b5
  !a5
  !g5
  !g5
  !a5
  db 6,$27
  !b2
  !b2
  db 12
  !b2
  db 6,$29
  !c3
  !c3
  db 12
  !c3
  db 6,$2B
  !cs3
  !cs3
  db 12
  !cs3
  db 6,$2D
  !d3
  db 6,$2F
  !d3
  db 12
  !d3
  db 12,$1D
  !as5
  !b5
  !as5
  !b5
  !a5
  !g5
  !g5
  !a5
  !as5
  !b5
  !a5
  !g5
  !g5
  db 36
  !rest
  db 12
  !as5
  !b5
  !as5
  !b5
  !a5
  !g5
  !g5
  !a5
  !instr,!instr14
  db 6,$7D
  !d7
  !gs6
  !e6
  !ds6
  !rest
  !gs6
  !d6
  !rest
  !g6
  db 12,$2D
  !d6
  db 12,$3D
  !a5
  db 18
  !rest
  !end

.pattern1_2
  !instr,!instr05
  !loop : dw .subE46F : db 1
  db 6,$29
  !g2
  !g2
  db 12
  !g2
  db 6,$2B
  !a2
  !a2
  db 12
  !a2
  db 6,$2D
  !as2
  !as2
  db 12
  !as2
  db 6,$2F
  !b2
  !b2
  db 12
  !b2
  !loop : dw .subE46F : db 1
  db 96
  !rest
  !end

.pattern1_3
  !instr,!instr0A
  db 6,$77
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  db 30
  !rest
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr0A
  db 6,$77
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !instr,!instr07
  db 24
  !c6
  db 24,$79
  !g5
  db 24,$7B
  !c6
  db 24,$7F
  !g5
  !instr,!instr0A
  db 6,$77
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !instr,!instr07
  db 48,$7F
  !g3
  !instr,!instr0A
  db 6,$77
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !c5
  db 6,$73
  !c5
  db 6,$77
  !c5
  !rest
  !instr,!instr07
  db 72,$7B
  !c6
  db 24
  !g5
  !end

.pattern1_5
  !volume,0
  !instr,!instr0C
  db 12,$17
  !d5
  !e5
  !d5
  !e5
  !e5
  !ds5
  !d5
  !c5
  !d5
  !e5
  !d5
  !d5
  !e5
  db 15
  !rest
  db 3,$1B
  !g4
  !fs4
  !f4
  !e4
  !ds4
  db 6
  !rest
  db 12,$17
  !d5
  !e5
  !ds5
  !e5
  !e5
  !ds5
  !d5
  !e5
  db 6,$23
  !g4
  !g4
  db 12
  !g4
  db 6,$25
  !g4
  !g4
  db 12
  !g4
  db 6,$27
  !g4
  !g4
  db 12
  !g4
  db 6,$29
  !g4
  db 6,$2B
  !g4
  db 12,$2D
  !g4
  db 12,$17
  !d5
  !e5
  !d5
  !e5
  !e5
  !ds5
  !d5
  !c5
  !d5
  !e5
  !d5
  !d5
  !e5
  db 36
  !rest
  db 12
  !d5
  !e5
  !d5
  !e5
  !e5
  !e5
  !e5
  !e5
  db 3
  !rest
  db 3,$5B
  !gs6
  !rest
  !d6
  db 6
  !rest
  db 3
  !b5
  db 6
  !rest
  db 3
  !c5
  !rest
  !a5
  !d4
  db 9
  !rest
  db 3
  !d7
  !gs6
  !e6
  !a4
  !rest
  !fs4
  !d6
  !rest
  !ds5
  !cs5
  !b4
  !a4
  !as4
  !g4
  db 6
  !rest
  !end

.pattern1_6
  !volume,0
  !instr,!instr0C
  db 12,$1B
  !as6
  !b6
  !as6
  !b6
  !a6
  !g6
  !g6
  !a6
  !as6
  !b6
  !a6
  !g6
  !g6
  db 15
  !rest
  db 3
  !g3
  !fs3
  !f3
  !e3
  !ds3
  db 6
  !rest
  db 12
  !as6
  !b6
  !as6
  !b6
  !a6
  !g6
  !g6
  !a6
  db 6,$25
  !b3
  !b3
  db 12
  !b3
  db 6,$27
  !c4
  !c4
  db 12
  !c4
  db 6,$29
  !cs4
  !cs4
  db 12
  !cs4
  db 6,$2B
  !d4
  db 6,$2D
  !d4
  db 12,$2F
  !d4
  db 12,$1B
  !as6
  !b6
  !as6
  !b6
  !a6
  !g6
  !g6
  !a6
  !as6
  !b6
  !a6
  !g6
  !g6
  db 36
  !rest
  db 12
  !as6
  !b6
  !as6
  !b6
  !a6
  !g6
  !g6
  !a6
  db 6,$5B
  !d7
  !gs6
  !e6
  !ds6
  !rest
  !gs6
  !d6
  !rest
  !ds5
  !cs5
  !rest
  !a4
  db 24
  !rest
  !end

.pattern2_0
  !instr,!instr01
  db 12
  !rest
  db 12,$17
  !g5
  !rest
  !g5
  !rest
  !a5
  !rest
  !a5
  !loop : dw .subE4AF : db 2
  !rest
  !a5
  !rest
  !a5
  !rest
  !g5
  !rest
  !g5
  !end

.pattern2_1
  db 12,$1B
  !gs6
  !a6
  !gs6
  !a6
  !g6
  !f6
  !f6
  !d6
  !gs6
  !a6
  !g6
  !f6
  !f6
  db 36
  !rest
  db 12
  !gs6
  !a6
  !gs6
  !a6
  !g6
  !f6
  !f6
  !d6
  !b5
  !d6
  !e6
  db 13
  !g6
  db 12
  !f6
  db 13
  !rest
  db 12
  !e6
  db 10
  !rest
  !end

.pattern2_2
  db 12,$4F
  !c3
  db 12,$2F
  !c3
  db 12,$4F
  !ds3
  db 12,$2F
  !e3
  db 6
  !f2
  !f2
  db 12,$4F
  !f2
  db 12,$2F
  !gs2
  !a2
  db 12,$4F
  !c3
  db 12,$2F
  !c3
  db 12,$4F
  !ds3
  db 12,$2F
  !e3
  db 6
  !f2
  !f2
  db 12,$4F
  !gs2
  db 12,$2F
  !a2
  !cs3
  db 12,$4F
  !c3
  db 12,$2F
  !c3
  db 12,$4F
  !ds3
  db 12,$2F
  !e3
  db 6
  !f2
  !f2
  db 12,$4F
  !f2
  db 12,$2F
  !gs2
  !a2
  db 12,$4F
  !d3
  db 12,$2F
  !d3
  db 12,$4F
  !fs3
  db 12,$2F
  !a3
  db 6
  !g3
  !g3
  db 12,$4F
  !g3
  db 12,$2F
  !g3
  !g3
  !end

.pattern2_3
  !loop : dw .subE4B8 : db 4
  !end

.pattern2_5
  !volume,200
  !instr,!instr01
  db 12
  !rest
  db 12,$15
  !e5
  !rest
  !e5
  !rest
  !f5
  !rest
  !f5
  !loop : dw .subE4ED : db 2
  !rest
  !fs5
  !rest
  !fs5
  !rest
  !f5
  !rest
  !f5
  !end

.pattern2_6
  db 12,$1B
  !ds6
  !e6
  !ds6
  !e6
  !d6
  !c6
  !c6
  !a5
  !ds6
  !e6
  !d6
  !c6
  !c6
  db 36
  !rest
  db 12
  !ds6
  !e6
  !ds6
  !e6
  !d6
  !c6
  !c6
  !a5
  !fs5
  !a5
  !b5
  !d6
  !c6
  !rest
  !b5
  !rest
  !end

.pattern3_0
  db 12
  !rest
  db 12,$17
  !g5
  !rest
  !g5
  !a5
  !rest
  !instr,!instr0C
  db 24,$2D
  !ds4
  !instr,!instr01
  db 12
  !rest
  db 12,$17
  !g5
  !rest
  !g5
  !a5
  !rest
  !instr,!instr0C
  db 24,$5D
  !e4
  !instr,!instr01
  db 12
  !rest
  db 12,$17
  !g5
  !rest
  !g5
  !rest
  !a5
  !rest
  !a5
  !a5
  !rest
  !a5
  !rest
  !g5
  db 36
  !rest
  !end

.pattern3_1
  db 12,$1B
  !gs6
  !a6
  !g6
  !f6
  !f6
  !rest
  !instr,!instr0C
  db 24,$2B
  !e4
  !instr,!instr14
  db 12,$1B
  !gs6
  !a6
  !g6
  !f6
  !f6
  !rest
  !instr,!instr0C
  db 24,$5B
  !f4
  !instr,!instr14
  db 12,$1B
  !gs6
  !a6
  !gs6
  !a6
  !g6
  !f6
  !f6
  !d6
  !f6
  db 13
  !rest
  db 12
  !g6
  db 14
  !rest
  db 12
  !f6
  db 17
  !rest
  !instr,!instr15
  db 16,$2F
  !g4
  !end

.pattern3_2
  !loop : dw .subE4F6 : db 1
  !end

.pattern3_3
  !instr,!instr07
  db 6,$7B
  !g3
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !c3
  !instr,!instr0A
  db 6,$73
  !c5
  !instr,!instr07
  db 12,$7B
  !g3
  db 24
  !c3
  !g3
  db 6
  !g3
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !c3
  !instr,!instr0A
  db 6,$73
  !c5
  !instr,!instr07
  db 12,$7B
  !g3
  db 24
  !c3
  !g3
  db 6
  !g3
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !c3
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !g3
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !c3
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 24,$7B
  !g3
  !c3
  db 12
  !g3
  db 6
  !g3
  !g3
  db 24
  !c3
  !end

.pattern3_5
  db 12
  !rest
  db 12,$15
  !e5
  !rest
  !e5
  !f5
  db 36
  !rest
  db 12
  !rest
  !e5
  !rest
  !e5
  !f5
  db 36
  !rest
  db 12
  !rest
  !e5
  !rest
  !e5
  !rest
  !f5
  !rest
  !f5
  !f5
  !rest
  !f5
  !rest
  !e5
  db 36
  !rest
  !end

.pattern3_6
  !loop : dw .subE53C : db 1
  !end

.pattern4_0
  !instr,!instr0F
  !loop : dw .subE572 : db 3
  db 6,$37
  !f5
  db 6,$32
  !f5
  db 6,$37
  !f4
  db 6,$32
  !f4
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !d5
  db 6,$32
  !d5
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !f4
  db 6,$32
  !f4
  db 6,$37
  !b4
  db 6,$32
  !b4
  db 6,$37
  !f4
  db 6,$32
  !f4
  !loop : dw .subE572 : db 3
  db 6,$37
  !f5
  db 6,$32
  !f5
  db 6,$37
  !f4
  db 6,$32
  !f4
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !d5
  db 6,$32
  !d5
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !f4
  db 6,$32
  !f4
  db 6,$37
  !b4
  db 6,$32
  !b4
  db 6,$37
  !f4
  db 6,$32
  !f4
  !end

.pattern4_1
  !instr,!instr0E
  !tremolo,0,30,252
  db 48,$7F
  !e5
  db 24
  !d5
  !g5
  db 96
  !c5
  db 48
  !a5
  db 24
  !g5
  !c6
  db 96
  !f5
  db 48
  !e5
  db 24
  !d5
  !g5
  db 96
  !c5
  db 48
  !a5
  db 24
  !g5
  !b5
  db 72
  !c6
  !endTremolo
  db 24
  !rest
  !end

.pattern4_2
  db 12,$3F
  !c3
  !c3
  db 12,$2F
  !g3
  db 6,$3F
  !c3
  !c3
  db 12
  !b2
  !b2
  db 12,$2F
  !g3
  db 6,$3F
  !b2
  !b2
  !loop : dw .subE5A3 : db 1
  db 12
  !c3
  !c3
  db 12,$2F
  !g3
  db 6,$3F
  !c3
  !c3
  db 12
  !b2
  !b2
  db 12,$2F
  !g3
  db 6,$3F
  !b2
  !b2
  !loop : dw .subE5A3 : db 1
  !end

.pattern4_3
  !instr,!instr0A
  !loop : dw .subE5E0 : db 8
  !end

.pattern4_6
  !instr,!instr0F
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !g4
  db 6,$32
  !g4
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !d5
  db 6,$32
  !d5
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !g4
  db 6,$32
  !g4
  db 6,$37
  !g5
  db 6,$32
  !g5
  db 6,$37
  !g4
  db 6,$32
  !g4
  !loop : dw .subE572 : db 2
  db 6,$37
  !f5
  db 6,$32
  !f5
  db 6,$37
  !f4
  db 6,$32
  !f4
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !d5
  db 6,$32
  !d5
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !f4
  db 6,$32
  !f4
  db 6,$37
  !b4
  db 6,$32
  !b4
  db 6,$37
  !f4
  db 6,$32
  !f4
  !loop : dw .subE572 : db 3
  db 6,$37
  !f5
  db 6,$32
  !f5
  db 6,$37
  !f4
  db 6,$32
  !f4
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !d5
  db 6,$32
  !d5
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !f4
  db 6,$32
  !f4
  db 6,$37
  !b4
  db 6,$32
  !b4
  db 6,$37
  !f4
  db 6,$32
  !f4
  !end

.pattern5_0
  !instr,!instr0C
  db 6,$67
  !g3
  !g3
  db 12,$17
  !c4
  !b3
  !as3
  !a3
  !rest
  !instr,!instr14
  db 24,$25
  !fs5
  !instr,!instr0C
  db 6,$67
  !g3
  !g3
  db 12,$17
  !c4
  !b3
  !as3
  !a3
  !instr,!instr0D
  db 20
  !rest
  db 8,$77
  !d6
  !e6
  !instr,!instr0C
  db 6,$67
  !g3
  !g3
  db 12,$17
  !g3
  !g3
  !g3
  !f3
  !f3
  !f3
  !f3
  !f3
  !rest
  !f3
  !rest
  !e3
  !rest
  !c3
  !rest
  !end

.pattern5_1
  !instr,!instr0C
  db 12,$1B
  !ds5
  !e5
  !d5
  !c5
  !c5
  !rest
  !instr,!instr14
  db 24,$25
  !g5
  !instr,!instr0C
  db 12,$1B
  !ds5
  !e5
  !d5
  !c5
  !c5
  !instr,!instr14
  db 3
  !rest
  db 33,$55
  !g6
  !instr,!instr0C
  db 12,$1B
  !ds5
  !e5
  !ds5
  !e5
  !d5
  !c5
  !c5
  !a4
  !c5
  !rest
  !d5
  !rest
  !c5
  !rest
  !c2
  !rest
  !end

.pattern5_3
  !instr,!instr07
  db 6,$7B
  !c6
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !g5
  !instr,!instr0A
  db 6,$73
  !c5
  !instr,!instr07
  db 12,$7B
  !c6
  db 24
  !g5
  !c6
  db 6
  !c6
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !g5
  !instr,!instr0A
  db 6,$73
  !c5
  !instr,!instr07
  db 12,$7B
  !c6
  db 24
  !g5
  !c6
  db 6
  !c6
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !g5
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !c6
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !g5
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 24,$7B
  !c6
  !g5
  db 12
  !c6
  db 6
  !c6
  !c6
  db 24
  !g5
  !end

.pattern5_6
  !loop : dw .subE53C : db 1
  !end

.pattern6_0
  !instr,!instr01
  db 12,$2F
  !c2
  !c2
  !ds2
  !e2
  !f2
  !f2
  !fs2
  !g2
  !loop : dw .subE611 : db 2
  !ds3
  !d3
  !cs3
  !c3
  !b2
  !as2
  !a2
  !gs2
  !loop : dw .subE611 : db 3
  !ds3
  !d3
  !cs3
  !c3
  !b2
  !as2
  !a2
  !gs2
  !end

.pattern6_2
  db 12,$2F
  !c2
  !c2
  !ds2
  !e2
  !f2
  !f2
  !fs2
  !g2
  !loop : dw .subE611 : db 2
  !ds3
  !d3
  !cs3
  !c3
  !b2
  !as2
  !a2
  !gs2
  !loop : dw .subE611 : db 3
  !ds3
  !d3
  !cs3
  !c3
  !b2
  !as2
  !a2
  !gs2
  !end

.pattern6_3
  !instr,!instr07
  db 12,$7B
  !g5
  !g5
  !instr,!instr0A
  db 24,$73
  !c5
  !c5
  !c5
  !instr,!instr07
  db 12,$7B
  !g5
  !instr,!instr0A
  db 12,$73
  !c5
  !instr,!instr07
  db 12,$7B
  !g5
  db 36
  !g5
  !instr,!instr0A
  db 12,$73
  !c5
  !c5
  !instr,!instr07
  db 12,$7B
  !g5
  !g5
  !instr,!instr0A
  db 24,$73
  !c5
  !c5
  !c5
  !instr,!instr07
  db 12,$7B
  !g5
  !instr,!instr0A
  db 12,$73
  !c5
  !instr,!instr07
  db 12,$7B
  !g5
  db 36
  !g5
  !instr,!instr0A
  db 12,$73
  !c5
  db 12,$7B
  !c5
  !loop : dw .subE61A : db 4
  !end

.pattern7_0
  !loop : dw .subE62F : db 1
  !end

.pattern7_2
  !loop : dw .subE62F : db 1
  !end

.pattern7_3
  !instr,!instr07
  db 12,$79
  !g5
  db 84
  !g5
  db 12
  !g5
  db 84
  !g5
  db 12
  !g5
  db 84
  !g5
  db 72
  !g5
  db 24,$29
  !g5
  !end

.pattern8_0
  !instr,!instr0F
  db 6,$17
  !g6
  !g6
  !d6
  !d6
  !g5
  !g5
  !d6
  !d6
  !g6
  !g6
  !d6
  !d6
  !g5
  !g5
  !d6
  !d6
  !loop : dw .subE561 : db 2
  db 72
  !g5
  db 24
  !rest
  !end

.pattern8_1
  !instr,!instr13
  db 48,$7B
  !b5
  !d6
  !g5
  !a5
  !g5
  !d5
  db 72
  !d6
  db 24
  !rest
  !end

.pattern8_2
  !instr,!instr13
  db 48,$7F
  !g3
  !f3
  !e3
  !ds3
  !c3
  !b2
  db 72
  !as2
  db 24
  !rest
  !end

.pattern8_3
  db 12
  !rest
  !instr,!instr0A
  db 12,$77
  !c5
  !instr,!instr07
  db 12,$79
  !g5
  !instr,!instr0A
  db 24,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 12,$79
  !g5
  !g5
  !rest
  !instr,!instr0A
  db 12,$77
  !c5
  !instr,!instr07
  db 12,$79
  !g5
  !instr,!instr0A
  db 24,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 12,$79
  !g5
  !g5
  !rest
  !instr,!instr0A
  db 12,$77
  !c5
  !instr,!instr07
  db 12,$79
  !g5
  !instr,!instr0A
  db 24,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  !g5
  db 12,$79
  !g5
  db 8
  !rest
  db 8,$77
  !c6
  !g5
  !c6
  db 8,$79
  !g5
  !c6
  db 8,$7B
  !g5
  !c6
  db 8,$7D
  !g5
  db 24,$7F
  !c6
  !end

.pattern8_4
  !instr,!instr13
  db 48,$77
  !d5
  !b4
  db 96
  !c5
  db 48
  !e5
  !g4
  db 72
  !tie
  db 24
  !rest
  !end

.subE46F
  db 12,$4F
  !g2
  db 12,$2F
  !g2
  db 12,$4F
  !as2
  db 12,$2F
  !b2
  db 12,$4F
  !c3
  db 12,$2F
  !c3
  db 12,$4F
  !ds3
  db 12,$2F
  !e3
  db 12,$4F
  !g2
  db 12,$2F
  !g2
  db 12,$4F
  !as2
  db 12,$2F
  !b2
  !c3
  db 36
  !rest
  db 12,$4F
  !g2
  db 12,$2F
  !g2
  db 12,$4F
  !as2
  db 12,$2F
  !b2
  db 12,$4F
  !c3
  db 12,$2F
  !c3
  db 12,$4F
  !ds3
  db 12,$2F
  !e3
  !end

.subE4AF
  !rest
  !g5
  !rest
  !g5
  !rest
  !a5
  !rest
  !a5
  !end

.subE4B8
  !instr,!instr07
  db 6,$7B
  !g3
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !g3
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !g3
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !instr,!instr07
  db 6,$7B
  !g3
  !instr,!instr0A
  db 6,$73
  !c5
  db 12,$77
  !c5
  !end

.subE4ED
  !rest
  !e5
  !rest
  !e5
  !rest
  !f5
  !rest
  !f5
  !end

.subE4F6
  db 6,$4F
  !c3
  !c3
  db 12,$2F
  !c3
  !ds3
  !e3
  !f3
  !rest
  db 24,$7F
  !f2
  db 6,$4F
  !c3
  !c3
  db 12,$2F
  !c3
  !ds3
  !e3
  !f3
  !rest
  db 24,$7F
  !fs2
  db 6,$4F
  !e3
  !e3
  db 12,$2F
  !e3
  db 12,$4F
  !e3
  db 12,$2F
  !e3
  db 12,$4F
  !d3
  db 12,$2F
  !d3
  db 12,$4F
  !d3
  db 12,$2F
  !d3
  db 6,$4F
  !g3
  !g3
  !g3
  !rest
  !g3
  !g3
  !g3
  !rest
  db 12
  !c3
  !rest
  db 24,$2F
  !c3
  !end

.subE53C
  db 12,$1B
  !ds6
  !e6
  !d6
  !c6
  !c6
  !rest
  db 24
  !f3
  db 12
  !ds6
  !e6
  !d6
  !c6
  !c6
  !rest
  db 24
  !fs3
  db 12
  !ds6
  !e6
  !ds6
  !e6
  !d6
  !c6
  !c6
  !a5
  !c6
  !rest
  !d6
  !rest
  !c6
  !rest
  !c3
  !rest
  !end

.subE572
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !g4
  db 6,$32
  !g4
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !d5
  db 6,$32
  !d5
  db 6,$37
  !c5
  db 6,$32
  !c5
  db 6,$37
  !g4
  db 6,$32
  !g4
  db 6,$37
  !g5
  db 6,$32
  !g5
  db 6,$37
  !g4
  db 6,$32
  !g4
  !end

.subE5A3
  db 12
  !a2
  !a2
  db 12,$2F
  !g3
  db 6,$3F
  !a2
  !a2
  db 12
  !g2
  !g2
  db 12,$2F
  !g3
  db 6,$3F
  !g2
  !g2
  db 12
  !f2
  !f2
  db 12,$2F
  !f3
  db 6,$3F
  !f2
  !f2
  db 12
  !e2
  !e2
  db 12,$2F
  !e3
  db 6,$3F
  !e2
  !e2
  db 12
  !d2
  !d3
  db 12,$2F
  !d3
  db 6,$3F
  !d2
  !d2
  db 12
  !g2
  !g2
  db 12,$2F
  !g3
  db 6,$3F
  !g2
  !g2
  !end

.subE5E0
  db 6,$79
  !c5
  db 6,$72
  !c5
  db 6,$75
  !c5
  db 6,$72
  !c5
  db 6,$7F
  !c5
  db 6,$72
  !c5
  db 6,$75
  !c5
  db 6,$72
  !c5
  db 6,$79
  !c5
  db 6,$72
  !c5
  db 6,$75
  !c5
  db 6,$72
  !c5
  db 6,$7F
  !c5
  db 6,$72
  !c5
  db 6,$75
  !c5
  db 6,$72
  !c5
  !end

.subE611
  !c2
  !c2
  !ds2
  !e2
  !f2
  !f2
  !fs2
  !g2
  !end

.subE61A
  !instr,!instr07
  !c6
  !instr,!instr0A
  db 12,$73
  !c5
  !instr,!instr07
  db 12,$7B
  !g5
  !g5
  !c6
  !c6
  !g5
  !instr,!instr0A
  !c5
  !end

.subE62F
  db 12,$2F
  !g2
  !fs2
  db 72
  !rest
  db 12
  !g2
  !fs2
  db 72
  !rest
  db 12
  !g2
  !fs2
  db 72
  !rest
  db 12
  !gs2
  db 84
  !rest
  !end

.subE561
  !g6
  !g6
  !d6
  !d6
  !g5
  !g5
  !d6
  !d6
  !g6
  !g6
  !d6
  !d6
  !g5
  !g5
  !d6
  !d6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
