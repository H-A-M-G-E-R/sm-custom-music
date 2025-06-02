asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr04 = $18
!instr06 = $19
!instr07 = $1A
!instr0B = $1B
!instr26 = $1C
!instr2C = $1D
!instr2D = $1E
!instr30 = $1F
!instr31 = $20
!instr32 = $21
!instr34 = $22

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr02,$FF,$E0,$B8,$04,$80
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr06,$BF,$D4,$B8,$0F,$00
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FD,$F1,$B8,$07,$40
  db !instr32,$8F,$E0,$B8,$03,$C0
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample02,Sample02+765
  dw Sample04,Sample04+1098
  dw Sample06_07,Sample06_07+558
  dw Sample06_07,Sample06_07+558
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample26,Sample26+27
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+27
  dw Sample32,Sample32+2232
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample02: incbin "Sample_759514f69dc1ba8eed65c41c2bb81670.brr"
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_997ae0fd998037789f5b8dc17e49af0b.brr"
  Sample32: incbin "Sample_1a788f845be3181021d56997b0deeaa8.brr"
  Sample34: incbin "Sample_deadfac8fb90983ab9614fd75bc82e34.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%00111110,42,42
  !echoParameters,4,176,0
  !musicVolume,255
  !tempo,52
  !volume,255
  !pan,12
  db 36,$73
  %percNote(!instr31-!instr2C)
  !pan,8
  db 27
  %percNote(!instr31-!instr2C)
  db 81
  !tie
  !pan,12
  !volume,80
  !dynamicVolume,144,170
  db 9,$77
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$74
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$77
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$74
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$77
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$74
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$77
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$74
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  !volume,255
  db 9,$78
  %percNote(!instr30-!instr2C)
  db 45
  %percNote(!instr30-!instr2C)
  db 9
  %percNote(!instr30-!instr2C)
  db 20,$19
  %percNote(!instr30-!instr2C)
  !dynamicEcho,16,38,38
  db 16,$71
  !tie
  !echo,%00111100,29,29
  !echoParameters,4,176,0
  db 9,$78
  %percNote(!instr30-!instr2C)
  db 18,$7A
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  !end

.pattern0_1
  !subtranspose,40
  !instr,!instr32
  !vibrato,0,10,60
  !volume,190
  !pan,10
  db 36,$76
  !e4
  db 108
  !ds4
  db 72
  !tie
  !tie
  db 9,$5F
  !d4
  db 45,$56
  !d4
  db 9,$5F
  !d4
  db 45,$06
  !d4
  !subtranspose,0
  !endVibrato
  !instr,!instr07
  !volume,230
  db 12,$73
  !g3
  !pitchSlide,0,12 : !g4
  db 24
  !tie
  !pitchSlide,0,24 : !g3

.pattern0_2
  !instr,!instr34
  !volume,200
  !pan,10
  db 36,$7A
  !a3
  !gs3
  db 72
  !rest
  !volume,100
  !dynamicVolume,60,230
  db 6,$75
  !gs3
  !gs3
  !gs3
  !gs3
  !gs3
  !gs3
  !gs3
  !gs3
  db 9,$78
  !gs3
  db 9,$75
  !gs3
  db 18,$7B
  !gs3
  db 36
  !gs3
  db 6,$75
  !gs3
  db 6,$73
  !gs3
  db 6,$76
  !gs3
  db 6,$78
  !gs3
  db 9,$7B
  !g3
  db 45
  !g3
  db 9
  !g3
  db 45,$0B
  !g3
  db 36
  !rest

.pattern0_3
  !instr,!instr02
  !volume,175
  !pan,12
  !vibrato,50,13,90
  !slideIn,0,10,2
  db 36,$56
  !g5
  db 17,$76
  !fs5
  !dynamicVolume,10,140
  db 10
  !tie
  !dynamicVolume,70,80
  db 81
  !tie
  db 72
  !tie
  !tie
  !instr,!instr01
  !volume,185
  !endSlide
  db 9,$56
  !b4
  !pan,8
  db 45,$06
  !b4
  db 9,$56
  !b4
  !pan,12
  db 35,$06
  !b4
  db 46
  !rest

.pattern0_4
  !instr,!instr02
  !volume,175
  !pan,8
  !vibrato,50,14,90
  !slideIn,0,10,2
  db 36,$56
  !c6
  db 17,$76
  !b5
  !dynamicVolume,10,140
  db 10
  !tie
  !dynamicVolume,70,80
  db 81
  !tie
  db 72
  !tie
  !tie
  !volume,185
  !endSlide
  db 9,$56
  !as5
  !pan,12
  db 45,$06
  !as5
  db 9,$56
  !as5
  !pan,8
  db 35,$06
  !as5
  db 46
  !rest

.pattern0_5
  !subtranspose,40
  !instr,!instr32
  !vibrato,0,10,60
  !volume,240
  !pan,10
  db 36,$76
  !a4
  db 108
  !gs4
  db 72
  !tie
  !tie
  db 9,$5F
  !g4
  db 45,$56
  !g4
  db 9,$5F
  !g4
  db 45,$06
  !g4
  db 36
  !rest

.pattern1_0
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$73
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$73
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !loop : dw .sub561B : db 3
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$73
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$73
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$73
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  !end

.pattern1_1
  !pan,10
  !instr,!instr06
  !volume,240
  db 27,$48
  !c3
  db 9
  !c3
  db 18,$09
  !g2
  db 18,$08
  !as2
  !c3
  db 18,$1A
  !f2
  db 18,$49
  !g2
  db 18,$48
  !as2
  db 27
  !c3
  db 9
  !c3
  db 18,$09
  !g2
  db 18,$08
  !as2
  !c3
  db 18,$1A
  !f2
  !slideIn,0,7,2
  db 18,$49
  !g2
  !endSlide
  db 18,$48
  !as2
  db 27
  !c3
  db 9
  !c3
  db 18,$09
  !g2
  db 18,$08
  !as2
  !c3
  db 18,$1A
  !f2
  db 18,$49
  !g2
  db 18,$48
  !as2
  db 27
  !c3
  db 9
  !c3
  db 18,$09
  !g2
  db 18,$08
  !as2
  !c3
  db 18,$19
  !g2
  !slideIn,0,7,2
  db 18,$48
  !c3
  !endSlide
  !ds3
  !loop : dw .sub5672 : db 1

.pattern1_2
  db 18
  !rest
  !instr,!instr01
  !volume,198
  !pan,12
  db 18,$26
  !g4
  !rest
  db 18,$24
  !g4
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !g4
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !g4
  !rest
  db 9,$45
  !g4
  db 9,$43
  !g4
  db 18
  !rest
  db 9,$45
  !g4
  db 9,$43
  !g4
  db 18
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !g4
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !g4
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !g4
  !rest
  db 9,$45
  !g4
  db 9,$43
  !g4
  db 18
  !rest
  db 9,$45
  !g4
  db 9,$43
  !g4
  db 18
  !rest
  db 18,$26
  !a4
  !rest
  db 18,$24
  !a4
  !rest
  db 18,$26
  !a4
  !rest
  db 18,$24
  !a4
  !rest
  db 18,$26
  !a4
  !rest
  db 18,$24
  !a4
  !rest
  db 9,$45
  !a4
  db 9,$43
  !a4
  db 9,$46
  !a4
  db 9,$45
  !a4
  !a4
  db 9,$43
  !a4
  db 18
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !g4
  !rest
  db 18,$26
  !f4
  !rest
  db 18,$24
  !f4
  !rest
  db 18,$26
  !ds4
  !rest
  db 18,$24
  !ds4
  !rest
  db 9,$45
  !ds4
  db 9,$43
  !ds4
  db 9,$46
  !f4
  db 9,$45
  !f4
  !ds4
  db 9,$43
  !ds4

.pattern1_3
  db 18
  !rest
  !endVibrato
  !instr,!instr01
  !volume,198
  !pan,8
  db 18,$26
  !as4
  !rest
  db 18,$24
  !as4
  !rest
  db 18,$26
  !as4
  !rest
  db 18,$24
  !as4
  !rest
  db 18,$26
  !as4
  !rest
  db 18,$24
  !as4
  !rest
  db 9,$45
  !as4
  db 9,$43
  !as4
  db 18
  !rest
  db 9,$45
  !as4
  db 9,$43
  !as4
  db 18
  !rest
  db 18,$26
  !as4
  !rest
  db 18,$24
  !as4
  !rest
  db 18,$26
  !as4
  !rest
  db 18,$24
  !as4
  !rest
  db 18,$26
  !as4
  !rest
  db 18,$24
  !as4
  !rest
  db 9,$45
  !as4
  db 9,$43
  !as4
  db 18
  !rest
  db 9,$45
  !b4
  db 9,$43
  !b4
  !loop : dw .sub56C0 : db 1
  db 18
  !rest
  db 18,$26
  !as4
  !rest
  db 18,$24
  !as4
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !g4
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !g4
  !rest
  db 9,$45
  !g4
  db 9,$43
  !g4
  db 9,$46
  !a4
  db 9,$45
  !a4
  !fs4
  db 9,$43
  !fs4

.pattern1_4
  db 18
  !rest
  !endVibrato
  !instr,!instr01
  !volume,204
  !pan,10
  db 18,$26
  !ds5
  !rest
  db 18,$24
  !ds5
  !rest
  db 18,$26
  !ds5
  !rest
  db 18,$24
  !ds5
  !rest
  db 18,$26
  !ds5
  !rest
  db 18,$24
  !ds5
  !rest
  db 9,$45
  !ds5
  db 9,$43
  !ds5
  db 18
  !rest
  db 9,$45
  !ds5
  db 9,$43
  !ds5
  db 18
  !rest
  db 18,$26
  !ds5
  !rest
  db 18,$24
  !ds5
  !rest
  db 18,$26
  !ds5
  !rest
  db 18,$24
  !ds5
  !rest
  db 18,$26
  !ds5
  !rest
  db 18,$24
  !ds5
  !rest
  db 9,$45
  !ds5
  db 9,$43
  !ds5
  db 18
  !rest
  db 9,$45
  !ds5
  db 9,$43
  !ds5
  db 18
  !rest
  db 18,$26
  !f5
  !rest
  db 18,$24
  !f5
  !rest
  db 18,$26
  !f5
  !rest
  db 18,$24
  !f5
  !rest
  db 18,$26
  !ds5
  !rest
  db 18,$24
  !ds5
  !rest
  db 9,$45
  !ds5
  db 9,$43
  !ds5
  db 9,$46
  !f5
  db 9,$45
  !f5
  !ds5
  db 9,$43
  !ds5
  !loop : dw .sub56C0 : db 1

.pattern1_5
  !transpose,12
  !instr,!instr04
  !subtranspose,0
  !endVibrato
  !volume,193
  db 18,$03
  !g6
  db 126
  !rest
  db 18
  !rest
  db 18,$04
  !f6
  db 18,$03
  !g6
  !rest
  db 18,$04
  !f6
  db 18,$05
  !ds6
  !rest
  db 18,$06
  !c6
  !slideIn,1,3,1
  !as5
  !endSlide
  !c6
  !rest
  db 18,$05
  !ds6
  !rest
  db 18,$06
  !a5
  !as5
  !c6
  !rest
  !g5
  !as5
  !g5
  !f5
  !g5
  !f5
  db 18,$16
  !ds5
  !slideIn,2,1,1
  db 18,$36
  !f5
  !endSlide
  db 18,$16
  !ds5
  db 72
  !rest
  !instr,!instr0B
  !volume,149
  !pan,6
  db 18,$06
  !as6
  !pan,14
  db 18,$07
  !ds6
  !rest
  !pan,10
  !instr,!instr04
  !volume,198
  !slideIn,0,6,1
  db 18,$35
  !fs5
  !endSlide
  db 18,$06
  !g5
  !c6
  !fs5
  !f5
  db 18,$46
  !ds5
  db 18,$26
  !c5
  db 18,$16
  !as4
  db 18,$06
  !c5
  !rest
  !as4
  !rest
  !c5
  db 36
  !rest
  db 80
  !rest
  !instr,!instr26
  !volume,149
  db 8,$66
  !f5
  !fs5
  !g5
  !as5
  !c6
  !ds6
  !f6
  !fs6

.pattern2_0
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$73
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$73
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !loop : dw .sub561B : db 3
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$73
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 23,$7A
  %percNote(!instr30-!instr2C)
  db 4,$73
  %percNote(!instr30-!instr2C)
  db 9,$78
  %percNote(!instr30-!instr2C)
  db 18,$7A
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$75
  %percNote(!instr31-!instr2C)
  !end

.pattern2_1
  db 27,$48
  !g3
  db 9
  !g3
  db 18,$09
  !d3
  db 18,$08
  !f3
  !g3
  db 18,$1A
  !c3
  db 18,$49
  !d3
  db 18,$48
  !f3
  db 27
  !g3
  db 9
  !g3
  db 18,$09
  !d3
  db 18,$08
  !f3
  !g3
  db 18,$19
  !g2
  !slideIn,0,7,2
  db 18,$48
  !g3
  !endSlide
  !fs3
  !loop : dw .sub5672 : db 1
  db 27
  !c3
  db 9
  !c3
  db 18,$09
  !g2
  db 18,$08
  !as2
  !c3
  db 18,$1A
  !f2
  db 18,$49
  !g2
  db 18,$48
  !as2
  db 18,$49
  !g2
  db 36,$08
  !g3
  db 18,$48
  !d3
  db 18,$49
  !g2
  db 18,$48
  !g3
  db 18,$49
  !g2
  db 18,$48
  !as2

.pattern2_2
  db 18
  !rest
  db 18,$26
  !d5
  !rest
  db 18,$24
  !d5
  !rest
  db 18,$26
  !c5
  !rest
  db 18,$24
  !c5
  !rest
  db 18,$26
  !as4
  !rest
  db 18,$24
  !as4
  !rest
  db 9,$45
  !as4
  db 9,$43
  !as4
  !as4
  !as4
  db 9,$45
  !a4
  db 9,$43
  !b4
  db 18
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !a4
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !a4
  !rest
  db 18,$26
  !a4
  !rest
  db 18,$24
  !c5
  db 18,$56
  !a4
  db 18,$15
  !a4
  db 18,$57
  !a4
  db 18,$56
  !g4
  !rest
  db 18,$26
  !ds4
  !rest
  db 18,$24
  !ds4
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !ds4
  !rest
  db 18,$26
  !as4
  !rest
  db 18,$24
  !g4
  db 18,$26
  !ds4
  db 18,$24
  !g4
  !rest
  !ds4
  db 18,$26
  !ds4
  db 18,$25
  !ds4
  !rest
  db 18,$24
  !ds4
  !rest
  db 18,$26
  !c4
  db 18,$25
  !ds4
  db 18,$26
  !c4
  !b3
  !b3
  !rest
  !b3
  !rest
  !b3
  db 18,$27
  !b3
  db 18,$26
  !as3

.pattern2_3
  db 18
  !rest
  db 18,$26
  !f5
  !rest
  db 18,$24
  !f5
  !rest
  db 18,$26
  !d5
  !rest
  db 18,$24
  !d5
  !rest
  db 18,$26
  !b4
  !rest
  db 18,$24
  !b4
  !rest
  db 9,$45
  !b4
  db 9,$43
  !b4
  !b4
  !b4
  db 9,$45
  !d5
  db 9,$43
  !d5
  db 18
  !rest
  db 18,$26
  !c5
  !rest
  db 18,$24
  !c5
  !rest
  db 18,$26
  !c5
  !rest
  db 18,$24
  !c5
  !rest
  db 18,$26
  !c5
  !rest
  db 18,$24
  !ds5
  db 18,$56
  !c5
  db 18,$15
  !c5
  db 18,$57
  !c5
  db 18,$56
  !as4
  !rest
  db 18,$26
  !g4
  !rest
  db 18,$24
  !g4
  !rest
  db 18,$26
  !as4
  !rest
  db 18,$24
  !g4
  !rest
  db 18,$26
  !c5
  !rest
  db 18,$24
  !as4
  db 18,$26
  !g4
  db 18,$24
  !as4
  !rest
  !g4
  db 18,$26
  !d4
  db 18,$25
  !g4
  !rest
  db 18,$24
  !g4
  !rest
  db 18,$26
  !ds4
  db 18,$25
  !g4
  db 18,$26
  !ds4
  !d4
  !d4
  !rest
  !d4
  !rest
  !f4
  db 18,$27
  !f4
  db 18,$26
  !f4

.pattern2_4
  db 18
  !rest
  db 18,$26
  !g5
  !rest
  db 18,$24
  !g5
  !rest
  db 18,$26
  !g5
  !rest
  db 18,$24
  !g5
  !rest
  db 18,$26
  !g5
  !rest
  db 18,$24
  !g5
  !rest
  db 9,$45
  !f5
  db 9,$43
  !f5
  !g5
  !g5
  db 9,$45
  !f5
  db 9,$43
  !f5
  db 18
  !rest
  db 18,$26
  !f5
  !rest
  db 18,$24
  !ds5
  !rest
  db 18,$26
  !f5
  !rest
  db 18,$24
  !ds5
  !rest
  db 18,$26
  !f5
  !rest
  db 18,$24
  !g5
  db 18,$56
  !f5
  db 18,$15
  !ds5
  db 18,$57
  !f5
  db 18,$56
  !ds5
  !rest
  db 18,$26
  !as4
  !rest
  db 18,$24
  !c5
  !rest
  db 18,$26
  !ds5
  !rest
  db 18,$24
  !c5
  !rest
  db 18,$26
  !f5
  !rest
  db 18,$24
  !ds5
  db 18,$26
  !c5
  db 18,$24
  !ds5
  !rest
  !c5
  db 18,$26
  !g4
  db 18,$25
  !as4
  !rest
  db 18,$24
  !c5
  !rest
  db 18,$26
  !g4
  db 18,$25
  !as4
  db 18,$26
  !g4
  !f4
  !g4
  !rest
  !f4
  !rest
  !as4
  db 18,$28
  !as4
  db 18,$26
  !as4

.pattern2_5
  db 72,$76
  !g6
  db 60,$66
  !tie
  db 6,$76
  !f6
  !fs6
  db 60,$66
  !g6
  db 6,$76
  !d6
  !f6
  db 32,$66
  !g6
  db 4,$76
  !a6
  db 36,$66
  !as6
  db 6,$76
  !f6
  !g6
  db 24,$66
  !f6
  !slideOut,30,42,254
  db 72
  !c7
  !endSlide
  !volume,143
  db 36,$64
  !g7
  db 6,$74
  !f7
  !g7
  !f7
  db 6,$75
  !ds7
  db 6,$74
  !f7
  db 6,$75
  !ds7
  db 9,$76
  !c7
  db 9,$74
  !fs7
  db 9,$75
  !f7
  db 9,$76
  !ds7
  !c7
  !as6
  !volume,154
  !c7
  !ds7
  db 12
  !as6
  !g6
  !as6
  db 36,$66
  !c7
  !dynamicVolume,252,88
  db 6
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  !as6
  !b6
  !c7
  db 72
  !rest
  !rest
  !rest
  !rest

.sub561B
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$73
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$73
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$73
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$73
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$73
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !end

.sub5672
  db 27
  !f3
  db 9
  !f3
  db 18,$08
  !c3
  !ds3
  !f3
  db 18,$1A
  !f2
  db 18,$48
  !c3
  !ds3
  db 27
  !f3
  db 9
  !f3
  db 18,$08
  !c3
  !ds3
  !f3
  db 18,$1A
  !f2
  db 18,$48
  !f3
  !g3
  db 27
  !c3
  db 9
  !c3
  db 18,$09
  !g2
  db 18,$08
  !as2
  !c3
  db 18,$1A
  !f2
  db 18,$49
  !g2
  db 18,$48
  !as2
  db 27
  !c3
  db 9
  !c3
  db 18,$09
  !g2
  db 18,$08
  !as2
  !c3
  db 18,$1A
  !f2
  !slideIn,0,7,2
  db 18,$49
  !g2
  !endSlide
  db 18,$48
  !as2
  !end

.sub56C0
  db 18
  !rest
  db 18,$26
  !c5
  !rest
  db 18,$24
  !c5
  !rest
  db 18,$26
  !c5
  !rest
  db 18,$24
  !c5
  !rest
  db 18,$26
  !c5
  !rest
  db 18,$24
  !c5
  !rest
  db 9,$45
  !c5
  db 9,$43
  !c5
  db 9,$46
  !c5
  db 9,$45
  !c5
  !c5
  db 9,$43
  !c5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
