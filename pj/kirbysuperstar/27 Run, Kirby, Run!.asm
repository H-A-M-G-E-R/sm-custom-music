asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr04 = $18
!instr22 = $19
!instr23 = $1A
!instr2B = $1B
!instr2D = $1C
!instr2E = $1D
!instr30 = $1E
!instr31 = $1F
!instr34 = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr02,$FF,$E0,$B8,$04,$80
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FD,$F1,$B8,$07,$40
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample02,Sample02+765
  dw Sample04,Sample04+1098
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+27
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample02: incbin "Sample_759514f69dc1ba8eed65c41c2bb81670.brr"
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_997ae0fd998037789f5b8dc17e49af0b.brr"
  Sample34: incbin "Sample_deadfac8fb90983ab9614fd75bc82e34.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
-
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2D
  !echo,%00011110,38,38
  !echoParameters,4,50,2
  !musicVolume,255
  !tempo,51
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !pan,10
  !instr,!instr2E
  db 32,$17
  !d3
  !instr,!instr34
  db 32,$79
  !g3
  !end

.pattern0_1
  !pan,8
  !volume,170
  db 64,$76
  %percNote(!instr31-!instr2D)
  %percNote(!instr31-!instr2D)
  db 32
  %percNote(!instr31-!instr2D)
  %percNote(!instr31-!instr2D)
  db 32,$16
  %percNote(!instr31-!instr2D)
  !rest
  !end

.pattern0_2
  !instr,!instr2B
  !volume,255
  db 16,$49
  !f2
  db 16,$26
  !f3
  !c3
  !f3
  db 16,$28
  !g2
  db 16,$26
  !g3
  db 16,$2B
  !d2
  db 16,$26
  !d3
  db 16,$28
  !gs2
  db 16,$26
  !gs3
  db 16,$28
  !gs2
  db 16,$26
  !gs3
  !g3
  db 48
  !rest
  !end

.pattern0_3
  !instr,!instr04
  !volume,175
  !pan,9
  db 16,$56
  !ds6
  !rest
  db 16,$06
  !d6
  !c6
  !as5
  !f5
  db 16,$56
  !d5
  !rest
  db 16,$06
  !gs5
  !as5
  !c6
  !d6
  db 16,$16
  !b5
  db 48
  !rest
  !end

.pattern0_4
  !instr,!instr04
  !volume,180
  !pan,11
  db 16,$56
  !g6
  !rest
  db 16,$06
  !f6
  !ds6
  !d6
  !as5
  db 16,$56
  !g5
  !rest
  db 16,$06
  !c6
  !d6
  !ds6
  !f6
  db 16,$16
  !d6
  db 48
  !rest
  !end

.pattern1_0
  !loop : dw .sub5919 : db 3
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !loop : dw .sub5919 : db 3
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !end

.pattern1_1
  !instr,!instr23
  !volume,165
  !pan,10
  !slideIn,0,2,1
  !vibrato,33,25,60
  db 64,$36
  !c7
  !g6
  !loop : dw .sub5946 : db 1
  !c7
  !g6
  db 32
  !ds6
  !d6
  !c6
  db 16,$46
  !c6
  !d6
  db 32
  !ds6
  !f6
  !d6
  !as5
  !c6
  !g5
  db 64,$36
  !c6
  !end

.pattern1_2
  !loop : dw .sub5959 : db 2
  db 32,$26
  !f3
  !c3
  !f3
  db 32,$29
  !f2
  !loop : dw .sub5959 : db 3
  db 32,$29
  !f2
  db 32,$26
  !f3
  !g3
  db 32,$28
  !g2
  db 32,$26
  !c3
  db 32,$28
  !g2
  db 32,$26
  !c3
  db 32,$28
  !g2
  !end

.pattern1_3
  !volume,185
  db 16,$26
  !g3
  !g4
  !c3
  !g4
  !g3
  !g4
  !c3
  !g4
  !g3
  !g4
  !c3
  !g4
  !g3
  !g4
  !c3
  !g4
  !c4
  !gs4
  !f3
  !gs4
  !c4
  !gs4
  !f3
  !gs4
  !loop : dw .sub5966 : db 3
  !f3
  !gs4
  !c4
  !gs4
  !d4
  !as4
  !g3
  !as4
  !g3
  !g4
  !c3
  !g4
  !g3
  !g4
  !c3
  !g4
  !end

.pattern1_4
  !volume,180
  db 16,$26
  !c4
  !ds5
  !g3
  !ds5
  !c4
  !ds5
  !g3
  !ds5
  !c4
  !ds5
  !g3
  !ds5
  !c4
  !ds5
  !g3
  !ds5
  !f4
  !c5
  !c4
  !c5
  !f4
  !c5
  !c4
  !c5
  !loop : dw .sub596F : db 3
  !c4
  !c5
  !f4
  !c5
  !f4
  !d5
  !d4
  !d5
  !c4
  !ds5
  !g3
  !ds5
  !c4
  !ds5
  !g3
  !ds5
  !end

.pattern2_0
  !loop : dw .sub5919 : db 3
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !loop : dw .sub5919 : db 3
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !end

.pattern2_1
  !instr,!instr04
  !volume,165
  !pan,10
  !vibrato,20,12,70
  db 64,$33
  !c7
  db 64,$35
  !g6
  !loop : dw .sub5946 : db 1
  db 64,$33
  !c7
  db 64,$35
  !g6
  !slideIn,0,8,1
  db 32,$36
  !ds6
  !endSlide
  !f6
  !g6
  !c6
  !slideIn,0,8,1
  db 32,$46
  !d6
  !endSlide
  !f6
  !d6
  !as5
  !slideIn,0,30,1
  !dynamicVolume,112,100
  db 112,$57
  !c6
  !endSlide
  db 16
  !rest
  !end

.pattern2_2
  !loop : dw .sub5959 : db 2
  db 32,$26
  !f3
  !c3
  !f3
  db 32,$29
  !f2
  !loop : dw .sub5959 : db 2
  db 32,$26
  !f3
  !c3
  !f3
  db 32,$29
  !f2
  db 32,$28
  !g2
  db 32,$26
  !f3
  !g3
  db 32,$28
  !g2
  db 32,$26
  !c3
  db 32,$28
  !g2
  db 32,$26
  !c3
  db 32,$28
  !g2
  !end

.pattern2_3
  !instr,!instr02
  !volume,180
  !loop : dw .sub5978 : db 1
  !pan,9
  db 16,$25
  !f4
  !f5
  !pan,11
  !f3
  !f5
  !pan,9
  !f4
  !f5
  !pan,11
  !f3
  !f5
  !loop : dw .sub5978 : db 1
  !pan,9
  !f4
  !c5
  !pan,11
  !f3
  !c5
  !pan,9
  !f4
  !c5
  !pan,11
  !f3
  !c5
  !pan,9
  !g3
  !as4
  !pan,11
  !g2
  !as4
  !pan,9
  !g3
  !as4
  !pan,11
  !g2
  !as4
  !pan,9
  !c4
  !c5
  !pan,11
  !c3
  !c5
  !pan,9
  !c4
  !c5
  !pan,11
  !c3
  !c5
  !end

.pattern2_4
  !instr,!instr01
  !volume,180
  !loop : dw .sub599B : db 1
  !pan,11
  !f3
  db 16,$27
  !gs4
  !pan,9
  db 16,$26
  !c4
  db 16,$27
  !gs4
  !pan,11
  db 16,$26
  !f3
  db 16,$27
  !gs4
  !pan,9
  db 16,$26
  !c4
  db 16,$27
  !gs4
  !loop : dw .sub599B : db 1
  !pan,11
  !f3
  !gs4
  !pan,9
  !c4
  !gs4
  !pan,11
  !f3
  !gs4
  !pan,9
  !c4
  !gs4
  !pan,11
  !g2
  !d5
  !pan,9
  !d3
  !d5
  !pan,11
  !g2
  !d5
  !pan,9
  !d3
  !d5
  !pan,11
  !c3
  !ds5
  !pan,9
  !g3
  !ds5
  !pan,11
  !c3
  !ds5
  !pan,9
  !g3
  !ds5
  !end

.pattern3_0
  !loop : dw .sub59BE : db 4
  !end

.pattern3_1
  !pan,10
  !subtranspose,10
  !instr,!instr04
  !volume,230
  db 32,$28
  !f3
  !f3
  db 32,$26
  !gs3
  !c4
  !ds4
  !d4
  !c4
  !g3
  db 32,$28
  !f3
  !f3
  db 32,$26
  !gs3
  !c4
  !ds4
  !f4
  db 64,$45
  !g4
  !end

.pattern3_2
  db 32,$29
  !f2
  !f2
  db 32,$27
  !gs2
  db 32,$26
  !c3
  !ds3
  !d3
  !c3
  db 32,$28
  !g2
  db 32,$29
  !f2
  !f2
  db 32,$27
  !gs2
  db 32,$26
  !c3
  !ds3
  !f3
  db 64,$45
  !g3
  !end

.pattern3_3
  !volume,140
  !dynamicVolume,120,210
  db 16
  !rest
  !instr,!instr02
  !pan,11
  db 16,$26
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !dynamicVolume,120,140
  !rest
  !pan,11
  !c5
  !rest
  !pan,9
  !c5
  !rest
  !pan,11
  !c5
  !rest
  !pan,9
  !c5
  !dynamicVolume,120,210
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !dynamicVolume,120,140
  !rest
  !pan,11
  !c5
  !rest
  !pan,9
  !c5
  !rest
  !pan,11
  !c5
  !rest
  !pan,9
  !c5
  !end

.pattern3_4
  !volume,140
  !dynamicVolume,120,210
  db 16
  !rest
  !instr,!instr01
  !pan,9
  db 16,$26
  !gs4
  !rest
  !pan,11
  !gs4
  !rest
  !pan,9
  !gs4
  !rest
  !pan,11
  !gs4
  !dynamicVolume,120,140
  !rest
  !pan,9
  !ds5
  !rest
  !pan,11
  !ds5
  !rest
  !pan,9
  !ds5
  !rest
  !pan,11
  !ds5
  !dynamicVolume,120,210
  !rest
  !pan,9
  !gs4
  !rest
  !pan,11
  !gs4
  !rest
  !pan,9
  !gs4
  !rest
  !pan,11
  !gs4
  !dynamicVolume,120,140
  !rest
  !pan,9
  !ds5
  !rest
  !pan,11
  !ds5
  !rest
  !pan,9
  !ds5
  !rest
  !pan,11
  !ds5
  !end

.pattern4_0
  !loop : dw .sub5919 : db 3
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !end

.pattern4_1
  db 16
  !rest
  !instr,!instr02
  !endVibrato
  !volume,170
  !subtranspose,0
  !pan,9
  db 16,$26
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !loop : dw .sub59F7 : db 1
  !rest
  !pan,9
  !c5
  !rest
  !pan,11
  !c5
  !rest
  !pan,9
  !c5
  !rest
  !pan,11
  !c5
  !end

.pattern4_2
  !loop : dw .sub5A18 : db 1
  !c3
  !g3
  !c3
  db 32,$28
  !g2
  !end

.pattern4_3
  !instr,!instr01
  !volume,155
  !vibrato,16,20,30
  !pan,11
  db 48,$46
  !f6
  db 16,$26
  !ds6
  db 32,$06
  !c6
  db 16,$16
  !c6
  !d6
  db 32,$06
  !ds6
  !g5
  db 64,$26
  !ds6
  db 24,$56
  !d6
  db 8,$68
  !d6
  db 16,$16
  !d6
  !c6
  db 32,$06
  !as5
  db 16,$16
  !c6
  !d6
  db 32,$06
  !c6
  !d6
  db 32,$46
  !ds6
  !c6
  !end

.pattern4_4
  !instr,!instr01
  !volume,160
  !vibrato,16,20,30
  !pan,10
  db 48,$46
  !gs6
  db 16,$26
  !g6
  db 32,$06
  !f6
  db 16,$16
  !ds6
  !f6
  db 32,$06
  !g6
  !c6
  db 64,$26
  !g6
  db 24,$56
  !f6
  db 8,$68
  !f6
  db 16,$16
  !f6
  !ds6
  db 32,$06
  !d6
  db 16,$16
  !ds6
  !f6
  db 32,$06
  !ds6
  !f6
  db 32,$46
  !g6
  !ds6
  !end

.pattern5_0
  !loop : dw .sub59BE : db 4
  !end

.pattern5_1
  !pan,10
  !subtranspose,10
  !instr,!instr04
  !volume,230
  db 32,$28
  !f3
  !f3
  db 32,$26
  !gs3
  !c4
  !ds4
  !d4
  !c4
  !g3
  db 32,$28
  !f3
  !f3
  db 32,$26
  !gs3
  !c4
  !ds4
  !f4
  db 64,$45
  !g4
  !end

.pattern5_2
  db 32,$29
  !f2
  !f2
  db 32,$27
  !gs2
  db 32,$26
  !c3
  !ds3
  !d3
  !c3
  db 32,$28
  !g2
  db 32,$29
  !f2
  !f2
  db 32,$27
  !gs2
  db 32,$26
  !c3
  !ds3
  !f3
  db 64,$45
  !g3
  !end

.pattern5_3
  !volume,140
  !dynamicVolume,120,210
  db 16
  !rest
  !instr,!instr02
  !pan,11
  db 16,$26
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !dynamicVolume,120,140
  !rest
  !pan,11
  !c5
  !rest
  !pan,9
  !c5
  !rest
  !pan,11
  !c5
  !rest
  !pan,9
  !c5
  !dynamicVolume,120,210
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !dynamicVolume,120,140
  !rest
  !pan,11
  !c5
  !rest
  !pan,9
  !c5
  !rest
  !pan,11
  !c5
  !rest
  !pan,9
  !c5
  !end

.pattern5_4
  !volume,140
  !dynamicVolume,120,210
  db 16
  !rest
  !instr,!instr01
  !pan,9
  db 16,$26
  !gs4
  !rest
  !pan,11
  !gs4
  !rest
  !pan,9
  !gs4
  !rest
  !pan,11
  !gs4
  !dynamicVolume,120,140
  !rest
  !pan,9
  !ds5
  !rest
  !pan,11
  !ds5
  !rest
  !pan,9
  !ds5
  !rest
  !pan,11
  !ds5
  !dynamicVolume,120,210
  !rest
  !pan,9
  !gs4
  !rest
  !pan,11
  !gs4
  !rest
  !pan,9
  !gs4
  !rest
  !pan,11
  !gs4
  !dynamicVolume,120,140
  !rest
  !pan,9
  !ds5
  !rest
  !pan,11
  !ds5
  !rest
  !pan,9
  !ds5
  !rest
  !pan,11
  !ds5
  !end

.pattern6_0
  !loop : dw .sub5919 : db 2
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 8,$77
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2D)
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 32,$77
  %percNote(!instr30-!instr2D)
  !pan,8
  db 32,$73
  %percNote(!instr31-!instr2D)
  !end

.pattern6_1
  db 16
  !rest
  !instr,!instr02
  !endVibrato
  !volume,185
  !pan,9
  !subtranspose,0
  db 16,$26
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !loop : dw .sub59F7 : db 1
  !rest
  !pan,9
  !c5
  !rest
  !pan,11
  !c5
  !pan,10
  !c5
  !rest
  db 32,$73
  !as4
  !end

.pattern6_2
  !loop : dw .sub5A18 : db 1
  !c3
  !g3
  db 32,$17
  !c3
  db 32,$76
  !as2
  !end

.pattern6_3
  !instr,!instr01
  !volume,165
  !vibrato,16,20,30
  !pan,11
  db 48,$46
  !f6
  db 16,$26
  !ds6
  db 24,$06
  !d6
  db 8,$66
  !d6
  db 16,$56
  !f6
  !g6
  db 32,$16
  !g6
  !ds6
  !c6
  db 32,$28
  !g5
  db 24,$46
  !as5
  db 8,$56
  !as5
  db 16
  !as5
  !d6
  db 24
  !as5
  db 8,$57
  !g5
  db 16,$56
  !d5
  !g5
  db 64,$76
  !ds5
  db 32
  !rest
  !d5
  !end

.pattern6_4
  !instr,!instr01
  !volume,170
  !vibrato,16,20,30
  !pan,10
  db 48,$46
  !gs6
  db 16,$26
  !g6
  db 24,$06
  !f6
  db 8,$67
  !f6
  db 16,$56
  !gs6
  !as6
  db 32,$16
  !c7
  !g6
  !ds6
  db 32,$28
  !c6
  db 24,$46
  !d6
  db 8,$56
  !d6
  db 16
  !d6
  !f6
  db 24
  !d6
  db 8,$78
  !as5
  db 16,$56
  !g5
  !as5
  db 64,$76
  !c6
  db 32
  !rest
  !as5
  !end

.pattern7_0
  !loop : dw .sub5919 : db 3
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !loop : dw .sub5919 : db 3
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !end

.pattern7_1
  !vibrato,20,20,30
  !instr,!instr22
  !volume,170
  !pan,10
  !loop : dw .sub5A35 : db 1
  db 16,$16
  !gs5
  db 8,$46
  !gs5
  !gs5
  db 16,$16
  !gs5
  !as5
  !c6
  db 8,$56
  !c6
  !c6
  db 16,$16
  !as5
  !gs5
  !g5
  db 8,$46
  !g5
  !as5
  db 16,$16
  !ds6
  !f6
  db 32,$66
  !ds6
  !as5
  db 16,$16
  !ds6
  db 8,$48
  !ds6
  db 8,$46
  !ds6
  db 16,$16
  !ds6
  !f6
  !fs6
  !fs6
  !gs6
  !fs6
  !f6
  db 8,$56
  !f6
  !f6
  db 16,$16
  !f6
  !fs6
  db 32,$66
  !f6
  db 16
  !rest
  !instr,!instr04
  !volume,175
  db 8,$54
  !g6
  db 8,$55
  !f6
  !end

.pattern7_2
  !loop : dw .sub5A77 : db 1
  db 16,$38
  !f2
  db 16,$12
  !f3
  db 16,$36
  !c3
  db 16,$12
  !f3
  db 16,$36
  !as2
  db 16,$11
  !as3
  db 16,$39
  !f2
  db 16,$11
  !as3
  db 16,$39
  !ds2
  db 16,$12
  !ds3
  db 16,$37
  !as2
  db 16,$12
  !ds3
  db 16,$39
  !ds2
  db 16,$12
  !ds3
  db 16,$37
  !as2
  db 16,$12
  !ds3
  db 16,$36
  !b2
  db 16,$11
  !b3
  db 16,$37
  !fs2
  db 16,$11
  !b3
  db 16,$36
  !b2
  db 16,$11
  !b3
  db 16,$37
  !fs2
  db 16,$11
  !b3
  db 16,$36
  !as2
  db 16,$11
  !as3
  db 16,$36
  !f3
  db 16,$11
  !as3
  db 16,$36
  !as2
  db 16,$41
  !as3
  db 16,$49
  !f2
  db 16,$41
  !as3
  !end

.pattern7_3
  !pan,9
  !loop : dw .sub5AD8 : db 1
  db 16
  !rest
  db 16,$17
  !as4
  !rest
  db 16,$16
  !as4
  !rest
  db 8,$58
  !as4
  db 8,$56
  !as4
  db 16
  !rest
  db 8,$57
  !as4
  db 8,$55
  !as4
  db 16
  !rest
  db 16,$17
  !b4
  !rest
  db 16,$16
  !b4
  !rest
  db 8,$58
  !b4
  db 8,$56
  !b4
  db 16
  !rest
  db 8,$57
  !b4
  db 8,$55
  !b4
  db 16
  !rest
  db 16,$17
  !as4
  !rest
  db 16,$16
  !as4
  !rest
  db 8,$58
  !as4
  db 8,$56
  !as4
  db 16
  !rest
  db 8,$57
  !as4
  db 8,$55
  !as4
  !end

.pattern7_4
  !pan,11
  !loop : dw .sub5B54 : db 1
  db 16
  !rest
  db 16,$17
  !g5
  !rest
  db 16,$16
  !g5
  !rest
  db 8,$58
  !g5
  db 8,$56
  !g5
  db 16
  !rest
  db 8,$57
  !g5
  db 8,$55
  !g5
  db 16
  !rest
  db 16,$17
  !fs5
  !rest
  db 16,$16
  !fs5
  !rest
  db 8,$58
  !fs5
  db 8,$56
  !fs5
  db 16
  !rest
  db 8,$57
  !fs5
  db 8,$55
  !fs5
  db 16
  !rest
  db 16,$17
  !f5
  !rest
  db 16,$16
  !f5
  !rest
  db 8,$58
  !f5
  db 8,$56
  !f5
  db 16
  !rest
  db 8,$57
  !f5
  db 8,$55
  !f5
  !end

.pattern8_0
  !loop : dw .sub5919 : db 3
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !loop : dw .sub5919 : db 2
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$78
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$78
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 32,$78
  !d3
  !pan,8
  db 32,$74
  %percNote(!instr31-!instr2D)
  !end

.pattern8_1
  !loop : dw .sub5A35 : db 1
  db 16,$16
  !gs5
  db 8,$46
  !gs5
  !gs5
  db 16,$16
  !gs5
  !as5
  !c6
  db 8,$56
  !c6
  !c6
  db 16,$16
  !d6
  !f6
  !g6
  db 8,$46
  !g6
  !g6
  db 16,$16
  !g6
  !as6
  !g6
  db 16,$36
  !g6
  db 16,$56
  !f6
  !ds6
  db 16,$16
  !d6
  db 16,$56
  !f6
  db 16,$16
  !g6
  !d6
  db 16,$56
  !f6
  db 16,$16
  !g6
  !d6
  db 16,$56
  !f6
  db 16,$16
  !d6
  db 16,$56
  !f6
  db 16,$16
  !g6
  !c7
  db 32
  !b6
  !instr,!instr2E
  !volume,255
  db 32,$7C
  !g2
  !end

.pattern8_2
  !loop : dw .sub5A77 : db 1
  db 16,$38
  !f2
  db 16,$22
  !f3
  db 16,$36
  !c3
  db 16,$22
  !f3
  db 16,$36
  !as2
  db 16,$21
  !as3
  db 16,$39
  !f2
  db 16,$21
  !as3
  db 16,$49
  !ds2
  db 16,$33
  !ds3
  db 16,$46
  !as2
  db 16,$33
  !ds3
  db 16,$47
  !gs2
  db 16,$33
  !gs3
  db 16,$46
  !ds3
  db 16,$34
  !gs3
  db 16,$5B
  !d2
  db 16,$45
  !d3
  db 16,$56
  !a2
  db 16,$45
  !d3
  db 16,$59
  !d2
  db 16,$45
  !d3
  db 16,$56
  !a2
  db 16,$45
  !d3
  db 16,$58
  !g2
  db 16,$46
  !g3
  db 16,$56
  !d3
  db 16,$46
  !g3
  db 32,$18
  !g2
  db 32,$79
  !g2
  !end

.pattern8_3
  !loop : dw .sub5AD8 : db 1
  db 16
  !rest
  db 16,$17
  !as4
  !rest
  db 16,$16
  !as4
  !rest
  db 8,$58
  !c5
  db 8,$56
  !c5
  db 16
  !rest
  db 8,$57
  !c5
  db 8,$55
  !c5
  db 16
  !rest
  db 16,$37
  !c5
  !rest
  db 16,$36
  !c5
  !rest
  db 8,$58
  !c5
  db 8,$56
  !c5
  db 16
  !rest
  db 8,$57
  !c5
  db 8,$55
  !c5
  db 16
  !rest
  db 8,$58
  !d5
  db 8,$56
  !d5
  db 16
  !rest
  db 8,$58
  !c5
  db 8,$56
  !c5
  db 32,$18
  !b4
  !instr,!instr04
  !volume,175
  db 32,$77
  !d5
  !pitchSlide,16,16 : !ds6
  !end

.pattern8_4
  !loop : dw .sub5B54 : db 1
  db 16
  !rest
  db 16,$17
  !g5
  !rest
  db 16,$16
  !g5
  !rest
  db 8,$58
  !ds5
  db 8,$56
  !ds5
  db 16
  !rest
  db 8,$57
  !ds5
  db 8,$55
  !ds5
  db 16
  !rest
  db 16,$37
  !a5
  !rest
  db 16,$36
  !a5
  !rest
  db 8,$58
  !a5
  db 8,$56
  !a5
  db 16
  !rest
  db 8,$57
  !a5
  db 8,$55
  !a5
  db 16
  !rest
  db 8,$58
  !f5
  db 8,$56
  !f5
  db 16
  !rest
  db 8,$58
  !f5
  db 8,$56
  !f5
  db 32,$18
  !g5
  !instr,!instr04
  !volume,180
  db 32,$77
  !g5
  !pitchSlide,16,16 : !g6
  !end

.sub5919
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 16,$71
  %percNote(!instr2D-!instr2D)
  !end

.sub5946
  db 32,$46
  !ds6
  !d6
  db 64,$36
  !c6
  db 32,$46
  !c6
  !d6
  !ds6
  !c6
  !as5
  !c6
  db 64,$36
  !g5
  !end

.sub5959
  db 32,$26
  !c3
  db 32,$28
  !g2
  db 32,$26
  !c3
  db 32,$28
  !g2
  !end

.sub5966
  !g3
  !g4
  !c3
  !g4
  !g3
  !g4
  !c3
  !g4
  !end

.sub596F
  !c4
  !ds5
  !g3
  !ds5
  !c4
  !ds5
  !g3
  !ds5
  !end

.sub5978
  !pan,9
  db 16,$26
  !c4
  !c5
  !pan,11
  !c3
  !c5
  !pan,9
  !c4
  !c5
  !pan,11
  !c3
  !c5
  !pan,9
  !c4
  !c5
  !pan,11
  !c3
  !c5
  !pan,9
  !c4
  !c5
  !pan,11
  !c3
  !c5
  !end

.sub599B
  !pan,11
  db 16,$26
  !c3
  !ds5
  !pan,9
  !g3
  !ds5
  !pan,11
  !c3
  !ds5
  !pan,9
  !g3
  !ds5
  !pan,11
  !c3
  !ds5
  !pan,9
  !g3
  !ds5
  !pan,11
  !c3
  !ds5
  !pan,9
  !g3
  !ds5
  !end

.sub59BE
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 16,$77
  !d3
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$70
  %percNote(!instr2D-!instr2D)
  !end

.sub59F7
  !rest
  !pan,9
  !c5
  !rest
  !pan,11
  !c5
  !rest
  !pan,9
  !c5
  !rest
  !pan,11
  !c5
  !rest
  !pan,9
  !as4
  !rest
  !pan,11
  !as4
  !rest
  !pan,9
  !as4
  !rest
  !pan,11
  !as4
  !end

.sub5A18
  db 32,$29
  !f2
  db 32,$26
  !c3
  db 32,$29
  !f2
  db 32,$26
  !f3
  !c3
  !g3
  !c3
  db 32,$28
  !g2
  !g2
  db 32,$26
  !g3
  db 32,$28
  !g2
  db 32,$26
  !g3
  !end

.sub5A35
  db 16,$16
  !ds6
  db 8,$46
  !ds6
  !ds6
  db 16,$16
  !ds6
  !f6
  !g6
  !g6
  !f6
  !ds6
  !d6
  db 8,$46
  !d6
  !d6
  db 16,$16
  !d6
  !ds6
  db 32,$66
  !d6
  db 16
  !rest
  db 8
  !ds6
  !d6
  db 16,$16
  !c6
  db 8,$46
  !c6
  !c6
  db 16,$16
  !c6
  !d6
  !ds6
  !ds6
  !d6
  !c6
  !as5
  db 8,$46
  !as5
  !as5
  db 16,$16
  !as5
  !c6
  db 32,$66
  !d6
  db 16
  !rest
  db 8,$56
  !c6
  !as5
  !end

.sub5A77
  db 16,$39
  !ds2
  db 16,$12
  !ds3
  db 16,$38
  !g2
  db 16,$12
  !ds3
  db 16,$37
  !as2
  db 16,$12
  !ds3
  db 16,$38
  !g2
  db 16,$12
  !ds3
  db 16,$36
  !as2
  db 16,$11
  !as3
  db 16,$36
  !f3
  db 16,$11
  !as3
  db 16,$36
  !as2
  db 16,$11
  !as3
  db 16,$39
  !f2
  db 16,$11
  !as3
  db 16,$36
  !c3
  db 16,$11
  !c4
  db 16,$38
  !g2
  db 16,$11
  !c4
  db 16,$36
  !c3
  db 16,$11
  !c4
  db 16,$38
  !g2
  db 16,$11
  !c4
  db 16,$38
  !g2
  db 16,$12
  !g3
  db 16,$36
  !d3
  db 16,$12
  !g3
  db 16,$38
  !g2
  db 16,$12
  !g3
  db 16,$36
  !d3
  db 16,$12
  !g3
  !end

.sub5AD8
  db 16
  !rest
  !instr,!instr01
  !volume,195
  !endVibrato
  db 16,$17
  !as4
  !rest
  db 16,$16
  !as4
  !rest
  db 8,$58
  !as4
  db 8,$56
  !as4
  db 16
  !rest
  db 8,$57
  !as4
  db 8,$55
  !as4
  db 16
  !rest
  db 16,$17
  !as4
  !rest
  db 16,$16
  !as4
  !rest
  db 8,$58
  !as4
  db 8,$56
  !as4
  db 16
  !rest
  db 8,$57
  !as4
  db 8,$55
  !as4
  db 16
  !rest
  db 16,$17
  !c5
  !rest
  db 16,$16
  !c5
  !rest
  db 8,$58
  !c5
  !c5
  db 16
  !rest
  db 8,$57
  !c5
  db 8,$55
  !c5
  db 16
  !rest
  db 16,$17
  !as4
  !rest
  db 16,$16
  !as4
  !rest
  db 8,$58
  !as4
  db 8,$56
  !as4
  db 16
  !rest
  db 8,$57
  !as4
  db 8,$55
  !as4
  db 16
  !rest
  db 16,$17
  !gs4
  !rest
  db 16,$16
  !gs4
  !rest
  db 8,$58
  !as4
  db 8,$56
  !as4
  db 16
  !rest
  db 8,$57
  !as4
  db 8,$55
  !as4
  !end

.sub5B54
  db 16
  !rest
  !instr,!instr01
  !volume,185
  !endVibrato
  db 16,$17
  !g5
  !rest
  db 16,$16
  !g5
  !rest
  db 8,$58
  !g5
  db 8,$56
  !g5
  db 16
  !rest
  db 8,$57
  !g5
  db 8,$55
  !g5
  db 16
  !rest
  db 16,$17
  !f5
  !rest
  db 16,$16
  !f5
  !rest
  db 8,$58
  !f5
  db 8,$56
  !f5
  db 16
  !rest
  db 8,$57
  !f5
  db 8,$55
  !f5
  db 16
  !rest
  db 16,$17
  !g5
  !rest
  db 16,$16
  !g5
  !rest
  db 8,$58
  !g5
  db 8,$56
  !g5
  db 16
  !rest
  db 8,$57
  !g5
  db 8,$55
  !g5
  db 16
  !rest
  db 16,$17
  !f5
  !rest
  db 16,$16
  !f5
  !rest
  db 8,$58
  !f5
  db 8,$56
  !f5
  db 16
  !rest
  db 8,$57
  !f5
  db 8,$55
  !f5
  db 16
  !rest
  db 16,$17
  !ds5
  !rest
  db 16,$16
  !ds5
  !rest
  db 8,$58
  !f5
  db 8,$56
  !f5
  db 16
  !rest
  db 8,$57
  !f5
  db 8,$55
  !f5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
