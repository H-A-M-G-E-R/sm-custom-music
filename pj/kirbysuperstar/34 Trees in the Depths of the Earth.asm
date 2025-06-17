asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr17 = $17
!instr19 = $18
!instr22 = $19
!instr23 = $1A
!instr26 = $1B
!instr29 = $1C
!instr2B = $1D
!instr2C = $1E
!instr2D = $1F
!instr2E = $20
!instr2F = $21
!instr30 = $22
!instr31 = $23
!instr32 = $24
!instr34 = $25

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr17,$8E,$E0,$B8,$03,$C0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr29,$88,$87,$B8,$07,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FD,$F1,$B8,$07,$40
  db !instr32,$8F,$E0,$B8,$03,$C0
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample26,Sample26+27
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+27
  dw Sample32,Sample32+2232
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"
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
  dw .pattern3
  dw .pattern4
  dw .pattern2
  dw .pattern3
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern3_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern3_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern3_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !musicVolume,255
  !tempo,51
  !volume,230
  !pan,10
  !echo,%00011110,49,49
  !echoParameters,5,60,0
  !loop : dw .sub5AEB : db 2
  !end

.pattern0_1
  !volume,230
  !pan,12
  db 100,$72
  %percNote(!instr31-!instr2C)
  !pan,10
  !instr,!instr34
  db 11,$78
  !g3
  db 9,$75
  !g3
  db 20
  !g4
  db 20,$79
  !g3
  !pan,12
  db 100,$72
  %percNote(!instr31-!instr2C)
  !instr,!instr34
  !pan,10
  db 11,$78
  !g3
  db 9,$75
  !g3
  db 20
  !g4
  db 20,$79
  !g3
  !end

.pattern0_2
  !instr,!instr17
  !volume,223
  !pan,10
  !subtranspose,60
  !slideIn,0,9,2
  db 20,$78
  !g2
  !endSlide
  db 40,$06
  !c3
  db 20,$46
  !c3
  !subtranspose,188
  db 20,$76
  !as2
  !subtranspose,60
  db 20,$16
  !c3
  !subtranspose,188
  db 11,$76
  !as2
  !subtranspose,60
  db 9
  !c3
  db 20
  !d3
  !slideIn,0,9,2
  db 20,$78
  !g2
  !endSlide
  db 40,$06
  !c3
  db 20,$46
  !c3
  !subtranspose,188
  db 11,$76
  !as2
  !subtranspose,60
  db 9
  !c3
  !subtranspose,188
  db 11
  !as2
  !subtranspose,60
  db 9
  !c3
  db 11,$77
  !gs2
  db 9,$76
  !as2
  db 20,$78
  !g2
  !end

.pattern0_3
  db 1
  !rest
  !vibrato,0,15,40
  !instr,!instr17
  !volume,165
  !pan,20
  !subtranspose,65
  !slideIn,0,9,2
  db 20,$56
  !g4
  !endSlide
  db 40,$06
  !c5
  db 20,$46
  !c5
  !subtranspose,193
  db 20,$56
  !as4
  !subtranspose,65
  db 20,$16
  !c5
  !subtranspose,193
  db 11,$56
  !as4
  !subtranspose,65
  db 9
  !c5
  db 20
  !d5
  !slideIn,0,9,2
  !g4
  !endSlide
  db 40,$06
  !c5
  db 20,$46
  !c5
  !subtranspose,193
  db 11,$56
  !as4
  !subtranspose,65
  db 9
  !c5
  !subtranspose,193
  db 11
  !as4
  !subtranspose,65
  db 9
  !c5
  db 11
  !gs4
  db 9
  !as4
  db 19
  !g4
  !end

.pattern0_4
  !vibrato,0,20,40
  !instr,!instr17
  !volume,165
  !pan,0
  !subtranspose,60
  !slideIn,0,9,2
  db 20,$56
  !g4
  !endSlide
  db 40,$06
  !c5
  db 20,$46
  !c5
  !subtranspose,188
  db 20,$56
  !as4
  !subtranspose,60
  db 20,$16
  !c5
  !subtranspose,188
  db 11,$56
  !as4
  !subtranspose,60
  db 9
  !c5
  db 20
  !d5
  !slideIn,0,9,2
  !g4
  !endSlide
  db 40,$06
  !c5
  db 20,$46
  !c5
  !subtranspose,188
  db 11,$56
  !as4
  !subtranspose,60
  db 9
  !c5
  !subtranspose,188
  db 11
  !as4
  !subtranspose,60
  db 9
  !c5
  db 11
  !gs4
  db 9
  !as4
  db 20
  !g4
  !end

.pattern1_0
  !pan,8
  !volume,198
  !echoParameters,5,60,0
  !echo,%00011100,45,45
  !instr,!instr30
  db 20,$78
  !a4
  db 7,$73
  !a4
  db 6,$72
  !a4
  db 7,$71
  !a4
  db 20,$74
  !a4
  db 20,$79
  !a4
  db 11,$71
  !a4
  db 9,$70
  !a4
  db 11,$72
  !a4
  db 9,$71
  !a4
  db 20,$79
  !a4
  db 7,$72
  !a4
  db 6,$71
  !a4
  db 7,$70
  !a4
  db 20,$76
  !a4
  db 7,$73
  !a4
  db 6,$72
  !a4
  db 7,$71
  !a4
  db 20,$77
  !a4
  db 20,$79
  !a4
  db 11,$72
  !a4
  db 9,$71
  !a4
  db 11,$75
  !a4
  db 9,$71
  !a4
  db 20,$79
  !a4
  db 7,$72
  !a4
  db 6,$73
  !a4
  db 7,$75
  !a4
  !end

.pattern1_1
  !pan,18
  !volume,198
  !instr,!instr2D
  !loop : dw .sub5B16 : db 2
  !end

.pattern1_2
  db 80
  !rest
  !rest
  db 70
  !rest
  !rest
  !subtranspose,0
  !instr,!instr34
  !volume,230
  db 20,$79
  !g3
  !end

.pattern1_3
  !endVibrato
  !subtranspose,40
  !pan,9
  !instr,!instr32
  !volume,216
  db 80,$06
  !g4
  !rest
  !rest
  !rest
  !end

.pattern1_4
  !subtranspose,40
  !pan,11
  !instr,!instr32
  !volume,189
  db 80,$06
  !d5
  !rest
  !rest
  !rest
  !end

.pattern2_0
  !pan,10
  !volume,190
  !instr,!instr30
  !loop : dw .sub5B41 : db 4
  !end

.pattern2_1
  !volume,186
  !loop : dw .sub5B96 : db 8
  !end

.pattern2_2
  !volume,230
  !instr,!instr34
  !loop : dw .sub5BCB : db 8
  !end

.pattern2_3
  !subtranspose,0
  !instr,!instr22
  !volume,155
  !loop : dw .sub5BF0 : db 4
  !end

.pattern2_4
  db 20
  !rest
  !pan,10
  !instr,!instr19
  !volume,175
  !vibrato,0,17,40
  !subtranspose,60
  db 20,$17
  !g6
  !slideIn,0,5,1
  db 40,$45
  !c7
  !subtranspose,188
  db 31,$56
  !as6
  !subtranspose,60
  !endSlide
  db 9,$55
  !c7
  !subtranspose,188
  db 11,$56
  !as6
  !subtranspose,60
  db 9,$55
  !c7
  db 11,$56
  !a6
  !subtranspose,188
  db 9
  !as6
  !subtranspose,60
  db 11,$57
  !gs6
  db 9,$56
  !as6
  db 40,$37
  !gs6
  db 11,$56
  !gs6
  db 9
  !as6
  db 40
  !g6
  db 31
  !f6
  db 9
  !ds6
  db 11
  !ds6
  db 9
  !d6
  db 40
  !c6
  db 11
  !c6
  db 9
  !d6
  !subtranspose,188
  db 31,$48
  !ds6
  db 9,$5B
  !ds6
  !subtranspose,60
  db 31,$48
  !d6
  db 9,$5B
  !d6
  db 31,$48
  !c6
  db 9,$5B
  !as5
  db 31,$48
  !gs5
  db 9,$5B
  !as5
  db 40,$48
  !g5
  db 31
  !g5
  db 9,$5B
  !c6
  db 11,$58
  !gs5
  db 9
  !as5
  db 40,$48
  !g5
  !pan,9
  !subtranspose,0
  !instr,!instr23
  !volume,160
  !slideIn,0,4,1
  db 20,$14
  !g7
  !endSlide
  db 6,$76
  !g6
  db 5
  !a6
  db 29,$56
  !g6
  !subtranspose,128
  !slideIn,0,9,1
  db 31
  !as6
  !endSlide
  !subtranspose,0
  db 9
  !a6
  db 11
  !g6
  db 6
  !a6
  !g6
  !a6
  !g6
  db 5
  !a6
  !subtranspose,128
  !slideIn,0,8,1
  db 31
  !ds6
  !endSlide
  !subtranspose,0
  db 9
  !f6
  db 40
  !g6
  db 31
  !c6
  db 9
  !g6
  db 7,$78
  !c6
  db 6,$75
  !d6
  db 5,$73
  !c6
  db 6,$74
  !d6
  db 5
  !c6
  db 6,$75
  !d6
  db 5
  !c6
  db 20,$07
  !c6
  db 20,$06
  !g6
  db 40,$36
  !c6
  !subtranspose,128
  db 31,$56
  !ds6
  !subtranspose,0
  db 9
  !d6
  db 31,$36
  !c6
  db 9,$56
  !c6
  !subtranspose,128
  db 31,$36
  !as5
  db 9,$56
  !as5
  !subtranspose,0
  db 31,$36
  !a5
  !subtranspose,128
  db 9,$56
  !as5
  !subtranspose,0
  db 31,$36
  !g5
  db 9,$56
  !a5
  !end

.pattern3_0
  !loop : dw .sub5B41 : db 4
  !end

.pattern3_1
  !loop : dw .sub5B96 : db 7
  !pan,14
  !instr,!instr2D
  db 20,$38
  !g3
  db 7,$75
  !g3
  db 6,$73
  !g3
  db 7,$72
  !g3
  db 20,$34
  !g3
  db 20,$36
  !g3
  !volume,207
  !instr,!instr2E
  !pan,12
  db 11,$78
  !g3
  !pan,8
  db 9
  !d3
  !pan,12
  db 11
  !g3
  !pan,10
  db 20,$76
  !c5
  !pan,12
  db 9,$78
  !g3
  db 20,$72
  %percNote(!instr31-!instr2C)
  !end

.pattern3_2
  !loop : dw .sub5BCB : db 8
  !end

.pattern3_3
  !loop : dw .sub5BF0 : db 4
  !end

.pattern3_4
  db 20
  !rest
  !pan,10
  !instr,!instr29
  !volume,183
  !vibrato,12,20,90
  !subtranspose,0
  db 20,$17
  !g6
  !slideIn,0,5,1
  db 40,$45
  !c7
  !subtranspose,128
  db 31,$56
  !as6
  !subtranspose,0
  !endSlide
  db 9
  !c7
  !subtranspose,128
  db 11,$58
  !as6
  !subtranspose,0
  db 9,$56
  !c7
  db 11,$58
  !a6
  !subtranspose,128
  db 9
  !as6
  !subtranspose,0
  db 11,$57
  !gs6
  db 9,$56
  !as6
  db 40,$37
  !gs6
  db 11,$56
  !gs6
  db 9
  !as6
  db 40
  !g6
  db 31
  !f6
  db 9
  !ds6
  db 11
  !ds6
  db 9
  !d6
  db 40
  !c6
  db 11
  !c6
  db 9
  !d6
  !subtranspose,128
  db 31,$48
  !ds6
  db 9,$5B
  !ds6
  !subtranspose,0
  db 31,$48
  !d6
  db 9,$5B
  !d6
  db 31,$48
  !c6
  db 9,$5B
  !as5
  db 31,$48
  !gs5
  db 9,$5B
  !as5
  db 40,$48
  !g5
  db 31
  !g5
  db 9,$5B
  !c6
  db 11,$5C
  !gs5
  db 9
  !as5
  db 40,$58
  !g5
  !pan,11
  !subtranspose,0
  !instr,!instr22
  !volume,150
  db 20,$13
  !g7
  db 6,$76
  !g6
  db 5
  !gs6
  db 42,$36
  !g6
  db 14,$56
  !c7
  db 13
  !ds7
  !slideIn,0,7,1
  db 31,$53
  !g7
  !endSlide
  !transpose,12
  db 9,$52
  !c7
  !subtranspose,128
  db 31,$53
  !as6
  !subtranspose,0
  db 9
  !a6
  !transpose,0
  db 11
  !gs7
  db 9
  !as7
  db 11
  !gs7
  db 9
  !as7
  db 11
  !gs7
  db 9
  !as7
  db 20,$06
  !g7
  !f7
  !slideIn,0,10,1
  !subtranspose,128
  db 40,$36
  !ds7
  !endSlide
  !subtranspose,0
  db 20,$06
  !f7
  db 40,$36
  !g7
  db 31,$46
  !ds7
  db 9,$56
  !d7
  db 20,$16
  !c7
  db 11,$66
  !as6
  db 9
  !c7
  db 20,$16
  !d7
  !subtranspose,128
  db 11,$66
  !as6
  !subtranspose,0
  db 9
  !c7
  db 11
  !a6
  !subtranspose,128
  db 9
  !as6
  !subtranspose,0
  db 11
  !a6
  !subtranspose,128
  db 9
  !as6
  !subtranspose,0
  db 11
  !gs6
  db 9
  !as6
  db 20,$56
  !g6
  !end

.pattern4_1
  !pan,8
  db 40,$72
  %percNote(!instr31-!instr2C)
  !instr,!instr2E
  !pan,8
  db 11,$77
  !g3
  !pan,12
  db 9
  !d3
  !pan,10
  db 20,$75
  !c5
  !pan,8
  db 11,$77
  !g3
  !pan,12
  db 9
  !d3
  !pan,8
  db 11
  !g3
  !pan,12
  db 9
  !d3
  !pan,10
  db 20,$75
  !c5
  !pan,8
  db 11,$77
  !g3
  !pan,10
  db 9,$72
  !c5
  !loop : dw .sub5C55 : db 6
  !pan,8
  db 11,$77
  !g3
  !pan,12
  db 9
  !d3
  !pan,10
  db 20,$75
  !c5
  !pan,8
  db 11,$77
  !g3
  !pan,12
  db 9
  !d3
  !pan,10
  db 20,$75
  !c5
  !pan,8
  db 11,$77
  !g3
  !pan,12
  db 9
  !d3
  !pan,8
  db 11
  !g3
  !pan,12
  !instr,!instr2E
  db 9
  !e3
  db 20,$79
  !e3
  !pan,8
  db 20,$78
  !e3
  !end

.pattern4_2
  !loop : dw .sub5C92 : db 2
  !loop : dw .sub5BCB : db 2
  !loop : dw .sub5C92 : db 2
  !loop : dw .sub5BCB : db 2
  !end

.pattern4_3
  !subtranspose,60
  !instr,!instr19
  !volume,180
  !pan,12
  !vibrato,0,25,40
  db 20,$06
  !c6
  db 40,$46
  !gs5
  db 11,$56
  !gs5
  db 9
  !c6
  db 7,$78
  !ds6
  !dynamicVolume,20,115
  db 20
  !tie
  !dynamicVolume,173,177
  db 53
  !tie
  db 120
  !tie
  db 20
  !rest
  db 11
  !ds5
  db 9
  !d5
  db 11,$79
  !c5
  !subtranspose,188
  db 9,$78
  !as4
  !subtranspose,60
  db 40,$04
  !a4
  !subtranspose,0
  !instr,!instr2F
  !pan,20
  !volume,180
  db 60,$78
  !fs7
  db 40,$73
  !fs7
  db 20
  !rest
  db 40,$75
  !fs7
  db 60,$78
  !fs7
  db 40,$73
  !fs7
  !subtranspose,60
  !instr,!instr19
  !volume,180
  !pan,12
  !vibrato,0,25,40
  db 20,$06
  !c6
  db 40,$46
  !gs5
  db 11,$56
  !gs5
  db 9
  !c6
  db 7,$78
  !ds6
  !dynamicVolume,20,115
  db 20
  !tie
  !dynamicVolume,133,180
  db 53
  !tie
  db 80
  !tie
  db 40
  !rest
  !subtranspose,188
  !slideIn,0,9,2
  db 31
  !ds5
  !endSlide
  !subtranspose,60
  db 9
  !f5
  !subtranspose,188
  db 11
  !ds5
  !subtranspose,60
  db 9
  !f5
  db 40,$08
  !g5
  !subtranspose,0
  !instr,!instr2F
  !pan,20
  !volume,180
  db 60,$78
  !fs7
  db 40,$73
  !fs7
  db 20
  !rest
  db 40,$75
  !fs7
  db 60,$78
  !fs7
  db 40,$74
  !fs7
  !end

.pattern4_4
  !subtranspose,60
  !instr,!instr19
  !volume,180
  !pan,8
  !vibrato,0,25,40
  db 20,$06
  !f6
  db 40,$46
  !ds6
  db 11,$56
  !ds6
  db 9
  !f6
  db 7,$78
  !g6
  !dynamicVolume,20,115
  db 20
  !tie
  !dynamicVolume,173,177
  db 53
  !tie
  db 120
  !tie
  db 20
  !rest
  db 11,$77
  !ds6
  db 9
  !d6
  db 11,$79
  !c6
  !subtranspose,188
  db 9,$78
  !as4
  !subtranspose,60
  db 43,$03
  !a5
  !subtranspose,0
  !instr,!instr2F
  !pan,0
  !volume,180
  db 60,$78
  !fs7
  db 40,$73
  !fs7
  db 20
  !rest
  db 40,$75
  !fs7
  db 60,$78
  !fs7
  db 37,$74
  !fs7
  !subtranspose,60
  !instr,!instr19
  !volume,180
  !pan,8
  !vibrato,0,25,40
  db 20,$06
  !f6
  db 40,$46
  !ds6
  db 11,$56
  !ds6
  db 9
  !f6
  db 7,$78
  !g6
  !dynamicVolume,20,115
  db 20
  !tie
  !dynamicVolume,133,180
  db 53
  !tie
  db 80
  !tie
  db 40
  !rest
  !subtranspose,188
  !slideIn,0,9,2
  db 31,$77
  !ds6
  !endSlide
  !subtranspose,60
  db 9
  !f6
  !subtranspose,188
  db 11,$78
  !ds6
  !subtranspose,60
  db 9
  !f6
  db 43,$08
  !g6
  !subtranspose,0
  !instr,!instr2F
  !pan,0
  !volume,180
  db 60,$78
  !fs7
  db 40,$73
  !fs7
  db 20
  !rest
  db 40,$75
  !fs7
  db 60,$78
  !fs7
  db 37,$74
  !fs7
  !end

.pattern5_1
  !instr,!instr2E
  !loop : dw .sub5C55 : db 7
  !pan,8
  db 11,$77
  !g3
  !pan,12
  db 9
  !d3
  !pan,10
  db 20,$75
  !c5
  !pan,8
  db 11,$77
  !g3
  !pan,12
  db 9
  !d3
  !pan,10
  db 20,$75
  !c5
  !pan,8
  db 11,$77
  !g3
  !pan,12
  db 9
  !d3
  !pan,8
  db 11
  !g3
  !pan,12
  !instr,!instr2E
  db 9
  !e3
  db 20,$79
  !e3
  !pan,8
  db 20,$78
  !e3
  !end

.pattern5_2
  !subtranspose,0
  !instr,!instr2B
  !volume,230
  !loop : dw .sub5CB5 : db 1
  db 31,$06
  !c3
  db 9,$46
  !c3
  db 20,$18
  !g2
  db 20,$16
  !as2
  !c3
  !rest
  db 11,$48
  !g2
  db 9
  !g2
  db 20,$16
  !as2
  db 31,$06
  !c3
  db 9,$46
  !c3
  db 20,$58
  !g2
  db 20,$16
  !as2
  db 31,$06
  !c3
  db 9,$46
  !c3
  db 11,$48
  !g2
  db 9
  !g2
  db 11,$46
  !c3
  db 9
  !c3
  !loop : dw .sub5CB5 : db 1
  !instr,!instr05
  !loop : dw .sub5CE1 : db 2
  !end

.pattern5_3
  !subtranspose,60
  !instr,!instr17
  !volume,180
  !vibrato,0,20,45
  !pan,12
  db 20,$18
  !c5
  db 40,$46
  !c5
  db 11,$56
  !c5
  db 9
  !d5
  db 7,$76
  !ds5
  !dynamicVolume,20,115
  db 20
  !tie
  !dynamicVolume,113,180
  db 53
  !tie
  db 60
  !tie
  db 20
  !rest
  db 20,$18
  !d5
  db 40,$56
  !c5
  db 11
  !c5
  db 9
  !d5
  db 7,$78
  !as4
  !dynamicVolume,20,120
  db 20
  !tie
  !dynamicVolume,60,190
  db 60
  !tie
  !dynamicVolume,73,90
  db 73
  !tie
  !subtranspose,0
  !instr,!instr26
  !volume,100
  !vibrato,10,14,30
  !slideIn,0,11,2
  db 31,$76
  !d7
  !subtranspose,128
  db 29
  !ds7
  !subtranspose,0
  !endSlide
  db 20
  !f7
  db 7
  !d7
  !subtranspose,128
  db 6
  !ds7
  !subtranspose,0
  db 7
  !d7
  db 20
  !c7
  db 20,$75
  !as6
  db 20,$76
  !c7
  !subtranspose,60
  !instr,!instr17
  !volume,180
  !vibrato,0,20,45
  !slideIn,0,9,2
  !d5
  !endSlide
  db 40,$46
  !c5
  db 11,$56
  !c5
  db 9
  !d5
  db 7,$78
  !c5
  !dynamicVolume,20,115
  db 20
  !tie
  !dynamicVolume,103,180
  db 53
  !tie
  db 60,$66
  !d5
  db 11,$76
  !c5
  db 9
  !d5
  db 20
  !d5
  !c5
  !as4
  !d5
  !volume,160
  !pan,20
  db 80,$75
  !d5
  !dynamicPan,1,12
  !tie
  !dynamicVolume,160,240
  !tie
  !tie
  !end

.pattern5_4
  !subtranspose,60
  !instr,!instr17
  !volume,180
  !vibrato,0,20,45
  !pan,8
  db 20,$18
  !f5
  db 40,$46
  !ds5
  db 11,$56
  !ds5
  db 9
  !f5
  db 7,$78
  !g5
  !dynamicVolume,20,115
  db 20
  !tie
  !dynamicVolume,113,180
  db 53
  !tie
  db 60
  !tie
  db 20
  !rest
  db 20,$18
  !f5
  db 40,$56
  !ds5
  db 11
  !ds5
  db 9
  !f5
  db 7,$78
  !d5
  !dynamicVolume,20,120
  db 20
  !tie
  !dynamicVolume,60,190
  db 60
  !tie
  !dynamicVolume,73,90
  db 73
  !tie
  db 5
  !rest
  !subtranspose,15
  !instr,!instr26
  !volume,100
  !vibrato,10,14,30
  !slideIn,0,11,2
  db 31,$76
  !d7
  !subtranspose,133
  db 29
  !ds7
  !subtranspose,0
  !endSlide
  db 20
  !f7
  db 7
  !d7
  !subtranspose,128
  db 6
  !ds7
  !subtranspose,0
  db 7
  !d7
  db 20
  !c7
  db 20,$75
  !as6
  db 15,$76
  !c7
  !subtranspose,60
  !instr,!instr17
  !vibrato,0,20,45
  !pan,8
  !volume,180
  !slideIn,0,9,2
  db 20
  !f5
  !endSlide
  db 40,$46
  !ds5
  db 11,$56
  !ds5
  db 9
  !f5
  db 7,$78
  !g5
  !dynamicVolume,20,115
  db 20
  !tie
  !dynamicVolume,103,180
  db 53
  !tie
  db 60,$66
  !tie
  db 11,$76
  !f5
  db 9
  !g5
  db 20
  !f5
  !ds5
  !d5
  !f5
  !pan,0
  !subtranspose,53
  db 80,$73
  !d5
  !pan,8
  !subtranspose,60
  !f5
  !volume,160
  !dynamicVolume,160,240
  db 80,$75
  !g5
  !tie
  !end

.pattern6_0
  !volume,194
  !loop : dw .sub5B41 : db 4
  !end

.pattern6_1
  !instr,!instr2F
  !loop : dw .sub5CEF : db 4
  !end

.pattern6_2
  !volume,240
  !instr,!instr34
  !loop : dw .sub5D8C : db 8
  !end

.pattern6_3
  db 20
  !rest
  !transpose,244
  !pan,9
  !subtranspose,60
  !instr,!instr19
  !volume,200
  !vibrato,7,12,50
  db 11,$79
  !g5
  db 9,$76
  !f5
  db 20,$26
  !g5
  !f5
  !g5
  !gs5
  db 9,$76
  !g5
  db 11
  !gs5
  !pitchSlide,5,1 : !g5
  db 20
  !f5
  !loop : dw .sub5DA5 : db 1
  !rest
  db 11,$57
  !f5
  db 9,$56
  !g5
  db 40,$75
  !gs5
  !pitchSlide,14,9 : !d6
  db 20,$76
  !c6
  db 20,$66
  !d6
  !subtranspose,188
  db 11,$76
  !as5
  !subtranspose,60
  db 9
  !c6
  db 11
  !gs5
  !subtranspose,188
  db 9
  !as5
  !subtranspose,60
  db 20
  !g5
  db 11
  !f5
  db 9
  !g5
  !subtranspose,188
  db 20
  !ds5
  !subtranspose,60
  !d5
  db 11
  !rest
  !instr,!instr17
  db 9,$78
  !g4
  db 9,$76
  !a4
  !subtranspose,188
  db 11
  !as4
  !subtranspose,60
  db 9
  !c5
  db 11,$78
  !d5
  !subtranspose,188
  db 9,$77
  !ds5
  !subtranspose,60
  db 11,$78
  !f5
  !end

.pattern6_4
  db 20
  !rest
  !pan,11
  !subtranspose,60
  !instr,!instr19
  !volume,185
  !vibrato,8,15,50
  db 11,$79
  !g5
  db 9,$76
  !f5
  db 20,$26
  !g5
  !f5
  !g5
  !gs5
  db 9,$76
  !g5
  db 11
  !gs5
  !pitchSlide,5,1 : !g5
  db 20
  !f5
  !loop : dw .sub5DA5 : db 1
  !rest
  db 11,$57
  !f5
  db 9,$56
  !g5
  db 40,$65
  !gs5
  !pitchSlide,14,9 : !d6
  db 20,$76
  !c6
  db 20,$66
  !d6
  !subtranspose,188
  db 11,$76
  !as5
  !subtranspose,60
  db 9
  !c6
  db 11
  !gs5
  !subtranspose,188
  db 9
  !as5
  !subtranspose,60
  db 20
  !g5
  db 11
  !f5
  db 9
  !g5
  !subtranspose,188
  db 20
  !ds5
  !subtranspose,60
  !d5
  db 11
  !rest
  !instr,!instr17
  db 9,$78
  !g4
  db 9,$76
  !a4
  !subtranspose,188
  db 11
  !as4
  !subtranspose,60
  db 9
  !c5
  db 11,$78
  !d5
  !subtranspose,188
  db 9,$77
  !ds5
  !subtranspose,60
  db 11,$78
  !f5
  !end

.pattern7_1
  !loop : dw .sub5CEF : db 4
  !end

.pattern7_2
  !loop : dw .sub5D8C : db 8
  !end

.pattern7_3
  !pan,9
  !subtranspose,60
  !instr,!instr19
  !volume,185
  !vibrato,8,15,50
  db 20,$39
  !g5
  db 11
  !rest
  !instr,!instr23
  !volume,155
  !transpose,12
  !subtranspose,0
  db 9,$56
  !f5
  db 20,$16
  !g5
  db 40
  !gs5
  db 11,$56
  !g5
  db 9
  !gs5
  !subtranspose,128
  db 20
  !ds5
  !subtranspose,0
  !d5
  !subtranspose,128
  db 20,$03
  !as4
  db 11,$56
  !as4
  !subtranspose,0
  db 9
  !c5
  db 20,$58
  !d5
  !subtranspose,128
  db 20,$55
  !ds5
  !subtranspose,0
  db 11,$58
  !c5
  db 9,$56
  !d5
  !subtranspose,128
  db 11
  !as4
  !subtranspose,0
  db 9
  !c5
  db 11,$58
  !a4
  !subtranspose,128
  db 9,$56
  !as4
  !subtranspose,0
  db 11
  !gs4
  !subtranspose,128
  db 9
  !as4
  !subtranspose,0
  db 20
  !g4
  db 20,$16
  !g5
  db 11,$56
  !f5
  db 9
  !g5
  db 20
  !gs5
  !c6
  !subtranspose,128
  db 11
  !as5
  !subtranspose,0
  db 9
  !c6
  db 11,$57
  !a5
  !subtranspose,128
  db 9,$55
  !as5
  !subtranspose,0
  db 11,$56
  !gs5
  !subtranspose,128
  db 9,$54
  !as5
  !subtranspose,0
  db 20,$26
  !g5
  !d6
  db 11,$56
  !c6
  db 9
  !d6
  !subtranspose,128
  db 20
  !ds6
  !subtranspose,0
  db 20,$55
  !f6
  !subtranspose,128
  db 7,$76
  !ds6
  !subtranspose,0
  db 6,$75
  !f6
  !subtranspose,128
  db 7,$76
  !ds6
  !subtranspose,0
  db 20,$56
  !d6
  db 11
  !c6
  !subtranspose,128
  db 9
  !ds6
  !subtranspose,0
  db 20,$48
  !d6
  db 40,$14
  !g6
  db 20,$54
  !g6
  db 11,$55
  !f6
  db 9,$54
  !g6
  db 20,$53
  !gs6
  db 11,$55
  !f6
  db 9,$54
  !g6
  !subtranspose,128
  db 20,$55
  !ds6
  !subtranspose,0
  db 20,$56
  !d6
  db 11
  !c6
  db 9
  !d6
  !subtranspose,128
  db 20
  !ds6
  !subtranspose,0
  db 20,$54
  !gs5
  db 20,$56
  !g5
  !c6
  !subtranspose,128
  db 11,$57
  !as5
  !subtranspose,0
  db 9,$55
  !c6
  db 11,$56
  !a5
  !subtranspose,128
  db 9,$54
  !as5
  !subtranspose,0
  !slideIn,0,12,1
  db 31,$66
  !g5
  !endSlide
  db 30,$16
  !d6
  db 19,$46
  !d6
  db 20,$56
  !c6
  db 20,$16
  !d6
  !subtranspose,128
  db 11,$56
  !as5
  !subtranspose,0
  db 9
  !c6
  db 20
  !gs5
  !g5
  db 11
  !f5
  db 9
  !g5
  !subtranspose,128
  db 11
  !ds5
  !subtranspose,0
  db 9,$54
  !f5
  db 20,$76
  !d5
  db 11
  !rest
  !subtranspose,60
  !transpose,0
  !instr,!instr17
  !volume,230
  !subtranspose,188
  db 9,$56
  !g4
  db 11
  !as3
  !subtranspose,60
  db 9
  !c4
  db 11
  !d4
  !subtranspose,188
  db 9
  !ds4
  !subtranspose,60
  db 11
  !f4
  !subtranspose,188
  db 9
  !ds4
  !end

.pattern7_4
  !pan,11
  !subtranspose,60
  !instr,!instr19
  !volume,185
  !vibrato,8,15,50
  db 20,$39
  !g5
  db 11
  !rest
  db 9,$56
  !f5
  db 20,$16
  !g5
  db 40
  !gs5
  db 11,$56
  !g5
  db 9
  !gs5
  !subtranspose,188
  db 20
  !ds5
  !subtranspose,60
  !d5
  !subtranspose,188
  db 20,$03
  !as4
  db 11,$56
  !as4
  !subtranspose,60
  db 9
  !c5
  db 20,$58
  !d5
  !subtranspose,188
  db 20,$55
  !ds5
  !subtranspose,60
  db 11,$58
  !c5
  db 9,$56
  !d5
  !subtranspose,188
  db 11
  !as4
  !subtranspose,60
  db 9
  !c5
  db 11,$58
  !a4
  !subtranspose,188
  db 9,$56
  !as4
  !subtranspose,60
  db 11
  !gs4
  !subtranspose,188
  db 9
  !as4
  !subtranspose,60
  db 20
  !g4
  db 20,$16
  !g5
  db 11,$56
  !f5
  db 9
  !g5
  db 20
  !gs5
  !c6
  !subtranspose,188
  db 11
  !as5
  !subtranspose,60
  db 9
  !c6
  db 11,$57
  !a5
  !subtranspose,188
  db 9,$54
  !as5
  !subtranspose,60
  db 11,$56
  !gs5
  !subtranspose,188
  db 9,$55
  !as5
  !subtranspose,60
  db 20,$26
  !g5
  !d6
  db 11,$56
  !c6
  db 9
  !d6
  !subtranspose,188
  db 20
  !ds6
  !subtranspose,60
  db 20,$55
  !f6
  !subtranspose,188
  db 7,$76
  !ds6
  !subtranspose,60
  db 6,$75
  !f6
  !subtranspose,188
  db 7,$76
  !ds6
  !subtranspose,60
  db 20,$56
  !d6
  db 11
  !c6
  !subtranspose,188
  db 9
  !ds6
  !subtranspose,60
  db 20,$48
  !d6
  db 40,$14
  !g6
  db 20,$54
  !g6
  db 11,$55
  !f6
  db 9,$54
  !g6
  db 20,$53
  !gs6
  db 11,$55
  !f6
  db 9,$54
  !g6
  !subtranspose,188
  db 20,$55
  !ds6
  !subtranspose,60
  db 20,$56
  !d6
  db 11
  !c6
  db 9
  !d6
  !subtranspose,188
  db 20
  !ds6
  !subtranspose,60
  db 20,$54
  !gs5
  db 20,$56
  !g5
  !c6
  !subtranspose,188
  db 11,$57
  !as5
  !subtranspose,60
  db 9,$54
  !c6
  db 11,$56
  !a5
  !subtranspose,188
  db 9,$55
  !as5
  !subtranspose,60
  !slideIn,0,12,1
  db 31,$66
  !g5
  !endSlide
  db 30,$16
  !d6
  db 19,$46
  !d6
  db 20,$56
  !c6
  db 20,$16
  !d6
  !subtranspose,188
  db 11,$56
  !as5
  !subtranspose,60
  db 9
  !c6
  db 20
  !gs5
  !g5
  db 11
  !f5
  db 9
  !g5
  !subtranspose,188
  db 11
  !ds5
  !subtranspose,60
  db 9,$54
  !f5
  db 20,$76
  !d5
  db 11
  !rest
  !instr,!instr17
  !volume,230
  db 9,$56
  !g4
  !subtranspose,188
  db 11
  !as4
  !subtranspose,60
  db 9
  !c5
  db 11
  !d5
  !subtranspose,188
  db 9
  !ds5
  !subtranspose,60
  db 11
  !f5
  !subtranspose,188
  db 9
  !ds5
  !end

.sub5AEB
  !instr,!instr30
  db 8,$78
  !a4
  db 6,$70
  !a4
  !a4
  db 7
  !a4
  db 6,$71
  !a4
  db 7
  !a4
  !a4
  db 6,$72
  !a4
  db 7
  !a4
  db 40,$77
  !a4
  db 11,$72
  !a4
  db 9,$71
  !a4
  db 20,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 11,$73
  !a4
  db 9,$72
  !a4
  !end

.sub5B16
  db 20,$28
  !g3
  db 7,$55
  !g3
  db 6,$52
  !g3
  db 7,$53
  !g3
  db 20,$24
  !g3
  db 20,$26
  !g3
  db 11,$52
  !g3
  db 9,$51
  !g3
  db 11,$53
  !g3
  db 9,$52
  !g3
  db 20,$26
  !g3
  db 7,$50
  !g3
  db 6,$51
  !g3
  db 7,$52
  !g3
  !end

.sub5B41
  db 20,$78
  !a4
  db 7,$73
  !a4
  db 6,$72
  !a4
  db 7,$71
  !a4
  db 20,$74
  !a4
  db 20,$79
  !a4
  db 11,$72
  !a4
  db 9,$71
  !a4
  db 11,$73
  !a4
  db 9,$72
  !a4
  db 20,$79
  !a4
  db 7,$72
  !a4
  db 6,$71
  !a4
  db 7,$70
  !a4
  db 20,$76
  !a4
  db 7,$73
  !a4
  db 6,$72
  !a4
  db 7,$71
  !a4
  db 20,$77
  !a4
  db 20,$79
  !a4
  db 11,$73
  !a4
  db 9,$71
  !a4
  db 11,$75
  !a4
  db 9,$72
  !a4
  db 20,$79
  !a4
  db 7,$72
  !a4
  db 6,$73
  !a4
  db 7,$75
  !a4
  !end

.sub5B96
  !pan,14
  !instr,!instr2D
  db 20,$38
  !g3
  db 7,$75
  !g3
  db 6,$73
  !g3
  db 7,$72
  !g3
  db 20,$34
  !g3
  db 20,$36
  !g3
  !instr,!instr2F
  !pan,12
  db 31,$76
  !f6
  !pan,8
  db 9,$75
  !f6
  !pan,10
  db 20,$04
  !g4
  !instr,!instr2D
  !pan,14
  db 7,$72
  !g3
  db 6,$73
  !g3
  db 7,$75
  !g3
  !end

.sub5BCB
  !subtranspose,0
  db 20,$79
  !c4
  db 11,$77
  !c4
  db 9,$74
  !c4
  db 20,$76
  !c4
  db 20,$79
  !c4
  db 11,$77
  !c4
  db 9,$74
  !c4
  db 20,$77
  !c4
  db 11,$7A
  !g3
  db 9
  !g3
  !subtranspose,128
  db 20,$78
  !as3
  !end

.sub5BF0
  !pan,12
  db 11,$35
  !g5
  db 9,$36
  !c5
  db 11
  !g4
  db 9
  !c5
  !pan,8
  db 11,$35
  !g5
  db 9,$36
  !c5
  db 11
  !g4
  db 9
  !c5
  !pan,12
  db 11,$35
  !g5
  db 9,$36
  !c5
  db 11
  !g4
  db 9
  !c5
  !pan,8
  db 11,$35
  !g5
  db 9,$36
  !c5
  !pan,12
  db 11
  !g4
  db 9
  !c5
  !pan,8
  db 11,$35
  !g5
  db 9,$36
  !c5
  db 11
  !g4
  db 9
  !c5
  !pan,12
  db 11,$35
  !g5
  db 9,$36
  !c5
  db 11
  !g4
  db 9
  !c5
  !pan,8
  db 11,$35
  !g5
  db 9,$36
  !c5
  db 11
  !g4
  db 9
  !c5
  !pan,12
  db 11,$35
  !g5
  db 9,$36
  !c5
  !pan,8
  db 11
  !g4
  db 9
  !c5
  !end

.sub5C55
  !pan,8
  db 11,$77
  !g3
  !pan,12
  db 9
  !d3
  !pan,10
  db 20,$75
  !c5
  !pan,8
  db 11,$77
  !g3
  !pan,12
  db 9
  !d3
  !pan,10
  db 20,$75
  !c5
  !pan,8
  db 11,$77
  !g3
  !pan,12
  db 9
  !d3
  !pan,8
  db 11
  !g3
  !pan,12
  db 9
  !d3
  !pan,10
  db 20,$75
  !c5
  !pan,8
  db 11,$77
  !g3
  !pan,10
  db 9,$72
  !c5
  !end

.sub5C92
  !subtranspose,0
  db 20,$79
  !f4
  db 11,$77
  !f4
  db 9,$74
  !f4
  db 20,$76
  !f4
  db 20,$79
  !f4
  db 11,$77
  !f4
  db 9,$74
  !f4
  db 20,$77
  !f4
  db 11,$7A
  !c4
  db 9
  !c4
  db 20,$78
  !ds4
  !end

.sub5CB5
  db 31,$07
  !gs2
  db 9,$46
  !g2
  db 20,$17
  !gs2
  db 20,$16
  !c3
  db 20,$17
  !gs2
  !rest
  db 11,$47
  !gs2
  db 9
  !gs2
  db 20,$46
  !ds3
  db 31,$06
  !as2
  db 9,$46
  !a2
  db 20,$16
  !as2
  !d3
  !as2
  !rest
  db 11,$46
  !as2
  db 9
  !as2
  db 20
  !f3
  !end

.sub5CE1
  db 20,$48
  !g3
  db 20,$4A
  !g2
  !rest
  !g2
  db 40
  !rest
  db 40,$1A
  !g2
  !end

.sub5CEF
  !pan,12
  db 11,$26
  !d5
  !pan,8
  db 9,$24
  !g4
  !pan,10
  db 11,$26
  !g6
  !pan,8
  db 9,$22
  !g4
  !pan,12
  db 11,$26
  !d5
  !pan,8
  db 9,$24
  !g4
  !pan,10
  db 11,$26
  !g6
  !pan,8
  db 9,$22
  !g4
  !pan,12
  db 11,$26
  !d5
  !pan,8
  db 9,$24
  !g4
  !pan,12
  db 11,$26
  !d4
  !pan,8
  db 9,$24
  !g4
  !pan,10
  db 11,$26
  !g6
  !pan,8
  db 9,$22
  !g4
  !pan,12
  db 11
  !d5
  !pan,8
  db 9
  !g4
  !pan,12
  db 11,$26
  !d6
  !pan,8
  db 9,$24
  !g4
  !pan,10
  db 11,$26
  !g6
  !pan,8
  db 9,$22
  !g4
  !pan,12
  db 11,$26
  !d5
  !pan,8
  db 9,$24
  !g4
  !pan,10
  db 11,$26
  !g6
  !pan,8
  db 9,$22
  !g4
  !pan,12
  db 11,$26
  !d5
  !pan,8
  db 9,$24
  !g4
  !pan,12
  db 11,$26
  !d4
  !pan,8
  db 9,$24
  !g4
  !pan,10
  db 11,$26
  !g6
  !pan,8
  db 9,$22
  !g4
  !pan,12
  db 11
  !d5
  !pan,8
  db 9
  !g4
  !end

.sub5D8C
  db 31,$79
  !g3
  db 9,$75
  !g3
  db 20,$78
  !g3
  db 20,$76
  !g3
  !rest
  db 20,$78
  !g3
  db 11,$76
  !g4
  db 9
  !g4
  db 20,$77
  !g3
  !end

.sub5DA5
  !rest
  db 11
  !d5
  !subtranspose,188
  db 9
  !ds5
  !subtranspose,60
  db 20,$26
  !f5
  !g5
  !subtranspose,188
  !slideIn,0,8,1
  db 20,$76
  !ds5
  !endSlide
  !subtranspose,60
  db 20,$26
  !f5
  !subtranspose,188
  db 20,$76
  !ds5
  !subtranspose,60
  !d5
  !rest
  !subtranspose,188
  db 11
  !as4
  !subtranspose,60
  db 9
  !c5
  db 20,$26
  !d5
  !subtranspose,188
  !ds5
  !subtranspose,60
  !f5
  !subtranspose,188
  !ds5
  !subtranspose,60
  !f5
  !subtranspose,188
  db 11,$76
  !ds5
  !subtranspose,60
  db 9
  !f5
  db 31
  !g5
  db 9
  !f5
  db 20,$26
  !g5
  !f5
  db 11,$76
  !g5
  db 9
  !f5
  db 11
  !gs5
  db 9
  !g5
  !subtranspose,188
  db 11
  !as5
  !subtranspose,60
  db 9
  !a5
  db 11
  !c6
  !subtranspose,188
  db 9
  !as5
  !subtranspose,60
  db 20
  !d6
  !subtranspose,188
  db 11
  !as5
  !subtranspose,60
  db 9
  !c6
  db 20,$26
  !d6
  !slideIn,0,12,1
  !subtranspose,188
  db 40,$76
  !ds6
  !endSlide
  !subtranspose,60
  db 20,$26
  !d6
  db 20,$76
  !c6
  db 20,$16
  !d6
  !subtranspose,188
  db 20,$26
  !as5
  db 11,$56
  !as5
  !subtranspose,60
  db 9,$76
  !c6
  db 20,$26
  !d6
  !subtranspose,188
  db 11
  !as5
  !subtranspose,60
  db 9,$76
  !c6
  db 20
  !gs5
  !subtranspose,188
  db 20,$26
  !as5
  !subtranspose,60
  db 11,$76
  !gs5
  !subtranspose,188
  db 9
  !as5
  !subtranspose,60
  db 20
  !g5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
