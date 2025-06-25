asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr0E = $17
!instr1B = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr0E,$8F,$19,$B8,$03,$00
  db !instr1B,$FF,$E2,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample0E,Sample0E+225
  dw Sample1B,Sample1B+747
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample0E: incbin "Sample_505e12daa82598571573216fa31be57e.brr"
  Sample1B: incbin "Sample_eceaa6c5725e35a064be56984a36bd4a.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDC7F

TrackerDC7F:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, .pattern0_6, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, .pattern5_6, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, .pattern6_6, .pattern6_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,51
  !musicVolume,200
  !instr,!instr1B
  !pan,10
  !volume,200
  db 24,$79
  !g6
  db 12,$78
  !g6
  !g6
  db 24
  !g6
  !g6
  !f6
  !d6
  db 34
  !b5
  db 10,$48
  !b5
  !b5
  !b5
  !b5
  !b5
  !b5
  !b5
  !b5
  !b5
  !b5
  !b5
  !end

.pattern0_1
  !instr,!instr1B
  !volume,200
  !pan,12
  db 24,$79
  !g4
  db 12,$78
  !g4
  !g4
  db 24
  !g4
  !g4
  !a4
  !as4
  db 120
  !b4
  db 24
  !rest
  !end

.pattern0_2
  !instr,!instr1B
  !pan,8
  !volume,200
  db 24,$79
  !b5
  db 12,$78
  !b5
  !b5
  db 24
  !b5
  !b5
  !b5
  !b5
  db 34
  !g5
  db 10,$48
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !end

.pattern0_3
  !instr,!instr1B
  !pan,6
  !volume,200
  db 24,$79
  !g5
  db 12,$78
  !g5
  !g5
  db 24
  !g5
  !g5
  !g5
  !g5
  db 29
  !d5
  db 10,$48
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  db 15
  !d5
  !end

.pattern0_4
  !instr,!instr1B
  !pan,14
  !volume,200
  db 24,$79
  !d4
  db 12,$78
  !d4
  !d4
  db 24
  !d4
  !d4
  !e4
  !f4
  db 29
  !f5
  db 10,$48
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  db 15
  !f5
  !end

.pattern0_6
  !instr,!instr02
  !volume,220
  db 72
  !rest
  !rest
  db 24
  !rest
  db 8,$75
  !f6
  db 8,$79
  !f6
  db 8,$7B
  !f6
  db 8,$7D
  !f6
  db 8,$7F
  !f6
  db 8,$7D
  !f6
  db 8,$7C
  !f6
  db 8,$7B
  !f6
  db 8,$7A
  !f6
  db 8,$79
  !f6
  db 8,$78
  !f6
  db 8,$77
  !f6
  db 8,$76
  !f6
  db 8,$75
  !f6
  db 8,$74
  !f6
  !end

.pattern1_0
  !musicVolume,200
  !instr,!instr1B
  !pan,10
  !volume,220
  !tremolo,0,40,70
  db 70,$79
  !c7
  db 50,$78
  !b6
  db 24
  !c7
  !loop : dw .subE2F7 : db 1
  db 120,$77
  !f6
  db 24
  !rest
  !end

.pattern1_1
  !instr,!instr1B
  !volume,180
  !pan,14
  db 72,$4B
  !c4
  !g3
  !c4
  !g3
  !c4
  !g3
  !d4
  !a3
  !end

.pattern1_2
  !instr,!instr1B
  !volume,160
  !pan,8
  db 24
  !rest
  db 24,$4B
  !g5
  db 48
  !g5
  db 24
  !g5
  db 24,$7B
  !g5
  !loop : dw .subE312 : db 2
  db 24,$4B
  !tie
  !a5
  db 48
  !a5
  db 24
  !a5
  db 24,$7B
  !a5
  !end

.pattern1_3
  !instr,!instr1B
  !volume,160
  !pan,6
  db 24
  !rest
  db 24,$4B
  !e5
  db 48
  !e5
  db 24
  !e5
  db 24,$7B
  !e5
  !loop : dw .subE31E : db 2
  db 24,$4B
  !tie
  !f5
  db 48
  !f5
  db 24
  !f5
  db 24,$7B
  !f5
  !end

.pattern1_4
  !instr,!instr1B
  !pan,12
  !volume,180
  !tremolo,0,30,70
  db 70,$79
  !e6
  db 50,$78
  !e6
  db 24
  !e6
  db 72,$79
  !e6
  db 70,$49
  !e6
  db 2,$78
  !e6
  db 23
  !tie
  db 22,$76
  !e6
  db 25,$77
  !e6
  db 24,$79
  !e6
  db 25,$68
  !e6
  db 25,$78
  !c6
  db 72,$77
  !d6
  !rest
  !end

.pattern1_7
  !instr,!instr1B
  !pan,4
  !volume,140
  db 6
  !rest
  db 70,$79
  !c7
  db 50,$78
  !b6
  db 24
  !c7
  !loop : dw .subE2F7 : db 1
  db 72,$77
  !f6
  db 66
  !rest
  !end

.pattern2_0
  db 70,$7A
  !d7
  db 47,$79
  !c7
  db 24,$78
  !d7
  db 3,$79
  !c7
  !loop : dw .subE32A : db 1
  db 120
  !tie
  db 24
  !rest
  !end

.pattern2_1
  db 72,$4B
  !d4
  !a3
  !d4
  !a3
  !d4
  !a3
  !c4
  !g3
  !end

.pattern2_2
  !loop : dw .subE347 : db 3
  db 24,$4B
  !tie
  !g5
  db 48
  !g5
  db 24
  !g5
  db 24,$7B
  !g5
  !end

.pattern2_3
  !loop : dw .subE353 : db 2
  db 24,$4B
  !tie
  !f5
  db 48
  !f5
  db 24,$6B
  !f5
  db 24,$7B
  !f5
  db 24,$4B
  !tie
  !e5
  db 48
  !e5
  db 24
  !e5
  db 24,$7B
  !e5
  !end

.pattern2_4
  db 70,$79
  !f6
  db 50,$78
  !f6
  db 24
  !f6
  db 72,$79
  !f6
  db 70,$49
  !f6
  db 2,$78
  !f6
  db 23
  !tie
  db 22,$76
  !f6
  db 25,$77
  !f6
  db 24,$79
  !f6
  db 25,$68
  !f6
  db 25,$78
  !f6
  db 72,$77
  !g5
  !rest
  !end

.pattern2_6
  db 72
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !instr,!instr02
  !volume,220
  db 24
  !rest
  db 8,$75
  !f6
  db 8,$79
  !f6
  db 8,$7B
  !f6
  db 8,$7D
  !f6
  db 8,$7F
  !f6
  db 8,$7D
  !f6
  db 8,$7C
  !f6
  db 8,$7B
  !f6
  db 8,$7A
  !f6
  db 8,$79
  !f6
  db 8,$78
  !f6
  db 8,$77
  !f6
  db 8,$76
  !f6
  db 8,$75
  !f6
  db 8,$74
  !f6
  !end

.pattern2_7
  db 6
  !rest
  db 70,$7A
  !d7
  db 47,$79
  !c7
  db 24,$78
  !d7
  db 3,$79
  !c7
  !loop : dw .subE32A : db 1
  db 72,$58
  !tie
  db 66
  !rest
  !end

.pattern3_0
  db 69,$79
  !c7
  db 49
  !b6
  db 24
  !c7
  db 2
  !b6
  !loop : dw .subE35F : db 1
  db 120,$58
  !tie
  db 24
  !rest
  !end

.pattern3_1
  db 72,$4B
  !c4
  !g3
  !c4
  !g3
  !c4
  !e4
  !f4
  !c4
  !end

.pattern3_2
  db 24
  !rest
  db 24,$4B
  !g5
  db 48
  !g5
  db 24
  !g5
  db 24,$7B
  !g5
  !loop : dw .subE312 : db 2
  db 24,$4B
  !tie
  !a5
  db 48
  !a5
  db 24
  !a5
  db 24,$7B
  !a5
  !end

.pattern3_3
  db 24
  !rest
  db 24,$4B
  !e5
  db 48
  !e5
  db 24
  !e5
  db 24,$7B
  !e5
  !loop : dw .subE31E : db 2
  db 24,$4B
  !tie
  !f5
  db 48
  !f5
  db 24
  !f5
  db 24,$7B
  !f5
  !end

.pattern3_4
  db 70,$79
  !e6
  db 50,$78
  !e6
  db 24
  !e6
  db 72,$79
  !e6
  db 70,$49
  !c6
  db 2,$78
  !g5
  db 23
  !tie
  db 22,$76
  !a5
  db 25,$77
  !b5
  db 24,$79
  !e6
  db 25,$68
  !f6
  db 25,$78
  !g6
  db 72,$77
  !c6
  !rest
  !end

.pattern3_7
  db 6
  !rest
  db 69,$79
  !c7
  db 49
  !b6
  db 24
  !c7
  db 2
  !b6
  !loop : dw .subE35F : db 1
  db 72,$58
  !tie
  db 66
  !rest
  !end

.pattern4_0
  db 69,$7A
  !f7
  db 50,$77
  !e7
  db 23,$78
  !d7
  db 2,$77
  !e7
  !loop : dw .subE37A : db 1
  db 120,$58
  !tie
  db 24
  !rest
  !end

.pattern4_1
  db 72,$4B
  !f4
  !fs4
  !g4
  !a4
  !d4
  !g3
  !c4
  !g3
  !end

.pattern4_2
  db 24,$4B
  !tie
  !a5
  db 48
  !a5
  db 24
  !a5
  db 24,$7B
  !a5
  db 24,$4B
  !tie
  !g5
  db 48
  !g5
  db 24
  !a5
  db 24,$7B
  !a5
  db 24,$4B
  !tie
  !a5
  db 48
  !a5
  db 24
  !b5
  db 24,$7B
  !b5
  db 24,$4B
  !tie
  !c6
  db 48
  !c6
  db 24
  !c6
  db 24,$7B
  !c6
  !end

.pattern4_3
  db 24,$4B
  !tie
  !f5
  db 48
  !f5
  db 24
  !fs5
  db 24,$7B
  !fs5
  db 24,$4B
  !tie
  !e5
  db 48
  !e5
  db 24
  !e5
  db 24,$7B
  !e5
  db 24,$4B
  !tie
  !f5
  db 48
  !f5
  db 24
  !f5
  db 24,$7B
  !f5
  db 24,$4B
  !tie
  !e5
  db 48
  !e5
  db 24
  !e5
  db 24,$7B
  !e5
  !end

.pattern4_4
  db 69,$7A
  !a6
  db 50,$77
  !a6
  db 23,$78
  !a6
  db 2,$77
  !g6
  db 69
  !tie
  db 49,$59
  !c6
  db 22,$68
  !c6
  db 4,$79
  !d6
  db 46
  !tie
  db 23
  !f6
  db 47,$68
  !f6
  db 23,$76
  !g6
  db 5,$77
  !e6
  db 72,$58
  !tie
  !rest
  !end

.pattern4_6
  db 72
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  db 24
  !rest
  db 8,$75
  !f6
  db 8,$79
  !f6
  db 8,$7B
  !f6
  db 8,$7D
  !f6
  db 8,$7F
  !f6
  db 8,$7D
  !f6
  db 8,$7C
  !f6
  db 8,$7B
  !f6
  db 8,$7A
  !f6
  db 8,$79
  !f6
  db 8,$78
  !f6
  db 8,$77
  !f6
  db 8,$76
  !f6
  db 8,$75
  !f6
  db 8,$74
  !f6
  !end

.pattern4_7
  db 6
  !rest
  db 69,$7A
  !f7
  db 50,$77
  !e7
  db 23,$78
  !d7
  db 2,$77
  !e7
  !loop : dw .subE37A : db 1
  db 72,$58
  !tie
  db 66
  !rest
  !end

.pattern5_0
  db 12,$7D
  !a6
  db 12,$76
  !f6
  db 12,$78
  !a6
  db 12,$75
  !f6
  db 12,$76
  !a6
  db 13,$65
  !f6
  db 13,$74
  !a6
  db 13,$72
  !f6
  db 45,$79
  !c7
  !loop : dw .subE393 : db 1
  db 12,$7D
  !e6
  db 12,$75
  !c6
  db 11,$78
  !e6
  db 13,$66
  !c6
  db 10,$65
  !e6
  db 14,$76
  !c6
  db 9,$78
  !e6
  db 13
  !c6
  db 50,$69
  !g6
  !end

.pattern5_1
  db 72,$2B
  !f4
  !f4
  !e4
  !e4
  !d4
  !d4
  !c4
  !c4
  !end

.pattern5_2
  !loop : dw .subE3C7 : db 1
  !rest
  !e5
  !e5
  !rest
  !e5
  !e5
  !end

.pattern5_3
  !loop : dw .subE3DD : db 1
  !rest
  !c5
  !c5
  !rest
  !c5
  !c5
  !end

.pattern5_4
  db 12,$7D
  !c6
  !rest
  db 12,$78
  !c6
  !rest
  db 12,$76
  !c6
  db 13
  !rest
  !c6
  !rest
  db 45,$79
  !a6
  db 12,$7D
  !c6
  !rest
  db 12,$78
  !c6
  !rest
  db 12,$76
  !c6
  db 13
  !rest
  !c6
  !rest
  db 45,$79
  !g6
  db 12,$7D
  !b5
  !rest
  !b5
  !rest
  db 12,$76
  !b5
  db 13
  !rest
  !b5
  !rest
  db 45,$79
  !g5
  db 12,$7D
  !g5
  !rest
  db 12,$78
  !g5
  !rest
  db 12,$76
  !g5
  db 13
  !rest
  !g5
  !rest
  db 45,$79
  !e6
  !end

.pattern5_6
  !instr,!instr0E
  !volume,140
  !pan,16
  db 12,$7D
  !e7
  db 12,$76
  !c7
  db 12,$78
  !e7
  db 12,$75
  !c7
  db 12,$76
  !e7
  db 13,$65
  !c7
  db 13,$74
  !e7
  db 13,$72
  !c7
  db 45,$79
  !g7
  db 12,$7D
  !d7
  db 13,$76
  !b6
  db 12,$79
  !d7
  db 12,$76
  !b6
  db 11,$78
  !d7
  db 12,$76
  !b6
  db 11,$79
  !d7
  db 13,$77
  !b6
  db 48,$79
  !g7
  db 12,$7D
  !c7
  db 12,$78
  !a6
  !c7
  db 12,$77
  !a6
  db 11
  !c7
  db 11,$67
  !a6
  db 14,$38
  !c7
  db 12,$71
  !a6
  db 48,$79
  !fs7
  db 12,$7D
  !b6
  db 12,$75
  !g6
  db 11,$78
  !b6
  db 13,$66
  !g6
  db 10,$65
  !b6
  db 14,$76
  !g6
  db 9,$78
  !b6
  db 13
  !g6
  db 50,$69
  !d7
  !end

.pattern5_7
  db 6
  !rest
  db 12,$7D
  !a6
  db 12,$76
  !f6
  db 12,$78
  !a6
  db 12,$75
  !f6
  db 12,$76
  !a6
  db 13,$65
  !f6
  db 13,$74
  !a6
  db 13,$72
  !f6
  db 45,$79
  !c7
  !loop : dw .subE393 : db 1
  db 12,$7D
  !e6
  db 12,$75
  !c6
  db 11,$78
  !e6
  db 13,$66
  !c6
  db 10,$65
  !e6
  db 14,$76
  !c6
  db 9,$78
  !e6
  db 13
  !c6
  db 44,$69
  !g6
  !end

.pattern6_0
  db 12,$78
  !a6
  db 13
  !f6
  db 10,$77
  !a6
  db 14
  !f6
  db 10,$78
  !a6
  db 14,$67
  !f6
  db 9,$78
  !a6
  db 15,$68
  !f6
  db 47,$79
  !c7
  !loop : dw .subE3F3 : db 1
  db 120
  !tie
  db 24
  !rest
  !end

.pattern6_1
  db 72,$2B
  !f4
  !f4
  !e4
  !a4
  !d4
  !g4
  !c4
  !c4
  !end

.pattern6_2
  !loop : dw .subE3C7 : db 1
  !rest
  !e5
  !e5
  db 72
  !e5
  !end

.pattern6_3
  !loop : dw .subE3DD : db 1
  !rest
  !c5
  !c5
  db 72
  !c5
  !end

.pattern6_4
  db 12,$7D
  !c6
  !rest
  db 12,$78
  !c6
  !rest
  db 12,$76
  !c6
  db 13
  !rest
  !c6
  !rest
  db 45,$79
  !a6
  db 12,$7D
  !c6
  !rest
  db 12,$78
  !c6
  !rest
  db 12,$76
  !c6
  db 13
  !rest
  !c6
  !rest
  db 33,$79
  !cs7
  db 12
  !cs7
  db 24,$7D
  !a6
  !a6
  !a6
  !f6
  !f6
  !f6
  db 120
  !e6
  db 24
  !rest
  !end

.pattern6_6
  db 12,$78
  !e7
  db 13
  !c7
  db 10,$77
  !e7
  db 14
  !c7
  db 10,$78
  !e7
  db 14,$67
  !c7
  db 9,$78
  !e7
  db 15,$68
  !c7
  db 47,$79
  !g7
  db 12,$78
  !d7
  db 12,$74
  !b6
  db 11,$78
  !d7
  db 13,$76
  !b6
  db 10
  !d7
  db 13,$67
  !b6
  db 11,$78
  !d7
  db 12,$67
  !b6
  db 38,$7A
  !b7
  db 12
  !b7
  db 22
  !b7
  db 26,$77
  !a7
  db 24,$76
  !g7
  db 26,$79
  !e7
  db 21,$67
  !fs7
  db 22,$79
  !a7
  db 3
  !g7
  db 120
  !tie
  db 24
  !rest
  !end

.pattern6_7
  db 6
  !rest
  db 12,$78
  !a6
  db 13
  !f6
  db 10,$77
  !a6
  db 14
  !f6
  db 10,$78
  !a6
  db 14,$67
  !f6
  db 9,$78
  !a6
  db 15,$68
  !f6
  db 47,$79
  !c7
  !loop : dw .subE3F3 : db 1
  db 120
  !tie
  db 18
  !rest
  !end

.subE2F7
  db 72,$79
  !b6
  db 70,$49
  !g6
  db 2,$78
  !b6
  db 23
  !tie
  db 22,$76
  !a6
  db 25,$77
  !b6
  db 24,$79
  !a6
  db 25,$68
  !g6
  db 25,$78
  !e6
  !end

.subE312
  db 24,$4B
  !tie
  !g5
  db 48
  !g5
  db 24
  !g5
  db 24,$7B
  !g5
  !end

.subE31E
  db 24,$4B
  !tie
  !e5
  db 48
  !e5
  db 24
  !e5
  db 24,$7B
  !e5
  !end

.subE32A
  db 68
  !tie
  db 73,$48
  !b6
  db 3,$7A
  !d7
  db 23
  !tie
  db 23,$78
  !c7
  db 24,$79
  !d7
  db 23,$78
  !c7
  db 23,$68
  !b6
  db 22,$78
  !a6
  db 6,$79
  !e6
  !end

.subE347
  db 24,$4B
  !tie
  !a5
  db 48
  !a5
  db 24
  !a5
  db 24,$7B
  !a5
  !end

.subE353
  db 24,$4B
  !tie
  !f5
  db 48
  !f5
  db 24
  !f5
  db 24,$7B
  !f5
  !end

.subE35F
  db 69
  !tie
  db 74,$59
  !g6
  db 1,$7A
  !e6
  db 22
  !tie
  db 25,$68
  !f6
  db 24,$78
  !g6
  db 23,$79
  !c7
  db 25
  !d7
  db 23,$78
  !e7
  db 2
  !a6
  !end

.subE37A
  db 69
  !tie
  db 49,$59
  !g6
  db 22,$68
  !gs6
  db 4,$79
  !a6
  db 46
  !tie
  db 23
  !c7
  db 47,$68
  !b6
  db 23,$76
  !e7
  db 5,$77
  !c7
  !end

.subE393
  db 12,$7D
  !g6
  db 13,$76
  !e6
  db 12,$79
  !g6
  db 12,$76
  !e6
  db 11,$78
  !g6
  db 12,$76
  !e6
  db 11,$79
  !g6
  db 13,$77
  !e6
  db 48,$79
  !c7
  db 12,$7D
  !f6
  db 12,$78
  !d6
  !f6
  db 12,$77
  !d6
  db 11
  !f6
  db 11,$67
  !d6
  db 14,$38
  !f6
  db 12,$71
  !d6
  db 48,$79
  !b6
  !end

.subE3C7
  db 24
  !rest
  db 24,$4B
  !a5
  !a5
  !rest
  !a5
  !a5
  !rest
  !g5
  !g5
  !rest
  !g5
  !g5
  !rest
  !f5
  !f5
  !rest
  !f5
  !f5
  !end

.subE3DD
  db 24
  !rest
  db 24,$4B
  !f5
  !f5
  !rest
  !f5
  !f5
  !rest
  !e5
  !e5
  !rest
  !e5
  !e5
  !rest
  !d5
  !d5
  !rest
  !d5
  !d5
  !end

.subE3F3
  db 12,$78
  !g6
  db 12,$74
  !e6
  db 11,$78
  !g6
  db 13,$76
  !e6
  db 10
  !g6
  db 13,$67
  !e6
  db 11,$78
  !g6
  db 12,$67
  !e6
  db 38,$7A
  !e7
  db 12
  !e7
  db 22
  !e7
  db 26,$77
  !d7
  db 24,$76
  !c7
  db 26,$79
  !a6
  db 21,$67
  !b6
  db 22,$79
  !d7
  db 3
  !c7
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
