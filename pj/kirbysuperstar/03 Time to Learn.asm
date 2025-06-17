asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr07 = $16
!instr1B = $17
!instr20 = $18
!instr22 = $19
!instr23 = $1A
!instr26 = $1B
!instr2D = $1C
!instr2F = $1D
!instr30 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr20,$FF,$E0,$B8,$03,$00
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample06_07,Sample06_07+558
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1F_20,Sample1F_20+27
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample26,Sample26+27
  dw Sample2D,Sample2D+1161
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample1F_20: incbin "Sample_dba4d6f4dab80fdde9fe7792a812ef02.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
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
  dw .pattern2
  dw .pattern3
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern1_0, .pattern2_1, .pattern1_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2D
  !musicVolume,255
  !tempo,51
  !echo,%00011110,36,36
  !echoParameters,5,67,0
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !instr,!instr26
  !pan,10
  !slideOut,0,18,250
  db 18,$73
  !g3
  !endSlide
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2F
  db 18,$07
  !d7
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  db 18,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !instr,!instr26
  !pan,10
  !slideOut,0,18,250
  db 18,$73
  !g3
  !endSlide
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2F
  db 18,$07
  !d7
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  db 18,$72
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 9,$70
  %percNote(!instr30-!instr2D)
  db 9,$71
  %percNote(!instr30-!instr2D)
  !end

.pattern0_1
  !instr,!instr22
  !volume,140
  !pan,11
  db 18,$28
  !a4
  db 18,$26
  !a4
  db 18,$22
  !a4
  db 18,$25
  !a4
  db 18,$27
  !a4
  db 18,$26
  !a4
  db 18,$22
  !a4
  db 18,$25
  !a4
  db 18,$28
  !a4
  db 18,$26
  !a4
  db 18,$22
  !a4
  db 18,$25
  !a4
  db 18,$26
  !a4
  db 18,$25
  !a4
  db 18,$22
  !a4
  db 18,$24
  !a4
  !end

.pattern0_2
  !instr,!instr07
  !volume,230
  !pan,10
  db 18,$49
  !f2
  db 18,$47
  !f2
  db 18,$43
  !f2
  db 18,$46
  !f2
  db 18,$48
  !f2
  db 18,$47
  !f2
  db 18,$43
  !f2
  db 18,$46
  !f2
  db 18,$49
  !f2
  db 18,$47
  !f2
  db 18,$43
  !f2
  db 18,$46
  !f2
  db 18,$47
  !f2
  db 18,$46
  !f2
  db 18,$43
  !f2
  db 18,$45
  !f2
  !end

.pattern0_3
  !instr,!instr22
  !volume,150
  !pan,12
  db 18,$28
  !g4
  db 18,$26
  !g4
  db 18,$22
  !g4
  db 18,$25
  !g4
  db 18,$27
  !g4
  db 18,$26
  !g4
  db 18,$22
  !g4
  db 18,$25
  !g4
  db 18,$28
  !g4
  db 18,$26
  !g4
  db 18,$22
  !g4
  db 18,$25
  !g4
  db 18,$26
  !g4
  db 18,$25
  !g4
  db 18,$22
  !g4
  db 18,$24
  !g4
  !end

.pattern0_4
  !instr,!instr22
  !volume,150
  !pan,8
  db 18,$28
  !c5
  db 18,$26
  !c5
  db 18,$22
  !c5
  db 18,$25
  !c5
  db 18,$27
  !c5
  db 18,$26
  !c5
  db 18,$22
  !c5
  db 18,$25
  !c5
  db 18,$28
  !c5
  db 18,$26
  !c5
  db 18,$22
  !c5
  db 18,$25
  !c5
  db 18,$26
  !c5
  db 18,$25
  !c5
  db 18,$22
  !c5
  db 18,$24
  !c5
  !end

.pattern1_0
  !loop : dw .sub552A : db 7
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !instr,!instr26
  !pan,10
  !slideOut,0,18,250
  db 18,$73
  !g3
  !endSlide
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2F
  db 18,$07
  !d7
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  db 18,$72
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 9,$70
  %percNote(!instr30-!instr2D)
  db 9,$71
  %percNote(!instr30-!instr2D)
  !end

.pattern1_1
  !instr,!instr23
  !pan,10
  !volume,110
  !dynamicVolume,97,180
  !vibrato,30,14,20
  !dynamicVibrato,20
  db 108,$76
  !f5
  db 27
  !e5
  db 9
  !d5
  db 27
  !e5
  db 9
  !f5
  db 72,$56
  !e5
  db 27,$76
  !a4
  db 9
  !c5
  db 108
  !e5
  db 27
  !d5
  db 9
  !cs5
  db 27
  !d5
  db 9
  !e5
  db 72,$66
  !d5
  db 27,$78
  !d5
  db 9,$76
  !f5
  db 108,$77
  !a5
  db 27,$76
  !g5
  db 9,$75
  !fs5
  db 27,$76
  !g5
  db 9
  !a5
  db 72,$56
  !g5
  !slideIn,0,7,1
  db 27,$76
  !f5
  !endSlide
  db 9
  !g5
  db 18,$16
  !a5
  db 36,$76
  !c5
  db 18,$16
  !d5
  db 72,$76
  !c5
  !dynamicVolume,143,130
  !tie
  !tie
  !end

.pattern1_2
  !loop : dw .sub5564 : db 4
  !loop : dw .sub557D : db 2
  !loop : dw .sub5564 : db 2
  !end

.pattern1_3
  !volume,155
  db 18,$28
  !g4
  db 18,$26
  !g4
  db 18,$22
  !g4
  db 18,$25
  !g4
  db 18,$27
  !g4
  db 18,$26
  !g4
  db 18,$22
  !g4
  db 18,$25
  !g4
  !loop : dw .sub5596 : db 3
  db 18,$48
  !c5
  db 18,$46
  !c5
  db 18,$42
  !c5
  db 18,$45
  !c5
  db 18,$47
  !c5
  db 18,$46
  !c5
  db 18,$22
  !c5
  db 18,$25
  !c5
  db 18,$48
  !as4
  db 18,$46
  !as4
  db 18,$42
  !as4
  db 18,$45
  !as4
  db 18,$47
  !as4
  db 18,$46
  !as4
  db 18,$22
  !as4
  db 18,$25
  !as4
  !loop : dw .sub5596 : db 2
  !end

.pattern1_4
  !volume,155
  db 18,$28
  !c5
  db 18,$26
  !c5
  db 18,$22
  !c5
  db 18,$25
  !c5
  db 18,$27
  !c5
  db 18,$26
  !c5
  db 18,$22
  !c5
  db 18,$25
  !c5
  db 18,$28
  !c5
  db 18,$26
  !c5
  db 18,$22
  !c5
  db 18,$25
  !c5
  db 18,$27
  !c5
  db 18,$26
  !c5
  db 18,$22
  !c5
  db 18,$25
  !c5
  !loop : dw .sub55AF : db 2
  !loop : dw .sub55C8 : db 2
  !loop : dw .sub55E1 : db 2
  !end

.pattern2_1
  !instr,!instr1B
  !subtranspose,58
  !volume,110
  !dynamicVolume,100,180
  db 108,$76
  !f5
  db 27
  !e5
  db 9,$74
  !d5
  db 27,$76
  !e5
  db 9
  !f5
  !dynamicVolume,70,155
  db 72
  !e5
  db 27
  !a4
  db 9
  !c5
  !volume,110
  !dynamicVolume,90,180
  db 108
  !e5
  db 27
  !d5
  db 9,$75
  !cs5
  db 27,$76
  !d5
  db 9
  !e5
  !dynamicVolume,70,155
  db 72
  !d5
  !dynamicVolume,15,200
  db 27
  !d5
  db 9
  !f5
  db 6
  !a5
  !dynamicVolume,10,150
  db 10
  !tie
  !dynamicVolume,80,210
  db 92
  !tie
  db 27
  !g5
  db 9
  !fs5
  !dynamicVolume,108,150
  db 27
  !g5
  db 9
  !a5
  db 72,$56
  !g5
  !dynamicVolume,15,185
  db 27,$76
  !f5
  db 9
  !g5
  db 18,$16
  !a5
  db 36,$76
  !c5
  db 18,$16
  !d5
  db 72,$76
  !c5
  !dynamicVolume,133,100
  !tie
  db 63
  !tie
  !instr,!instr20
  !subtranspose,0
  !volume,150
  db 9,$75
  !c5
  !end

.pattern2_3
  !loop : dw .sub5596 : db 4
  db 18,$48
  !c5
  db 18,$46
  !c5
  db 18,$42
  !c5
  db 18,$45
  !c5
  db 18,$47
  !c5
  db 18,$46
  !c5
  db 18,$22
  !c5
  db 18,$25
  !c5
  db 18,$48
  !c5
  db 18,$46
  !c5
  db 18,$42
  !c5
  db 18,$45
  !c5
  db 18,$47
  !as4
  db 18,$46
  !as4
  db 18,$22
  !as4
  db 18,$25
  !as4
  !loop : dw .sub5596 : db 2
  !end

.pattern2_4
  !loop : dw .sub55E1 : db 2
  !loop : dw .sub55AF : db 2
  db 18,$48
  !d5
  db 18,$46
  !d5
  db 18,$42
  !d5
  db 18,$45
  !d5
  db 18,$47
  !d5
  db 18,$46
  !d5
  db 18,$22
  !d5
  db 18,$25
  !d5
  db 18,$48
  !cs5
  db 18,$46
  !cs5
  db 18,$42
  !cs5
  db 18,$45
  !cs5
  db 18,$47
  !cs5
  db 18,$46
  !cs5
  db 18,$22
  !cs5
  db 18,$25
  !cs5
  !loop : dw .sub55E1 : db 2
  !end

.pattern3_0
  !loop : dw .sub552A : db 7
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !instr,!instr26
  !pan,10
  !slideOut,0,18,250
  db 18,$73
  !g3
  !endSlide
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2D)
  %percNote(!instr30-!instr2D)
  db 9,$70
  %percNote(!instr30-!instr2D)
  db 9,$71
  %percNote(!instr30-!instr2D)
  !end

.pattern3_1
  !volume,90
  !dynamicVolume,100,155
  db 108,$77
  !c6
  db 27
  !a5
  db 9
  !c6
  !dynamicVolume,120,100
  db 126
  !d6
  db 9
  !tie
  db 9,$7C
  !c5
  !volume,90
  !dynamicVolume,100,155
  db 108,$77
  !c6
  db 27
  !d6
  db 9
  !e6
  !f6
  !e6
  !dynamicVolume,140,100
  db 90
  !d6
  !dynamicVolume,18,160
  db 27
  !c6
  db 9
  !a5
  db 7,$78
  !g5
  !dynamicVolume,65,110
  db 65
  !tie
  !dynamicVolume,150,195
  db 72
  !tie
  db 126
  !tie
  db 9
  !tie
  !volume,155
  db 9,$77
  !f5
  db 72
  !g5
  !tie
  !dynamicVolume,144,100
  !tie
  !tie
  !end

.pattern3_2
  db 18,$48
  !a2
  db 18,$46
  !a2
  db 18,$42
  !a2
  db 18,$45
  !a2
  db 18,$47
  !a2
  db 18,$46
  !a2
  db 18,$42
  !a2
  db 18,$45
  !a2
  db 18,$48
  !d3
  db 18,$46
  !d3
  db 18,$42
  !d3
  db 18,$45
  !d3
  db 18,$47
  !d3
  db 18,$46
  !d3
  db 18,$42
  !d3
  db 18,$45
  !d3
  db 18,$48
  !a2
  db 18,$46
  !a2
  db 18,$42
  !a2
  db 18,$45
  !a2
  db 18,$47
  !a2
  db 18,$46
  !a2
  db 18,$42
  !a2
  db 18,$45
  !a2
  db 18,$4B
  !d2
  db 18,$4A
  !d2
  db 18,$45
  !d2
  db 18,$49
  !d2
  db 18,$4B
  !d2
  db 18,$4A
  !d2
  db 18,$45
  !d2
  db 18,$49
  !d2
  !loop : dw .sub55FA : db 2
  !loop : dw .sub5613 : db 2
  !end

.pattern3_3
  !volume,140
  db 9,$46
  !a4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !a4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !a4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !a4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !a4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !a4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !a4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !a4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !a4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !a4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !a4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !a4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !a4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !a4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !a4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !a4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !loop : dw .sub562C : db 2
  !g4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !g4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !g4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !g4
  db 9,$43
  !f4
  db 9,$46
  !c5
  !f5
  !g4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !g4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !g4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !g4
  db 9,$43
  !e4
  db 9,$46
  !c5
  !e5
  !end

.pattern3_4
  !volume,140
  db 9,$46
  !c5
  db 9,$43
  !a4
  db 9,$46
  !e5
  !g5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !e5
  !g5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !e5
  !g5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !e5
  !g5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !f5
  !a5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !f5
  !a5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !f5
  !a5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !f5
  !a5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !e5
  !g5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !e5
  !g5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !e5
  !g5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !e5
  !g5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !f5
  !a5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !f5
  !a5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !f5
  !a5
  !c5
  db 9,$43
  !a4
  db 9,$46
  !f5
  !a5
  !loop : dw .sub564D : db 2
  !as4
  db 9,$43
  !g4
  db 9,$46
  !f5
  !g5
  !as4
  db 9,$43
  !g4
  db 9,$46
  !f5
  !g5
  !as4
  db 9,$43
  !g4
  db 9,$46
  !f5
  !g5
  !as4
  db 9,$43
  !g4
  db 9,$46
  !f5
  !g5
  !as4
  db 9,$43
  !g4
  db 9,$46
  !e5
  !g5
  !as4
  db 9,$43
  !g4
  db 9,$46
  !e5
  !g5
  !as4
  db 9,$43
  !g4
  db 9,$46
  !e5
  !g5
  !as4
  db 9,$43
  !g4
  db 9,$46
  !e5
  !g5
  !end

.sub552A
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !instr,!instr26
  !pan,10
  !slideOut,0,18,250
  db 18,$73
  !g3
  !endSlide
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2F
  db 18,$07
  !d7
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  db 18,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !end

.sub5564
  db 18,$49
  !f2
  db 18,$47
  !f2
  db 18,$43
  !f2
  db 18,$46
  !f2
  db 18,$48
  !f2
  db 18,$47
  !f2
  db 18,$43
  !f2
  db 18,$46
  !f2
  !end

.sub557D
  db 18,$48
  !as2
  db 18,$46
  !as2
  db 18,$42
  !as2
  db 18,$45
  !as2
  db 18,$47
  !as2
  db 18,$46
  !as2
  db 18,$42
  !as2
  db 18,$45
  !as2
  !end

.sub5596
  db 18,$28
  !g4
  db 18,$26
  !g4
  db 18,$22
  !g4
  db 18,$25
  !g4
  db 18,$27
  !g4
  db 18,$26
  !g4
  db 18,$22
  !g4
  db 18,$25
  !g4
  !end

.sub55AF
  db 18,$28
  !a4
  db 18,$26
  !a4
  db 18,$22
  !a4
  db 18,$25
  !a4
  db 18,$27
  !a4
  db 18,$26
  !a4
  db 18,$22
  !a4
  db 18,$25
  !a4
  !end

.sub55C8
  db 18,$48
  !d5
  db 18,$46
  !d5
  db 18,$42
  !d5
  db 18,$45
  !d5
  db 18,$47
  !d5
  db 18,$46
  !d5
  db 18,$22
  !d5
  db 18,$25
  !d5
  !end

.sub55E1
  db 18,$28
  !c5
  db 18,$26
  !c5
  db 18,$22
  !c5
  db 18,$25
  !c5
  db 18,$27
  !c5
  db 18,$26
  !c5
  db 18,$22
  !c5
  db 18,$25
  !c5
  !end

.sub55FA
  db 18,$48
  !g2
  db 18,$46
  !g2
  db 18,$42
  !g2
  db 18,$45
  !g2
  db 18,$47
  !g2
  db 18,$46
  !g2
  db 18,$42
  !g2
  db 18,$45
  !g2
  !end

.sub5613
  db 18,$48
  !c3
  db 18,$46
  !c3
  db 18,$42
  !c3
  db 18,$45
  !c3
  db 18,$47
  !c3
  db 18,$46
  !c3
  db 18,$42
  !c3
  db 18,$45
  !c3
  !end

.sub562C
  !f4
  db 9,$43
  !d4
  db 9,$46
  !b4
  !d5
  !f4
  db 9,$43
  !d4
  db 9,$46
  !b4
  !d5
  !f4
  db 9,$43
  !d4
  db 9,$46
  !b4
  !d5
  !f4
  db 9,$43
  !d4
  db 9,$46
  !b4
  !d5
  !end

.sub564D
  !b4
  db 9,$43
  !g4
  db 9,$46
  !d5
  !f5
  !b4
  db 9,$43
  !g4
  db 9,$46
  !d5
  !f5
  !b4
  db 9,$43
  !g4
  db 9,$46
  !d5
  !f5
  !b4
  db 9,$43
  !g4
  db 9,$46
  !d5
  !f5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
