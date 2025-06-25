asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr06 = $17
!instr0A = $18
!instr11 = $19
!instr12 = $1A
!instr18 = $1B
!instr19 = $1C
!instr1B = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$EC,$B8,$0A,$02
  db !instr06,$FF,$E0,$B8,$03,$00
  db !instr0A,$FF,$E0,$B8,$03,$74
  db !instr11,$8F,$F1,$B8,$07,$A8
  db !instr12,$8B,$E0,$B8,$03,$00
  db !instr18,$FF,$E0,$B8,$07,$A8
  db !instr19,$FF,$E0,$B8,$03,$CD
  db !instr1B,$FF,$E0,$B8,$01,$C7
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+288
  dw Sample06,Sample06+72
  dw Sample0A,Sample0A+882
  dw Sample11,Sample11+1683
  dw Sample12,Sample12+27
  dw Sample17_18,Sample17_18+1683
  dw Sample19,Sample19+3627
  dw Sample1A_1B,Sample1A_1B+1098
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_6b2d9404e8f16fdc424cf2f60f24fe8e.brr"
  Sample06: incbin "Sample_28e4237a3347ac666b56d280839f22cf.brr"
  Sample0A: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample11: incbin "Sample_f3af6328bd01ba69fad6d210dcfe9d7c.brr"
  Sample12: incbin "Sample_abbecaee7661b5cc7135b099e2035f4d.brr"
  Sample17_18: incbin "Sample_a9d9ea06a1346c028a856bf75b3929fb.brr"
  Sample19: incbin "Sample_c8b8c6add41c5686ca628b1b33b3be95.brr"
  Sample1A_1B: incbin "Sample_9beddc3aac56c1aa554e33e8fb20ab0a.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDC7F

TrackerDC7F:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
-
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw .pattern10
  dw .pattern11
  dw .pattern12
  dw .pattern13
  dw .pattern14
  dw .pattern15
  dw .pattern16
  dw .pattern17
  dw .pattern18
  dw .pattern19
  dw .pattern20
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, 0, 0, 0, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, 0, 0, 0, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, 0, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, 0, 0, 0, .pattern4_7
.pattern5: dw .pattern4_0, .pattern5_1, .pattern4_2, .pattern4_3, .pattern5_4, 0, .pattern5_6, .pattern5_7
.pattern6: dw .pattern4_0, .pattern5_4, .pattern4_2, .pattern4_3, 0, 0, .pattern6_6, .pattern6_7
.pattern7: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, 0, 0, .pattern7_6, .pattern7_7
.pattern8: dw .pattern8_0, .pattern4_1, .pattern4_2, .pattern8_3, 0, 0, .pattern8_6, .pattern8_7
.pattern9: dw .pattern8_0, .pattern4_1, .pattern4_2, .pattern8_3, 0, 0, .pattern9_6, .pattern9_7
.pattern10: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, 0, 0, .pattern10_6, .pattern10_7
.pattern11: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, 0, 0, .pattern11_6, .pattern11_7
.pattern12: dw .pattern12_0, .pattern12_1, .pattern12_2, .pattern12_3, 0, 0, .pattern12_6, .pattern12_7
.pattern13: dw .pattern12_0, .pattern12_1, .pattern12_2, .pattern12_3, .pattern13_4, 0, .pattern13_6, .pattern13_7
.pattern14: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, 0, 0, .pattern14_6, .pattern14_7
.pattern15: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, 0, 0, .pattern15_6, .pattern15_7
.pattern16: dw .pattern8_0, .pattern4_1, .pattern16_2, .pattern8_3, 0, 0, .pattern16_6, .pattern16_7
.pattern17: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, 0, 0, .pattern17_6, .pattern17_7
.pattern18: dw .pattern12_0, .pattern12_1, .pattern12_2, .pattern12_3, 0, 0, .pattern18_6, .pattern18_7
.pattern19: dw .pattern12_0, .pattern12_1, .pattern12_2, .pattern12_3, 0, 0, .pattern19_6, .pattern19_7
.pattern20: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_7, 0, .pattern20_6, .pattern20_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !musicVolume,250
  !tempo,25
  !instr,!instr1B
  !volume,240
  !pan,10
  db 60
  !rest
  db 18,$2D
  !fs5
  !pitchSlide,2,2 : !g5
  !a5
  !d6
  db 42,$7D
  !cs6
  db 12
  !tie
  !a5
  !g5
  db 15
  !rest
  !pan,8
  db 12,$77
  !a5
  !g5
  db 15
  !rest
  !pan,6
  db 12,$72
  !a5
  !g5
  db 18
  !rest
  !end

.pattern0_1
  !instr,!instr1B
  !volume,200
  !pan,12
  db 75
  !rest
  db 18,$29
  !fs5
  !pitchSlide,2,2 : !g5
  !a5
  !d6
  db 42,$79
  !cs6
  db 12
  !tie
  !a5
  !g5
  db 15
  !rest
  !pan,14
  db 12,$73
  !a5
  !g5
  db 15
  !rest
  !pan,16
  db 12,$71
  !a5
  !g5
  db 3
  !rest
  !end

.pattern0_2
  !instr,!instr0A
  !volume,200
  !pan,15
  db 96,$7D
  !d3
  !tie
  !tie
  !end

.pattern0_3
  !instr,!instr1B
  !volume,140
  !pan,0
  db 60
  !rest
  db 6
  !rest
  db 18,$2D
  !fs5
  !pitchSlide,2,2 : !g5
  !a5
  !loop : dw .subE6A3 : db 1
  !end

.pattern0_7
  !instr,!instr12
  !volume,200
  !pan,5
  db 96,$7D
  !d3
  !tie
  !tie
  !end

.pattern1_0
  !instr,!instr1B
  !volume,240
  !pan,10
  db 60
  !rest
  db 18,$2D
  !g5
  !a5
  !d6
  db 42,$7D
  !cs6
  db 12
  !tie
  !a5
  !g5
  db 24
  !g6
  !pitchSlide,12,6 : !a6
  db 15
  !rest
  !pan,8
  db 24,$77
  !g6
  !pitchSlide,12,6 : !a6
  db 15
  !rest
  !pan,6
  db 24,$72
  !g6
  !pitchSlide,12,6 : !a6
  db 15
  !rest
  !end

.pattern1_1
  !instr,!instr1B
  !volume,200
  !pan,12
  !loop : dw .subE6BD : db 1
  db 24
  !g6
  !pitchSlide,12,6 : !a6
  db 15
  !rest
  !pan,14
  db 24,$73
  !g6
  !pitchSlide,12,6 : !a6
  db 15
  !rest
  !pan,16
  db 24,$71
  !g6
  !pitchSlide,12,6 : !a6
  !end

.pattern1_2
  !instr,!instr0A
  !volume,200
  !pan,15
  db 96,$7D
  !ds3
  !tie
  !tie
  db 15
  !tie
  db 6
  !rest
  !end

.pattern1_3
  !loop : dw .subE6CC : db 1
  !d6
  db 42,$7D
  !cs6
  db 12
  !tie
  !a5
  !g5
  db 24
  !g6
  !pitchSlide,12,6 : !a6
  db 78
  !rest
  db 9
  !rest
  !end

.pattern1_7
  !instr,!instr12
  !volume,200
  !pan,5
  db 96,$7D
  !ds3
  !tie
  !tie
  db 15
  !tie
  db 6
  !rest
  !end

.pattern2_0
  !volume,240
  !pan,10
  db 60
  !rest
  db 18,$2D
  !g5
  !a5
  !d6
  db 42,$7D
  !cs6
  db 12
  !tie
  !a5
  !g5
  db 15
  !rest
  !pan,8
  db 12,$77
  !a5
  !g5
  db 15
  !rest
  !pan,6
  db 12,$72
  !a5
  !g5
  db 15
  !rest
  !pan,4
  db 3,$71
  !a5
  !end

.pattern2_1
  !volume,200
  !pan,12
  !loop : dw .subE6BD : db 1
  db 15
  !rest
  !pan,14
  db 12,$73
  !a5
  !g5
  db 15
  !rest
  !pan,16
  db 12,$71
  !a5
  !g5
  db 3
  !rest
  !end

.pattern2_2
  !instr,!instr0A
  !volume,200
  !pan,15
  db 72,$7D
  !e3
  db 48
  !f3
  !fs3
  db 24
  !g3
  !gs3
  !a3
  !as3
  !b3
  !end

.pattern2_3
  !loop : dw .subE6CC : db 1
  !loop : dw .subE6A3 : db 1
  !end

.pattern2_7
  !instr,!instr12
  !volume,200
  !pan,5
  db 72,$7D
  !e3
  db 48
  !f3
  !fs3
  db 24
  !g3
  !gs3
  !a3
  !as3
  !b3
  !end

.pattern3_0
  !instr,!instr04
  !pan,10
  !tempo,49
  db 12,$7D
  !gs4
  !g4
  !f4
  db 24
  !d4
  db 12
  !c4
  !gs3
  !g3
  !f3
  !loop : dw .subE6D9 : db 2
  !loop : dw .subE6E2 : db 1
  !end

.pattern3_1
  !instr,!instr19
  !volume,200
  !pan,18
  db 60,$7D
  !ds5
  !pan,4
  db 48
  !e5
  !loop : dw .subE6F4 : db 1
  !end

.pattern3_2
  !instr,!instr18
  !pan,10
  !volume,240
  db 12,$7D
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 23
  !d4
  !instr,!instr18
  db 12
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 23
  !d4
  !loop : dw .subE71A : db 1
  !instr,!instr18
  db 24
  !c4
  !instr,!instr11
  db 1
  !d4
  db 23
  !d4
  !instr,!instr18
  db 12
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 12
  !c4
  !end

.pattern3_3
  !instr,!instr1B
  !pan,8
  !volume,240
  db 12,$7D
  !gs4
  db 12,$7B
  !g4
  !f4
  db 24
  !d4
  db 12,$7D
  !c4
  db 12,$7B
  !gs3
  !g3
  !f3
  !loop : dw .subE744 : db 1
  db 12
  !c4
  db 36
  !f4
  db 12
  !d4
  !c4
  db 24
  !f4
  !end

.pattern4_0
  !loop : dw .subE75F : db 1
  !end

.pattern4_1
  !loop : dw .subE6F4 : db 1
  !end

.pattern4_2
  !loop : dw .subE783 : db 1
  !loop : dw .subE71A : db 1
  !end

.pattern4_3
  !loop : dw .subE7AF : db 1
  !end

.pattern4_7
  !instr,!instr1B
  !volume,230
  !pan,8
  !loop : dw .subE744 : db 1
  db 12
  !c4
  db 36
  !f4
  db 12
  !d4
  !c4
  !f4
  !g4
  !end

.pattern5_1
  !instr,!instr06
  !volume,0
  !pan,11
  !endVibrato
  db 96,$7D
  !c7
  !dynamicVolume,180,170
  !tie
  !tie
  db 72
  !tie
  db 24
  !rest
  !end

.pattern5_4
  !loop : dw .subE924 : db 1
  !end

.pattern5_6
  !instr,!instr1B
  !volume,180
  !pan,5
  !endVibrato
  db 6
  !rest
  db 96,$7D
  !e6
  !pitchSlide,6,4 : !f6
  !tie
  db 48
  !tie
  !dynamicVolume,48,0
  !tie
  db 72
  !tie
  !volume,240
  db 12
  !d6
  db 6
  !a5
  !end

.pattern5_7
  !instr,!instr1B
  !volume,240
  !pan,11
  !vibrato,120,16,70
  db 96,$7D
  !e6
  !pitchSlide,6,4 : !f6
  !tie
  db 48
  !tie
  !dynamicVolume,48,0
  !tie
  db 72
  !tie
  !volume,240
  db 12
  !d6
  !a5
  !end

.pattern6_6
  !vibrato,60,13,50
  db 4
  !rest
  db 96,$7D
  !e6
  !pitchSlide,6,4 : !f6
  !loop : dw .subE94E : db 1
  db 12,$1D
  !d6
  !c6
  !f6
  !d6
  db 12,$3D
  !a5
  !gs5
  !g5
  db 8
  !f5
  !end

.pattern6_7
  !pan,11
  !vibrato,60,16,60
  db 96,$7D
  !e6
  !pitchSlide,6,4 : !f6
  !loop : dw .subE94E : db 1
  db 12
  !d6
  !a5
  db 12,$7F
  !f6
  db 12,$7D
  !d6
  db 12,$3D
  !a5
  !gs5
  !g5
  !f5
  !end

.pattern7_6
  db 4
  !rest
  db 12,$2D
  !d5
  !c5
  !cs5
  !d5
  !f5
  !g5
  !gs5
  !a5
  !loop : dw .subE95A : db 1
  db 36
  !ds7
  !pitchSlide,6,4 : !e7
  !ds7
  !pitchSlide,6,4 : !e7
  db 20,$0D
  !ds7
  !pitchSlide,6,4 : !e7
  !end

.pattern7_7
  !pan,11
  !endVibrato
  db 12,$2D
  !d5
  !c5
  !cs5
  !d5
  !f5
  !g5
  !gs5
  !a5
  !loop : dw .subE95A : db 1
  db 36
  !ds7
  !pitchSlide,6,4 : !e7
  !ds7
  !pitchSlide,6,4 : !e7
  db 24
  !ds7
  !pitchSlide,6,4 : !e7
  !end

.pattern8_0
  !loop : dw .subE7D9 : db 1
  !end

.pattern8_3
  !loop : dw .subE7FD : db 1
  !end

.pattern8_6
  db 4
  !rest
  db 36,$7D
  !ds7
  !pitchSlide,6,4 : !e7
  !fs7
  !pitchSlide,6,4 : !g7
  db 24
  !ds7
  !pitchSlide,6,4 : !e7
  !loop : dw .subE827 : db 1
  !tie
  db 8
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !end

.pattern8_7
  db 36,$7D
  !ds7
  !pitchSlide,6,4 : !e7
  !fs7
  !pitchSlide,6,4 : !g7
  db 24
  !ds7
  !pitchSlide,6,4 : !e7
  !loop : dw .subE827 : db 1
  !tie
  db 8
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !c6
  !c6
  !c6
  !c6
  db 4
  !c6
  !end

.pattern9_6
  db 8,$7D
  !tie
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  db 4
  !a5
  !loop : dw .subE96D : db 1
  db 36
  !d4
  !c4
  db 20
  !cs5
  !end

.pattern9_7
  db 4,$7D
  !tie
  db 8
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  db 4
  !a5
  !loop : dw .subE96D : db 1
  db 36
  !d4
  !c4
  db 24
  !cs4
  !end

.pattern10_6
  db 4
  !rest
  db 12,$7D
  !d5
  db 36,$6D
  !f5
  !pitchSlide,24,8 : !d5
  db 24
  !e5
  !pitchSlide,6,4 : !f5
  !d5
  !pitchSlide,12,2 : !c5
  db 16,$7D
  !gs5
  db 8
  !g5
  !f5
  !d5
  !c5
  db 16
  !f5
  db 8
  !d5
  !c5
  !a4
  !gs4
  db 16
  !gs5
  db 8
  !g5
  !f5
  !d5
  !c5
  db 16
  !f5
  db 8
  !d5
  !c5
  !a4
  !gs4
  db 16
  !f5
  db 8
  !d5
  !c5
  !a4
  !gs4
  db 6
  !g4
  !f4
  !g4
  !gs4
  !a4
  !c5
  !d5
  db 2
  !f5
  !end

.pattern10_7
  db 12,$7D
  !d5
  db 36,$6D
  !f5
  !pitchSlide,24,8 : !d5
  db 24
  !e5
  !pitchSlide,6,4 : !f5
  !d5
  !pitchSlide,12,2 : !c5
  db 16,$7D
  !gs5
  db 8
  !g5
  !f5
  !d5
  !c5
  db 16
  !gs5
  db 8
  !g5
  !f5
  !d5
  !c5
  db 16
  !gs5
  db 8
  !g5
  !f5
  !d5
  !c5
  db 16
  !f5
  db 8
  !d5
  !c5
  !a4
  !gs4
  db 16
  !f5
  db 8
  !d5
  !c5
  !a4
  !gs4
  db 6
  !g4
  !f4
  !g4
  !gs4
  !a4
  !c5
  !d5
  !f5
  !end

.pattern11_6
  db 4
  !rest
  db 8,$5D
  !a5
  !c6
  !cs6
  !d6
  !f6
  !g6
  !gs6
  !a6
  !d6
  !f6
  !g6
  !gs6
  !a6
  !f6
  !g6
  !gs6
  !a6
  !c7
  !f6
  !g6
  !gs6
  !a6
  db 16
  !c7
  !pitchSlide,24,12 : !e7
  db 40
  !tie
  db 8
  !c7
  !cs7
  !d7
  !f7
  !e7
  !d7
  !f7
  !e7
  !d7
  !f7
  !e7
  !d7
  !f7
  !e7
  !d7
  !f7
  !e7
  !d7
  db 4
  !f7
  !end

.pattern11_7
  db 8,$5D
  !a5
  !c6
  !cs6
  !d6
  !f6
  !g6
  !gs6
  !a6
  !d6
  !f6
  !g6
  !gs6
  !a6
  !f6
  !g6
  !gs6
  !a6
  !c7
  !f6
  !g6
  !gs6
  !a6
  db 16,$7D
  !c7
  !pitchSlide,24,12 : !e7
  db 40,$5D
  !tie
  db 8
  !c7
  !cs7
  !d7
  !f7
  !e7
  !d7
  !f7
  !e7
  !d7
  !f7
  !e7
  !d7
  !f7
  !e7
  !d7
  !f7
  !e7
  !d7
  !f7
  !end

.pattern12_0
  !loop : dw .subE83A : db 1
  !end

.pattern12_1
  !loop : dw .subE854 : db 1
  !end

.pattern12_2
  !loop : dw .subE886 : db 1
  !end

.pattern12_3
  !loop : dw .subE90A : db 1
  !end

.pattern12_6
  db 4
  !rest
  db 8,$5D
  !e7
  !d7
  !f7
  !e7
  !d7
  !f7
  !e7
  !d7
  !e7
  !d7
  !c7
  !e7
  !d7
  !c7
  !d7
  !c7
  db 12
  !a6
  !gs6
  !g6
  !f6
  db 16
  !d6
  !pitchSlide,6,4 : !a5
  db 36,$7D
  !g5
  !fs5
  db 24
  !f5
  db 12
  !tie
  db 36
  !e5
  db 24
  !ds5
  db 20
  !d5
  !end

.pattern12_7
  db 8,$5D
  !e7
  !d7
  !f7
  !e7
  !d7
  !f7
  !e7
  !d7
  !e7
  !d7
  !c7
  !e7
  !d7
  !c7
  !d7
  !c7
  db 12
  !a6
  !gs6
  !g6
  !f6
  db 16
  !d6
  !pitchSlide,6,4 : !c6
  db 36,$7D
  !g5
  !fs5
  db 24
  !f5
  db 12
  !tie
  db 36
  !e5
  db 24
  !ds5
  !d5
  !end

.pattern13_4
  !instr,!instr06
  !volume,230
  !pan,9
  db 96
  !rest
  !rest
  db 48
  !rest
  db 4,$73
  !c5
  !cs5
  db 4,$75
  !d5
  !ds5
  db 4,$76
  !e5
  !f5
  db 4,$77
  !fs5
  !g5
  db 4,$78
  !gs5
  !a5
  db 4,$79
  !as5
  !b5
  db 4,$76
  !e5
  !f5
  db 4,$77
  !fs5
  !g5
  db 4,$78
  !gs5
  !a5
  db 4,$79
  !as5
  !b5
  db 4,$7A
  !c6
  !cs6
  db 4,$7B
  !d6
  !ds6
  db 4,$7C
  !e6
  !f6
  db 4,$7D
  !fs6
  !g6
  db 4,$7F
  !gs6
  !a6
  !as6
  !b6
  db 4,$7A
  !c6
  !cs6
  db 4,$7B
  !d6
  !ds6
  !end

.pattern13_6
  db 4
  !rest
  db 36,$7D
  !b5
  !as5
  db 24
  !a5
  db 12
  !tie
  db 36
  !gs5
  db 24,$3D
  !g5
  db 24,$2D
  !fs5
  db 36,$7D
  !b5
  !as5
  db 24
  !a5
  db 12
  !tie
  db 36
  !gs5
  db 24,$3D
  !g5
  db 20,$2D
  !fs5
  !end

.pattern13_7
  !loop : dw .subE97D : db 2
  !end

.pattern14_6
  !instr,!instr06
  !volume,200
  !pan,11
  !vibrato,40,30,70
  db 96,$7D
  !a5
  !tie
  db 48
  !tie
  db 36
  !c6
  db 12
  !a5
  !tie
  db 36
  !c6
  db 24
  !d6
  !d6
  !end

.pattern14_7
  !instr,!instr06
  !volume,200
  !pan,9
  !vibrato,40,30,70
  db 96,$7D
  !d6
  !tie
  db 48
  !tie
  db 36
  !f6
  db 12
  !d6
  !tie
  db 36
  !f6
  db 24
  !g6
  !gs6
  !end

.pattern15_6
  db 36,$7D
  !e6
  !ds6
  db 24
  !d6
  db 12
  !tie
  db 36
  !c6
  db 24
  !e5
  !g5
  db 12
  !a5
  !e5
  !a5
  !gs5
  !g5
  !e5
  !ds5
  !d5
  !c5
  !a4
  !g4
  !e5
  !g4
  !a4
  !g4
  !a4
  !end

.pattern15_7
  db 36,$7D
  !a6
  !gs6
  db 24
  !g6
  db 12
  !tie
  db 36
  !f6
  db 24
  !a5
  !c6
  db 12
  !d6
  !a5
  !d6
  !cs6
  !c6
  !a5
  !gs5
  !g5
  !f5
  !d5
  !c5
  !a5
  !c5
  !d5
  !c5
  !d5
  !end

.pattern16_2
  !pan,10
  !loop : dw .subE783 : db 1
  !loop : dw .subE71A : db 1
  !end

.pattern16_6
  db 12,$7D
  !c5
  !a4
  !c5
  !d5
  !c5
  !d5
  !ds5
  !e5
  !g5
  !gs5
  !a5
  !c6
  !d6
  !ds6
  !rest
  !c7
  !tie
  db 20
  !c7
  db 16
  !c7
  db 14
  !c7
  db 12
  !c7
  !c7
  db 10
  !c7
  db 2
  !tie
  db 10
  !c7
  !c7
  !cs7
  !cs7
  !cs7
  !cs7
  !d7
  !d7
  !d7
  db 4
  !d7
  !end

.pattern16_7
  db 12,$7D
  !f5
  !d5
  !f5
  !g5
  !f5
  !g5
  !gs5
  !a5
  !c6
  !cs6
  !d6
  !f6
  !g6
  !gs6
  db 24
  !a6
  db 20
  !a6
  db 16
  !a6
  db 14
  !a6
  db 12
  !a6
  !a6
  !a6
  db 10
  !a6
  !a6
  !a6
  !a6
  !a6
  !a6
  !a6
  !a6
  !a6
  !a6
  db 6
  !a6
  !end

.pattern17_6
  db 6
  !rest
  db 10,$7D
  !f7
  !f7
  !f7
  !f7
  !f7
  !f7
  !f7
  !f7
  !f7
  db 8
  !c7
  !b6
  !as6
  !a6
  !c7
  !b6
  !as6
  !a6
  !gs6
  !g6
  !e6
  !d6
  !c6
  !b5
  !as5
  !a5
  db 4
  !gs5
  !g5
  !fs5
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
  db 96
  !a4
  !end

.pattern17_7
  db 4
  !rest
  db 10,$7D
  !a6
  !a6
  !a6
  !a6
  !a6
  !a6
  !a6
  !a6
  db 12
  !a6
  db 8
  !f7
  !e7
  !ds7
  !d7
  !f7
  !e7
  !ds7
  !d7
  !cs7
  !c7
  !a6
  !g6
  !f6
  !e6
  !ds6
  !d6
  db 4
  !cs6
  !c6
  !b5
  !as5
  !a5
  !gs5
  !g5
  !fs5
  !f5
  !e5
  !ds5
  !d5
  !cs5
  !c5
  !b4
  !as4
  db 96
  !d5
  !end

.pattern18_6
  db 12,$7D
  !e5
  !ds5
  !e5
  !g5
  !e5
  !g5
  !a5
  !g5
  !a5
  !c6
  !a5
  !c6
  !d6
  !c6
  !d6
  !e6
  !e5
  !ds5
  !e5
  !g5
  !e5
  !g5
  !a5
  !g5
  !a5
  !c6
  !a5
  !c6
  !d6
  !c6
  !d6
  !e6
  !end

.pattern18_7
  db 12,$7D
  !a5
  !gs5
  !a5
  !c6
  !a5
  !c6
  !d6
  !c6
  !d6
  !f6
  !d6
  !f6
  !g6
  !f6
  !g6
  !a6
  !a5
  !gs5
  !a5
  !c6
  !a5
  !c6
  !d6
  !c6
  !d6
  !f6
  !d6
  !f6
  !g6
  !f6
  !g6
  !a6
  !end

.pattern19_6
  db 12,$7D
  !a5
  !g5
  !a5
  !c6
  !a5
  !c6
  !d6
  !c6
  !d6
  !e6
  !d6
  !e6
  !g6
  !e6
  !g6
  !a6
  !a5
  !g5
  !a5
  !c6
  !a5
  !c6
  !d6
  !c6
  !d6
  !e6
  !d6
  !e6
  !g6
  !e6
  !g6
  !a6
  !end

.pattern19_7
  db 12,$7D
  !d6
  !c6
  !d6
  !f6
  !d6
  !f6
  !g6
  !f6
  !g6
  !a6
  !g6
  !a6
  !c7
  !a6
  !c7
  !d7
  !d6
  !c6
  !d6
  !f6
  !d6
  !f6
  !g6
  !f6
  !g6
  !a6
  !g6
  !a6
  !c7
  !a6
  !c7
  !d7
  !end

.pattern20_6
  db 96,$7D
  !c6
  db 48
  !tie
  db 4
  !b5
  !as5
  !a5
  !gs5
  !g5
  db 4,$7B
  !fs5
  db 4,$79
  !f5
  db 4,$77
  !e5
  db 4,$75
  !ds5
  db 4,$73
  !d5
  db 4,$72
  !c5
  db 4,$72
  !b4
  db 4,$71
  !a4
  db 92
  !rest
  db 96
  !rest
  !end

.pattern20_7
  db 96,$7D
  !f6
  db 48
  !tie
  db 4
  !e6
  !ds6
  !d6
  !cs6
  !c6
  db 4,$7B
  !b5
  db 4,$79
  !as5
  db 4,$77
  !a5
  db 4,$75
  !gs5
  db 4,$73
  !g5
  db 4,$72
  !f5
  db 4,$72
  !e5
  db 4,$71
  !d5
  db 92
  !rest
  db 96
  !rest
  !end

.subE6A3
  !d6
  db 42,$7D
  !cs6
  db 12
  !tie
  !a5
  !g5
  db 12,$73
  !g5
  db 12,$72
  !g5
  db 12,$72
  !g5
  db 12,$71
  !g5
  !g5
  !g5
  !g5
  db 6
  !g5
  !end

.subE6BD
  db 75
  !rest
  db 18,$29
  !g5
  !a5
  !d6
  db 42,$79
  !cs6
  db 12
  !tie
  !a5
  !g5
  !end

.subE6CC
  !instr,!instr1B
  !volume,140
  !pan,0
  db 66
  !rest
  db 18,$2D
  !g5
  !a5
  !end

.subE6D9
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !end

.subE6E2
  db 24
  !d3
  db 12
  !c3
  db 36
  !f3
  db 24
  !d3
  db 12
  !c3
  db 36
  !f3
  db 12
  !d3
  !c3
  !f3
  !g3
  !end

.subE6F4
  !pan,13
  db 24,$79
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !pan,18
  db 36,$7D
  !ds5
  !pan,4
  !e5
  !pan,18
  db 24
  !ds5
  db 12
  !tie
  !pan,4
  db 36
  !e5
  !pan,18
  db 24
  !ds5
  !pan,4
  !e5
  !end

.subE71A
  !instr,!instr18
  db 24
  !c4
  !instr,!instr11
  db 1
  !d4
  db 23
  !d4
  !instr,!instr18
  db 12
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 23
  !d4
  !instr,!instr18
  db 24
  !c4
  !instr,!instr11
  db 1
  !d4
  db 23
  !d4
  !instr,!instr18
  db 24
  !c4
  !instr,!instr11
  db 1
  !d4
  db 23
  !d4
  !end

.subE744
  db 12,$7D
  !d4
  !d4
  !d4
  !d4
  !d4
  !d4
  !d4
  !d4
  !d4
  !d4
  !d4
  !d4
  !d4
  !d4
  !d4
  !d4
  db 24
  !d4
  db 12
  !c4
  db 36
  !f4
  db 24
  !d4
  !end

.subE75F
  db 12,$7D
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  db 24
  !d3
  db 12
  !c3
  db 36
  !f3
  db 24
  !d3
  db 12
  !c3
  db 36
  !f3
  db 12
  !d3
  !c3
  !f3
  !g3
  !end

.subE783
  !instr,!instr18
  db 24,$7D
  !c4
  !instr,!instr11
  db 1
  !d4
  db 23
  !d4
  !instr,!instr18
  db 12
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 23
  !d4
  !instr,!instr18
  db 12
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 23
  !d4
  !instr,!instr18
  db 24
  !c4
  !instr,!instr11
  db 1
  !d4
  db 23
  !d4
  !end

.subE7AF
  !instr,!instr1B
  !volume,230
  !pan,14
  db 12,$7D
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  db 24
  !a5
  db 12
  !g5
  db 36
  !c6
  db 24
  !a5
  db 12
  !g5
  db 36
  !c6
  db 12
  !a5
  !g5
  !c6
  !d6
  !end

.subE924
  !instr,!instr19
  !volume,200
  !pan,13
  db 24,$79
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !pan,18
  db 36,$7D
  !ds5
  !pan,4
  !e5
  !pan,18
  db 24
  !ds5
  db 12
  !tie
  !pan,4
  db 36
  !e5
  !pan,18
  db 24
  !ds5
  !pan,4
  !e5
  !end

.subE94E
  db 72
  !tie
  db 12
  !d6
  !a5
  db 96
  !e6
  !pitchSlide,6,4 : !f6
  !end

.subE95A
  !c6
  db 24
  !d6
  !f6
  !g6
  db 12,$7D
  !a6
  db 12,$2D
  !tie
  db 84,$7D
  !c7
  !pitchSlide,24,24 : !e7
  !end

.subE7D9
  db 12,$7D
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  db 24
  !g3
  db 12
  !f3
  db 36
  !as3
  db 24
  !g3
  db 12
  !f3
  db 36
  !as3
  db 12
  !g3
  !f3
  !as3
  !c4
  !end

.subE7FD
  !instr,!instr1B
  !volume,230
  !pan,14
  db 12,$7D
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  db 24
  !d6
  db 12
  !c6
  db 36
  !f6
  db 24
  !d6
  db 12
  !c6
  db 36
  !f6
  db 12
  !d6
  !c6
  !f6
  !g6
  !end

.subE827
  db 48
  !tie
  db 12
  !ds7
  !d7
  !c7
  !d7
  !c7
  !a6
  !g6
  !ds6
  !d6
  !c6
  !a5
  db 8
  !c6
  db 4
  !a5
  !end

.subE96D
  db 8
  !g5
  !f5
  !d5
  !pitchSlide,6,4 : !cs5
  db 36
  !a4
  !gs4
  !g4
  !fs4
  db 24
  !f4
  !end

.subE83A
  db 36,$7D
  !a3
  !gs3
  db 24
  !g3
  db 12
  !tie
  db 36
  !fs3
  db 24
  !f3
  !e3
  db 36
  !a3
  !gs3
  db 24
  !g3
  db 12
  !tie
  db 36
  !fs3
  db 24
  !f3
  !e3
  !end

.subE854
  !pan,18
  db 36,$7D
  !ds5
  !pan,4
  !e5
  !pan,18
  db 24
  !ds5
  db 12
  !tie
  !pan,4
  db 36
  !e5
  !pan,18
  db 24
  !ds5
  !pan,4
  !e5
  !pan,18
  db 36
  !ds5
  !pan,4
  !e5
  !pan,18
  db 24
  !ds5
  db 12
  !tie
  !pan,4
  db 36
  !e5
  !pan,18
  db 24
  !ds5
  !pan,4
  !e5
  !end

.subE886
  !instr,!instr11
  db 1,$7F
  !d4
  db 11
  !d4
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 12
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 12
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 12
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 12
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  db 1
  !d4
  db 11
  !d4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 12
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 12
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 12
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 12
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  db 1
  !d4
  db 11
  !d4
  !end

.subE90A
  db 36,$7D
  !e5
  !ds5
  db 24
  !d5
  db 12
  !tie
  db 36
  !cs5
  db 24
  !c5
  !b4
  db 36
  !e5
  !ds5
  db 24
  !d5
  db 12
  !tie
  db 36
  !cs5
  db 24
  !c5
  !b4
  !end

.subE97D
  db 36,$7D
  !b5
  !as5
  db 24
  !a5
  db 12
  !tie
  db 36
  !gs5
  db 24,$3D
  !g5
  db 24,$2D
  !fs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
