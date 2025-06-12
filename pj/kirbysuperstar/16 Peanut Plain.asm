asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr03 = $16
!instr06 = $17
!instr07 = $18
!instr0B = $19
!instr1C = $1A
!instr1D = $1B
!instr22 = $1C
!instr23 = $1D
!instr27 = $1E
!instr2C = $1F
!instr2D = $20
!instr2E = $21
!instr2F = $22
!instr30 = $23

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FC,$E0,$B8,$03,$80
  db !instr06,$BF,$D4,$B8,$0F,$00
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr1C,$AF,$A1,$B8,$03,$C0
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr27,$8F,$E0,$B8,$03,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+27
  dw Sample06_07,Sample06_07+558
  dw Sample06_07,Sample06_07+558
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample27,Sample27+45
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample_55d7dd5330b8a8ef8525169d9eaa7cd3.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample27: incbin "Sample_55365c24760b7ccb8bdcacbb9417c216.brr"
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
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw $00C8,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%00011100,34,34
  !echoParameters,5,50,0
  !musicVolume,255
  !tempo,51
  db 9,$31
  %percNote(!instr30-!instr2C)
  db 9,$33
  %percNote(!instr30-!instr2C)
  !end

.pattern1_0
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  %percNote(!instr30-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  db 9
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  !pan,9
  !instr,!instr2E
  db 9,$77
  !ds5
  !pan,11
  !ds5
  !pan,8
  !b4
  !pan,12
  !f4
  !pan,10
  db 36,$78
  !d4
  db 18,$08
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2E
  db 9,$71
  !ds5
  db 9,$72
  !ds5
  !end

.pattern1_1
  !instr,!instr06
  db 18,$06
  !gs2
  db 9,$46
  !gs3
  !gs3
  db 18,$06
  !gs2
  db 9,$46
  !gs3
  !gs3
  db 18,$06
  !gs2
  db 9,$46
  !gs3
  !gs3
  db 18,$16
  !gs2
  db 9,$46
  !gs3
  !gs3
  db 18,$06
  !as2
  db 9,$45
  !as3
  !as3
  db 18,$06
  !as2
  db 9,$45
  !as3
  !as3
  db 18,$06
  !as2
  db 9,$45
  !as3
  !as3
  db 18,$16
  !as2
  db 9,$45
  !as3
  db 9,$46
  !f3
  db 18,$16
  !gs2
  db 9,$46
  !gs3
  !gs3
  db 18,$16
  !gs2
  db 9,$46
  !gs3
  !gs3
  db 18,$16
  !gs2
  db 9,$46
  !gs3
  !gs3
  db 18,$16
  !gs2
  db 9,$46
  !gs3
  !gs3
  db 18,$4B
  !d2
  db 9
  !d2
  db 9,$46
  !d3
  db 9,$4B
  !d2
  db 9,$46
  !d3
  db 9,$4B
  !d2
  db 9,$46
  !d3
  db 18,$2B
  !d2
  !rest
  !instr,!instr07
  db 36,$16
  !g2
  !end

.pattern1_2
  !pan,10
  !volume,160
  !instr,!instr0B
  db 18
  !rest
  db 9,$44
  !ds5
  !gs4
  db 18
  !rest
  db 9
  !ds5
  db 9,$46
  !gs4
  db 18
  !rest
  db 9,$44
  !ds5
  db 9,$46
  !gs4
  db 18
  !rest
  db 9,$44
  !ds5
  db 9,$46
  !gs4
  db 18
  !rest
  db 9,$44
  !f5
  db 9,$46
  !as4
  db 18
  !rest
  db 9,$44
  !f5
  db 9,$46
  !as4
  db 18
  !rest
  db 9,$44
  !f5
  db 9,$46
  !as4
  db 18
  !rest
  db 9,$44
  !f5
  db 9,$46
  !as4
  !gs4
  db 9,$43
  !c4
  db 9,$44
  !g5
  db 9,$46
  !c4
  !gs4
  db 9,$43
  !c4
  db 9,$44
  !g5
  db 9,$46
  !c5
  !gs4
  db 9,$43
  !c4
  db 9,$44
  !g5
  db 9,$46
  !c5
  !gs4
  db 9,$43
  !c4
  db 9,$44
  !g5
  db 9,$46
  !c5
  db 9,$56
  !f4
  db 9,$53
  !d4
  db 9,$54
  !g5
  db 9,$56
  !c5
  !f4
  !d4
  db 9,$54
  !g5
  db 9,$56
  !c5
  db 18,$26
  !e5
  !rest
  !subtranspose,58
  !instr,!instr1D
  !volume,170
  db 36,$36
  !e5
  !end

.pattern1_3
  !pan,8
  !volume,155
  !instr,!instr0B
  db 18,$06
  !ds3
  db 9,$44
  !gs4
  db 9,$46
  !c4
  db 18,$06
  !ds3
  db 9,$44
  !gs4
  db 9,$46
  !c4
  db 18,$06
  !ds3
  db 9,$44
  !gs4
  db 9,$46
  !c4
  db 18,$06
  !ds3
  db 9,$44
  !gs4
  db 9,$46
  !c4
  db 18,$06
  !f3
  db 9,$44
  !as4
  db 9,$46
  !d4
  db 18,$06
  !f3
  db 9,$44
  !as4
  db 9,$46
  !d4
  db 18,$06
  !f3
  db 9,$44
  !as4
  db 9,$46
  !d4
  db 18,$06
  !f3
  db 9,$44
  !as4
  db 9,$46
  !d4
  !gs3
  db 9,$43
  !ds3
  db 9,$44
  !c5
  db 9,$46
  !ds4
  !gs3
  db 9,$43
  !ds3
  db 9,$44
  !c5
  db 9,$46
  !ds4
  !gs3
  db 9,$43
  !ds3
  db 9,$44
  !c5
  db 9,$46
  !ds4
  !gs3
  db 9,$43
  !ds3
  db 9,$44
  !c5
  db 9,$46
  !ds4
  db 9,$56
  !a3
  db 9,$53
  !d3
  db 9,$54
  !c5
  db 9,$56
  !f4
  !a3
  db 9,$54
  !d3
  !c5
  db 9,$56
  !f4
  db 18,$26
  !f4
  !rest
  !subtranspose,58
  !instr,!instr1D
  !volume,170
  db 36,$36
  !a4
  !end

.pattern1_4
  !pan,12
  !volume,155
  !instr,!instr0B
  db 18,$06
  !gs3
  db 9,$44
  !c5
  db 9,$46
  !ds4
  db 18,$06
  !gs3
  db 9,$44
  !c5
  db 9,$46
  !ds4
  db 18,$06
  !gs3
  db 9,$44
  !c5
  db 9,$46
  !ds4
  db 18,$06
  !gs3
  db 9,$44
  !c5
  db 9,$46
  !ds4
  db 18,$06
  !as3
  db 9,$44
  !d5
  db 9,$46
  !f4
  db 18,$06
  !as3
  db 9,$44
  !d5
  db 9,$46
  !f4
  db 18,$06
  !as3
  db 9,$44
  !d5
  db 9,$46
  !f4
  db 18,$06
  !as3
  db 9,$44
  !d5
  db 9,$46
  !f4
  !ds4
  db 9,$43
  !gs3
  db 9,$44
  !ds5
  db 9,$46
  !gs4
  !ds4
  db 9,$43
  !gs3
  db 9,$44
  !ds5
  db 9,$46
  !gs4
  !ds4
  db 9,$43
  !gs3
  db 9,$44
  !ds5
  db 9,$46
  !gs4
  !ds4
  db 9,$43
  !gs3
  db 9,$44
  !ds5
  db 9,$46
  !gs4
  db 9,$56
  !d4
  db 9,$53
  !a3
  db 9,$54
  !e5
  db 9,$56
  !a4
  !d4
  db 9,$54
  !a3
  !e5
  db 9,$56
  !a4
  db 18,$26
  !a4
  !rest
  !subtranspose,58
  !instr,!instr1D
  !volume,170
  db 36,$36
  !b4
  !end

.pattern2_0
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 36,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,8
  db 9,$46
  !ds5
  !pan,12
  !ds5
  !pan,9
  db 18,$06
  !ds5
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  db 18,$38
  !ds6
  !pan,12
  !instr,!instr2E
  db 9,$77
  !e5
  !pan,8
  !b4
  !pan,11
  db 18
  !f4
  !end

.pattern2_1
  !instr,!instr07
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !g2
  db 18,$26
  !g3
  db 18,$06
  !g2
  db 18,$26
  !g3
  db 18,$08
  !g2
  db 54
  !rest
  db 18
  !a2
  db 18,$25
  !a3
  db 18,$06
  !a2
  db 18,$25
  !a3
  db 18,$06
  !a2
  db 18,$25
  !a3
  db 18,$06
  !a2
  db 18,$25
  !a3
  db 18,$19
  !e2
  db 18,$26
  !e3
  db 18,$19
  !e2
  db 18,$26
  !e3
  db 18,$19
  !e2
  db 54
  !rest
  !end

.pattern2_2
  !subtranspose,58
  !endSlide
  !endVibrato
  !instr,!instr1C
  !volume,195
  db 9,$48
  !c7
  db 9,$41
  !g6
  db 6,$48
  !c7
  db 6,$47
  !c7
  db 6,$46
  !c7
  db 9,$48
  !c7
  db 9,$41
  !g6
  db 9,$48
  !d7
  db 9,$41
  !g6
  db 9,$48
  !e7
  db 9,$41
  !g6
  db 9,$48
  !e7
  db 9,$41
  !g6
  db 9,$48
  !d7
  db 9,$41
  !g6
  db 9,$48
  !c7
  db 9,$41
  !g6
  db 9,$48
  !b6
  db 9,$41
  !f6
  db 9,$48
  !b6
  !b6
  !b6
  db 9,$41
  !f6
  db 9,$48
  !c7
  db 9,$41
  !f6
  db 18,$08
  !b6
  db 54
  !rest
  db 9,$48
  !a6
  db 9,$41
  !e6
  db 9,$48
  !a6
  !a6
  !a6
  db 9,$41
  !e6
  db 9,$48
  !b6
  db 9,$41
  !e6
  db 9,$48
  !c7
  db 9,$41
  !e6
  db 9,$48
  !c7
  db 9,$41
  !e6
  db 9,$48
  !b6
  db 9,$41
  !e6
  db 9,$48
  !a6
  db 9,$41
  !e6
  db 9,$49
  !g6
  db 9,$41
  !d6
  db 6,$48
  !g6
  db 6,$47
  !g6
  db 6,$46
  !g6
  db 9,$49
  !g6
  db 9,$41
  !d6
  db 9,$49
  !a6
  db 9,$41
  !d6
  db 18,$08
  !b6
  db 54
  !rest
  !end

.pattern2_3
  !subtranspose,0
  !endSlide
  !pan,8
  !volume,160
  !instr,!instr0B
  db 18,$06
  !g4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !g4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !g4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !g4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !g4
  db 9,$46
  !b4
  !d5
  db 18,$06
  !g4
  db 9,$46
  !b4
  !d5
  db 18,$06
  !g4
  db 54
  !rest
  db 18
  !e4
  db 9,$46
  !a4
  !c5
  db 18,$06
  !e4
  db 9,$46
  !a4
  !c5
  db 18,$06
  !e4
  db 9,$46
  !a4
  !c5
  db 18,$06
  !e4
  db 9,$46
  !a4
  !c5
  db 18,$06
  !e4
  db 9,$46
  !g4
  !b4
  db 9,$45
  !d5
  db 9,$46
  !b4
  db 9,$45
  !d5
  db 9,$44
  !g5
  db 18,$03
  !d6
  db 54
  !rest
  !end

.pattern2_4
  !subtranspose,0
  !endSlide
  !pan,12
  !volume,160
  !instr,!instr0B
  db 18,$06
  !c5
  db 9,$46
  !e5
  !g5
  db 18,$06
  !c5
  db 9,$46
  !e5
  !g5
  db 18,$06
  !c5
  db 9,$46
  !e5
  !g5
  db 18,$06
  !c5
  db 9,$46
  !e5
  !g5
  db 18,$06
  !b4
  db 9,$46
  !d5
  !g5
  db 18,$06
  !b4
  db 9,$46
  !d5
  !g5
  db 18,$06
  !b4
  db 54
  !rest
  db 18
  !a4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !a4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !a4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !a4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !g4
  db 9,$46
  !b4
  !d5
  db 9,$45
  !g5
  db 9,$46
  !d5
  db 9,$45
  !g5
  db 9,$44
  !b5
  db 18,$03
  !g6
  db 54
  !rest
  !end

.pattern3_0
  !loop : dw .sub5C0D : db 3
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  db 18,$38
  !ds6
  !pan,12
  !instr,!instr2E
  db 9,$77
  !e5
  !pan,8
  !b4
  !pan,11
  db 18
  !f4
  !end

.pattern3_1
  db 18,$0B
  !d2
  db 18,$26
  !d3
  db 18,$06
  !d2
  db 18,$26
  !d3
  db 18,$08
  !g2
  db 18,$26
  !g3
  db 18,$08
  !g2
  db 18,$26
  !g3
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$26
  !c3
  db 9,$76
  !c3
  !as2
  db 18,$07
  !gs2
  db 18,$26
  !gs3
  db 18,$07
  !gs2
  db 18,$26
  !gs3
  db 18,$07
  !gs2
  db 18,$26
  !gs3
  db 18,$07
  !gs2
  db 18,$26
  !gs3
  db 18,$08
  !g2
  db 18,$26
  !g3
  db 18,$08
  !g2
  db 18,$26
  !g3
  db 18,$08
  !g2
  db 54
  !rest
  !end

.pattern3_2
  !subtranspose,0
  !vibrato,18,14,20
  !instr,!instr23
  !volume,170
  db 18,$08
  !f6
  db 9,$48
  !f6
  db 9,$46
  !f6
  db 18,$08
  !f6
  !g6
  !a6
  !a6
  !g6
  !f6
  !e6
  db 9,$48
  !e6
  !g6
  db 18,$07
  !c7
  !d7
  db 36,$78
  !c7
  !g6
  db 18,$07
  !c7
  db 6,$47
  !c7
  !c7
  !c7
  db 18,$07
  !c7
  !d7
  !ds7
  !ds7
  db 18,$06
  !f7
  db 18,$07
  !ds7
  db 72,$77
  !d7
  !rest
  !end

.pattern3_3
  !instr,!instr27
  !volume,160
  db 9,$76
  !d5
  !f5
  !a5
  !f5
  !d5
  !f5
  !a5
  !f5
  !d5
  !f5
  !a5
  !f5
  !d5
  !f5
  !a5
  !f5
  !c5
  !e5
  !g5
  !e5
  !c5
  !e5
  !g5
  !e5
  !c5
  !e5
  !g5
  !e5
  !c5
  !e5
  !g5
  !e5
  !c5
  !ds5
  !gs5
  !ds5
  !c5
  !ds5
  !gs5
  !ds5
  !c5
  !ds5
  !gs5
  !ds5
  !c5
  !ds5
  !gs5
  !ds5
  !b4
  !d5
  !f5
  !d5
  !b4
  !d5
  !f5
  !d5
  !f5
  db 63
  !rest
  !end

.pattern3_4
  !instr,!instr27
  !volume,160
  db 9,$76
  !f5
  !a5
  !c6
  !a5
  !f5
  !a5
  !c6
  !a5
  !f5
  !a5
  !c6
  !a5
  !f5
  !a5
  !c6
  !a5
  !e5
  !g5
  !c6
  !g5
  !e5
  !g5
  !c6
  !g5
  !e5
  !g5
  !c6
  !g5
  !e5
  !g5
  !c6
  !g5
  !ds5
  !gs5
  !c6
  !gs5
  !ds5
  !gs5
  !c6
  !gs5
  !ds5
  !gs5
  !c6
  !gs5
  !ds5
  !gs5
  !c6
  !gs5
  !d5
  !f5
  !c6
  !f5
  !d5
  !f5
  !c6
  !f5
  !b5
  db 63
  !rest
  !end

.pattern4_0
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 36,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,8
  db 9,$46
  !ds5
  !pan,12
  !ds5
  !pan,9
  db 18,$06
  !ds5
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  db 18,$38
  !ds6
  !pan,12
  !instr,!instr2E
  db 9,$77
  !e5
  !pan,8
  !b4
  !pan,11
  db 18
  !f4
  !end

.pattern4_1
  !instr,!instr07
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !g2
  db 18,$26
  !g3
  db 18,$06
  !g2
  db 18,$26
  !g3
  db 18,$08
  !g2
  db 54
  !rest
  db 18
  !a2
  db 18,$25
  !a3
  db 18,$06
  !a2
  db 18,$25
  !a3
  db 18,$06
  !a2
  db 18,$25
  !a3
  db 18,$06
  !a2
  db 18,$25
  !a3
  db 18,$19
  !e2
  db 18,$26
  !e3
  db 18,$19
  !e2
  db 18,$26
  !e3
  db 18,$19
  !e2
  db 54
  !rest
  !end

.pattern4_2
  !subtranspose,58
  !endSlide
  !endVibrato
  !instr,!instr1C
  !volume,195
  db 9,$48
  !c7
  db 9,$41
  !g6
  db 6,$48
  !c7
  db 6,$47
  !c7
  db 6,$46
  !c7
  db 9,$48
  !c7
  db 9,$41
  !g6
  db 9,$48
  !d7
  db 9,$41
  !g6
  db 9,$48
  !e7
  db 9,$41
  !g6
  db 9,$48
  !e7
  db 9,$41
  !g6
  db 9,$48
  !d7
  db 9,$41
  !g6
  db 9,$48
  !c7
  db 9,$41
  !g6
  db 9,$48
  !b6
  db 9,$41
  !f6
  db 9,$48
  !b6
  !b6
  !b6
  db 9,$41
  !f6
  db 9,$48
  !c7
  db 9,$41
  !f6
  db 18,$08
  !b6
  db 54
  !rest
  db 9,$48
  !a6
  db 9,$41
  !e6
  db 9,$48
  !a6
  !a6
  !a6
  db 9,$41
  !e6
  db 9,$48
  !b6
  db 9,$41
  !e6
  db 9,$48
  !c7
  db 9,$41
  !e6
  db 9,$48
  !c7
  db 9,$41
  !e6
  db 9,$48
  !b6
  db 9,$41
  !e6
  db 9,$48
  !a6
  db 9,$41
  !e6
  db 9,$49
  !g6
  db 9,$41
  !d6
  db 6,$48
  !g6
  db 6,$47
  !g6
  db 6,$46
  !g6
  db 9,$49
  !g6
  db 9,$41
  !d6
  db 9,$49
  !a6
  db 9,$41
  !d6
  db 18,$08
  !b6
  db 54
  !rest
  !end

.pattern4_3
  !subtranspose,0
  !endSlide
  !pan,8
  !volume,160
  !instr,!instr0B
  db 18,$06
  !g4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !g4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !g4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !g4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !g4
  db 9,$46
  !b4
  !d5
  db 18,$06
  !g4
  db 9,$46
  !b4
  !d5
  db 18,$06
  !g4
  db 54
  !rest
  db 18
  !e4
  db 9,$46
  !a4
  !c5
  db 18,$06
  !e4
  db 9,$46
  !a4
  !c5
  db 18,$06
  !e4
  db 9,$46
  !a4
  !c5
  db 18,$06
  !e4
  db 9,$46
  !a4
  !c5
  db 18,$06
  !e4
  db 9,$46
  !g4
  !b4
  db 9,$45
  !d5
  db 9,$46
  !b4
  db 9,$45
  !d5
  db 9,$44
  !g5
  db 18,$03
  !d6
  db 54
  !rest
  !end

.pattern4_4
  !subtranspose,0
  !endSlide
  !pan,12
  !volume,160
  !instr,!instr0B
  db 18,$06
  !c5
  db 9,$46
  !e5
  !g5
  db 18,$06
  !c5
  db 9,$46
  !e5
  !g5
  db 18,$06
  !c5
  db 9,$46
  !e5
  !g5
  db 18,$06
  !c5
  db 9,$46
  !e5
  !g5
  db 18,$06
  !b4
  db 9,$46
  !d5
  !g5
  db 18,$06
  !b4
  db 9,$46
  !d5
  !g5
  db 18,$06
  !b4
  db 54
  !rest
  db 18
  !a4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !a4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !a4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !a4
  db 9,$46
  !c5
  !e5
  db 18,$06
  !g4
  db 9,$46
  !b4
  !d5
  db 9,$45
  !g5
  db 9,$46
  !d5
  db 9,$45
  !g5
  db 9,$44
  !b5
  db 18,$03
  !g6
  db 54
  !rest
  !end

.pattern5_0
  !loop : dw .sub5C42 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$77
  !ds5
  !pan,11
  !b4
  !pan,8
  !f4
  !pan,12
  db 9,$78
  !d4
  !end

.pattern5_1
  db 18,$0B
  !d2
  db 18,$26
  !d3
  db 18,$0B
  !d2
  db 18,$26
  !d3
  db 18,$08
  !g2
  db 18,$26
  !g3
  db 18,$08
  !g2
  db 18,$26
  !g3
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$26
  !c3
  db 9,$76
  !c3
  !as2
  db 18,$07
  !gs2
  db 18,$26
  !gs3
  db 18,$07
  !gs2
  db 18,$26
  !gs3
  db 18,$09
  !f2
  db 18,$27
  !f3
  db 18,$07
  !as2
  db 18,$25
  !as3
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  db 18,$06
  !c3
  db 18,$24
  !c4
  !end

.pattern5_2
  !subtranspose,0
  !instr,!instr27
  !volume,205
  !vibrato,24,17,30
  db 18,$06
  !f6
  db 6,$46
  !f6
  !f6
  db 6,$45
  !f6
  db 18,$06
  !f6
  !g6
  !a6
  !a6
  !g6
  !f6
  !e6
  db 9,$46
  !e6
  !g6
  db 18,$06
  !c7
  !d7
  db 36,$76
  !c7
  !g6
  db 18,$06
  !c7
  db 6,$46
  !c7
  !c7
  db 6,$45
  !c7
  db 18,$06
  !c7
  !d7
  !ds7
  !ds7
  !d7
  !as6
  db 72,$76
  !c7
  !tie
  !end

.pattern5_3
  !instr,!instr27
  !volume,180
  db 9,$46
  !d5
  !f5
  !a5
  !f5
  !d5
  !f5
  !c6
  !f5
  !d5
  !f5
  !c6
  !f5
  !c6
  !f5
  !a5
  !f5
  !c5
  !e5
  !g5
  !c6
  !e6
  !c6
  !e6
  !c6
  !c6
  !g5
  !e5
  !d5
  !c6
  !g5
  !e5
  !d5
  !ds5
  !gs5
  !ds6
  !c6
  !gs5
  !c6
  !gs6
  !ds6
  !f5
  !gs5
  !f6
  !gs6
  !f6
  !d6
  !as5
  !d6
  !c6
  !e6
  !c6
  !e6
  !c6
  !e6
  db 6,$76
  !c6
  !e6
  !d6
  db 9,$46
  !g5
  !c6
  !g5
  !c6
  !g5
  !c6
  !g5
  !c6
  !end

.pattern5_4
  !instr,!instr27
  !volume,180
  !vibrato,24,17,30
  db 18,$06
  !c6
  db 6,$46
  !c6
  !c6
  db 6,$45
  !c6
  db 18,$06
  !c6
  !e6
  !f6
  !f6
  !e6
  !d6
  !c6
  db 9,$46
  !c6
  !e6
  db 18,$06
  !g6
  !g6
  db 36,$76
  !e6
  !e6
  db 18,$06
  !gs6
  db 6,$46
  !gs6
  !gs6
  db 6,$45
  !gs6
  db 18,$06
  !gs6
  !as6
  !c7
  !c7
  !as6
  !f6
  db 54,$56
  !g6
  db 6,$76
  !f6
  !g6
  !f6
  db 72
  !e6
  !end

.pattern6_0
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$74
  !a3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$77
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$75
  !a3
  !pan,12
  !instr,!instr2F
  db 9,$76
  !c7
  !ds7
  !loop : dw .sub5C83 : db 3
  !end

.pattern6_1
  db 18,$09
  !f2
  db 18,$26
  !f3
  db 18,$09
  !f2
  db 18,$26
  !f3
  db 18,$06
  !as2
  db 18,$25
  !as3
  db 9,$76
  !as2
  db 9,$75
  !as3
  db 18,$56
  !as2
  db 18,$06
  !ds3
  db 18,$23
  !ds4
  db 18,$06
  !ds3
  db 18,$23
  !ds4
  db 18,$06
  !ds3
  db 18,$23
  !ds4
  db 9,$76
  !ds3
  db 9,$73
  !ds4
  db 18,$56
  !ds3
  db 18,$09
  !f2
  db 18,$26
  !f3
  db 18,$09
  !f2
  db 18,$26
  !f3
  db 18,$06
  !as2
  db 18,$25
  !as3
  db 9,$76
  !as2
  db 9,$75
  !as3
  db 18,$56
  !as2
  db 18,$0B
  !ds2
  db 18,$26
  !ds3
  db 18,$0B
  !ds2
  db 18,$26
  !ds3
  db 18,$0B
  !ds2
  db 18,$26
  !ds3
  db 9,$5B
  !ds2
  db 9,$56
  !ds3
  db 9,$5B
  !ds2
  db 9,$56
  !ds3
  !end

.pattern6_2
  !instr,!instr03
  !volume,160
  !vibrato,36,12,40
  db 54,$66
  !c7
  db 6,$78
  !c7
  db 6,$76
  !d7
  db 6,$78
  !ds7
  db 36,$65
  !f7
  db 27,$66
  !ds7
  db 9,$76
  !d7
  db 27,$66
  !g6
  db 9,$76
  !d7
  db 108,$66
  !d7
  db 54
  !f6
  db 6,$78
  !f6
  db 6,$76
  !g6
  db 6,$78
  !gs6
  db 36,$66
  !as6
  db 27,$76
  !gs6
  db 9
  !as6
  db 126,$56
  !g6
  db 6,$78
  !g6
  db 6,$76
  !gs6
  db 6,$78
  !as6
  !end

.pattern6_3
  !endVibrato
  !instr,!instr22
  !volume,160
  db 9,$36
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !gs4
  !c5
  !gs4
  !c5
  !gs4
  !c5
  !gs4
  !c5
  !as4
  !d5
  !as4
  !d5
  !gs4
  !d5
  !gs4
  !d5
  !g4
  !as4
  !g4
  !as4
  !g4
  !as4
  !g4
  !as4
  !g4
  !as4
  !g4
  !as4
  !g4
  !as4
  !g4
  !as4
  !end

.pattern6_4
  !endVibrato
  !instr,!instr22
  !volume,160
  db 9,$36
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !gs5
  !as5
  !gs5
  !as5
  !gs5
  !as5
  !gs5
  !as5
  !d5
  !f5
  !d5
  !f5
  !d5
  !g5
  !d5
  !g5
  !d5
  !g5
  !d5
  !g5
  !d5
  !g5
  !d5
  !g5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !end

.pattern7_0
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$73
  !a3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$77
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$73
  !a3
  !pan,12
  !instr,!instr2F
  db 9,$76
  !c7
  !ds7
  !pan,10
  db 18
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$73
  !a3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$77
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$73
  !a3
  !pan,12
  !instr,!instr2F
  db 9,$76
  !c7
  !ds7
  !pan,10
  db 18
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$73
  !a3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$73
  !a3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$73
  !a3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$73
  !a3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$73
  !a3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$73
  !a3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  db 9
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  !pan,9
  !instr,!instr2E
  db 9,$77
  !ds5
  !pan,11
  !ds5
  !pan,8
  !b4
  !pan,12
  !f4
  !pan,10
  db 36,$78
  !d4
  db 18
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2E
  db 9,$75
  !ds5
  !pan,12
  !b4
  !end

.pattern7_1
  db 18,$09
  !f2
  db 18,$26
  !f3
  db 18,$09
  !f2
  db 18,$26
  !f3
  db 18,$06
  !as2
  db 18,$25
  !as3
  db 9,$76
  !as2
  db 9,$75
  !as3
  db 18,$56
  !as2
  db 18,$0B
  !ds2
  db 18,$26
  !ds3
  db 18,$0B
  !ds2
  db 18,$26
  !ds3
  db 18,$0B
  !ds2
  db 18,$36
  !ds3
  db 9,$7B
  !ds2
  !ds2
  db 18,$56
  !ds3
  db 18,$06
  !gs2
  db 9,$56
  !gs2
  !gs3
  db 18,$06
  !gs2
  db 9,$56
  !gs2
  !gs3
  db 18,$06
  !gs2
  db 9,$56
  !gs2
  !gs3
  db 18,$06
  !gs2
  db 9,$56
  !gs2
  !gs3
  db 18,$06
  !gs2
  db 9,$56
  !gs2
  !gs3
  db 18,$06
  !gs2
  db 9,$56
  !gs2
  !gs3
  db 18,$06
  !gs2
  db 9,$56
  !gs2
  !gs3
  !gs2
  !gs3
  !gs2
  !gs3
  db 18,$0B
  !d2
  db 9,$5B
  !d2
  db 9,$56
  !d3
  db 18,$0B
  !d2
  db 9,$5B
  !d2
  db 9,$56
  !d3
  db 18,$0B
  !d2
  db 9,$5B
  !d2
  db 9,$56
  !d3
  db 18,$0B
  !d2
  db 9,$5B
  !d2
  db 9,$56
  !d3
  db 18,$06
  !g2
  db 9,$56
  !g2
  !g3
  db 18,$06
  !g2
  db 9,$56
  !g2
  !g3
  db 36,$06
  !g2
  db 36,$26
  !g2
  !end

.pattern7_2
  db 54,$66
  !c7
  db 6,$78
  !c7
  db 6,$76
  !d7
  db 6,$78
  !ds7
  !slideIn,0,9,1
  db 36,$65
  !g7
  !endSlide
  db 27
  !f7
  db 9,$76
  !ds7
  db 27,$66
  !d7
  db 9,$76
  !c7
  db 72,$66
  !d7
  db 27,$64
  !g6
  db 9,$73
  !c7
  db 63,$53
  !c7
  db 9,$73
  !g6
  db 27,$54
  !c7
  db 9,$73
  !as6
  db 36
  !c7
  db 27,$63
  !tie
  db 9,$73
  !g6
  db 27,$53
  !c7
  db 9,$75
  !as6
  db 54,$67
  !c7
  db 9,$76
  !as6
  !gs6
  db 54,$66
  !g6
  db 9,$76
  !f6
  db 9,$77
  !e6
  db 54,$67
  !d6
  db 9,$76
  !e6
  !f6
  db 54,$66
  !g6
  db 9,$76
  !f6
  db 9,$77
  !e6
  db 36,$07
  !d6
  !subtranspose,58
  !instr,!instr1D
  !volume,170
  db 36,$46
  !g5
  !end

.pattern7_3
  db 9,$36
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !g4
  !as4
  !g4
  !as4
  db 9,$35
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  db 9,$36
  !f4
  !a4
  !f4
  !a4
  !f4
  !a4
  !f4
  !a4
  !f4
  !a4
  !f4
  !a4
  !f4
  !a4
  !f4
  !a4
  db 9,$37
  !g4
  !a4
  !g4
  !a4
  !g4
  !a4
  !g4
  !a4
  db 36,$07
  !f5
  !subtranspose,58
  !instr,!instr1D
  !volume,170
  db 36,$46
  !b4
  !end

.pattern7_4
  db 9,$36
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !gs5
  !as5
  !gs5
  !as5
  !gs5
  !as5
  !gs5
  !as5
  !d5
  !g5
  !d5
  !g5
  !d5
  !g5
  !d5
  !g5
  !d5
  !g5
  !d5
  !g5
  !as4
  !d5
  !as4
  !d5
  db 9,$35
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  db 9,$36
  !c5
  !e5
  !c5
  !e5
  !c5
  !e5
  !c5
  !e5
  !c5
  !e5
  !c5
  !e5
  !c5
  !e5
  !c5
  !e5
  db 9,$37
  !c5
  !e5
  !c5
  !e5
  !c5
  !e5
  !c5
  !e5
  db 36,$07
  !a5
  !subtranspose,58
  !instr,!instr1D
  !volume,170
  db 36,$46
  !d5
  !end

.sub5C0D
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !end

.sub5C42
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !end

.sub5C83
  !pan,10
  db 18
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$74
  !a3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$77
  %percNote(!instr30-!instr2C)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2E
  db 18,$75
  !a3
  !pan,12
  !instr,!instr2F
  db 9,$76
  !c7
  !ds7
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
