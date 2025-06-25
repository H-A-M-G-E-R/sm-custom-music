asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr03 = $19
!instr04 = $1A
!instr05 = $1B
!instr06 = $1C
!instr07 = $1D
!instr08 = $1E
!instr09 = $1F
!instr0A = $20
!instr0B = $21

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FE,$70,$B8,$04,$FF
  db !instr01,$FF,$E0,$B8,$05,$3D
  db !instr02,$FF,$E0,$B8,$07,$03
  db !instr03,$FF,$F0,$B8,$02,$00
  db !instr04,$FF,$EC,$B8,$06,$5F
  db !instr05,$FF,$E0,$B8,$08,$02
  db !instr06,$FF,$F6,$B8,$01,$81
  db !instr07,$FF,$E0,$B8,$04,$96
  db !instr08,$FF,$E0,$B8,$03,$74
  db !instr09,$8F,$19,$B8,$03,$00
  db !instr0A,$FF,$F0,$B8,$07,$7F
  db !instr0B,$FF,$E7,$B8,$0E,$FF
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+369
  dw Sample01,Sample01+1773
  dw Sample02,Sample02+3636
  dw Sample03,Sample03+198
  dw Sample04,Sample04+1710
  dw Sample05,Sample05+1053
  dw Sample06,Sample06+648
  dw Sample07,Sample07+2979
  dw Sample08,Sample08+882
  dw Sample09,Sample09+225
  dw Sample0A,Sample0A+6435
  dw Sample0B,Sample0B+7920
endspcblock

spcblock $82F4-$6E00+!p_sampleData nspc ; sample data (overwrites sample 5 and above because the only sound effect that plays during the ending is the charged plasma + wave beam sound which uses samples 0 and 4)
  Sample00: incbin "Sample_4e4eabd94f1d721abc772633931c5756.brr"
  Sample01: incbin "Sample_f023e6c660ff8249116ec94187ed7b11.brr"
  Sample02: incbin "Sample_62b230ef8c50398151bf84ae47904ff2.brr"
  Sample03: incbin "Sample_8075ac6d2ef16475bfa46ecdab1656a7.brr"
  Sample04: incbin "Sample_38ba2694e7edcec2acd311489eec8f1c.brr"
  Sample05: incbin "Sample_e1308e6a6bdda4b8dbb04128e738f11a.brr"
  Sample06: incbin "Sample_f24de839c3d095cdfd620345acb249fc.brr"
  Sample07: incbin "Sample_362ca581eefedf2d88b66b2e8b960a4e.brr"
  Sample08: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample09: incbin "Sample_505e12daa82598571573216fa31be57e.brr"
  Sample0A: incbin "Sample_4a0c755c9567ad1789d21d858f57317e.brr"
  Sample0B: incbin "Sample_2406851465d6953f9c282882e3aab4c8.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, .pattern6_6, .pattern6_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !tempo,37
  !musicVolume,120
  !dynamicMusicVolume,200,250
  !instr,!instr0B
  !pan,17
  !volume,250
  !echo,%11111111,0,0
  !echoParameters,2,30,2
  !dynamicEcho,40,40,40
  !vibrato,12,43,40
  db 96,$7F
  !g2
  !tie
  !tie
  !dynamicTempo,96,4
  !tie
  !dynamicMusicVolume,18,80
  db 19
  !tie
  !end

.pattern0_1
  !instr,!instr04
  !volume,210
  !pan,18
  db 48,$7D
  !b4
  !g4
  !loop : dw .subDF6E : db 1
  db 96
  !g4
  db 19,$68
  !tie
  !end

.pattern0_2
  !instr,!instr03
  !volume,190
  !pan,15
  db 48
  !rest
  db 4,$75
  !g3
  db 4,$77
  !a3
  db 4,$78
  !b3
  db 4,$79
  !c4
  db 4,$7A
  !d4
  db 4,$7B
  !e4
  db 4,$7C
  !f4
  db 4,$7D
  !g4
  db 4,$7E
  !a4
  db 4,$7F
  !b4
  db 4,$7E
  !c5
  db 4,$7D
  !d5
  !dynamicVolume,90,120
  db 4,$7C
  !e5
  db 4,$7B
  !f5
  db 4,$7A
  !g5
  db 4,$79
  !a5
  db 4,$78
  !b5
  db 4,$77
  !c6
  db 4,$76
  !d6
  db 4,$75
  !e6
  db 4,$74
  !f6
  db 12,$72
  !g6
  db 4,$75
  !g3
  db 4,$77
  !a3
  db 4,$78
  !b3
  db 4,$79
  !c4
  db 4,$7A
  !d4
  db 4,$7B
  !e4
  db 4,$7C
  !f4
  db 4,$7D
  !g4
  db 4,$7E
  !a4
  db 4,$7F
  !b4
  db 4,$7E
  !c5
  db 4,$7D
  !d5
  !dynamicVolume,200,90
  db 4,$7C
  !e5
  db 4,$7B
  !f5
  db 4,$7A
  !g5
  db 4,$79
  !a5
  db 4,$78
  !b5
  db 4,$77
  !c6
  db 4,$76
  !d6
  db 4,$75
  !e6
  db 4,$74
  !f6
  db 12,$72
  !g6
  db 4,$75
  !g3
  db 4,$77
  !a3
  db 4,$78
  !b3
  db 4,$79
  !c4
  db 4,$7A
  !d4
  db 4,$7B
  !e4
  db 4,$7C
  !f4
  db 4,$7D
  !g4
  db 4,$7E
  !a4
  db 4,$7F
  !b4
  db 4,$7E
  !c5
  db 4,$7D
  !d5
  !instr,!instr01
  !volume,250
  !pan,5
  db 8,$75
  !f5
  !g5
  !a5
  !b5
  db 8,$79
  !c6
  db 8,$75
  !b5
  db 8,$79
  !d6
  db 8,$75
  !c6
  db 8,$79
  !e6
  db 8,$75
  !d6
  db 16,$79
  !f6
  db 19
  !tie
  !end

.pattern0_3
  !instr,!instr01
  !volume,250
  !pan,10
  db 8,$79
  !b3
  db 8,$75
  !a3
  !g3
  !a3
  !b3
  !c4
  !d4
  !e4
  db 8,$79
  !f4
  db 8,$75
  !e4
  !d4
  !e4
  !f4
  !g4
  !a4
  !b4
  db 8,$79
  !c5
  db 8,$75
  !b4
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  db 8,$79
  !g5
  db 8,$75
  !f5
  !e5
  !f5
  !g5
  !a5
  !b5
  !c6
  db 8,$79
  !d6
  db 8,$75
  !c6
  !b5
  !c6
  !d6
  !e6
  !f6
  !g6
  db 8,$79
  !a6
  db 8,$75
  !g6
  db 8,$79
  !b6
  db 8,$75
  !a6
  db 8,$79
  !c7
  db 8,$75
  !b6
  db 16,$79
  !d7
  db 19
  !tie
  !end

.pattern0_4
  !instr,!instr03
  !volume,140
  !pan,13
  db 4,$75
  !g3
  db 4,$77
  !a3
  db 4,$78
  !b3
  db 4,$79
  !c4
  db 4,$7A
  !d4
  db 4,$7B
  !e4
  db 4,$7C
  !f4
  db 4,$7D
  !g4
  db 4,$7E
  !a4
  db 4,$7F
  !b4
  db 4,$7E
  !c5
  db 4,$7D
  !d5
  db 4,$7C
  !e5
  db 4,$7B
  !f5
  db 4,$7A
  !g5
  db 4,$79
  !a5
  db 4,$78
  !b5
  db 4,$77
  !c6
  db 4,$76
  !d6
  db 4,$75
  !e6
  db 4,$74
  !f6
  db 12,$72
  !g6
  !dynamicVolume,90,120
  db 4,$75
  !g3
  db 4,$77
  !a3
  db 4,$78
  !b3
  db 4,$79
  !c4
  db 4,$7A
  !d4
  db 4,$7B
  !e4
  db 4,$7C
  !f4
  db 4,$7D
  !g4
  db 4,$7E
  !a4
  db 4,$7F
  !b4
  db 4,$7E
  !c5
  db 4,$7D
  !d5
  db 4,$7C
  !e5
  db 4,$7B
  !f5
  db 4,$7A
  !g5
  db 4,$79
  !a5
  db 4,$78
  !b5
  db 4,$77
  !c6
  db 4,$76
  !d6
  db 4,$75
  !e6
  db 4,$74
  !f6
  db 12,$72
  !g6
  !instr,!instr01
  !volume,250
  !pan,14
  db 8,$79
  !d4
  db 8,$75
  !c4
  !b3
  !c4
  !d4
  !e4
  !f4
  !g4
  db 8,$79
  !a4
  db 8,$75
  !g4
  !f4
  !g4
  !a4
  !b4
  !c5
  !d5
  db 8,$79
  !f5
  db 8,$75
  !e5
  db 8,$79
  !g5
  db 8,$75
  !f5
  db 8,$79
  !a5
  db 8,$75
  !g5
  db 16,$79
  !a5
  db 19
  !tie
  !end

.pattern0_5
  !instr,!instr01
  !volume,170
  !pan,8
  !vibrato,25,38,32
  db 96
  !rest
  db 96,$7F
  !d4
  db 96,$7D
  !b4
  !f5
  db 19
  !tie
  !end

.pattern0_6
  !instr,!instr01
  !volume,170
  !pan,6
  !vibrato,24,40,30
  db 48
  !rest
  db 48,$7F
  !b3
  !tie
  !f4
  !tie
  db 48,$7D
  !d5
  !tie
  !b5
  db 19
  !tie
  !end

.pattern0_7
  !instr,!instr04
  !volume,210
  !pan,2
  db 8
  !rest
  db 48,$7D
  !b4
  !g4
  !loop : dw .subDF6E : db 1
  db 88,$65
  !g4
  db 19
  !rest
  !end

.pattern1_0
  !tempo,15
  !musicVolume,140
  !dynamicMusicVolume,192,220
  !instr,!instr0A
  !pan,10
  !volume,240
  !echo,%11111111,40,40
  !echoParameters,2,30,2
  !endVibrato
  !transpose,244
  !loop : dw .subDD7C : db 1
  !end

.pattern1_1
  !instr,!instr0A
  !pan,10
  !volume,240
  !transpose,244
  !loop : dw .subDDC8 : db 1
  !end

.pattern1_2
  !instr,!instr00
  !transpose,0
  !pan,12
  !volume,250
  db 12
  !rest
  db 17,$6B
  !g3
  db 7
  !rest
  db 20,$6A
  !d4
  db 4
  !rest
  db 25,$67
  !g4
  db 11,$77
  !e5
  !loop : dw .subDE12 : db 1
  !end

.pattern1_3
  !instr,!instr00
  !transpose,0
  !pan,12
  !volume,250
  !loop : dw .subDE7C : db 1
  !end

.pattern1_4
  !instr,!instr00
  !transpose,0
  !pan,12
  !volume,250
  !loop : dw .subDEE8 : db 1
  db 96,$48
  !tie
  !end

.pattern1_5
  !instr,!instr0B
  !pan,6
  !volume,130
  !vibrato,24,38,30
  db 95
  !rest
  db 96
  !rest
  !rest
  !rest
  db 72,$7D
  !g3
  db 24
  !g4
  db 72
  !f4
  db 24
  !e4
  db 72
  !d4
  db 24
  !b3
  db 97,$6D
  !c4
  !end

.pattern1_6
  !instr,!instr0B
  !pan,9
  !volume,110
  !vibrato,24,40,30
  db 101
  !rest
  db 96
  !rest
  !rest
  !rest
  db 72,$7D
  !g3
  db 24
  !g4
  db 72
  !f4
  db 24
  !e4
  db 72
  !d4
  db 24
  !b3
  db 91,$6D
  !c4
  !end

.pattern2_0
  !musicVolume,220
  !dynamicMusicVolume,90,250
  !loop : dw .subDD7C : db 1
  !end

.pattern2_1
  !loop : dw .subDDC8 : db 1
  !end

.pattern2_2
  db 12
  !rest
  db 17,$67
  !g3
  db 7
  !rest
  db 20,$6A
  !d4
  db 4
  !rest
  db 25,$67
  !g4
  db 11,$77
  !e5
  !loop : dw .subDE12 : db 1
  !end

.pattern2_3
  !loop : dw .subDE7C : db 1
  !end

.pattern2_4
  !loop : dw .subDEE8 : db 1
  db 36
  !tie
  !instr,!instr01
  !volume,170
  db 8
  !a4
  db 8,$76
  !c5
  db 8,$7A
  !b4
  db 8,$78
  !d5
  db 8,$7A
  !f5
  !e5
  db 8,$7C
  !g5
  db 4,$7F
  !as5
  !end

.pattern2_5
  !volume,130
  db 47,$7D
  !g3
  db 24
  !c4
  !e4
  db 72
  !d4
  db 24
  !c4
  db 72
  !b3
  db 24
  !a3
  db 96,$6D
  !g3
  db 24,$7D
  !g3
  !g3
  db 48
  !e4
  db 72
  !d4
  db 24
  !c4
  !b3
  !d3
  db 48
  !g3
  !g3
  db 12
  !c4
  !c4
  !e4
  db 13
  !g4
  !end

.pattern2_6
  !volume,130
  db 71
  !rest
  db 24,$7D
  !g4
  !loop : dw .subDF5A : db 1
  !loop : dw .subDF63 : db 1
  db 24
  !f4
  db 72
  !a4
  db 24
  !g4
  !f4
  db 48
  !d4
  !e4
  db 12
  !g4
  !g4
  !c5
  db 13
  !e5
  !end

.pattern2_7
  !volume,170
  !instr,!instr01
  !pan,13
  !vibrato,10,40,38
  db 24,$79
  !e5
  db 36,$7A
  !g4
  db 12,$79
  !g4
  db 8,$7A
  !g4
  db 8,$7C
  !g4
  db 8,$7B
  !e5
  db 8,$7D
  !e5
  db 8,$7B
  !g5
  db 8,$7A
  !f5
  db 72,$6A
  !a4
  db 24,$7C
  !d5
  db 37,$79
  !f4
  db 11
  !f4
  db 9,$7A
  !f4
  db 7
  !f4
  db 8,$79
  !b4
  !d5
  db 7
  !e5
  db 9
  !c5
  db 72,$69
  !g4
  !volume,190
  db 24,$7A
  !e5
  db 36,$79
  !g4
  db 12
  !g4
  db 8
  !g4
  !g4
  !e5
  !e5
  !g5
  db 8,$77
  !f5
  db 72,$67
  !a4
  db 24,$77
  !a4
  db 36,$7B
  !b4
  db 12,$77
  !b4
  db 8,$78
  !b4
  db 8,$77
  !e5
  !d5
  db 32,$67
  !d5
  !volume,170
  db 8,$79
  !g4
  db 8,$75
  !b4
  db 8,$77
  !d5
  !c5
  db 8,$79
  !e5
  db 8,$7C
  !d5
  db 8,$7B
  !f5
  db 8,$7D
  !a5
  !end

.pattern3_0
  !tempo,15
  !musicVolume,180
  !dynamicMusicVolume,140,250
  !instr,!instr01
  !volume,230
  !vibrato,10,40,38
  !pan,11
  !transpose,0
  db 24,$7D
  !a5
  db 36,$7B
  !b4
  db 12,$77
  !b4
  db 8,$79
  !b4
  !b4
  db 8,$7B
  !a5
  !a5
  !b5
  !a5
  db 72,$67
  !g5
  db 24,$7D
  !f5
  db 36,$7B
  !a4
  db 12
  !a4
  db 8,$7D
  !a4
  db 8,$7B
  !a4
  db 8,$7D
  !f5
  !dynamicMusicVolume,90,200
  !f5
  db 8,$79
  !g5
  db 8,$7B
  !f5
  db 72,$6B
  !e5
  !dynamicMusicVolume,140,250
  !loop : dw .subDF10 : db 1
  db 12,$79
  !f5
  db 12,$6B
  !d5
  db 12,$7B
  !g5
  db 12,$6B
  !e5
  db 12,$7B
  !a5
  !dynamicTempo,24,12
  db 12,$6B
  !f5
  !dynamicMusicVolume,200,140
  db 12,$7B
  !c6
  db 12,$6B
  !a5
  !tempo,25
  db 24,$7D
  !b5
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  db 24,$68
  !tie
  !end

.pattern3_1
  !instr,!instr0B
  !volume,200
  !vibrato,10,43,38
  !pan,6
  !transpose,0
  db 47,$7D
  !f3
  db 48
  !g3
  !e3
  !a3
  !d3
  !g3
  db 96
  !c3
  db 48
  !f3
  !f3
  !e3
  !a3
  db 24,$6D
  !d3
  !e3
  !f3
  !fs3
  db 96,$7D
  !g3
  db 97
  !tie
  !end

.pattern3_2
  !instr,!instr02
  !volume,180
  !pan,12
  !vibrato,20,20,20
  !subtranspose,0
  db 10
  !rest
  db 12,$79
  !a4
  db 12,$5B
  !a4
  !a4
  !rest
  db 12,$5D
  !b4
  !b4
  !b4
  !rest
  db 12,$79
  !b4
  db 12,$5B
  !b4
  !b4
  !rest
  db 12,$5D
  !cs5
  !cs5
  !cs5
  !rest
  db 12,$79
  !c5
  db 12,$5B
  !c5
  !c5
  !rest
  db 12,$5D
  !b4
  !b4
  !b4
  !rest
  db 12,$79
  !b4
  db 12,$5B
  !b4
  !c5
  !d5
  db 12,$5D
  !e5
  !f5
  !g5
  !rest
  db 12,$79
  !a4
  db 12,$5B
  !a4
  !a4
  !rest
  db 12,$5D
  !b4
  !b4
  !b4
  !rest
  db 12,$79
  !b4
  db 12,$5B
  !b4
  !b4
  !rest
  db 12,$5D
  !cs5
  !cs5
  !cs5
  !rest
  db 12,$79
  !a4
  !rest
  db 12,$5B
  !b4
  !rest
  db 12,$5D
  !c5
  !rest
  !c5
  !rest
  db 86,$79
  !b4
  db 96
  !tie
  !end

.pattern3_3
  !instr,!instr02
  !volume,180
  !pan,13
  !vibrato,20,20,20
  !subtranspose,0
  db 10
  !rest
  db 12,$79
  !f4
  db 12,$5B
  !f4
  !f4
  !rest
  db 12,$5D
  !f4
  !f4
  !f4
  !rest
  db 12,$79
  !g4
  db 12,$5B
  !g4
  !g4
  !rest
  db 12,$5D
  !a4
  !a4
  !a4
  !rest
  db 12,$79
  !a4
  db 12,$5B
  !a4
  !a4
  !rest
  db 12,$5D
  !f4
  !f4
  !f4
  !rest
  db 12,$79
  !g4
  db 12,$5B
  !g4
  !a4
  !b4
  db 12,$5D
  !c5
  !d5
  !e5
  !rest
  db 12,$79
  !f4
  db 12,$5B
  !f4
  !f4
  !rest
  db 12,$5D
  !f4
  !f4
  !f4
  !rest
  db 12,$79
  !g4
  db 12,$5B
  !g4
  !g4
  !rest
  db 12,$5D
  !g4
  !g4
  !g4
  !rest
  db 12,$79
  !f4
  !rest
  db 12,$5B
  !g4
  !rest
  db 12,$5D
  !a4
  !rest
  !a4
  !rest
  db 86,$79
  !g4
  db 96
  !tie
  !end

.pattern3_4
  !instr,!instr03
  !pan,14
  !volume,220
  db 96
  !rest
  !rest
  !rest
  db 3,$77
  !c3
  !d3
  !e3
  !f3
  !g3
  !a3
  !as3
  !c4
  !d4
  !e4
  !f4
  !g4
  !a4
  !as4
  !c5
  !d5
  !e5
  !f5
  !g5
  !a5
  !as5
  !c6
  !d6
  !e6
  db 3,$75
  !f6
  !g6
  db 3,$73
  !a6
  !as6
  db 3,$72
  !c7
  !d7
  !e7
  !f7
  db 96
  !rest
  !rest
  !rest
  db 3,$75
  !g7
  !f7
  !e7
  !d7
  !c7
  !b6
  !a6
  !g6
  !d7
  !c7
  !b6
  !a6
  !g6
  !f6
  !e6
  !d6
  !a6
  !g6
  !f6
  !e6
  !d6
  !c6
  !b5
  !a5
  !f6
  !e6
  !d6
  !c6
  !b5
  !a5
  !g5
  !f5
  !d6
  !c6
  !b5
  !a5
  !g5
  !f5
  !e5
  !d5
  !b5
  !a5
  !g5
  !f5
  !e5
  !d5
  !c5
  !b4
  !e5
  !d5
  !c5
  !b4
  !a4
  !g4
  !f4
  !e4
  db 3,$73
  !d4
  !c4
  db 3,$72
  !b3
  !a3
  db 3,$71
  !g3
  !f3
  !e3
  !d3
  !end

.pattern3_5
  !instr,!instr01
  !volume,210
  !vibrato,10,43,38
  !pan,8
  db 22
  !rest
  db 12,$6B
  !d4
  !c4
  db 48
  !b3
  db 24
  !rest
  db 12
  !e4
  !d4
  db 48
  !cs4
  !rest
  !rest
  db 24
  !rest
  !g4
  !b4
  !d5
  !rest
  db 12
  !d4
  !c4
  db 48
  !b3
  db 24
  !rest
  db 12,$69
  !g4
  !as4
  db 48
  !a4
  db 24,$6B
  !a4
  !b4
  !c5
  !c5
  db 96,$79
  !f5
  db 98
  !tie
  !end

.pattern3_6
  !instr,!instr07
  !volume,250
  !pan,17
  db 96
  !rest
  !loop : dw .subDF29 : db 7
  db 72
  !rest
  db 12,$7F
  !g3
  !g3
  !end

.pattern3_7
  !instr,!instr01
  !volume,150
  !vibrato,10,40,38
  !pan,5
  db 4
  !rest
  db 24,$7D
  !a5
  db 36,$7B
  !b4
  db 12,$77
  !b4
  db 8,$79
  !b4
  !b4
  db 8,$7B
  !a5
  !a5
  !b5
  !a5
  db 72,$69
  !g5
  db 24,$7D
  !f5
  db 36,$7B
  !a4
  db 12
  !a4
  db 8,$7D
  !a4
  db 8,$7B
  !a4
  db 8,$7D
  !f5
  !f5
  db 8,$79
  !g5
  db 8,$7B
  !f5
  db 72,$6B
  !e5
  !loop : dw .subDF10 : db 1
  db 12,$79
  !f5
  db 12,$5B
  !d5
  db 12,$7B
  !g5
  db 12,$5B
  !e5
  db 12,$7B
  !a5
  db 12,$5B
  !f5
  db 12,$7B
  !c6
  db 12,$5B
  !a5
  db 48,$7D
  !b5
  !tie
  db 92,$68
  !tie
  !end

.pattern4_0
  !musicVolume,240
  !tempo,15
  !loop : dw .subDF7D : db 1
  !dynamicMusicVolume,180,160
  db 24
  !e5
  db 48,$6B
  !g4
  db 8,$78
  !f4
  db 8,$77
  !d5
  !b4
  db 24
  !d5
  db 72,$6B
  !c5
  !end

.pattern4_1
  !instr,!instr03
  !volume,180
  !pan,6
  db 24,$7D
  !c3
  db 48
  !c3
  db 24
  !g2
  !d3
  db 48
  !d3
  db 24
  !c3
  !loop : dw .subDFC9 : db 1
  !c3
  !c3
  db 48
  !as2
  db 24
  !a2
  !a2
  db 48
  !gs2
  db 24
  !g2
  !g2
  db 48
  !b2
  db 24
  !c3
  !c3
  db 8
  !c3
  !c3
  !c3
  !c3
  !c3
  !c3
  !end

.pattern4_2
  !instr,!instr05
  !volume,140
  !pan,9
  !vibrato,20,45,24
  !subtranspose,0
  db 24,$69
  !e5
  db 36,$6A
  !g4
  db 12,$69
  !g4
  db 8,$6A
  !g4
  db 8,$6C
  !g4
  db 8,$6B
  !e5
  db 8,$6D
  !e5
  db 8,$6B
  !g5
  db 8,$6A
  !f5
  db 72
  !a4
  db 24,$6C
  !d5
  db 37,$69
  !f4
  db 11
  !f4
  db 9,$6A
  !f4
  db 7
  !f4
  db 8,$69
  !b4
  !d5
  db 7
  !e5
  db 9
  !c5
  db 72
  !g4
  db 24,$6A
  !e5
  db 48,$69
  !g4
  db 8
  !e5
  !d5
  !e5
  db 24
  !f5
  db 48
  !a4
  db 8,$67
  !f5
  !e5
  !d5
  db 24
  !e5
  db 48,$6B
  !g4
  db 8,$68
  !f4
  db 8,$67
  !d5
  !b4
  db 24
  !d5
  db 72,$6B
  !c5
  !end

.pattern4_3
  !loop : dw .subDFD4 : db 1
  !e4
  !e4
  !e4
  !c5
  !c5
  !c5
  !g5
  !g5
  db 8,$79
  !g5
  !c6
  db 8,$77
  !c6
  !c6
  db 8,$7B
  !f4
  !f4
  !f4
  !c5
  !c5
  !c5
  !gs5
  !gs5
  db 8,$79
  !gs5
  !f6
  db 8,$77
  !f6
  !f6
  db 8,$7B
  !g4
  !g4
  !g4
  !e5
  !e5
  !e5
  !b5
  db 8,$79
  !b5
  !b5
  db 8,$77
  !f6
  db 8,$75
  !f6
  !f6
  db 8,$7B
  !e4
  !e4
  !e4
  !c5
  !c5
  !c5
  !g5
  db 8,$79
  !g5
  !g5
  db 8,$77
  !e6
  db 8,$75
  !e6
  db 8,$73
  !e6
  !end

.pattern4_4
  !loop : dw .subE013 : db 1
  !rest
  db 8
  !c4
  !g4
  !g4
  !g4
  !e5
  !e5
  !e5
  db 8,$79
  !as5
  !as5
  db 8,$77
  !as5
  !e6
  db 4
  !e6
  !rest
  db 8,$7B
  !c4
  !a4
  !a4
  !a4
  !f5
  !f5
  !f5
  !c6
  db 8,$79
  !c6
  !c6
  db 8,$77
  !gs6
  db 4
  !gs6
  !rest
  db 8,$7B
  !e4
  !c5
  !c5
  !c5
  !g5
  !g5
  !f5
  db 8,$79
  !d6
  !d6
  db 8,$77
  !d6
  db 8,$75
  !g6
  db 4,$73
  !g6
  !rest
  db 8,$7B
  !c4
  !g4
  !g4
  !g4
  !e5
  !e5
  !e5
  db 8,$79
  !c6
  !c6
  db 8,$77
  !c6
  db 8,$75
  !g6
  db 4,$73
  !g6
  !end

.pattern4_5
  !instr,!instr02
  !volume,120
  !pan,7
  !vibrato,10,45,40
  db 69,$7D
  !c4
  db 24
  !g4
  !loop : dw .subDF5A : db 1
  !loop : dw .subDF63 : db 1
  db 24
  !f4
  !a4
  db 48
  !gs4
  db 24
  !g4
  !f4
  db 48
  !d4
  db 99,$6D
  !e4
  !end

.pattern4_6
  !volume,200
  db 96,$7D
  !c4
  !rest
  !rest
  db 84
  !rest
  db 6
  !g3
  !g3
  db 96
  !c4
  !rest
  !rest
  !rest
  !end

.pattern4_7
  !instr,!instr05
  !volume,90
  !pan,14
  !vibrato,20,46,24
  db 6
  !rest
  db 24,$79
  !e5
  db 36,$7A
  !g4
  db 12,$79
  !g4
  db 8,$7A
  !g4
  db 8,$7C
  !g4
  db 8,$7B
  !e5
  db 8,$7D
  !e5
  db 8,$7B
  !g5
  db 8,$7A
  !f5
  db 72
  !a4
  db 24,$7C
  !d5
  db 37,$79
  !f4
  db 11
  !f4
  db 9,$7A
  !f4
  db 7
  !f4
  db 8,$79
  !b4
  !d5
  db 7
  !e5
  db 9
  !c5
  db 72
  !g4
  db 24,$7A
  !e5
  db 48,$79
  !g4
  db 8
  !e5
  !d5
  !e5
  db 24
  !f5
  db 48
  !a4
  db 8,$77
  !f5
  !e5
  !d5
  db 24
  !e5
  db 48,$7B
  !g4
  db 8,$78
  !f4
  db 8,$77
  !d5
  !b4
  db 24
  !d5
  db 66,$7B
  !c5
  !end

.pattern5_0
  !musicVolume,220
  !dynamicMusicVolume,90,240
  !pan,6
  db 96,$79
  !f3
  !dynamicMusicVolume,90,200
  !c3
  !dynamicMusicVolume,90,240
  !f3
  !dynamicMusicVolume,90,200
  !c3
  !dynamicMusicVolume,180,250
  db 48,$7D
  !a3
  db 48,$6D
  !gs3
  !loop : dw .subDF2B : db 1
  !dynamicTempo,80,10
  db 48,$7D
  !gs3
  db 48,$6D
  !as3
  !end

.pattern5_1
  !instr,!instr06
  !pan,12
  db 36,$7D
  !f4
  db 12
  !f4
  db 36
  !f4
  db 12
  !f4
  !rest
  !c4
  !c4
  !g4
  !g4
  !c5
  !c5
  !e5
  db 36
  !f4
  db 12
  !f4
  db 36
  !f4
  db 12
  !f4
  !rest
  !c4
  !c4
  !g4
  !g4
  !c5
  !c5
  !e5
  !instr,!instr0B
  db 47
  !a3
  db 48,$6D
  !gs3
  !loop : dw .subDF2B : db 1
  db 48,$7D
  !gs3
  db 49,$6D
  !as3
  !end

.pattern5_2
  !instr,!instr02
  !volume,200
  !pan,7
  !vibrato,10,40,30
  db 12
  !rest
  db 12,$1D
  !c5
  !c5
  !c5
  !c5
  !c5
  !f5
  !g5
  !loop : dw .subDF38 : db 1
  db 12,$7D
  !f5
  db 6
  !e5
  !d5
  db 72
  !e5
  !instr,!instr01
  !volume,200
  !pan,11
  db 12
  !rest
  db 12,$6D
  !c5
  !c5
  !c5
  !e5
  !e5
  !a5
  !b5
  !loop : dw .subDF49 : db 1
  !g6
  !f6
  !g6
  !f6
  !ds6
  !d6
  !ds6
  !d6
  !end

.pattern5_3
  !instr,!instr02
  !volume,200
  !pan,8
  !vibrato,10,40,32
  db 12
  !rest
  db 12,$1D
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !c5
  !c5
  db 96,$7D
  !g4
  db 12
  !rest
  db 12,$1D
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !c5
  db 12,$7D
  !c5
  db 6
  !g4
  !g4
  db 72
  !g4
  !instr,!instr01
  !volume,200
  !pan,10
  db 12
  !rest
  db 12,$6D
  !a4
  !a4
  !a4
  !c5
  !c5
  !e5
  !e5
  !rest
  !c5
  !c5
  !c5
  !e5
  !e5
  !e5
  !e5
  !a5
  !a5
  !a5
  !a5
  !g5
  !g5
  !g5
  !g5
  !c6
  !c6
  !c6
  !c6
  !as5
  !as5
  !as5
  !as5
  !end

.pattern5_4
  !instr,!instr05
  !volume,80
  !pan,18
  !vibrato,8,40,40
  db 96
  !rest
  db 12
  !rest
  db 6,$6B
  !e5
  !f5
  db 12
  !e5
  db 6
  !g5
  !a5
  db 12
  !g5
  db 6
  !e6
  !f6
  db 24
  !e6
  db 96
  !rest
  db 12
  !rest
  db 6
  !e5
  !f5
  db 12
  !e5
  db 6
  !g5
  !a5
  db 12
  !g5
  db 6
  !e6
  !f6
  db 24
  !e6
  !instr,!instr02
  !volume,200
  !pan,7
  !vibrato,10,40,30
  db 96
  !rest
  db 12
  !rest
  db 12,$6D
  !e4
  !e4
  !e4
  !a4
  !a4
  !b4
  !c5
  !e5
  !d5
  !e5
  !d5
  !c5
  !b4
  !c5
  !b4
  !g5
  !f5
  !g5
  !f5
  !ds5
  !d5
  !ds5
  !d5
  !end

.pattern5_5
  !instr,!instr08
  !volume,180
  !pan,12
  db 96
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  db 12
  !rest
  db 6,$6F
  !c6
  !c6
  db 12
  !c6
  db 6
  !c6
  !c6
  db 24
  !c6
  db 12
  !rest
  db 6
  !c6
  !c6
  db 12
  !rest
  db 6
  !c6
  !c6
  db 12
  !c6
  db 6
  !c6
  !c6
  db 12
  !c6
  db 6
  !c6
  !c6
  db 12
  !c6
  db 6
  !c6
  !c6
  !end

.pattern5_6
  !instr,!instr05
  !volume,60
  !pan,2
  !vibrato,8,40,40
  db 96
  !rest
  db 18
  !rest
  db 6,$7B
  !e5
  !f5
  db 12
  !e5
  db 6
  !g5
  !a5
  db 12
  !g5
  db 6
  !e6
  !f6
  db 24
  !e6
  db 96
  !rest
  db 12
  !rest
  db 6
  !e5
  !f5
  db 12
  !e5
  db 6
  !g5
  !a5
  db 12
  !g5
  db 6
  !e6
  !f6
  db 18
  !e6
  !instr,!instr07
  !volume,220
  !pan,17
  db 96
  !rest
  !rest
  !rest
  db 84
  !rest
  db 6,$7D
  !as3
  !as3
  !end

.pattern5_7
  !instr,!instr02
  !volume,100
  !pan,13
  !vibrato,10,40,30
  db 18
  !rest
  db 12,$1D
  !c5
  !c5
  !c5
  !c5
  !c5
  !f5
  !g5
  !loop : dw .subDF38 : db 1
  db 12,$7D
  !f5
  db 6
  !e5
  !d5
  db 66
  !e5
  !instr,!instr01
  !volume,140
  !pan,4
  db 18
  !rest
  db 12,$6D
  !c5
  !c5
  !c5
  !e5
  !e5
  !a5
  !b5
  !loop : dw .subDF49 : db 1
  !g6
  !f6
  !g6
  !f6
  !ds6
  !d6
  !ds6
  db 6
  !d6
  !end

.pattern6_0
  !musicTranspose,3
  !musicVolume,240
  !tempo,15
  !pan,9
  !volume,250
  !loop : dw .subDF7D : db 1
  !dynamicMusicVolume,180,160
  !dynamicTempo,250,10
  db 24
  !e5
  db 48,$6B
  !g4
  db 8,$78
  !f4
  db 8,$77
  !d5
  !b4
  db 24
  !d5
  db 24,$6B
  !c5
  !g5
  !f5
  !c5
  !as4
  !f5
  !ds5
  !as4
  !gs4
  !cs5
  !e5
  !dynamicMusicVolume,90,70
  db 96
  !gs5
  !end

.pattern6_1
  !instr,!instr0B
  !volume,180
  !pan,6
  db 24,$7D
  !c3
  db 72
  !c3
  db 24
  !d3
  db 48
  !d3
  db 24
  !c3
  !loop : dw .subDFC9 : db 1
  !c4
  !c4
  !as3
  !as3
  !a3
  !a3
  !gs3
  !gs3
  !g3
  !g3
  !b3
  !b3
  db 48
  !gs3
  !gs3
  !fs3
  !fs3
  !e3
  !e3
  db 96
  !e3
  !end

.pattern6_2
  !instr,!instr09
  !volume,120
  !pan,16
  !endVibrato
  db 24,$79
  !e7
  db 36,$6A
  !g6
  db 12,$69
  !g6
  db 8,$7A
  !g6
  db 8,$7C
  !g6
  db 8,$7B
  !e7
  db 8,$7D
  !e7
  db 8,$7B
  !g7
  db 8,$7A
  !f7
  db 72,$6A
  !a6
  db 24,$7C
  !d7
  db 37,$69
  !f6
  db 11
  !f6
  db 9,$7A
  !f6
  db 7
  !f6
  db 8,$79
  !b6
  !d7
  db 7
  !e7
  db 9
  !c7
  db 72,$69
  !g6
  !instr,!instr04
  !volume,250
  !pan,18
  db 24,$7A
  !e5
  db 72,$69
  !g4
  !loop : dw .subE05E : db 1
  db 48
  !gs5
  db 48,$67
  !gs5
  !end

.pattern6_3
  !loop : dw .subDFD4 : db 1
  !instr,!instr01
  db 6
  !rest
  !e4
  !e4
  !e4
  !g4
  !g4
  !c5
  !c5
  !e5
  !e5
  !g5
  !g5
  !c6
  !c6
  !e6
  !e6
  !rest
  !f4
  !f4
  !f4
  !a4
  !a4
  !d5
  !d5
  !f5
  !f5
  !a5
  !a5
  !d6
  !d6
  !f6
  !f6
  !rest
  !f4
  !f4
  !f4
  !b4
  !b4
  !d5
  !d5
  !f5
  !f5
  !b5
  !b5
  !d6
  !d6
  !f6
  !f6
  !rest
  !ds4
  !ds4
  !ds4
  !gs4
  !gs4
  !c5
  !c5
  !ds5
  !ds5
  !gs5
  !gs5
  !c6
  !c6
  !ds6
  !ds6
  db 96
  !cs4
  !b3
  !tie
  !end

.pattern6_4
  !loop : dw .subE013 : db 1
  !instr,!instr01
  db 6
  !rest
  !c4
  !c4
  !c4
  !e4
  !e4
  !g4
  !g4
  !c5
  !c5
  !e5
  !e5
  !g5
  !g5
  !c6
  !c6
  !rest
  !d4
  !d4
  !d4
  !f4
  !f4
  !a4
  !a4
  !d5
  !d5
  !f5
  !f5
  !a5
  !a5
  !d6
  !d6
  !rest
  !d4
  !d4
  !d4
  !f4
  !f4
  !b4
  !b4
  !d5
  !d5
  !f5
  !f5
  !b5
  !b5
  !d6
  !d6
  !rest
  !c4
  !c4
  !c4
  !ds4
  !ds4
  !gs4
  !gs4
  !c5
  !c5
  !ds5
  !ds5
  !gs5
  !gs5
  !c6
  !c6
  db 96
  !f4
  !ds4
  !tie
  !end

.pattern6_5
  !instr,!instr08
  !volume,180
  !pan,14
  !vibrato,10,45,40
  db 72,$7D
  !g4
  db 24
  !g4
  !loop : dw .subDF5A : db 1
  db 84,$6D
  !e4
  db 12
  !g3
  db 24
  !c4
  db 24,$7D
  !c4
  db 48
  !g4
  db 24
  !f4
  db 72
  !c4
  db 24
  !g4
  !f4
  db 48
  !d4
  db 96,$6D
  !c5
  !as4
  !gs4
  !tie
  !end

.pattern6_6
  db 96,$7D
  !c3
  db 48
  !d3
  db 4,$73
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  db 4,$75
  !d3
  db 4,$77
  !d3
  db 4,$79
  !d3
  db 4,$7B
  !d3
  db 4,$7D
  !d3
  db 48
  !b2
  db 4,$73
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  db 4,$75
  !g3
  !g3
  db 4,$77
  !g3
  db 4,$75
  !g3
  db 4,$7B
  !g3
  db 4,$7D
  !g3
  db 48
  !c3
  db 4,$73
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  db 4,$75
  !g3
  db 4,$77
  !g3
  db 4,$79
  !g3
  db 4,$7B
  !g3
  db 4,$7D
  !g3
  db 72
  !c3
  db 4,$73
  !c3
  db 4,$75
  !c3
  db 4,$77
  !c3
  db 4,$79
  !c3
  db 4,$7B
  !c3
  db 4,$7D
  !c3
  db 96
  !a3
  !g3
  !gs3
  !rest
  !rest
  !rest
  !end

.pattern6_7
  !instr,!instr02
  !volume,210
  !pan,8
  !vibrato,10,40,40
  db 24
  !rest
  db 24,$79
  !e5
  db 48,$7A
  !g4
  db 24
  !rest
  db 8,$7D
  !e5
  db 8,$7B
  !g5
  db 8,$7A
  !f5
  db 48
  !a4
  db 24
  !rest
  db 24,$7C
  !d5
  db 48,$69
  !f4
  db 24
  !rest
  db 8,$79
  !d5
  db 7
  !e5
  db 9
  !c5
  db 48,$69
  !g4
  !instr,!instr04
  !volume,200
  !pan,2
  !endVibrato
  db 4
  !rest
  db 24,$7A
  !e5
  db 72,$69
  !g4
  !loop : dw .subE05E : db 1
  db 48
  !gs5
  db 44,$67
  !gs5
  !end

.subDF6E
  db 24,$69
  !tie
  db 48,$79
  !b4
  db 24
  !g4
  db 48,$65
  !tie
  db 48,$75
  !b4
  !end

.subDD7C
  db 25
  !rest
  db 49,$6C
  !g5
  db 17,$3D
  !g5
  db 5,$7C
  !e6
  db 11,$1C
  !tie
  db 15,$4C
  !g6
  db 70,$6C
  !a5
  db 24
  !rest
  db 45,$5A
  !f5
  db 16,$3D
  !f5
  db 11,$3B
  !d6
  db 6
  !rest
  db 15,$4B
  !e6
  db 75,$6A
  !g5
  db 23
  !rest
  db 49,$5B
  !g5
  db 16,$3D
  !g5
  db 8,$6B
  !e6
  db 9
  !rest
  db 15,$4C
  !g6
  db 72,$6B
  !a5
  db 23
  !rest
  db 48,$5A
  !b5
  db 18,$4B
  !b5
  db 7,$7C
  !d6
  db 26,$4A
  !tie
  db 70,$6A
  !c6
  !end

.subDDC8
  db 61,$3A
  !e6
  db 22,$3C
  !g5
  db 13,$4E
  !g5
  db 2
  !rest
  db 16,$4D
  !e6
  db 76,$2C
  !f6
  db 2,$7D
  !d6
  db 58,$3A
  !tie
  db 20
  !f5
  db 15,$3C
  !f5
  db 3,$7C
  !d6
  db 14,$4A
  !tie
  db 80,$2A
  !c6
  db 2,$7E
  !e6
  db 60,$3A
  !tie
  db 20
  !g5
  db 15,$3B
  !g5
  db 1,$7C
  !e6
  db 16,$5B
  !tie
  db 79,$2B
  !f6
  db 1,$7B
  !a5
  db 60,$39
  !tie
  db 21
  !b5
  db 15,$5D
  !e6
  db 1
  !rest
  db 95,$2D
  !d6
  !end

.subDE12
  db 14,$68
  !tie
  db 10
  !rest
  db 25,$79
  !d4
  db 13,$6A
  !f4
  db 10
  !rest
  db 22,$67
  !e5
  db 2
  !rest
  db 11
  !rest
  db 23,$77
  !d4
  db 16,$57
  !a4
  db 9
  !rest
  db 23,$77
  !d5
  db 14
  !d5
  db 4,$68
  !tie
  db 18
  !rest
  db 25,$79
  !c4
  db 23,$69
  !e4
  db 17,$67
  !c5
  db 9
  !rest
  db 11
  !rest
  db 24,$79
  !g3
  db 23,$6A
  !d4
  db 10,$67
  !g4
  db 14
  !rest
  db 14,$77
  !e5
  db 18,$68
  !tie
  db 4
  !rest
  db 24,$77
  !d4
  db 24,$69
  !f4
  db 16,$6A
  !e5
  db 10
  !rest
  db 12
  !rest
  db 24,$77
  !d4
  db 24,$67
  !b4
  db 24,$77
  !a4
  db 12
  !d5
  db 25,$67
  !tie
  db 23,$77
  !c4
  db 26,$67
  !e4
  db 22
  !d4
  !end

.subDE7C
  db 25
  !rest
  db 24,$79
  !c4
  db 23,$67
  !e4
  db 24,$79
  !c5
  db 13,$6A
  !tie
  db 23,$7A
  !a3
  db 24,$6B
  !e4
  db 22,$67
  !a4
  db 2
  !rest
  db 12,$79
  !f5
  db 23,$67
  !tie
  db 23,$77
  !f4
  db 25,$67
  !b4
  db 2
  !rest
  db 23,$63
  !a4
  db 11
  !rest
  db 24,$77
  !g3
  db 23,$69
  !d4
  db 17
  !g4
  db 7
  !rest
  db 14,$6A
  !d5
  db 23
  !rest
  db 23,$75
  !c4
  db 25,$65
  !e4
  db 25,$77
  !c5
  db 11,$6C
  !tie
  db 24,$7C
  !a3
  db 24,$6A
  !e4
  db 25,$67
  !a4
  db 12,$79
  !f5
  db 25,$67
  !tie
  db 24
  !a4
  db 23,$77
  !f4
  db 24,$75
  !b4
  db 12,$67
  !tie
  db 25,$77
  !g3
  db 24,$65
  !d4
  !g4
  db 11,$77
  !e4
  !end

.subDEE8
  db 96,$6C
  !c3
  db 95,$6D
  !d3
  db 1,$7C
  !g3
  db 93,$6A
  !tie
  db 3,$7A
  !c3
  db 93,$5C
  !tie
  db 3,$7C
  !c3
  db 95,$5D
  !tie
  db 1,$7D
  !d3
  db 95,$5A
  !tie
  db 1,$7A
  !g3
  db 95,$5A
  !tie
  db 1,$7A
  !c3
  !end

.subDF5A
  db 72
  !f4
  db 24
  !a4
  db 72
  !g4
  db 24
  !f4
  !end

.subDF63
  db 96,$6D
  !e4
  db 24
  !rest
  db 24,$7D
  !c4
  db 48
  !g4
  !end

.subDF10
  db 24,$7B
  !a5
  db 36,$7D
  !b4
  db 12
  !b4
  db 8,$77
  !b4
  !b4
  !a5
  db 8,$7B
  !a5
  !b5
  !a5
  db 60,$7D
  !g5
  db 12,$6D
  !g5
  !end

.subDF29
  !rest
  !end

.subDF7D
  db 24,$79
  !e5
  db 36,$6A
  !g4
  db 12,$69
  !g4
  db 8,$7A
  !g4
  db 8,$7C
  !g4
  db 8,$7B
  !e5
  db 8,$7D
  !e5
  db 8,$7B
  !g5
  db 8,$7A
  !f5
  db 72,$6A
  !a4
  db 24,$7C
  !d5
  db 37,$69
  !f4
  db 11
  !f4
  db 9,$7A
  !f4
  db 7
  !f4
  db 8,$79
  !b4
  !d5
  db 7
  !e5
  db 9
  !c5
  db 72,$69
  !g4
  db 24,$7A
  !e5
  db 48,$69
  !g4
  db 8,$79
  !e5
  !d5
  !e5
  db 24
  !f5
  db 48,$69
  !a4
  db 8,$77
  !f5
  !e5
  !d5
  !end

.subDFC9
  !b2
  db 48
  !b2
  db 24
  !g2
  !c3
  db 48
  !c3
  db 24
  !g2
  !end

.subDFD4
  !instr,!instr00
  !volume,220
  !pan,12
  db 8,$7B
  !e4
  !e4
  !e4
  !c5
  !c5
  !c5
  !g5
  !g5
  !g5
  !e6
  !e6
  !e6
  !f4
  !f4
  !f4
  !c5
  !c5
  !c5
  !f5
  !f5
  !f5
  !c6
  !c6
  !c6
  !d4
  !d4
  !d4
  !g4
  !g4
  !g4
  !d5
  !d5
  !d5
  !g5
  !g5
  !g5
  !e4
  !e4
  !e4
  !c5
  !c5
  !c5
  !g5
  !g5
  !g5
  !e6
  !e6
  !e6
  !instr,!instr01
  !volume,180
  !pan,12
  !end

.subE013
  !instr,!instr00
  !volume,220
  !pan,12
  db 4
  !rest
  db 8,$7B
  !c4
  !g4
  !g4
  !g4
  !e5
  !e5
  !e5
  !c6
  !c6
  !c6
  !g6
  db 4
  !g6
  !rest
  db 8
  !d4
  !a4
  !a4
  !a4
  !e5
  !e5
  !e5
  !a5
  !a5
  !a5
  !e6
  db 4
  !e6
  !rest
  db 8
  !b3
  !f4
  !f4
  !f4
  !b4
  !b4
  !b4
  !f5
  !f5
  !f5
  !b5
  db 4
  !b5
  !rest
  db 8
  !c4
  !g4
  !g4
  !g4
  !e5
  !e5
  !e5
  !c6
  !c6
  !c6
  !g6
  db 4
  !g6
  !instr,!instr01
  !volume,180
  !pan,12
  !end

.subDF2B
  db 48,$7D
  !g3
  db 48,$6D
  !fs3
  db 48,$7D
  !f3
  db 48,$6D
  !g3
  !end

.subDF38
  db 12,$7D
  !e5
  db 84
  !tie
  db 12
  !rest
  db 12,$1D
  !c5
  !c5
  !c5
  !c5
  !c5
  !d5
  !f5
  !end

.subDF49
  !rest
  !e5
  !e5
  !e5
  !a5
  !a5
  !b5
  !c6
  !e6
  !d6
  !e6
  !d6
  !c6
  !b5
  !c6
  !b5
  !end

.subE05E
  db 24,$79
  !f5
  db 72,$69
  !a4
  db 24,$77
  !e5
  db 72,$6B
  !g4
  db 24,$77
  !d5
  db 72,$6B
  !c5
  db 24
  !c5
  db 72
  !as4
  db 24
  !as4
  db 72
  !gs4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
