asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr09 = $17
!instr0B = $18
!instr1D = $19
!instr20 = $1A
!instr23 = $1B
!instr2B = $1C
!instr2E = $1D
!instr30 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr09,$8F,$F2,$B8,$01,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr20,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample08_09,Sample08_09+90
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1F_20,Sample1F_20+27
  dw Sample23,Sample23+396
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample1F_20: incbin "Sample_dba4d6f4dab80fdde9fe7792a812ef02.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
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
  !percBase,!instr30
  !echo,%00011100,26,26
  !echoParameters,5,50,0
  !musicVolume,255
  !tempo,51
  !volume,225
  !loop : dw .sub56C5 : db 3
  !instr,!instr2E
  db 10,$57
  !a3
  db 10,$52
  %percNote(!instr30-!instr30)
  db 10,$56
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$55
  !a3
  db 10,$56
  %percNote(!instr30-!instr30)
  db 10,$55
  %percNote(!instr30-!instr30)
  db 10,$51
  %percNote(!instr30-!instr30)
  db 10,$56
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  !a3
  db 30
  !a3
  db 10,$55
  !a3
  db 30,$56
  !a3
  !end

.pattern0_1
  !volume,235
  !instr,!instr05
  db 20,$06
  !c3
  !c3
  db 30,$46
  !g3
  db 20,$06
  !d3
  !d3
  db 10,$56
  !d3
  db 20
  !a3
  db 10,$76
  !d3
  !ds3
  db 20,$06
  !e3
  !e3
  db 30,$46
  !b3
  db 20,$06
  !d3
  !d3
  db 10,$46
  !d3
  db 20
  !a3
  !d3
  db 20,$06
  !c3
  !c3
  db 30,$46
  !g3
  db 20,$06
  !d3
  !d3
  db 10,$56
  !d3
  db 20
  !a3
  db 10,$76
  !d3
  !ds3
  db 20,$06
  !e3
  !e3
  db 10,$56
  !b3
  db 20,$06
  !e3
  db 10,$56
  !e3
  !d3
  db 30,$06
  !d3
  db 10,$56
  !g3
  db 30,$06
  !g3
  !end

.pattern0_2
  !instr,!instr1D
  !subtranspose,58
  !pan,8
  !volume,160
  db 10,$46
  !e5
  db 10,$42
  !b4
  !b4
  db 10,$46
  !e5
  db 10,$42
  !b4
  !b4
  db 10,$46
  !e5
  db 10,$42
  !b4
  db 10,$46
  !f5
  db 10,$42
  !c5
  !c5
  db 10,$46
  !f5
  db 10,$42
  !c5
  !c5
  db 10,$46
  !f5
  db 10,$42
  !c5
  db 10,$46
  !g5
  db 10,$42
  !d5
  !d5
  db 10,$46
  !g5
  db 10,$42
  !d5
  !d5
  db 10,$46
  !fs5
  db 10,$42
  !d5
  db 10,$46
  !f5
  db 10,$42
  !c5
  !c5
  db 10,$46
  !f5
  db 10,$42
  !c5
  !c5
  db 10,$46
  !a5
  db 10,$43
  !c5
  db 10,$46
  !e5
  db 10,$42
  !b4
  !b4
  db 10,$46
  !e5
  db 10,$42
  !b4
  !b4
  db 10,$46
  !e5
  db 10,$42
  !b4
  db 10,$46
  !f5
  db 10,$42
  !c5
  !c5
  db 10,$46
  !f5
  db 10,$42
  !c5
  !c5
  db 10,$46
  !f5
  db 10,$42
  !c5
  db 10,$46
  !g5
  db 10,$42
  !d5
  !d5
  db 10,$46
  !g5
  db 10,$42
  !d5
  !d5
  db 10,$46
  !fs5
  db 10,$42
  !d5
  db 10,$46
  !f5
  !f5
  db 20
  !rest
  db 10
  !f5
  !f5
  db 20
  !rest
  !end

.pattern0_3
  !instr,!instr1D
  !subtranspose,58
  !pan,12
  !volume,160
  db 10,$46
  !g5
  db 10,$42
  !c5
  !c5
  db 10,$46
  !g5
  db 10,$42
  !c5
  !c5
  db 10,$46
  !g5
  db 10,$42
  !c5
  db 10,$46
  !a5
  db 10,$42
  !d5
  !d5
  db 10,$46
  !a5
  db 10,$42
  !d5
  !d5
  db 10,$46
  !a5
  db 10,$42
  !d5
  db 10,$46
  !b5
  db 10,$42
  !e5
  !e5
  db 10,$46
  !b5
  db 10,$42
  !e5
  !e5
  db 10,$46
  !g5
  db 10,$42
  !e5
  db 10,$46
  !a5
  db 10,$42
  !d5
  !d5
  db 10,$46
  !a5
  db 10,$42
  !d5
  !f5
  db 10,$46
  !f5
  db 10,$43
  !f5
  db 10,$46
  !g5
  db 10,$42
  !c5
  !c5
  db 10,$46
  !g5
  db 10,$42
  !c5
  !c5
  db 10,$46
  !g5
  db 10,$42
  !c5
  db 10,$46
  !a5
  db 10,$42
  !d5
  !d5
  db 10,$46
  !a5
  db 10,$42
  !d5
  !d5
  db 10,$46
  !a5
  db 10,$42
  !d5
  db 10,$46
  !b5
  db 10,$42
  !e5
  !e5
  db 10,$46
  !b5
  db 10,$42
  !e5
  !e5
  db 10,$46
  !g5
  db 10,$42
  !e5
  db 10,$46
  !a5
  !a5
  db 20
  !rest
  db 10
  !a5
  !a5
  db 20
  !rest
  !end

.pattern0_4
  !instr,!instr1D
  !subtranspose,58
  !pan,10
  !volume,155
  db 10,$46
  !b5
  db 10,$42
  !e5
  !g5
  db 10,$46
  !b5
  db 10,$42
  !e5
  !g5
  db 10,$46
  !b5
  db 10,$42
  !e5
  db 10,$46
  !c6
  db 10,$42
  !f5
  !a5
  db 10,$46
  !c6
  db 10,$42
  !f5
  !a5
  db 10,$46
  !c6
  db 10,$42
  !f5
  db 10,$46
  !d6
  db 10,$42
  !g5
  !b5
  db 10,$46
  !d6
  db 10,$42
  !g5
  !b5
  db 10,$46
  !d6
  db 10,$42
  !g5
  db 10,$46
  !c6
  db 10,$42
  !f5
  !a5
  db 10,$46
  !c6
  db 10,$42
  !f5
  !a5
  db 10,$46
  !c6
  db 10,$44
  !a5
  db 10,$46
  !b5
  db 10,$42
  !e5
  !g5
  db 10,$46
  !b5
  db 10,$42
  !e5
  !g5
  db 10,$46
  !b5
  db 10,$42
  !e5
  db 10,$46
  !c6
  db 10,$42
  !f5
  !a5
  db 10,$46
  !c6
  db 10,$42
  !f5
  !a5
  db 10,$46
  !c6
  db 10,$42
  !f5
  db 10,$46
  !d6
  db 10,$42
  !g5
  !b5
  db 10,$46
  !d6
  db 10,$42
  !g5
  !b5
  db 10,$46
  !d6
  db 10,$42
  !g5
  db 10,$46
  !c6
  !c6
  db 20
  !rest
  db 10
  !c6
  !c6
  db 20
  !rest
  !end

.pattern1_0
  !volume,220
  !pan,10
  !loop : dw .sub56C5 : db 7
  !instr,!instr2E
  db 10,$57
  !a3
  db 10,$52
  %percNote(!instr30-!instr30)
  db 10,$56
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$55
  !a3
  db 10,$56
  %percNote(!instr30-!instr30)
  db 10,$55
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$54
  !e4
  db 10,$55
  !c4
  db 10,$57
  !a3
  !instr,!instr2E
  !pan,12
  db 5,$63
  !d5
  db 5,$62
  !d5
  db 10,$55
  !d5
  !d5
  !pan,8
  db 10,$58
  !a4
  db 10,$56
  !a4
  !pan,11
  db 10,$58
  !f4
  !f4
  !end

.pattern1_1
  !volume,230
  db 20,$06
  !c3
  !c3
  db 30,$46
  !g3
  db 20,$06
  !d3
  !d3
  db 10,$56
  !d3
  db 20,$55
  !a3
  db 10,$76
  !d3
  !ds3
  !loop : dw .sub5700 : db 3
  db 20,$06
  !e3
  !e3
  db 30,$46
  !b3
  db 20,$17
  !a2
  !a2
  db 10,$47
  !a2
  db 20,$45
  !a3
  db 20,$46
  !g3
  !end

.pattern1_2
  !instr,!instr23
  !volume,162
  !pan,10
  !subtranspose,0
  !vibrato,80,16,40
  !slideIn,1,6,1
  db 8,$76
  !g6
  !dynamicVolume,12,110
  db 12
  !tie
  !dynamicVolume,120,162
  db 60
  !tie
  db 80
  !tie
  db 120
  !tie
  !endSlide
  db 10,$75
  !f6
  !dynamicVolume,10,110
  !tie
  !volume,162
  !e6
  !slideIn,0,5,1
  db 10,$76
  !g6
  db 5
  !tie
  !dynamicVolume,14,110
  db 15
  !tie
  !volume,162
  db 8,$77
  !c6
  !dynamicVolume,12,110
  db 12
  !tie
  !dynamicVolume,120,162
  db 120
  !tie
  !tie
  !endSlide
  db 20,$79
  !g5
  db 10,$77
  !c6
  db 8,$76
  !g6
  !dynamicVolume,12,110
  db 2
  !tie
  db 10
  !tie
  !dynamicVolume,120,162
  db 70
  !tie
  db 80
  !tie
  db 120
  !tie
  !slideIn,0,6,1
  db 20
  !e6
  !endSlide
  db 10
  !f6
  !g6
  db 20
  !tie
  db 7
  !c7
  !dynamicVolume,12,110
  db 12
  !tie
  !dynamicVolume,80,162
  db 121
  !tie
  db 4
  !f6
  !pitchSlide,2,1 : !fs6
  !pitchSlide,2,1 : !g6
  db 76
  !tie
  db 80
  !tie
  !end

.pattern1_3
  !subtranspose,0
  !instr,!instr0B
  !pan,12
  !volume,143
  db 10,$48
  !g4
  db 10,$45
  !c5
  !e5
  db 10,$48
  !g4
  db 10,$45
  !d5
  !e5
  db 10,$48
  !g4
  db 10,$45
  !c5
  db 10,$48
  !a4
  db 10,$45
  !d5
  !f5
  db 10,$48
  !a4
  db 10,$45
  !e5
  !f5
  db 10,$48
  !a4
  db 10,$45
  !d5
  !loop : dw .sub572A : db 3
  db 10,$48
  !b4
  db 10,$45
  !e5
  !g5
  db 10,$48
  !b4
  db 10,$45
  !fs5
  !g5
  db 10,$48
  !b4
  db 10,$45
  !e5
  db 10,$48
  !cs5
  db 10,$45
  !e5
  !g5
  db 10,$48
  !cs5
  db 10,$45
  !e5
  !g5
  db 10,$48
  !cs5
  db 10,$45
  !e5
  !end

.pattern1_4
  !subtranspose,0
  !instr,!instr0B
  !pan,8
  !volume,143
  db 10,$48
  !e5
  db 10,$45
  !g5
  !b5
  db 10,$48
  !e5
  db 10,$45
  !g5
  !b5
  db 10,$48
  !e5
  db 10,$45
  !g5
  db 10,$48
  !f5
  db 10,$45
  !a5
  !c6
  db 10,$48
  !f5
  db 10,$45
  !a5
  !c6
  db 10,$48
  !f5
  db 10,$45
  !a5
  !loop : dw .sub577B : db 3
  db 10,$48
  !g5
  db 10,$45
  !b5
  !d6
  db 10,$48
  !g5
  db 10,$45
  !b5
  !d6
  db 10,$48
  !g5
  db 10,$45
  !b5
  db 10,$48
  !g5
  db 10,$45
  !as5
  !cs6
  db 10,$48
  !g5
  db 10,$45
  !as5
  !cs6
  db 10,$48
  !g5
  db 10,$45
  !as5
  !end

.pattern2_0
  !loop : dw .sub57CC : db 3
  !pan,10
  !instr,!instr2E
  db 10,$57
  !a3
  db 10,$54
  %percNote(!instr30-!instr30)
  db 10,$56
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$55
  !a3
  db 10,$56
  %percNote(!instr30-!instr30)
  db 10,$55
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$54
  !e4
  db 10,$56
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$57
  !a3
  db 10,$56
  %percNote(!instr30-!instr30)
  db 10,$51
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$55
  !a3
  !pan,9
  db 10,$56
  !a4
  !a4
  !pan,11
  db 10,$48
  !f4
  !f4
  !loop : dw .sub57CC : db 3
  !pan,10
  !instr,!instr2E
  db 10,$57
  !a3
  db 10,$54
  %percNote(!instr30-!instr30)
  db 10,$56
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$55
  !a3
  db 10,$56
  %percNote(!instr30-!instr30)
  db 10,$55
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$54
  !e4
  db 10,$56
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$57
  !a3
  !instr,!instr2E
  !pan,12
  db 5,$63
  !d5
  db 5,$62
  !d5
  db 10,$55
  !d5
  !d5
  !pan,8
  db 10,$58
  !a4
  db 10,$56
  !a4
  !pan,11
  db 10,$58
  !f4
  !f4
  !end

.pattern2_1
  db 20,$06
  !f3
  db 30,$46
  !f3
  db 20,$43
  !c4
  db 20,$06
  !f3
  !f3
  db 10,$43
  !c4
  db 20,$42
  !f4
  db 20,$43
  !c4
  db 20,$06
  !e3
  db 30,$46
  !e3
  db 20,$44
  !b3
  db 20,$06
  !e3
  !e3
  db 10,$44
  !b3
  db 20,$42
  !e4
  db 20,$46
  !b3
  db 20,$06
  !f3
  db 30,$46
  !f3
  db 20,$43
  !c4
  db 20,$06
  !f3
  !f3
  db 10,$43
  !c4
  db 20,$42
  !f4
  db 20,$43
  !c4
  db 20,$06
  !e3
  db 30,$46
  !e3
  db 20,$44
  !b3
  db 10,$46
  !e3
  db 10,$52
  !e4
  db 10,$54
  !b3
  db 20,$56
  !e3
  db 40
  !rest
  db 20,$06
  !gs3
  db 30,$46
  !gs3
  db 20,$42
  !ds4
  db 20,$06
  !gs3
  !gs3
  db 10,$42
  !ds4
  db 20
  !gs4
  db 20,$46
  !ds4
  db 20,$06
  !g3
  db 30,$46
  !g3
  db 20,$43
  !d4
  db 20,$06
  !g3
  !g3
  db 10,$43
  !d4
  db 20,$42
  !g4
  db 20,$43
  !d4
  db 20,$06
  !gs3
  db 30,$46
  !gs3
  db 20,$42
  !ds4
  db 20,$06
  !gs3
  !gs3
  db 10,$42
  !ds4
  db 10,$43
  !gs4
  db 20,$46
  !gs3
  db 10,$42
  !ds4
  db 20,$06
  !g3
  db 20,$42
  !g4
  db 10,$46
  !g3
  db 20,$42
  !g4
  db 20,$06
  !g3
  !g3
  db 10,$42
  !f4
  db 20
  !g4
  db 20,$46
  !g3
  !end

.pattern2_2
  db 20
  !rest
  !endVibrato
  !transpose,12
  !instr,!instr09
  !volume,134
  !pan,8
  db 30,$76
  !a5
  !pan,12
  !e6
  !pan,8
  db 80
  !a6
  db 20
  !rest
  !pan,12
  db 30
  !g5
  !pan,8
  !d6
  !pan,12
  db 80
  !g6
  db 20
  !rest
  !pan,8
  db 30
  !a5
  !pan,12
  !e6
  !pan,8
  db 80
  !a6
  db 20
  !rest
  !pan,12
  db 30
  !g5
  !pan,8
  !d6
  !pan,12
  db 80
  !g6
  db 20
  !rest
  !pan,8
  db 30
  !c6
  !pan,12
  db 30,$75
  !g6
  !pan,8
  db 80
  !c7
  db 20
  !rest
  !pan,12
  db 30,$76
  !as5
  !pan,8
  db 30,$75
  !f6
  !pan,12
  !as6
  !instr,!instr20
  !vibrato,40,13,60
  !transpose,0
  !volume,139
  !pan,10
  db 10,$77
  !as5
  db 10,$76
  !ds6
  db 20
  !f6
  db 10
  !g6
  !dynamicVolume,12,100
  db 12
  !tie
  !dynamicVolume,80,143
  db 108
  !tie
  !slideIn,0,8,1
  db 30,$74
  !c7
  !endSlide
  db 10,$76
  !g6
  !dynamicVolume,12,100
  db 12
  !tie
  !dynamicVolume,100,143
  db 120
  !tie
  db 28,$68
  !tie
  !end

.pattern2_3
  !instr,!instr1D
  !subtranspose,58
  !volume,177
  db 30,$26
  !c6
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,153
  !subtranspose,0
  db 10,$66
  !f5
  !c6
  !f5
  !c6
  !f5
  !c6
  !f5
  !c6
  !f5
  !instr,!instr1D
  !volume,177
  !subtranspose,58
  db 20,$46
  !a5
  db 10
  !a5
  db 10,$76
  !b5
  db 10,$28
  !tie
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,153
  !subtranspose,0
  db 10,$66
  !e5
  !b5
  !e5
  !b5
  !fs5
  !b5
  !e5
  !b5
  !d5
  !b5
  !d5
  !instr,!instr1D
  !volume,177
  !subtranspose,58
  db 10,$48
  !g5
  db 10,$46
  !d5
  db 10,$48
  !b5
  db 10,$76
  !c6
  db 10,$28
  !tie
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,153
  !subtranspose,0
  db 10,$66
  !f5
  !c6
  !f5
  !c6
  !g5
  !c6
  !f5
  !c6
  !d5
  !c6
  !e5
  !instr,!instr1D
  !volume,177
  !subtranspose,58
  db 20,$46
  !a5
  db 10
  !f5
  db 10,$76
  !b5
  db 10,$28
  !tie
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,153
  !subtranspose,0
  db 10,$66
  !e5
  !b5
  !e5
  !b5
  !fs5
  !b5
  !e5
  !b5
  !d5
  !b5
  !d5
  !instr,!instr1D
  !volume,177
  !subtranspose,58
  db 20,$26
  !c6
  db 10,$46
  !d6
  !ds6
  db 10,$28
  !tie
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,153
  !subtranspose,0
  db 10,$66
  !gs5
  !ds6
  !gs5
  !ds6
  !g5
  !ds6
  !gs5
  !ds6
  !as5
  !ds6
  !gs5
  !instr,!instr1D
  !volume,177
  !subtranspose,58
  db 20,$26
  !c6
  db 10,$46
  !c6
  db 10,$76
  !d6
  db 10,$28
  !tie
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,143
  !subtranspose,0
  db 10,$66
  !f5
  !d6
  !f5
  !d6
  !a5
  !d6
  !f5
  !d6
  !f5
  !d6
  !f5
  !d6
  !f5
  !d6
  !f5
  !c6
  !g5
  !c6
  !f5
  !c6
  !ds5
  !c6
  !f5
  !c6
  !g5
  !c6
  !f5
  !c6
  !ds5
  !c6
  !f5
  !a5
  !f5
  !d5
  !a5
  !f5
  !d5
  !a5
  !d5
  !f5
  !d5
  !b4
  !f5
  !d5
  !b4
  !f5
  !d5
  !end

.pattern2_4
  !instr,!instr1D
  !subtranspose,58
  !volume,182
  db 30,$26
  !e6
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,148
  !subtranspose,0
  db 10,$66
  !a5
  !e6
  !a5
  !e6
  !a5
  !e6
  !a5
  !e6
  !a5
  !instr,!instr1D
  !volume,182
  !subtranspose,58
  db 20,$46
  !d6
  db 10
  !c6
  db 10,$76
  !d6
  db 10,$28
  !tie
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,148
  !subtranspose,0
  db 10,$66
  !g5
  !d6
  !g5
  !d6
  !g5
  !d6
  !g5
  !d6
  !g5
  !d6
  !g5
  !instr,!instr1D
  !volume,182
  !subtranspose,58
  db 10,$48
  !c6
  db 10,$46
  !g5
  db 10,$48
  !d6
  db 10,$76
  !e6
  db 10,$28
  !tie
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,148
  !subtranspose,0
  db 10,$66
  !a5
  !e6
  !a5
  !e6
  !a5
  !e6
  !a5
  !e6
  !a5
  !e6
  !a5
  !instr,!instr1D
  !volume,182
  !subtranspose,58
  db 20,$46
  !d6
  db 10
  !c6
  db 10,$76
  !d6
  db 10,$28
  !tie
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,148
  !subtranspose,0
  db 10,$66
  !g5
  !d6
  !g5
  !d6
  !g5
  !d6
  !g5
  !d6
  !g5
  !d6
  !g5
  !instr,!instr1D
  !volume,182
  !subtranspose,58
  db 20,$26
  !ds6
  db 10,$46
  !f6
  db 10,$76
  !g6
  db 10,$28
  !tie
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,148
  !subtranspose,0
  db 10,$66
  !c6
  !g6
  !c6
  !g6
  !as5
  !g6
  !c6
  !g6
  !d6
  !g6
  !c6
  !instr,!instr1D
  !volume,182
  !subtranspose,58
  db 20,$26
  !f6
  db 10,$46
  !ds6
  db 10,$76
  !f6
  db 10,$28
  !tie
  !instr,!instr2B
  !volume,119
  !dynamicVolume,80,139
  !subtranspose,0
  db 10,$66
  !as5
  !f6
  !as5
  !f6
  !as5
  !f6
  !as5
  !f6
  !a5
  !f6
  !as5
  !f6
  !as5
  !f6
  !as5
  !ds6
  !gs5
  !ds6
  !gs5
  !ds6
  !gs5
  !ds6
  !gs5
  !ds6
  !gs5
  !ds6
  !gs5
  !ds6
  !gs5
  !ds6
  !gs5
  !c6
  !a5
  !f5
  !c6
  !a5
  !f5
  !c6
  !f5
  !d6
  !b5
  !g5
  !d6
  !b5
  !g5
  !d6
  !b5
  !end

.sub56C5
  !instr,!instr2E
  db 10,$57
  !a3
  db 10,$52
  %percNote(!instr30-!instr30)
  db 10,$56
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$55
  !a3
  db 10,$56
  %percNote(!instr30-!instr30)
  db 10,$55
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$54
  !e4
  db 10,$55
  !c4
  db 10,$57
  !a3
  db 10,$52
  %percNote(!instr30-!instr30)
  db 10,$56
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$55
  !a3
  db 10,$56
  %percNote(!instr30-!instr30)
  db 10,$55
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$54
  !e4
  db 10,$55
  !c4
  !end

.sub5700
  db 20,$06
  !e3
  !e3
  db 30,$46
  !b3
  db 20,$06
  !d3
  !d3
  db 10,$46
  !d3
  db 20,$45
  !a3
  db 20,$46
  !d3
  db 20,$06
  !c3
  !c3
  db 30,$46
  !g3
  db 20,$06
  !d3
  !d3
  db 10,$56
  !d3
  db 20,$55
  !a3
  db 10,$76
  !d3
  !ds3
  !end

.sub572A
  db 10,$48
  !b4
  db 10,$45
  !e5
  !g5
  db 10,$48
  !b4
  db 10,$45
  !fs5
  !g5
  db 10,$48
  !b4
  db 10,$45
  !e5
  db 10,$48
  !a4
  db 10,$45
  !d5
  !f5
  db 10,$48
  !a4
  db 10,$45
  !e5
  !f5
  db 10,$48
  !a4
  db 10,$45
  !d5
  db 10,$48
  !g4
  db 10,$45
  !c5
  !e5
  db 10,$48
  !g4
  db 10,$45
  !d5
  !e5
  db 10,$48
  !g4
  db 10,$45
  !c5
  db 10,$48
  !a4
  db 10,$45
  !d5
  !f5
  db 10,$48
  !a4
  db 10,$45
  !e5
  !f5
  db 10,$48
  !a4
  db 10,$45
  !d5
  !end

.sub577B
  db 10,$48
  !g5
  db 10,$45
  !b5
  !d6
  db 10,$48
  !g5
  db 10,$45
  !b5
  !d6
  db 10,$48
  !g5
  db 10,$45
  !b5
  db 10,$48
  !f5
  db 10,$45
  !a5
  !c6
  db 10,$48
  !f5
  db 10,$45
  !a5
  !c6
  db 10,$48
  !f5
  db 10,$45
  !a5
  db 10,$48
  !e5
  db 10,$45
  !g5
  !b5
  db 10,$48
  !e5
  db 10,$45
  !g5
  !b5
  db 10,$48
  !e5
  db 10,$45
  !g5
  db 10,$48
  !f5
  db 10,$45
  !a5
  !c6
  db 10,$48
  !f5
  db 10,$45
  !a5
  !c6
  db 10,$48
  !f5
  db 10,$45
  !a5
  !end

.sub57CC
  !pan,10
  !instr,!instr2E
  db 10,$57
  !a3
  db 10,$54
  %percNote(!instr30-!instr30)
  db 10,$56
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$55
  !a3
  db 10,$56
  %percNote(!instr30-!instr30)
  db 10,$55
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$54
  !e4
  db 10,$56
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$57
  !a3
  db 10,$56
  %percNote(!instr30-!instr30)
  db 10,$51
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  db 10,$55
  !a3
  db 10,$56
  %percNote(!instr30-!instr30)
  db 10,$53
  %percNote(!instr30-!instr30)
  !pan,11
  db 10,$44
  !e4
  !pan,9
  db 10,$48
  !e4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
