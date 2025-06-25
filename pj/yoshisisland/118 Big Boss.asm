asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr04 = $17
!instr06 = $18
!instr11 = $19
!instr13 = $1A
!instr18 = $1B
!instr19 = $1C
!instr1A = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr04,$FF,$EC,$B8,$0A,$02
  db !instr06,$FF,$E0,$B8,$03,$00
  db !instr11,$8F,$F1,$B8,$07,$A8
  db !instr13,$FE,$F3,$B8,$04,$FF
  db !instr18,$FF,$E0,$B8,$07,$A8
  db !instr19,$FF,$E0,$B8,$03,$B8
  db !instr1A,$FF,$E0,$B8,$03,$C8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample04,Sample04+288
  dw Sample06,Sample06+72
  dw Sample11,Sample11+1683
  dw Sample13,Sample13+369
  dw Sample18,Sample18+1683
  dw Sample19,Sample19+765
  dw Sample1A,Sample1A+1413
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample04: incbin "Sample_6b2d9404e8f16fdc424cf2f60f24fe8e.brr"
  Sample06: incbin "Sample_28e4237a3347ac666b56d280839f22cf.brr"
  Sample11: incbin "Sample_f3af6328bd01ba69fad6d210dcfe9d7c.brr"
  Sample13: incbin "Sample_4e4eabd94f1d721abc772633931c5756.brr"
  Sample18: incbin "Sample_a9d9ea06a1346c028a856bf75b3929fb.brr"
  Sample19: incbin "Sample_830913f7d7c8de159660a43730597185.brr"
  Sample1A: incbin "Sample_d45bbea96124e9486749b3dec9f0220d.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDEDB

TrackerDEDB:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
-
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw .pattern10
  dw .pattern11
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, 0, .pattern1_2, 0, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern2_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern2_5, 0, 0
.pattern4: dw .pattern1_0, 0, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern2_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern2_0, .pattern6_6, 0
.pattern7: dw .pattern2_0, .pattern7_1, .pattern6_2, .pattern7_3, .pattern6_4, .pattern2_5, .pattern7_6, 0
.pattern8: dw .pattern6_0, .pattern8_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern2_0, .pattern8_6, 0
.pattern9: dw .pattern2_0, .pattern9_1, .pattern6_2, .pattern7_3, .pattern6_4, .pattern2_5, .pattern9_6, 0
.pattern10: dw .pattern6_0, .pattern10_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern2_0, .pattern10_6, 0
.pattern11: dw .pattern2_0, .pattern11_1, .pattern6_2, .pattern7_3, .pattern6_4, .pattern2_5, .pattern11_6, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,31
  !musicVolume,200
  !instr,!instr06
  !pan,10
  !volume,240
  db 32,$7D
  !b5
  db 30
  !as5
  db 28
  !a5
  db 24
  !gs5
  db 20
  !g5
  db 16
  !fs5
  db 36
  !f5
  db 96
  !tie
  db 48,$38
  !tie
  !end

.pattern0_1
  !instr,!instr02
  !pan,14
  !volume,250
  db 90
  !rest
  db 96
  !rest
  db 6,$5E
  !a4
  db 6,$23
  !b5
  db 6,$7A
  !b3
  db 6,$3D
  !a4
  db 6,$07
  !b5
  db 6,$7F
  !b3
  db 6,$23
  !a4
  db 6,$3A
  !b5
  db 6,$7F
  !b3
  db 6,$3D
  !a4
  db 6,$3A
  !b5
  db 6,$77
  !b3
  !b5
  !b5
  db 12
  !rest
  db 48
  !rest
  !end

.pattern0_2
  !instr,!instr06
  !pan,8
  !volume,180
  db 4
  !rest
  db 32,$7D
  !b5
  db 30
  !as5
  db 28
  !a5
  db 24
  !gs5
  db 20
  !g5
  db 16
  !fs5
  db 36
  !f5
  db 96
  !tie
  db 42,$38
  !tie
  db 2
  !rest
  !end

.pattern0_3
  !instr,!instr06
  !pan,6
  !volume,240
  db 32,$7D
  !fs4
  db 30
  !f4
  db 28
  !e4
  db 24
  !ds4
  db 20
  !d4
  db 16
  !cs4
  db 36
  !c4
  db 96
  !tie
  db 48,$38
  !tie
  !end

.pattern0_4
  !instr,!instr06
  !pan,12
  !volume,240
  db 32,$7D
  !f5
  db 30
  !e5
  db 28
  !ds5
  db 24
  !d5
  db 20
  !cs5
  db 16
  !c5
  db 36
  !b4
  db 96
  !tie
  db 48,$38
  !tie
  !end

.pattern0_5
  !instr,!instr06
  !pan,8
  !volume,240
  db 32,$7D
  !c5
  db 30
  !b4
  db 28
  !as4
  db 24
  !a4
  db 20
  !gs4
  db 16
  !g4
  db 36
  !fs4
  db 96
  !tie
  db 48,$38
  !tie
  !end

.pattern1_0
  !tempo,29
  !instr,!instr13
  !volume,220
  !pan,12
  !loop : dw .subE7A9 : db 1
  !end

.pattern1_2
  !volume,250
  !pan,10
  db 96
  !rest
  !instr,!instr18
  db 49,$7F
  !c4
  !instr,!instr11
  db 1
  !d4
  db 40
  !d4
  !instr,!instr18
  db 6
  !c4
  !end

.pattern1_4
  !volume,220
  !pan,4
  db 72
  !rest
  !instr,!instr1A
  db 24,$7F
  !c5
  !instr,!instr19
  db 24,$7D
  !c5
  db 24,$7F
  !c5
  !instr,!instr1A
  db 24,$7D
  !c5
  !instr,!instr19
  db 24,$7F
  !c5
  !end

.pattern1_5
  !instr,!instr13
  !volume,220
  !pan,8
  !loop : dw .subE7CC : db 1
  !end

.pattern2_0
  !loop : dw .subE7A9 : db 1
  !loop : dw .subE7EF : db 2
  !end

.pattern2_1
  !instr,!instr06
  !volume,210
  !pan,13
  db 36
  !rest
  db 60,$7D
  !g2
  db 90
  !tie
  db 6
  !fs2
  db 96
  !as2
  db 78
  !tie
  db 18
  !a2
  !end

.pattern2_2
  !volume,250
  !pan,10
  !loop : dw .subE800 : db 1
  db 49
  !c4
  !instr,!instr11
  db 1
  !d4
  db 46
  !d4
  !end

.pattern2_3
  !instr,!instr04
  !volume,250
  !pan,7
  db 36
  !rest
  db 60,$7D
  !g3
  db 90
  !tie
  db 6
  !fs3
  db 96
  !as3
  db 78
  !tie
  db 18
  !a3
  !end

.pattern2_4
  !volume,220
  !pan,4
  !loop : dw .subE826 : db 4
  !end

.pattern2_5
  !loop : dw .subE7CC : db 1
  !loop : dw .subE839 : db 2
  !end

.pattern3_1
  db 96,$7D
  !d3
  db 60
  !ds3
  db 36
  !as2
  db 96
  !tie
  db 72
  !a2
  db 24
  !gs2
  !end

.pattern3_2
  !volume,250
  !loop : dw .subE800 : db 1
  db 12
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  db 1
  !d4
  db 17
  !d4
  !instr,!instr18
  db 6
  !c4
  !instr,!instr11
  db 1
  !d4
  db 5
  !d4
  db 1
  !d4
  db 5
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
  db 5
  !d4
  db 1
  !d4
  db 5
  !d4
  !end

.pattern3_3
  db 96,$7D
  !d3
  db 60
  !ds3
  db 36
  !as2
  db 96
  !tie
  db 72
  !a2
  db 24
  !gs2
  !end

.pattern3_4
  !loop : dw .subE8F4 : db 4
  !end

.pattern4_2
  !instr,!instr18
  !volume,250
  !pan,10
  !loop : dw .subE84A : db 1
  !end

.pattern4_3
  !instr,!instr04
  !volume,250
  !pan,9
  !loop : dw .subE8A4 : db 2
  !end

.pattern4_4
  !instr,!instr19
  !volume,220
  !pan,4
  !loop : dw .subE8C3 : db 2
  !end

.pattern4_5
  !instr,!instr13
  !volume,220
  !pan,8
  !loop : dw .subE7CC : db 1
  !end

.pattern5_1
  !instr,!instr06
  !pan,13
  !volume,220
  !vibrato,40,30,70
  db 96
  !rest
  db 2,$63
  !g4
  db 2,$65
  !gs4
  db 2,$66
  !a4
  db 2,$67
  !as4
  db 2,$68
  !b4
  db 2,$69
  !c5
  db 2,$6A
  !d5
  db 2,$6B
  !e5
  db 2,$6C
  !f5
  db 2,$6D
  !g5
  !a5
  !b5
  !c6
  !d6
  !e6
  !f6
  db 64,$7D
  !g6
  db 36
  !tie
  db 6
  !fs6
  !f6
  db 12
  !d6
  db 6
  !cs6
  !c6
  db 12
  !as5
  db 6
  !g5
  !fs5
  !f5
  !d5
  !cs5
  !c5
  !as4
  db 12
  !g4
  db 6
  !g4
  !g4
  !g4
  db 12
  !g4
  db 6
  !g4
  db 12
  !g4
  db 6
  !g4
  !end

.pattern5_2
  !volume,250
  !pan,10
  !loop : dw .subE84A : db 1
  !loop : dw .subE913 : db 2
  !end

.pattern5_3
  !instr,!instr04
  !volume,250
  !pan,9
  !loop : dw .subE8A4 : db 4
  !end

.pattern5_4
  !instr,!instr19
  !volume,220
  !pan,4
  !loop : dw .subE8C3 : db 4
  !end

.pattern5_5
  !instr,!instr13
  !volume,220
  !pan,8
  !loop : dw .subE7CC : db 1
  !loop : dw .subE839 : db 2
  !end

.pattern5_6
  !instr,!instr06
  !volume,220
  !pan,9
  !vibrato,40,35,65
  db 96
  !rest
  db 2,$63
  !ds4
  db 2,$65
  !e4
  db 2,$66
  !f4
  db 2,$67
  !fs4
  db 2,$68
  !g4
  db 2,$69
  !gs4
  db 2,$6A
  !as4
  db 2,$6B
  !c5
  db 2,$6C
  !cs5
  db 2,$6D
  !ds5
  !f5
  !g5
  !gs5
  !as5
  !c6
  !cs6
  db 64,$7D
  !d6
  db 36
  !tie
  db 6
  !cs6
  !c6
  db 12
  !a5
  db 6
  !gs5
  !g5
  db 12
  !f5
  db 6
  !d5
  !cs5
  !c5
  !a4
  !gs4
  !g4
  !f4
  db 12
  !d4
  db 6
  !d4
  !d4
  !d4
  db 12
  !d4
  db 6
  !d4
  db 12
  !d4
  db 6
  !d4
  !end

.pattern6_0
  db 6,$6D
  !c6
  !c6
  !cs6
  !c6
  !c6
  !cs6
  !c6
  !c6
  !cs6
  !c6
  !c6
  !cs6
  !c6
  !cs6
  !c6
  !ds6
  !loop : dw .subE940 : db 3
  !end

.pattern6_1
  db 6,$7D
  !g4
  !g4
  db 12
  !g4
  !g4
  db 6
  !g4
  !g4
  !g4
  !as4
  db 12
  !fs4
  !g4
  db 6
  !d4
  !g4
  !tie
  !d4
  db 12
  !g4
  db 6
  !d4
  !g4
  !d4
  !g4
  !as4
  db 12
  !fs4
  !g4
  db 6
  !g4
  !as4
  !fs4
  !tie
  !g4
  !g4
  !as4
  !g4
  !as4
  !g4
  !as4
  !g4
  !c5
  !g4
  !cs5
  !g4
  !d5
  !g4
  !cs5
  !g4
  !c5
  !g4
  !as4
  !g4
  !g4
  db 12
  !g5
  db 6
  !g4
  !g4
  db 12
  !g5
  db 6
  !f5
  !g5
  !as5
  !c6
  !end

.pattern6_2
  !loop : dw .subE951 : db 1
  !loop : dw .subE913 : db 2
  !end

.pattern6_3
  !loop : dw .subE9AD : db 4
  !end

.pattern6_4
  !instr,!instr19
  db 6,$7D
  !c5
  db 6,$79
  !c5
  db 6,$7B
  !c5
  db 6,$79
  !c5
  db 6,$7F
  !c5
  db 6,$79
  !c5
  db 6,$7B
  !c5
  db 6,$79
  !c5
  db 6,$7D
  !c5
  db 6,$79
  !c5
  db 6,$7B
  !c5
  db 6,$79
  !c5
  db 6,$7F
  !c5
  db 6,$79
  !c5
  db 6,$7B
  !c5
  db 6,$79
  !c5
  !loop : dw .subE8C3 : db 3
  !end

.pattern6_6
  db 6,$7D
  !d4
  !d4
  db 12
  !d4
  !d4
  db 6
  !d4
  !d4
  !d4
  !f4
  db 12
  !cs4
  !d4
  db 6
  !a3
  !d4
  !tie
  !a3
  db 12
  !d4
  db 6
  !a3
  !d4
  !a3
  !d4
  !f4
  db 12
  !cs4
  !d4
  db 6
  !d4
  !f4
  !cs4
  !tie
  !d4
  !d4
  !f4
  !d4
  !f4
  !d4
  !f4
  !d4
  !g4
  !d4
  !gs4
  !d4
  !a4
  !d4
  !gs4
  !d4
  !g4
  !d4
  !f4
  !d4
  !d4
  db 12
  !d5
  db 6
  !d4
  !d4
  db 12
  !d5
  db 6
  !c5
  !d5
  !f5
  !g5
  !end

.pattern7_1
  db 6,$7D
  !as5
  !c6
  !cs6
  !d6
  !c6
  !cs6
  !d6
  !f6
  db 24
  !g6
  db 2
  !f6
  !e6
  !d6
  !c6
  !b5
  !a6
  db 12
  !g6
  !tie
  db 2
  !f6
  !e6
  !d6
  !c6
  !b5
  db 74
  !as6
  db 18
  !a6
  !gs6
  !g6
  db 12
  !fs6
  !f6
  db 6
  !e6
  !ds6
  !d6
  db 24
  !tie
  db 36
  !ds6
  !as5
  !end

.pattern7_3
  !loop : dw .subE8A4 : db 4
  !end

.pattern7_6
  db 6,$7D
  !f5
  !g5
  !gs5
  !a5
  !g5
  !gs5
  !a5
  !c6
  db 24
  !d6
  db 2
  !cs6
  !c6
  !as5
  !gs5
  !g5
  !f6
  db 12
  !d6
  !tie
  db 2
  !cs6
  !c6
  !as5
  !gs5
  !g5
  db 74
  !f6
  db 18
  !e6
  !ds6
  !d6
  db 12
  !cs6
  !c6
  db 6
  !b5
  !as5
  !a5
  db 24
  !tie
  db 36
  !as5
  !f5
  !end

.pattern8_1
  db 36,$7D
  !d6
  db 6
  !a5
  !g4
  !g4
  !as5
  !g4
  !g4
  !as5
  !g4
  !as5
  !g4
  !g4
  !as5
  !g4
  !as5
  db 12
  !as5
  db 6
  !as5
  db 4
  !gs5
  !g5
  !gs5
  !g5
  !gs5
  !g5
  !gs5
  !g5
  !as5
  !a5
  !as5
  !a5
  !as5
  db 2
  !a5
  !tie
  db 4
  !as5
  !a5
  !gs5
  !g5
  !gs5
  !g5
  !gs5
  !g5
  !gs5
  !g5
  !as5
  !a5
  !as5
  !a5
  !as5
  !a5
  !as5
  !a5
  !c6
  !b5
  !c6
  !b5
  !c6
  db 2
  !b5
  !tie
  db 4
  !c6
  !b5
  !d6
  !cs6
  !d6
  !cs6
  !d6
  !cs6
  !d6
  !cs6
  !c6
  !b5
  !c6
  !b5
  !c6
  !b5
  !c6
  !b5
  !d6
  !cs6
  !d6
  !cs6
  !d6
  db 2
  !cs6
  !end

.pattern8_6
  db 36,$7D
  !a5
  db 6
  !e5
  !d4
  !d4
  !f5
  !d4
  !d4
  !f5
  !d4
  !f5
  !d4
  !d4
  !f5
  !d4
  !f5
  db 12
  !f5
  db 6
  !f5
  db 4
  !ds5
  !d5
  !ds5
  !d5
  !ds5
  !d5
  !ds5
  !d5
  !f5
  !e5
  !f5
  !e5
  !f5
  db 2
  !e5
  !tie
  db 4
  !f5
  !e5
  !ds5
  !d5
  !ds5
  !d5
  !ds5
  !d5
  !ds5
  !d5
  !f5
  !e5
  !f5
  !e5
  !f5
  !e5
  !f5
  !e5
  !g5
  !fs5
  !g5
  !fs5
  !g5
  db 2
  !fs5
  !tie
  db 4
  !g5
  !fs5
  !a5
  !gs5
  !a5
  !gs5
  !a5
  !gs5
  !a5
  !gs5
  !g5
  !fs5
  !g5
  !fs5
  !g5
  !fs5
  !g5
  !fs5
  !a5
  !gs5
  !a5
  !gs5
  !a5
  db 2
  !gs5
  !end

.pattern9_1
  db 96,$7D
  !f6
  !vibrato,0,30,70
  !g6
  !as6
  !d7
  !end

.pattern9_6
  db 96,$7D
  !c6
  !vibrato,0,35,65
  !d6
  !f6
  !a6
  !end

.pattern10_1
  db 6,$7D
  !cs7
  !c7
  !as6
  !c7
  !as6
  !g6
  !fs6
  !f6
  !d6
  !cs6
  !c6
  !as5
  !g5
  !as5
  !g5
  !f5
  !g5
  !as5
  !d6
  !f6
  !cs6
  !c6
  !as5
  !g5
  !f5
  !d5
  !f5
  !g5
  !f5
  !g5
  !as5
  !g5
  !as5
  !c6
  !as5
  !c6
  !d6
  !f6
  !fs6
  db 54
  !g6
  db 96
  !as6
  !end

.pattern10_6
  db 18
  !rest
  db 6,$7D
  !cs7
  !c7
  !as6
  !c7
  !as6
  !g6
  !fs6
  !f6
  !d6
  !cs6
  !c6
  !as5
  !g5
  !as5
  !g5
  !f5
  !g5
  !as5
  !d6
  !f6
  !cs6
  !c6
  !as5
  !g5
  !f5
  !d5
  !f5
  !g5
  !f5
  !g5
  !as5
  !g5
  !as5
  !c6
  !as5
  !c6
  !d6
  !f6
  !fs6
  db 36
  !g6
  db 96
  !f6
  !end

.pattern11_1
  db 48,$7D
  !g6
  !vibrato,0,25,60
  db 24
  !tie
  !vibrato,0,15,50
  !tie
  !endVibrato
  db 50
  !tie
  db 2
  !f6
  !e6
  !d6
  !c6
  !b5
  !a5
  !g5
  !f5
  !e5
  !d5
  db 2,$7B
  !c5
  db 2,$7A
  !b4
  db 2,$79
  !a4
  db 2,$78
  !g4
  db 2,$77
  !f4
  db 2,$76
  !e4
  db 2,$75
  !d4
  db 2,$74
  !c4
  db 2,$73
  !b3
  db 2,$7F
  !c4
  !d4
  !e4
  db 2,$7D
  !f4
  !g4
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  !g5
  !a5
  db 3
  !b5
  !c6
  db 4
  !d6
  db 4,$7B
  !e6
  db 4,$79
  !f6
  !vibrato,40,30,70
  db 6,$7D
  !fs6
  !f6
  db 12
  !d6
  db 6
  !cs6
  !c6
  db 12
  !as5
  db 6
  !g5
  !fs5
  !f5
  !d5
  !cs5
  !c5
  !as4
  db 12
  !g4
  db 6
  !g4
  !g4
  !g4
  db 12
  !g4
  db 6
  !g4
  db 12
  !g4
  db 6
  !g4
  !end

.pattern11_6
  db 48,$7D
  !c6
  !vibrato,0,25,55
  db 24
  !tie
  !vibrato,0,15,45
  !tie
  !endVibrato
  db 50
  !tie
  db 2
  !cs6
  !c6
  !as5
  !gs5
  !g5
  !f5
  !ds5
  !cs5
  !c5
  !as4
  db 2,$7B
  !gs4
  db 2,$7A
  !g4
  db 2,$79
  !f4
  db 2,$78
  !ds4
  db 2,$77
  !cs4
  db 2,$76
  !c4
  db 2,$75
  !as3
  db 2,$74
  !gs3
  db 2,$73
  !g3
  db 2,$7F
  !gs3
  !as3
  !b3
  db 2,$7D
  !cs4
  !ds4
  !f4
  !g4
  !gs4
  !as4
  !c5
  !cs5
  !ds5
  !f5
  db 3
  !g5
  !gs5
  db 4
  !a5
  db 4,$7B
  !as5
  db 4,$79
  !b5
  !vibrato,40,35,65
  db 6,$7D
  !cs6
  !c6
  db 12
  !a5
  db 6
  !gs5
  !g5
  db 12
  !f5
  db 6
  !d5
  !cs5
  !c5
  !a4
  !gs4
  !g4
  !f4
  db 12
  !d4
  db 6
  !d4
  !d4
  !d4
  db 12
  !d4
  db 6
  !d4
  db 12
  !d4
  db 6
  !d4
  !end

.subE7A9
  db 6,$6D
  !g5
  !g5
  !gs5
  !g5
  !g5
  !gs5
  !g5
  !g5
  !gs5
  !g5
  !g5
  !gs5
  !g5
  !gs5
  !g5
  !as5
  !g5
  !g5
  !gs5
  !g5
  !g5
  !gs5
  !g5
  !g5
  !gs5
  !g5
  !g5
  !gs5
  !g5
  !gs5
  !g5
  !as5
  !end

.subE7CC
  db 6,$6D
  !d5
  !d5
  !ds5
  !d5
  !d5
  !ds5
  !d5
  !d5
  !ds5
  !d5
  !d5
  !ds5
  !d5
  !ds5
  !d5
  !f5
  !d5
  !d5
  !ds5
  !d5
  !d5
  !ds5
  !d5
  !d5
  !ds5
  !d5
  !d5
  !ds5
  !d5
  !ds5
  !d5
  !f5
  !end

.subE7EF
  !g5
  !g5
  !gs5
  !g5
  !g5
  !gs5
  !g5
  !g5
  !gs5
  !g5
  !g5
  !gs5
  !g5
  !gs5
  !g5
  !as5
  !end

.subE800
  !instr,!instr18
  db 49,$7F
  !c4
  !instr,!instr11
  db 1
  !d4
  db 40
  !d4
  !instr,!instr18
  db 6
  !c4
  db 49
  !c4
  !instr,!instr11
  db 1
  !d4
  db 46
  !d4
  !instr,!instr18
  db 49
  !c4
  !instr,!instr11
  db 1
  !d4
  db 40
  !d4
  !instr,!instr18
  db 6
  !c4
  !end

.subE826
  !instr,!instr19
  db 24,$7D
  !c5
  db 24,$7F
  !c5
  !instr,!instr1A
  db 24,$7D
  !c5
  !instr,!instr19
  db 24,$7F
  !c5
  !end

.subE839
  !d5
  !d5
  !ds5
  !d5
  !d5
  !ds5
  !d5
  !d5
  !ds5
  !d5
  !d5
  !ds5
  !d5
  !ds5
  !d5
  !f5
  !end

.subE8F4
  !instr,!instr19
  db 12,$7D
  !c5
  db 12,$79
  !c5
  db 12,$7B
  !c5
  db 12,$79
  !c5
  !instr,!instr1A
  db 12,$7F
  !c5
  !instr,!instr19
  db 12,$79
  !c5
  db 12,$7B
  !c5
  db 12,$7F
  !c5
  !end

.subE84A
  !instr,!instr18
  db 12,$7F
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 6
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 6
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 5
  !d4
  !instr,!instr18
  db 12
  !c4
  db 6
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
  !instr,!instr18
  db 6
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 6
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 5
  !d4
  !instr,!instr18
  db 12
  !c4
  db 6
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !end

.subE8A4
  db 12,$6F
  !g2
  db 6,$6D
  !g2
  db 12
  !g2
  db 6,$6F
  !g2
  db 6,$6D
  !g2
  !g2
  db 12,$6F
  !g2
  db 6,$6D
  !g2
  !g2
  db 6,$6F
  !g2
  db 6,$6D
  !as2
  db 12
  !fs2
  !end

.subE8C3
  db 6,$7D
  !c5
  db 6,$79
  !c5
  db 6,$7B
  !c5
  db 6,$79
  !c5
  db 6,$7F
  !c5
  db 6,$79
  !c5
  db 6,$7B
  !c5
  db 6,$79
  !c5
  db 6,$7D
  !c5
  db 6,$79
  !c5
  db 6,$7B
  !c5
  db 6,$79
  !c5
  db 6,$7F
  !c5
  db 6,$79
  !c5
  db 6,$7B
  !c5
  db 6,$79
  !c5
  !end

.subE913
  !instr,!instr18
  db 12
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 6
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 6
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 5
  !d4
  !instr,!instr18
  db 12
  !c4
  db 6
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !end

.subE940
  !c6
  !c6
  !cs6
  !c6
  !c6
  !cs6
  !c6
  !c6
  !cs6
  !c6
  !c6
  !cs6
  !c6
  !cs6
  !c6
  !ds6
  !end

.subE951
  !volume,220
  !instr,!instr18
  db 12,$7F
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 6
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 6
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 5
  !d4
  !instr,!instr18
  db 12
  !c4
  db 6
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
  !instr,!instr18
  db 6
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !instr,!instr18
  db 6
  !c4
  !c4
  !instr,!instr11
  db 1
  !d4
  db 5
  !d4
  !instr,!instr18
  db 12
  !c4
  db 6
  !c4
  !instr,!instr11
  db 1
  !d4
  db 11
  !d4
  !end

.subE9AD
  db 12,$6F
  !c3
  db 6,$6D
  !c3
  db 12
  !c3
  db 6,$6F
  !c3
  db 6,$6D
  !c3
  !c3
  db 12,$6F
  !c3
  db 6,$6D
  !c3
  !c3
  db 6,$6F
  !c3
  db 6,$6D
  !ds3
  db 12
  !b2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
