asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr0A = $17
!instr0E = $18
!instr10 = $19
!instr12 = $1A
!instr13 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr0A,$FF,$E0,$B8,$03,$74
  db !instr0E,$8F,$19,$B8,$03,$00
  db !instr10,$8D,$E0,$B8,$03,$00
  db !instr12,$8B,$E0,$B8,$03,$00
  db !instr13,$FE,$F3,$B8,$04,$FF
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample0A,Sample0A+882
  dw Sample0E,Sample0E+225
  dw Sample10,Sample10+27
  dw Sample12,Sample12+27
  dw Sample13,Sample13+369
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample0A: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample0E: incbin "Sample_505e12daa82598571573216fa31be57e.brr"
  Sample10: incbin "Sample_57baebb26796008057e695fab7d3fd38.brr"
  Sample12: incbin "Sample_abbecaee7661b5cc7135b099e2035f4d.brr"
  Sample13: incbin "Sample_4e4eabd94f1d721abc772633931c5756.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern2_5, .pattern2_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern2_5, .pattern2_6, .pattern4_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,33
  !musicVolume,240
  !instr,!instr0A
  !pan,14
  !volume,220
  !vibrato,18,20,20
  db 24,$7B
  !g6
  !g6
  !g6
  !g6
  !end

.pattern0_1
  !instr,!instr0A
  !pan,12
  !volume,220
  !vibrato,18,25,20
  db 24,$7B
  !d6
  !d6
  !d6
  !d6
  !end

.pattern0_2
  !instr,!instr0A
  !pan,10
  !volume,220
  !vibrato,16,28,20
  db 24
  !rest
  db 24,$7C
  !e5
  !e5
  !e5
  !end

.pattern0_3
  !instr,!instr0A
  !pan,8
  !volume,220
  !vibrato,14,23,25
  db 24,$5D
  !g4
  db 24,$3D
  !c4
  !d4
  db 24,$7D
  !e4
  !end

.pattern0_4
  !instr,!instr12
  !pan,6
  !volume,120
  !vibrato,16,24,30
  db 24,$7F
  !as4
  !g4
  !a4
  !as4
  !end

.pattern0_5
  !instr,!instr0A
  !pan,7
  !volume,140
  !subtranspose,0
  !vibrato,14,23,30
  db 24,$5D
  !g5
  db 24,$7B
  !c5
  !d5
  !e5
  !end

.pattern0_6
  !instr,!instr12
  !pan,13
  !volume,120
  !vibrato,20,23,40
  db 24,$7F
  !f4
  !e4
  !f4
  !g4
  !end

.pattern1_0
  !instr,!instr0A
  !pan,11
  !volume,200
  !vibrato,18,20,20
  db 22,$5B
  !a5
  db 14,$19
  !gs5
  db 24,$69
  !a5
  db 12,$49
  !as5
  db 11,$19
  !b5
  db 13,$1A
  !c6
  !loop : dw .subD736 : db 1
  db 96,$58
  !tie
  !end

.pattern1_1
  !instr,!instr0A
  !pan,10
  !volume,250
  db 12,$4B
  !f3
  db 12,$26
  !f4
  db 12,$4C
  !c3
  db 12,$2B
  !f4
  db 12,$2A
  !f3
  !f4
  db 12,$2C
  !c3
  db 12,$2A
  !f4
  db 12,$2C
  !f3
  db 12,$2A
  !f4
  db 12,$2C
  !c3
  db 12,$2A
  !f4
  db 12,$2C
  !f3
  db 12,$2B
  !f4
  db 12,$3C
  !c3
  db 12,$2B
  !f4
  db 12,$2C
  !f3
  db 12,$2A
  !f4
  db 12,$3C
  !c3
  db 12,$2C
  !f4
  db 12,$2B
  !f3
  db 12,$2A
  !f4
  db 12,$4B
  !c3
  db 12,$2B
  !f4
  db 12,$3C
  !g3
  db 12,$2C
  !g4
  db 12,$3C
  !c3
  db 12,$2C
  !g4
  db 12,$2B
  !g3
  !g4
  db 12,$4B
  !c3
  db 12,$2C
  !g4
  !end

.pattern1_2
  !instr,!instr0A
  !pan,12
  !volume,240
  db 12
  !rest
  db 12,$2C
  !a4
  !rest
  db 12,$2B
  !a4
  !rest
  db 12,$2A
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  db 12,$2B
  !a4
  !rest
  !a4
  !rest
  db 12,$2A
  !a4
  !rest
  db 12,$2C
  !a4
  !rest
  db 12,$2A
  !a4
  !rest
  db 12,$2B
  !a4
  !rest
  db 12,$2C
  !as4
  !rest
  !as4
  !rest
  db 12,$2B
  !as4
  !rest
  db 12,$2C
  !as4
  !end

.pattern1_3
  !instr,!instr0E
  !pan,8
  !volume,200
  db 22,$5B
  !e6
  db 14,$19
  !ds6
  db 24,$69
  !e6
  db 12,$49
  !f6
  db 11,$19
  !fs6
  db 13,$1A
  !g6
  db 47,$6C
  !a6
  db 49,$5B
  !g6
  db 2
  !rest
  db 22,$5C
  !a6
  db 12,$1A
  !g6
  db 24,$5B
  !a6
  db 12,$4A
  !g6
  db 12,$39
  !e6
  db 11,$3A
  !c6
  db 1,$7B
  !b5
  db 24,$58
  !tie
  !instr,!instr13
  db 6,$7B
  !g4
  db 6,$7D
  !as4
  !d5
  db 6,$7F
  !e5
  !as4
  !d5
  !e5
  !g5
  !d5
  !e5
  !g5
  !as5
  !end

.pattern1_4
  !instr,!instr0A
  !pan,13
  !volume,180
  !vibrato,16,20,23
  db 23,$5B
  !c5
  db 13,$29
  !b4
  db 24,$69
  !c5
  db 12,$2B
  !cs5
  db 12,$39
  !d5
  db 12,$1A
  !e5
  db 48,$6C
  !f5
  db 48,$47
  !f5
  db 24,$5C
  !f5
  db 12,$4A
  !e5
  db 24,$2B
  !f5
  db 12,$4B
  !e5
  db 12,$59
  !c5
  db 12,$3A
  !b4
  db 96,$5A
  !as4
  !end

.pattern1_5
  !instr,!instr02
  !pan,7
  !volume,180
  !loop : dw .subD754 : db 3
  db 6,$7C
  !gs4
  db 6,$7B
  !gs4
  db 6,$35
  !gs4
  db 6,$7B
  !gs4
  db 6,$3F
  !c6
  db 6,$7B
  !gs4
  !gs4
  !gs4
  db 6,$3F
  !c6
  db 6,$7B
  !gs4
  db 6,$35
  !gs4
  db 6,$7B
  !gs4
  db 6,$3F
  !c6
  db 6,$7B
  !gs4
  db 6,$7C
  !gs4
  db 6,$7B
  !gs4
  !end

.pattern1_6
  !instr,!instr02
  !volume,180
  !pan,13
  db 36,$7F
  !e3
  db 12
  !e3
  db 36
  !e3
  db 12
  !e3
  !loop : dw .subD781 : db 2
  db 36
  !e3
  db 12
  !e3
  db 24
  !e3
  !e3
  !end

.pattern1_7
  !instr,!instr0A
  !pan,6
  !volume,140
  !subtranspose,0
  !vibrato,16,21,18
  db 4
  !rest
  db 22,$5B
  !a5
  db 14,$19
  !gs5
  db 24,$69
  !a5
  db 12,$49
  !as5
  db 11,$19
  !b5
  db 13,$1A
  !c6
  !loop : dw .subD736 : db 1
  db 92,$58
  !tie
  !end

.pattern2_0
  db 25,$6B
  !e5
  db 12,$58
  !ds5
  db 23,$2A
  !e5
  db 12,$7B
  !g5
  db 12,$49
  !as5
  db 12,$2A
  !d6
  !loop : dw .subD78A : db 1
  db 96,$59
  !a5
  !end

.pattern2_1
  db 12,$2B
  !g3
  db 12,$2C
  !g4
  db 12,$3C
  !c3
  db 12,$2B
  !g4
  db 12,$2C
  !g3
  db 12,$2B
  !g4
  db 12,$3B
  !c3
  db 12,$2B
  !g4
  !g3
  db 12,$2C
  !g4
  db 12,$3C
  !c3
  db 12,$2B
  !g4
  db 12,$2C
  !g3
  db 12,$2B
  !g4
  db 12,$3C
  !c3
  db 12,$2B
  !g4
  db 12,$2C
  !g3
  db 12,$2B
  !g4
  db 12,$3C
  !c3
  db 12,$2C
  !g4
  db 12,$3B
  !g3
  db 12,$2C
  !g4
  db 12,$4C
  !c3
  db 12,$2B
  !g4
  db 12,$2A
  !f3
  db 12,$2B
  !f4
  db 12,$4C
  !c3
  db 12,$2B
  !f4
  db 12,$2A
  !f3
  !f4
  db 12,$4B
  !c3
  db 12,$2B
  !f4
  !end

.pattern2_2
  db 12
  !rest
  db 12,$2C
  !as4
  !rest
  db 12,$2B
  !as4
  !rest
  !as4
  !rest
  !as4
  !rest
  db 12,$2C
  !as4
  !rest
  db 12,$2B
  !as4
  !rest
  !as4
  !rest
  !as4
  !rest
  !as4
  !rest
  db 12,$2C
  !as4
  !rest
  !as4
  !rest
  db 12,$2B
  !as4
  !rest
  !a4
  !rest
  !a4
  !rest
  db 12,$2A
  !a4
  !rest
  db 12,$2B
  !a4
  !end

.pattern2_3
  !instr,!instr0E
  db 25,$6B
  !b5
  db 12,$58
  !as5
  db 23,$2A
  !b5
  db 12,$7B
  !d6
  db 12,$49
  !f6
  db 12,$2A
  !a6
  db 50,$69
  !b6
  db 46,$4B
  !a6
  db 24,$6C
  !c7
  db 13,$1A
  !b6
  db 23,$3B
  !c7
  db 12,$7A
  !b6
  db 13,$49
  !a6
  db 11
  !g6
  db 24,$79
  !e6
  !instr,!instr13
  db 6,$7B
  !a4
  !c5
  db 6,$7D
  !d5
  !f5
  db 6,$7F
  !c5
  !d5
  !f5
  !a5
  !d5
  !f5
  !a5
  !c6
  !end

.pattern2_4
  db 24,$6B
  !g4
  db 12,$58
  !fs4
  db 24,$3A
  !g4
  db 12,$7B
  !as4
  db 12,$49
  !d5
  db 12,$3A
  !f5
  db 50,$69
  !g5
  db 46,$5B
  !f5
  db 24,$6C
  !as5
  db 13,$3A
  !as5
  db 23,$3B
  !as5
  db 12,$7A
  !g5
  db 13,$49
  !f5
  db 11
  !e5
  db 96,$59
  !c5
  !end

.pattern2_5
  !loop : dw .subD754 : db 3
  db 6,$7C
  !gs4
  db 6,$7B
  !gs4
  db 6,$35
  !gs4
  db 6,$7B
  !gs4
  db 6,$3F
  !c6
  db 6,$7B
  !gs4
  !gs4
  !gs4
  db 6,$3F
  !c6
  db 6,$7B
  !gs4
  db 6,$35
  !gs4
  db 6,$7B
  !gs4
  db 6,$3F
  !c6
  db 6,$7B
  !gs4
  db 6,$7C
  !gs4
  db 6,$7B
  !gs4
  !end

.pattern2_6
  db 36,$7F
  !e3
  db 12
  !e3
  db 36
  !e3
  db 12
  !e3
  !loop : dw .subD781 : db 2
  db 36
  !e3
  db 12
  !e3
  db 24
  !e3
  !e3
  !end

.pattern2_7
  db 4
  !rest
  db 25,$6B
  !e5
  db 12,$58
  !ds5
  db 23,$2A
  !e5
  db 12,$7B
  !g5
  db 12,$49
  !as5
  db 12,$2A
  !d6
  !loop : dw .subD78A : db 1
  db 92,$59
  !a5
  !end

.pattern3_0
  db 25,$5B
  !a5
  db 13,$38
  !gs5
  db 23,$1A
  !a5
  db 11,$58
  !as5
  db 12
  !b5
  db 12,$3A
  !c6
  db 48,$7B
  !d6
  db 47,$4A
  !c6
  db 1,$7B
  !f5
  db 11
  !tie
  db 13,$4A
  !a5
  db 11,$1A
  !c6
  db 25,$2B
  !f6
  db 13,$5C
  !a6
  db 23,$39
  !g6
  db 95,$5A
  !f6
  db 1,$7C
  !g6
  !end

.pattern3_1
  db 12,$2B
  !f3
  db 12,$2A
  !f4
  db 12,$4C
  !c3
  db 12,$2B
  !f4
  !f3
  !f4
  db 12,$3C
  !c3
  db 12,$2B
  !f4
  !f3
  !f4
  db 12,$4C
  !c3
  db 12,$2B
  !f4
  !f3
  !f4
  db 12,$4C
  !c3
  db 12,$2B
  !f4
  db 12,$3B
  !f3
  db 12,$2B
  !f4
  db 12,$4C
  !c3
  db 12,$2B
  !f4
  db 12,$3B
  !f3
  !f4
  db 12,$4B
  !c3
  db 12,$2B
  !f4
  db 12,$3B
  !as3
  db 12,$2A
  !as4
  db 12,$4B
  !f3
  db 12,$2B
  !as4
  db 12,$3B
  !as3
  db 12,$2B
  !as4
  db 12,$3A
  !f3
  db 12,$2B
  !as4
  !end

.pattern3_2
  db 12
  !rest
  db 12,$2A
  !a4
  !rest
  db 12,$2B
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  db 12,$3B
  !a4
  !rest
  db 12,$2B
  !a4
  !rest
  db 12,$2A
  !d5
  !rest
  db 12,$2B
  !d5
  !rest
  !d5
  !rest
  !d5
  !end

.pattern3_3
  !instr,!instr10
  !volume,200
  !pan,6
  !vibrato,16,20,23
  db 24,$5B
  !a6
  db 12,$58
  !gs6
  db 24,$1A
  !a6
  db 12,$3B
  !as6
  db 12,$58
  !b6
  db 12,$3A
  !c7
  db 47,$7B
  !d7
  db 49,$4A
  !c7
  db 12,$7B
  !f6
  db 12,$4A
  !a6
  db 11,$3A
  !c7
  db 25,$2B
  !f7
  db 13,$5C
  !a7
  db 23,$39
  !g7
  db 96,$5A
  !f7
  !end

.pattern3_4
  db 25,$5B
  !c5
  db 13,$38
  !b4
  db 23,$1A
  !c5
  db 11,$58
  !cs5
  db 12
  !d5
  db 12,$3A
  !e5
  db 47,$7B
  !f5
  db 48,$4A
  !f5
  db 1,$7B
  !a4
  db 11
  !tie
  db 13,$4A
  !c5
  db 11,$1A
  !f5
  db 25,$2B
  !a5
  db 13,$5C
  !c6
  db 23,$39
  !c6
  db 95,$5A
  !as5
  db 1,$70
  !b5
  !end

.pattern3_7
  !instr,!instr12
  !pan,17
  !volume,160
  !vibrato,18,20,21
  db 48,$7F
  !f4
  db 24
  !c4
  !a3
  db 36
  !f3
  db 12
  !e3
  !f3
  !a3
  !c4
  !e4
  db 48
  !f4
  db 24
  !c4
  !a3
  db 72
  !as3
  db 12
  !a3
  !as3
  !end

.pattern4_0
  db 24,$7B
  !tie
  db 13,$1B
  !f6
  db 24,$3B
  !g6
  db 12,$6C
  !f6
  db 11,$7A
  !g6
  db 11,$39
  !gs6
  db 1,$7B
  !a6
  db 23,$69
  !tie
  db 13,$49
  !gs6
  db 24,$2A
  !a6
  db 12,$7A
  !as6
  db 24,$2C
  !fs6
  db 24,$5B
  !a6
  db 13,$19
  !d6
  db 24,$3A
  !a6
  db 12,$19
  !d6
  db 23,$4B
  !g6
  db 66,$7B
  !f6
  db 30
  !rest
  !end

.pattern4_1
  db 12,$4C
  !b3
  db 12,$2B
  !b4
  db 12,$4A
  !f3
  db 12,$2C
  !b4
  db 12,$4C
  !b3
  db 12,$2C
  !b4
  db 12,$5B
  !f3
  db 12,$2C
  !b4
  db 12,$4C
  !c4
  db 12,$2C
  !c5
  db 12,$4C
  !f3
  db 12,$2C
  !c5
  db 12,$3B
  !d4
  db 12,$2B
  !d5
  db 12,$4C
  !fs4
  db 12,$27
  !d5
  db 12,$2A
  !g3
  db 12,$2C
  !as4
  db 12,$3C
  !d4
  db 12,$2C
  !as4
  db 12,$3C
  !c3
  db 12,$2C
  !g4
  db 12,$4C
  !g3
  db 12,$2C
  !g4
  db 12,$3B
  !f3
  db 12,$2B
  !f4
  db 12,$3C
  !c3
  db 12,$2C
  !f4
  db 12,$3B
  !f3
  db 12,$2B
  !f4
  db 12,$3C
  !c3
  db 5,$6C
  !f4
  db 7
  !rest
  !end

.pattern4_2
  db 12
  !rest
  db 12,$2B
  !d5
  !rest
  db 12,$2C
  !d5
  !rest
  !d5
  !rest
  !d5
  !rest
  !f5
  !rest
  !f5
  !rest
  db 12,$2B
  !a4
  !rest
  db 12,$27
  !a4
  !rest
  db 12,$2C
  !d5
  !rest
  !d5
  !rest
  !c5
  !rest
  !c5
  !rest
  db 12,$2B
  !a4
  !rest
  db 12,$2C
  !a4
  !rest
  db 12,$2B
  !a4
  !rest
  db 5,$6C
  !a4
  db 7
  !rest
  !end

.pattern4_3
  db 24,$78
  !g7
  db 13,$1B
  !f7
  db 24,$3B
  !g7
  db 12,$6C
  !f7
  db 11,$7A
  !g7
  db 11,$39
  !gs7
  db 1,$7B
  !a7
  db 23,$69
  !tie
  db 13,$49
  !gs7
  db 24,$2A
  !a7
  db 12,$7A
  !as7
  db 24,$2C
  !fs7
  db 24,$5B
  !a7
  db 13,$19
  !d7
  db 24,$3A
  !a7
  db 12,$19
  !d7
  db 23,$4B
  !g7
  db 66,$7B
  !f7
  db 30
  !rest
  !end

.pattern4_4
  db 24,$7B
  !b5
  db 13,$1B
  !a5
  db 24,$3B
  !b5
  db 12,$6C
  !a5
  db 11,$7A
  !b5
  db 11,$39
  !c6
  db 1,$7B
  !c6
  db 23,$69
  !tie
  db 13,$49
  !b5
  db 24,$2A
  !c6
  db 12,$7A
  !d6
  db 24,$2C
  !c6
  db 24,$5B
  !c6
  db 13,$19
  !as5
  db 24,$3A
  !c6
  db 12,$19
  !e5
  db 23,$4B
  !as5
  db 66,$7B
  !a5
  db 30
  !rest
  !end

.pattern4_7
  db 72,$7F
  !b3
  db 12
  !as3
  !b3
  db 36
  !c4
  db 12
  !cs4
  db 24
  !d4
  !a3
  db 36
  !as3
  db 12
  !g3
  db 24
  !c4
  !e3
  db 12
  !f3
  db 6
  !e3
  !d3
  db 12
  !c3
  db 6
  !d3
  !e3
  db 48
  !f3
  !end

.subD736
  db 47,$6C
  !d6
  db 49,$5B
  !c6
  db 2
  !rest
  db 22,$5C
  !d6
  db 12,$1A
  !c6
  db 24,$5B
  !d6
  db 12,$4A
  !c6
  db 12,$39
  !a5
  db 11,$3A
  !f5
  db 1,$7B
  !e5
  !end

.subD754
  db 6,$7C
  !gs4
  db 6,$7B
  !gs4
  db 6,$35
  !gs4
  db 6,$7B
  !gs4
  db 6,$3F
  !c6
  db 6,$7B
  !gs4
  !gs4
  !gs4
  db 6,$7C
  !gs4
  db 6,$7B
  !gs4
  db 6,$35
  !gs4
  db 6,$7B
  !gs4
  db 6,$3F
  !c6
  db 6,$7B
  !gs4
  db 6,$7C
  !gs4
  db 6,$7B
  !gs4
  !end

.subD781
  db 36
  !e3
  db 12
  !e3
  db 36
  !e3
  db 12
  !e3
  !end

.subD78A
  db 50,$69
  !e6
  db 46,$4B
  !d6
  db 24,$6C
  !f6
  db 13,$1A
  !e6
  db 23,$3B
  !f6
  db 12,$7A
  !e6
  db 13,$49
  !d6
  db 11
  !c6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
