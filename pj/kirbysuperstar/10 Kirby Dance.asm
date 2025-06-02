asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr06 = $16
!instr19 = $17
!instr1C = $18
!instr2C = $19
!instr2D = $1A
!instr2E = $1B
!instr2F = $1C
!instr30 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr06,$BF,$D4,$B8,$0F,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1C,$AF,$A1,$B8,$03,$C0
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample06_07,Sample06_07+558
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"
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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%11111000,34,34
  !echoParameters,5,206,0
  !musicVolume,255
  !tempo,53
  !instr,!instr06
  !volume,255
  db 24,$58
  !d3
  db 12,$57
  !d3
  db 24,$58
  !g3
  db 12,$57
  !g3
  db 24,$58
  !c3
  db 12,$55
  !g2
  db 24,$58
  !c3
  db 12,$57
  !c3
  db 24,$58
  !f3
  db 12,$57
  !f3
  db 24,$58
  !g3
  db 12,$57
  !g3
  db 24,$58
  !c3
  db 12,$57
  !g3
  db 24,$58
  !c3
  db 12
  !g2
  db 24
  !d3
  db 12,$57
  !d3
  db 24,$58
  !g3
  db 12,$57
  !g3
  db 24,$5A
  !e2
  db 12,$58
  !e3
  db 24
  !a2
  db 12,$57
  !a3
  db 24,$58
  !d3
  db 12,$57
  !d3
  db 24,$58
  !g2
  db 12,$57
  !g2
  db 24,$58
  !c3
  db 12
  !g2
  !tempo,51
  db 36,$08
  !c3
  !end

.pattern0_1
  !pan,10
  db 24,$78
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2F
  db 24,$78
  !d7
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2C)
  db 24,$72
  %percNote(!instr2D-!instr2C)
  db 12,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2F
  db 12,$78
  !c7
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2F
  db 12,$78
  !c7
  !pan,10
  db 24
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2F
  db 24,$78
  !c7
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2C)
  db 24,$72
  %percNote(!instr2D-!instr2C)
  db 12,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2F
  db 12,$78
  !c7
  db 12,$77
  !g6
  db 12,$78
  !c7
  !pan,10
  db 24
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2F
  db 24,$78
  !c7
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2C)
  db 24,$72
  %percNote(!instr2D-!instr2C)
  db 12,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2F
  db 12,$78
  !c7
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2F
  db 12,$78
  !c7
  !pan,10
  db 24
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2F
  db 24,$78
  !c7
  db 7
  !g6
  !instr,!instr2E
  !pan,12
  db 5,$73
  !ds5
  db 12,$77
  !ds5
  !pan,8
  !b4
  !pan,11
  db 12,$78
  !f4
  !pan,9
  db 36,$79
  !d4

.pattern0_2
  !pan,8
  !volume,253
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 12,$52
  %percNote(!instr30-!instr2C)
  db 12,$55
  %percNote(!instr30-!instr2C)
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 12,$52
  %percNote(!instr30-!instr2C)
  db 12,$55
  %percNote(!instr30-!instr2C)
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 12,$52
  %percNote(!instr30-!instr2C)
  db 12,$55
  %percNote(!instr30-!instr2C)
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 12,$52
  %percNote(!instr30-!instr2C)
  db 12,$55
  %percNote(!instr30-!instr2C)
  !loop : dw .sub51DC : db 2
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 12,$53
  %percNote(!instr30-!instr2C)
  db 12,$55
  %percNote(!instr30-!instr2C)
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 12,$53
  %percNote(!instr30-!instr2C)
  db 12,$55
  %percNote(!instr30-!instr2C)
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 12,$56
  %percNote(!instr30-!instr2C)
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 36
  %percNote(!instr30-!instr2C)

.pattern0_3
  !vibrato,12,14,20
  !pan,11
  !instr,!instr19
  !subtranspose,60
  !volume,176
  db 11,$76
  !d6
  db 12
  !e6
  !f6
  !g6
  !f6
  !f6
  db 24,$26
  !e6
  db 12,$76
  !c6
  db 36,$16
  !c6
  db 12,$76
  !d6
  !e6
  !f6
  !g6
  !f6
  !f6
  db 24,$26
  !e6
  db 12,$74
  !g5
  db 36,$14
  !e5
  db 12,$76
  !d6
  !e6
  !f6
  !g6
  !f6
  !f6
  db 24,$26
  !e6
  db 12,$76
  !e6
  db 24
  !c6
  db 12
  !e7
  db 24,$56
  !d7
  db 12,$76
  !g6
  db 24,$56
  !f6
  db 12,$76
  !g6
  db 36
  !e6
  db 37,$05
  !e7

.pattern0_4
  !transpose,5
  !vibrato,12,14,20
  !pan,10
  !instr,!instr19
  !subtranspose,60
  !volume,209
  db 11,$77
  !c6
  db 12,$76
  !d6
  !e6
  !fs6
  !e6
  !fs6
  db 24,$26
  !g6
  db 12,$76
  !b5
  db 36,$16
  !b5
  db 12,$76
  !c6
  !d6
  !e6
  !fs6
  !e6
  !fs6
  db 24,$26
  !g6
  db 12,$74
  !g5
  db 36,$14
  !d5
  db 12,$76
  !c6
  !d6
  !e6
  !fs6
  !e6
  !fs6
  db 24,$26
  !g6
  db 12,$76
  !d6
  db 24
  !b5
  db 12
  !d7
  db 24,$56
  !c7
  db 12,$76
  !b6
  db 24,$56
  !a6
  db 12,$76
  !b6
  db 36
  !g6
  db 37,$05
  !g7

.pattern0_5
  !instr,!instr1C
  !subtranspose,58
  !volume,193
  !pan,13
  db 12,$46
  !a5
  db 12,$43
  !a5
  !a5
  db 12,$46
  !d6
  db 12,$43
  !d6
  !d6
  db 12,$46
  !c6
  db 12,$43
  !c6
  !g5
  db 12,$46
  !e5
  db 12,$43
  !e5
  !e5
  db 12,$46
  !a5
  db 12,$43
  !a5
  !a5
  db 12,$46
  !d6
  db 12,$43
  !d6
  !d6
  db 12,$46
  !c6
  db 12,$43
  !c6
  !c5
  db 12,$46
  !g4
  db 12,$42
  !g4
  !g4
  db 12,$46
  !a5
  db 12,$43
  !a5
  !a5
  db 12,$46
  !d6
  db 12,$43
  !d6
  !d6
  db 12,$46
  !c6
  db 12,$43
  !c6
  !g5
  db 12,$46
  !e5
  db 12,$43
  !e5
  !e5
  db 12,$79
  !d5
  !e5
  !f5
  !g5
  !f5
  !g5
  db 24,$59
  !g5
  db 12
  !c5
  db 36,$0A
  !g4

.pattern0_6
  !instr,!instr1C
  !subtranspose,58
  !volume,193
  !pan,7
  db 12,$46
  !c6
  db 12,$43
  !c6
  !d6
  db 12,$46
  !f6
  db 12,$43
  !g6
  !f6
  db 12,$46
  !g6
  db 12,$43
  !e6
  !c6
  db 12,$46
  !g5
  db 12,$43
  !g5
  !g5
  db 12,$46
  !c6
  db 12,$43
  !c6
  !d6
  db 12,$46
  !f6
  db 12,$43
  !g6
  !f6
  db 12,$46
  !g6
  db 12,$43
  !e6
  !e5
  db 12,$46
  !c5
  db 12,$42
  !c5
  !c5
  db 12,$46
  !c6
  db 12,$43
  !c6
  !d6
  db 12,$46
  !f6
  db 12,$43
  !g6
  !f6
  db 12,$46
  !g6
  db 12,$43
  !g6
  !c6
  db 12,$46
  !g5
  db 12,$43
  !g5
  !g5
  db 12,$79
  !f5
  !g5
  !a5
  !b5
  !a5
  !b5
  db 24,$59
  !c6
  db 12
  !e5
  db 36,$0A
  !c5

.pattern0_7
  db 72
  !rest
  !rest
  !rest
  !rest
  !pan,10
  !instr,!instr1C
  !volume,248
  !transpose,12
  !subtranspose,48
  db 12,$76
  !f5
  !g5
  !a5
  !b5
  !a5
  !b5
  db 24,$26
  !c6
  db 12,$76
  !g5
  db 24
  !e5
  db 12
  !g6
  !slideIn,0,4,1
  db 24,$56
  !f6
  !endSlide
  db 12,$76
  !e6
  !slideIn,0,3,1
  db 24,$56
  !d6
  !endSlide
  db 12,$76
  !e6
  db 36
  !c6
  db 36,$03
  !c7

.pattern1_0
  !echo,%00011111,1,1
  db 72
  !rest
  !rest
  !loop : dw .sub5201 : db 7
  !end

.sub51DC
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 12,$52
  %percNote(!instr30-!instr2C)
  db 12,$55
  %percNote(!instr30-!instr2C)
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 12,$52
  %percNote(!instr30-!instr2C)
  db 12,$55
  %percNote(!instr30-!instr2C)
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 12,$52
  %percNote(!instr30-!instr2C)
  db 12,$55
  %percNote(!instr30-!instr2C)
  db 12,$58
  %percNote(!instr30-!instr2C)
  db 12,$52
  %percNote(!instr30-!instr2C)
  db 12,$55
  %percNote(!instr30-!instr2C)
  !end

.sub5201
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
