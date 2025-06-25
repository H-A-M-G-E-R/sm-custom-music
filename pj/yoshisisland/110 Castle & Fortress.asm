asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr0E = $17
!instr10 = $18
!instr18 = $19
!instr1B = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr0E,$8F,$19,$B8,$03,$00
  db !instr10,$8D,$E0,$B8,$03,$00
  db !instr18,$FF,$F6,$B8,$01,$81
  db !instr1B,$FF,$E0,$B8,$05,$3D
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample0E,Sample0E+225
  dw Sample10,Sample10+27
  dw Sample18,Sample18+648
  dw Sample1B,Sample1B+1773
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample0E: incbin "Sample_505e12daa82598571573216fa31be57e.brr"
  Sample10: incbin "Sample_57baebb26796008057e695fab7d3fd38.brr"
  Sample18: incbin "Sample_f24de839c3d095cdfd620345acb249fc.brr"
  Sample1B: incbin "Sample_f023e6c660ff8249116ec94187ed7b11.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDC7F

TrackerDC7F:
  dw .pattern0
  dw .pattern1
  dw .pattern1
-
  dw .pattern2
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, 0, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, 0, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, 0, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, 0, 0, 0, 0, 0
.pattern6: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern6_3, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,220
  !tempo,25
  !echo,%11111111,0,0
  !echoParameters,2,30,2
  !dynamicEcho,40,10,10
  !instr,!instr1B
  !volume,80
  !dynamicVolume,150,230
  !vibrato,0,80,90
  !pan,6
  db 96,$7D
  !c3
  !tie
  !tie
  !dynamicVolume,150,100
  !tie
  !tie
  !end

.pattern0_1
  !instr,!instr1B
  !volume,80
  !dynamicVolume,150,230
  !vibrato,20,40,50
  !pan,14
  db 96,$7D
  !c3
  !tie
  !tie
  !dynamicVolume,150,100
  !tie
  !tie
  !end

.pattern0_3
  !instr,!instr10
  !pan,10
  !volume,240
  !vibrato,20,24,30
  db 20
  !rest
  db 30,$68
  !c5
  db 5,$79
  !cs5
  db 9,$38
  !ds5
  db 9,$57
  !c5
  db 10,$37
  !cs5
  db 9,$38
  !e5
  db 4,$75
  !g5
  !loop : dw .subE109 : db 1
  db 96,$68
  !c5
  !end

.pattern0_4
  !instr,!instr10
  !pan,17
  !volume,170
  !vibrato,15,24,30
  db 26
  !rest
  db 30,$68
  !c5
  db 5,$79
  !cs5
  db 9,$38
  !ds5
  db 9,$57
  !c5
  db 10,$37
  !cs5
  db 9,$38
  !e5
  db 4,$75
  !g5
  !loop : dw .subE109 : db 1
  db 90,$68
  !c5
  !end

.pattern0_5
  !instr,!instr02
  !pan,14
  !volume,60
  !dynamicVolume,120,200
  db 40
  !rest
  db 3,$3D
  !g5
  !g5
  !g5
  db 6,$5D
  !g5
  !d5
  !g5
  db 8
  !d5
  db 10
  !g5
  db 11
  !g5
  db 14
  !g5
  db 18
  !d5
  db 20
  !g5
  db 24
  !g5
  db 8
  !d5
  db 4
  !g5
  db 8
  !g5
  db 96
  !rest
  db 18
  !rest
  db 8
  !d5
  db 8,$5F
  !g5
  db 6,$5D
  !d5
  db 6,$5F
  !g5
  !g5
  !g5
  db 6,$5D
  !d5
  db 6,$5F
  !g5
  !g5
  !g5
  db 6,$5D
  !d5
  db 8,$5F
  !g5
  !g5
  db 16
  !g5
  db 72
  !rest
  !end

.pattern1_0
  !musicVolume,180
  !dynamicMusicVolume,144,230
  !tempo,35
  !echo,%11111111,0,0
  !echoParameters,2,30,2
  !dynamicEcho,96,40,40
  !instr,!instr1B
  !volume,240
  !vibrato,24,28,24
  !pan,6
  db 72,$7D
  !c3
  db 72,$6D
  !d3
  !dynamicMusicVolume,144,180
  db 72,$7D
  !ds3
  db 72,$6D
  !d3
  !end

.pattern1_1
  !loop : dw .subE156 : db 1
  !rest
  db 49,$5B
  !a4
  !end

.pattern1_2
  !loop : dw .subE17F : db 1
  !end

.pattern1_4
  !instr,!instr1B
  !volume,170
  !vibrato,21,28,24
  !pan,8
  db 33
  !rest
  db 26,$1B
  !g4
  db 23
  !g4
  !loop : dw .subE20B : db 1
  !rest
  db 39,$5B
  !a4
  !end

.pattern2_0
  !instr,!instr1B
  !volume,240
  !vibrato,24,28,24
  !pan,6
  db 72,$7D
  !c3
  db 72,$6D
  !d3
  !dynamicMusicVolume,144,180
  db 72,$7D
  !ds3
  db 72,$6D
  !d3
  !dynamicMusicVolume,144,240
  db 72,$7D
  !f3
  db 72,$6D
  !g3
  !dynamicMusicVolume,144,180
  db 72,$7D
  !gs3
  db 72,$6D
  !g3
  !end

.pattern2_1
  !loop : dw .subE156 : db 1
  !rest
  db 49,$5B
  !a4
  db 23
  !rest
  db 26,$1B
  !c5
  db 23
  !c5
  !loop : dw .subE173 : db 1
  !rest
  db 49,$5B
  !f5
  !end

.pattern2_2
  !loop : dw .subE17F : db 1
  db 23
  !rest
  db 26,$1B
  !gs4
  db 23
  !gs4
  !loop : dw .subE1A0 : db 1
  !rest
  db 49,$5D
  !b4
  !end

.pattern2_3
  !instr,!instr1B
  !volume,240
  !vibrato,18,30,24
  !pan,10
  db 23,$7D
  !c5
  db 26,$1D
  !ds5
  db 23
  !g5
  !loop : dw .subE1AC : db 1
  db 23,$7D
  !c6
  db 25,$1D
  !b5
  db 24
  !rest
  !end

.pattern2_4
  !instr,!instr1B
  !volume,170
  !vibrato,14,31,24
  !pan,8
  db 10
  !rest
  db 23,$7D
  !c5
  db 26,$1D
  !ds5
  db 23
  !g5
  !loop : dw .subE1AC : db 1
  db 23,$7D
  !c6
  db 25,$1D
  !b5
  db 14
  !rest
  !end

.pattern3_0
  !instr,!instr1B
  !volume,240
  !vibrato,24,28,24
  !pan,6
  db 72,$7D
  !gs3
  db 72,$6D
  !g3
  !dynamicMusicVolume,144,180
  db 72,$7D
  !gs3
  db 72,$6D
  !g3
  !dynamicMusicVolume,144,240
  db 72,$7D
  !gs3
  db 72,$6D
  !g3
  !dynamicMusicVolume,144,180
  db 72,$7D
  !gs3
  !g3
  !tie
  !end

.pattern3_1
  !instr,!instr1B
  !volume,240
  !vibrato,21,28,24
  !pan,12
  !loop : dw .subE217 : db 1
  !rest
  db 49,$5B
  !d5
  !loop : dw .subE217 : db 1
  !rest
  db 49,$7B
  !d5
  db 72
  !tie
  !end

.pattern3_2
  !instr,!instr18
  !volume,200
  !pan,10
  db 72
  !rest
  db 12,$5D
  !g4
  !d5
  !d5
  !g5
  !g5
  !d6
  db 72
  !tie
  db 12
  !g4
  !d5
  !d5
  !g5
  !g5
  !d6
  db 72
  !tie
  db 12
  !b4
  !f5
  !f5
  !b5
  !b5
  !f6
  db 72
  !tie
  db 12
  !d5
  !b5
  !b5
  !b5
  !d6
  db 12,$7D
  !d6
  db 24,$4D
  !b7
  db 18
  !gs6
  db 15
  !f6
  !d6
  !end

.pattern3_3
  !instr,!instr10
  !volume,240
  !vibrato,24,30,24
  !pan,9
  db 36,$7D
  !c6
  db 12,$6D
  !gs5
  db 12,$7D
  !fs5
  db 12,$1D
  !gs5
  db 72,$7D
  !g5
  !loop : dw .subE22A : db 1
  db 36
  !f6
  db 12,$6D
  !d6
  db 12,$7D
  !c6
  db 12,$1D
  !d6
  db 72,$7D
  !b5
  db 36
  !gs6
  db 12,$6D
  !f6
  db 12,$7D
  !ds6
  db 12,$1D
  !f6
  db 24,$7D
  !d6
  db 48
  !b6
  db 72
  !tie
  !end

.pattern3_4
  !instr,!instr10
  !volume,170
  !vibrato,14,31,24
  !pan,5
  db 10
  !rest
  db 36,$7D
  !c6
  db 12,$6D
  !gs5
  db 12,$7D
  !fs5
  db 12,$1D
  !gs5
  db 72,$7D
  !g5
  db 36
  !c6
  db 12,$6D
  !gs5
  db 12,$7D
  !fs5
  db 12,$1D
  !gs5
  db 62,$7D
  !g5
  !loop : dw .subE22A : db 1
  db 36
  !c6
  db 12,$6D
  !gs5
  db 12,$7D
  !fs5
  db 12,$1D
  !gs5
  db 24,$7D
  !g5
  db 48
  !f6
  !instr,!instr18
  !volume,160
  !pan,4
  db 4
  !rest
  db 24,$4D
  !b7
  db 18
  !gs6
  !f6
  db 8
  !d6
  !end

.pattern3_5
  !instr,!instr1B
  !volume,240
  !vibrato,20,30,27
  !pan,14
  db 23
  !rest
  db 26,$1B
  !c5
  db 23
  !c5
  !loop : dw .subE1A0 : db 3
  !rest
  db 49,$7D
  !b4
  db 72
  !tie
  !end

.pattern4_0
  db 72
  !rest
  !rest
  db 60
  !rest
  db 12,$7D
  !b2
  db 72
  !tie
  !end

.pattern4_1
  db 72
  !rest
  !rest
  db 60
  !rest
  db 12,$7D
  !b2
  db 72
  !tie
  !end

.pattern4_2
  db 12,$4D
  !f6
  !d6
  db 11
  !b5
  !gs5
  db 9
  !d6
  !b5
  db 8
  !gs5
  !f5
  !b5
  !gs5
  db 6
  !f5
  !d5
  !gs5
  !f5
  !d5
  !b4
  !f5
  !d5
  !b4
  !gs4
  !d5
  !b4
  !gs4
  !f4
  !b4
  !gs4
  !f4
  !d4
  db 12,$7D
  !b3
  db 72
  !tie
  !end

.pattern4_4
  db 4
  !rest
  db 12,$4D
  !f6
  !d6
  db 11
  !b5
  !gs5
  db 9
  !d6
  !b5
  db 8
  !gs5
  !f5
  !b5
  !gs5
  db 6
  !f5
  !d5
  !gs5
  !f5
  !d5
  !b4
  !f5
  !d5
  !b4
  !gs4
  !d5
  !b4
  !gs4
  !f4
  !b4
  !gs4
  !f4
  !d4
  db 8,$7D
  !b3
  db 72
  !tie
  !end

.pattern5_0
  !musicVolume,180
  !dynamicMusicVolume,144,230
  !instr,!instr1B
  !volume,200
  !vibrato,24,28,24
  !pan,6
  db 72,$7D
  !c3
  db 72,$6D
  !g3
  !dynamicMusicVolume,144,180
  db 72,$7D
  !c3
  db 72,$6D
  !g3
  !dynamicMusicVolume,144,240
  db 72,$7D
  !c3
  db 72,$6D
  !g3
  !dynamicMusicVolume,144,180
  db 72,$7D
  !c3
  db 72,$6D
  !g3
  !end

.pattern5_1
  !instr,!instr1B
  !volume,240
  !vibrato,21,28,24
  !pan,12
  !loop : dw .subE1DD : db 2
  !end

.pattern5_2
  !instr,!instr1B
  !volume,240
  !vibrato,20,30,27
  !pan,14
  !loop : dw .subE1F4 : db 2
  !end

.pattern6_3
  !instr,!instr0E
  !volume,240
  db 24,$7D
  !fs5
  !g5
  !as5
  !a5
  !gs5
  !as5
  db 72
  !a5
  db 48
  !fs5
  db 24
  !a5
  db 48
  !gs5
  db 24
  !f5
  db 48
  !e5
  db 24
  !cs6
  db 72
  !c6
  !gs5
  !end

.subE109
  db 6,$22
  !tie
  db 9,$32
  !as5
  db 45,$67
  !c6
  db 5,$46
  !cs6
  db 2,$75
  !ds6
  db 9,$74
  !c6
  db 7,$58
  !b5
  db 13,$79
  !c6
  db 57
  !tie
  db 8,$78
  !e6
  db 7,$79
  !g6
  db 2,$77
  !e6
  db 7,$68
  !cs6
  db 7,$46
  !c6
  db 8,$42
  !as5
  db 1
  !rest
  db 7,$47
  !c6
  db 7,$66
  !cs6
  db 10,$57
  !c6
  db 10,$62
  !as5
  db 11,$64
  !g5
  db 14,$75
  !e5
  db 13,$57
  !cs5
  db 14,$66
  !as4
  db 2,$77
  !c5
  db 7,$48
  !cs5
  !end

.subE156
  !instr,!instr1B
  !volume,240
  !vibrato,21,28,24
  !pan,12
  db 23
  !rest
  db 26,$1B
  !g4
  db 23
  !g4
  !rest
  db 49,$5D
  !a4
  db 23
  !rest
  db 26,$1B
  !as4
  db 23
  !as4
  !end

.subE17F
  !instr,!instr1B
  !volume,240
  !vibrato,20,30,27
  !pan,14
  db 23
  !rest
  db 26,$1B
  !ds4
  db 23
  !ds4
  !rest
  db 49,$5D
  !fs4
  db 23
  !rest
  db 26,$1B
  !g4
  db 23
  !g4
  !rest
  db 49,$5D
  !fs4
  !end

.subE20B
  !rest
  db 49,$5D
  !a4
  db 23
  !rest
  db 26,$1B
  !as4
  db 23
  !as4
  !end

.subE173
  !rest
  db 49,$5D
  !d5
  db 23
  !rest
  db 26,$1B
  !ds5
  db 23
  !ds5
  !end

.subE1A0
  !rest
  db 49,$5D
  !b4
  db 23
  !rest
  db 26,$1B
  !c5
  db 23
  !c5
  !end

.subE1AC
  db 23,$7D
  !fs5
  db 26,$1D
  !a5
  db 23
  !rest
  db 36,$7D
  !as5
  db 12,$5D
  !c6
  !as5
  !a5
  db 23,$7D
  !g5
  db 25,$1D
  !d5
  db 24
  !rest
  db 23,$7D
  !f5
  db 26,$1D
  !gs5
  db 23
  !c6
  db 23,$7D
  !b5
  db 26,$1D
  !d6
  db 23
  !rest
  db 36,$7D
  !ds6
  db 12,$5D
  !f6
  !ds6
  !d6
  !end

.subE217
  db 23
  !rest
  db 26,$1B
  !ds5
  db 23
  !ds5
  !rest
  db 49,$5D
  !d5
  db 23
  !rest
  db 26,$1B
  !ds5
  db 23
  !ds5
  !end

.subE22A
  db 36
  !c6
  db 12,$6D
  !gs5
  db 12,$7D
  !fs5
  db 12,$1D
  !gs5
  db 72,$7D
  !g5
  !end

.subE1DD
  db 23
  !rest
  db 26,$1B
  !a4
  db 23
  !a4
  !rest
  db 49,$7D
  !as4
  db 23
  !rest
  db 26,$1B
  !b4
  db 23
  !b4
  !rest
  db 49,$7B
  !as4
  !end

.subE1F4
  db 23
  !rest
  db 26,$1B
  !ds4
  db 23
  !ds4
  !rest
  db 49,$7D
  !e4
  db 23
  !rest
  db 26,$1B
  !f4
  db 23
  !f4
  !rest
  db 49,$7B
  !e4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
