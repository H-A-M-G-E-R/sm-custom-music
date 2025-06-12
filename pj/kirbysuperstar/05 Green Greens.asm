asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr0A = $17
!instr0B = $18
!instr22 = $19
!instr23 = $1A
!instr26 = $1B
!instr27 = $1C
!instr2A = $1D
!instr2B = $1E
!instr2D = $1F
!instr30 = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr0A,$8F,$E0,$B8,$03,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr27,$8F,$E0,$B8,$03,$00
  db !instr2A,$DA,$A0,$B8,$07,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample26,Sample26+27
  dw Sample27,Sample27+45
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2D,Sample2D+1161
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample27: incbin "Sample_55365c24760b7ccb8bdcacbb9417c216.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"

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

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2D
  !musicVolume,255
  !tempo,50
  !echo,%00011111,19,19
  !echoParameters,4,50,0
  db 64
  !rest
  !rest
  !loop : dw .sub5436 : db 4
  !end

.pattern0_1
  !instr,!instr05
  !volume,220
  db 8,$77
  !g3
  db 16,$16
  !g3
  db 8,$74
  !g3
  db 16,$16
  !g3
  db 16,$15
  !g3
  db 16,$16
  !g3
  db 32
  !rest
  db 5,$75
  !g3
  !pitchSlide,5,1 : !a3
  db 6
  !tie
  !pitchSlide,5,1 : !b3
  db 5
  !tie
  db 32,$14
  !c4
  db 96
  !rest
  db 32
  !c4
  db 96
  !rest
  db 32,$15
  !d4
  db 96
  !rest
  db 16
  !rest
  db 16,$04
  !g4
  !g4
  !g4
  !g4
  db 48
  !rest
  !end

.pattern0_2
  db 80
  !rest
  !instr,!instr27
  !volume,180
  !pan,12
  db 8,$56
  !f6
  db 8,$54
  !f6
  db 16,$08
  !f6
  !rest
  !loop : dw .sub5439 : db 2
  db 16,$01
  !a4
  db 16,$06
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !rest
  db 16,$08
  !a5
  !a5
  !a5
  !d6
  db 48
  !rest
  !end

.pattern0_3
  db 80
  !rest
  !instr,!instr27
  !volume,180
  !pan,8
  db 8,$56
  !g6
  db 8,$54
  !g6
  db 16,$08
  !g6
  !rest
  !loop : dw .sub5446 : db 2
  db 16,$01
  !d5
  db 16,$06
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !rest
  db 16,$08
  !c6
  !c6
  !c6
  !b5
  db 48
  !rest
  !end

.pattern0_4
  db 80
  !rest
  !instr,!instr27
  !volume,180
  !pan,10
  db 8,$56
  !d7
  db 8,$54
  !d7
  db 16,$08
  !d7
  !rest
  !rest
  db 16,$06
  !c6
  !c6
  !c6
  !c6
  !c6
  !c6
  !c6
  !loop : dw .sub5453 : db 2
  !rest
  db 16,$08
  !f6
  !f6
  !g6
  !g6
  !rest
  !transpose,12
  !instr,!instr26
  !volume,177
  !pan,10
  !vibrato,48,10,20
  db 24,$16
  !g5
  db 8,$76
  !g5
  !end

.pattern1_0
  !pan,10
  !transpose,253
  !volume,234
  !echo,%00011100,23,23
  !echoParameters,4,206,0
  !loop : dw .sub5368 : db 7
  db 16,$46
  %percNote(!instr30-!instr2D)
  db 8,$43
  %percNote(!instr30-!instr2D)
  db 8,$42
  %percNote(!instr30-!instr2D)
  db 8,$46
  %percNote(!instr30-!instr2D)
  db 8,$42
  %percNote(!instr30-!instr2D)
  db 8,$43
  %percNote(!instr30-!instr2D)
  db 8,$42
  %percNote(!instr30-!instr2D)
  db 16,$46
  %percNote(!instr30-!instr2D)
  db 8,$43
  %percNote(!instr30-!instr2D)
  db 8,$42
  %percNote(!instr30-!instr2D)
  db 8,$46
  %percNote(!instr30-!instr2D)
  db 8,$43
  %percNote(!instr30-!instr2D)
  db 8,$42
  %percNote(!instr30-!instr2D)
  db 8,$43
  %percNote(!instr30-!instr2D)
  db 16,$46
  %percNote(!instr30-!instr2D)
  db 8,$40
  %percNote(!instr30-!instr2D)
  db 24,$46
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$41
  %percNote(!instr2D-!instr2D)
  db 8,$40
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$46
  %percNote(!instr30-!instr2D)
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$42
  %percNote(!instr2D-!instr2D)
  db 8,$40
  %percNote(!instr2D-!instr2D)
  db 8,$41
  %percNote(!instr2D-!instr2D)
  db 8,$40
  %percNote(!instr2D-!instr2D)
  !pan,10
  !loop : dw .sub5368 : db 2
  !end

.pattern1_1
  !instr,!instr2B
  !volume,244
  !loop : dw .sub5390 : db 2
  db 32,$06
  !d3
  db 32,$03
  !a2
  !g3
  !g2
  !loop : dw .sub5390 : db 3
  db 32,$06
  !d3
  db 32,$03
  !a2
  !e3
  db 32,$16
  !e2
  db 32,$17
  !a2
  db 32,$14
  !a3
  !g3
  db 32,$17
  !g2
  db 24,$57
  !f2
  db 16,$17
  !f2
  db 24
  !rest
  db 16
  !g2
  !g2
  db 32
  !rest
  !loop : dw .sub5390 : db 2
  !end

.pattern1_2
  !instr,!instr23
  !volume,172
  !pan,12
  !loop : dw .sub5399 : db 2
  db 16,$74
  !a4
  db 16,$16
  !a5
  !a5
  !a5
  db 16,$74
  !b4
  db 16,$16
  !b5
  !b5
  !b5
  !loop : dw .sub5399 : db 3
  db 16,$74
  !a4
  db 16,$16
  !a5
  !a5
  !a5
  db 16,$74
  !gs4
  db 16,$16
  !gs5
  !gs5
  !gs5
  db 8,$64
  !e5
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !d5
  !g5
  !c6
  !g5
  !c6
  !g5
  !c6
  !g5
  db 24,$55
  !a5
  db 16,$15
  !a5
  db 24
  !rest
  db 16
  !b5
  !b5
  db 32
  !rest
  !loop : dw .sub5399 : db 2
  !end

.pattern1_3
  !instr,!instr23
  !volume,172
  !pan,8
  !loop : dw .sub53A6 : db 2
  db 16,$74
  !d5
  db 16,$16
  !f6
  !f6
  !f6
  db 16,$76
  !d5
  db 16,$16
  !f6
  !f6
  !f6
  !loop : dw .sub53A6 : db 3
  db 16,$74
  !d5
  db 16,$16
  !f6
  !f6
  !f6
  db 16,$74
  !d5
  db 16,$16
  !e6
  !e6
  !e6
  db 8,$64
  !a5
  !c6
  !e6
  !c6
  !e6
  !c6
  !e6
  !c6
  !g5
  !c6
  !e6
  !c6
  !e6
  !c6
  !e6
  !c6
  db 24,$55
  !f6
  db 16,$15
  !f6
  db 24
  !rest
  db 16
  !g6
  !g6
  db 32
  !rest
  !loop : dw .sub53A6 : db 2
  !end

.pattern1_4
  !transpose,12
  !instr,!instr26
  !volume,172
  !pan,10
  !vibrato,20,11,10
  db 96,$76
  !c6
  db 24,$66
  !c6
  db 8,$76
  !e6
  db 16,$66
  !g6
  db 16,$06
  !c7
  !b6
  !a6
  db 32,$56
  !g6
  db 24
  !e6
  db 8,$76
  !g6
  db 32,$66
  !f6
  db 24,$76
  !d6
  db 8
  !e6
  db 32,$66
  !d6
  db 24,$76
  !e6
  db 8
  !d6
  db 96
  !c6
  db 24,$06
  !g5
  db 8,$76
  !g5
  db 96
  !c6
  db 24,$66
  !c6
  db 8,$76
  !e6
  db 16
  !g6
  db 16,$06
  !c7
  !b6
  !a6
  db 32,$56
  !g6
  db 24
  !e6
  db 8,$76
  !g6
  db 32,$66
  !f6
  db 24,$76
  !d6
  db 8
  !e6
  db 32,$66
  !d6
  db 24,$76
  !e6
  db 8
  !d6
  db 64
  !c6
  !tie
  db 24,$57
  !c6
  db 8,$77
  !c6
  db 16,$17
  !d6
  db 32,$47
  !e6
  db 16,$18
  !c6
  db 16,$68
  !d6
  db 16,$78
  !c6
  db 64
  !rest
  !rest
  db 96
  !rest
  !vibrato,16,12,10
  !instr,!instr0A
  !pan,9
  !volume,143
  db 24,$74
  !c5
  db 8,$75
  !d5
  !end

.pattern2_0
  !volume,215
  !loop : dw .sub53B3 : db 7
  !volume,244
  !transpose,255
  db 16,$76
  %percNote(!instr30-!instr2D)
  db 8
  %percNote(!instr30-!instr2D)
  db 8,$74
  %percNote(!instr30-!instr2D)
  db 16,$76
  %percNote(!instr30-!instr2D)
  db 8
  %percNote(!instr30-!instr2D)
  db 8,$74
  %percNote(!instr30-!instr2D)
  !echo,%00011100,19,19
  db 64,$76
  %percNote(!instr30-!instr2D)
  !end

.pattern2_1
  !instr,!instr05
  !volume,244
  db 32,$28
  !f2
  db 32,$26
  !c3
  !as2
  db 32,$28
  !f2
  !loop : dw .sub53E4 : db 3
  db 16,$77
  !g2
  db 8,$73
  !g2
  db 8,$72
  !g2
  db 16,$76
  !d3
  db 8,$73
  !d3
  db 8,$72
  !d3
  db 24,$16
  !g3
  db 40
  !rest
  !end

.pattern2_2
  !vibrato,16,12,10
  !instr,!instr0A
  !pan,11
  !volume,148
  db 32,$64
  !c6
  db 24,$66
  !as5
  db 8
  !c6
  db 32
  !d6
  db 24,$67
  !as5
  db 8
  !d6
  db 32
  !ds6
  db 24,$66
  !d6
  db 8
  !ds6
  db 32,$65
  !gs5
  db 24
  !g5
  db 8
  !as5
  db 32
  !c6
  db 24,$66
  !as5
  db 8
  !c6
  db 32
  !d6
  db 24,$67
  !as5
  db 8
  !d6
  db 64,$66
  !ds6
  db 32,$24
  !g6
  !instr,!instr2A
  !volume,172
  db 24,$64
  !g5
  db 8,$67
  !as5
  db 32,$64
  !c6
  db 24,$66
  !as5
  db 8,$69
  !c6
  db 32,$66
  !d6
  db 24,$67
  !as5
  db 8,$69
  !d6
  db 32,$68
  !ds6
  db 24,$66
  !d6
  db 8,$69
  !ds6
  db 32,$65
  !gs5
  db 24,$64
  !g5
  db 8,$68
  !as5
  db 32,$65
  !c6
  db 24,$66
  !as5
  db 8,$69
  !c6
  db 32,$68
  !d6
  db 24,$67
  !as5
  db 8,$69
  !d6
  db 64,$65
  !f5
  db 24,$15
  !b5
  !endVibrato
  db 40
  !rest
  !end

.pattern2_3
  !vibrato,16,12,10
  !instr,!instr0A
  !pan,9
  !volume,153
  db 32,$64
  !ds6
  db 24,$66
  !d6
  db 8
  !ds6
  db 32
  !f6
  db 24,$67
  !ds6
  db 8
  !f6
  db 32
  !g6
  db 24,$66
  !f6
  db 8
  !g6
  db 32,$65
  !c6
  db 24
  !c6
  db 8
  !d6
  db 32
  !ds6
  db 24,$66
  !d6
  db 8
  !ds6
  db 32
  !f6
  db 24,$67
  !ds6
  db 8
  !f6
  db 64,$66
  !g6
  db 32,$23
  !c7
  !instr,!instr2A
  !volume,172
  db 24,$64
  !c6
  db 8,$67
  !d6
  db 32,$64
  !ds6
  db 24,$66
  !d6
  db 8,$69
  !ds6
  db 32,$66
  !f6
  db 24,$67
  !ds6
  db 8,$69
  !f6
  db 32,$68
  !g6
  db 24,$67
  !f6
  db 8,$69
  !g6
  db 32,$65
  !c6
  db 24,$64
  !c6
  db 8,$68
  !d6
  db 32,$65
  !ds6
  db 24,$66
  !d6
  db 8,$69
  !ds6
  db 32,$68
  !f6
  db 24,$67
  !ds6
  db 8,$69
  !f6
  db 64,$67
  !d6
  db 24,$16
  !g6
  !endVibrato
  db 40
  !rest
  !end

.pattern2_4
  !instr,!instr22
  !volume,162
  !endVibrato
  !pan,7
  db 8,$63
  !f3
  !c4
  !pan,13
  !gs4
  !c4
  !pan,7
  !gs4
  !c4
  !pan,13
  !gs4
  !c4
  !pan,7
  !as3
  !f4
  !pan,13
  !as4
  !f4
  !pan,7
  !as4
  !f4
  !pan,13
  !as4
  !f4
  !loop : dw .sub53F5 : db 1
  !pan,7
  !ds3
  !as3
  !pan,13
  !ds4
  !as3
  !pan,7
  !g4
  !as3
  !pan,13
  !ds4
  !as3
  !pan,7
  !gs3
  !ds4
  !pan,13
  !c5
  !ds4
  !pan,7
  !gs3
  !ds4
  !pan,13
  !gs4
  !ds4
  !instr,!instr0B
  !volume,182
  !pan,7
  !f3
  !c4
  !pan,13
  !gs4
  !c4
  !pan,7
  !gs4
  !c4
  !pan,13
  !gs4
  !c4
  !pan,7
  !as3
  !f4
  !pan,13
  !as4
  !f4
  !pan,7
  !as4
  !f4
  !pan,13
  !as4
  !f4
  !loop : dw .sub53F5 : db 1
  !pan,7
  db 16,$16
  !g3
  db 8,$66
  !g3
  db 8,$64
  !d4
  !pan,13
  db 16,$16
  !g3
  db 8,$66
  !g3
  db 8,$64
  !d4
  !pan,10
  db 24,$14
  !g4
  db 8
  !rest
  !instr,!instr26
  !volume,172
  db 24,$16
  !g5
  db 8,$76
  !g5
  !end

.sub5436
  !rest
  !rest
  !end

.sub5439
  db 16,$01
  !g4
  db 16,$06
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !end

.sub5446
  db 16,$01
  !e5
  db 16,$06
  !e6
  !e6
  !e6
  !e6
  !e6
  !e6
  !e6
  !end

.sub5453
  !rest
  !c6
  !c6
  !c6
  !c6
  !c6
  !c6
  !c6
  !end

.sub5368
  db 16,$46
  %percNote(!instr30-!instr2D)
  db 8,$42
  %percNote(!instr30-!instr2D)
  db 8,$41
  %percNote(!instr30-!instr2D)
  db 16,$46
  %percNote(!instr30-!instr2D)
  db 8,$42
  %percNote(!instr30-!instr2D)
  db 8,$41
  %percNote(!instr30-!instr2D)
  db 16,$46
  %percNote(!instr30-!instr2D)
  db 8,$42
  %percNote(!instr30-!instr2D)
  db 8,$41
  %percNote(!instr30-!instr2D)
  db 8,$46
  %percNote(!instr30-!instr2D)
  db 8,$42
  %percNote(!instr30-!instr2D)
  db 8,$43
  %percNote(!instr30-!instr2D)
  db 8,$42
  %percNote(!instr30-!instr2D)
  !end

.sub5390
  db 32,$06
  !c3
  db 32,$03
  !g2
  !c3
  !g2
  !end

.sub5399
  db 16,$74
  !g4
  db 16,$16
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !end

.sub53A6
  db 16,$74
  !e5
  db 16,$16
  !e6
  !e6
  !e6
  !e6
  !e6
  !e6
  !e6
  !end

.sub53B3
  db 8,$77
  %percNote(!instr30-!instr2D)
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$77
  %percNote(!instr30-!instr2D)
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$72
  %percNote(!instr30-!instr2D)
  !end

.sub53E4
  !ds2
  db 32,$26
  !as2
  !gs2
  !ds3
  db 32,$28
  !f2
  db 32,$26
  !c3
  !as2
  db 32,$28
  !f2
  !end

.sub53F5
  !pan,7
  !ds3
  !as3
  !pan,13
  !ds4
  !as3
  !pan,7
  !g4
  !as3
  !pan,13
  !ds4
  !as3
  !pan,7
  !gs3
  !ds4
  !pan,13
  !gs4
  !ds4
  !pan,7
  !gs3
  !ds4
  !pan,13
  !gs4
  !ds4
  !pan,7
  !f3
  !c4
  !pan,13
  !gs4
  !c4
  !pan,7
  !gs4
  !c4
  !pan,13
  !gs4
  !c4
  !pan,7
  !as3
  !f4
  !pan,13
  !as4
  !f4
  !pan,7
  !as4
  !f4
  !pan,13
  !as4
  !f4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
