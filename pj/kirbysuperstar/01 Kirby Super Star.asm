asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr05 = $18
!instr09 = $19
!instr0B = $1A
!instr17 = $1B
!instr1C = $1C
!instr25 = $1D
!instr2C = $1E
!instr2D = $1F
!instr2E = $20
!instr30 = $21
!instr31 = $22

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr02,$FF,$E0,$B8,$04,$80
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr09,$8F,$F2,$B8,$01,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr17,$8E,$E0,$B8,$03,$C0
  db !instr1C,$AF,$A1,$B8,$03,$C0
  db !instr25,$FF,$E0,$B8,$02,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample02,Sample02+765
  dw Sample05,Sample05+27
  dw Sample08_09,Sample08_09+90
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample24_25,Sample24_25+27
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+3105
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample02: incbin "Sample_759514f69dc1ba8eed65c41c2bb81670.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample24_25: incbin "Sample_9ddfb5e318bb09130c06c0fefb7b2686.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_41817dffd340147cdd072666755faaa0.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
  dw .pattern1
  dw .pattern2
-
  dw .pattern3
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, 0
.pattern3: dw .pattern3_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%01111001,36,36
  !echoParameters,5,60,0
  !musicVolume,255
  !tempo,49
  !volume,255
  !pan,10
  db 80
  !rest
  db 55
  !rest
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$78
  %percNote(!instr30-!instr2C)
  db 9,$77
  %percNote(!instr31-!instr2C)
  db 18
  %percNote(!instr31-!instr2C)
  %percNote(!instr31-!instr2C)
  db 9,$74
  %percNote(!instr31-!instr2C)
  %percNote(!instr31-!instr2C)
  %percNote(!instr31-!instr2C)
  db 9,$77
  %percNote(!instr31-!instr2C)
  db 18
  %percNote(!instr31-!instr2C)
  %percNote(!instr31-!instr2C)
  db 9,$74
  %percNote(!instr31-!instr2C)
  %percNote(!instr31-!instr2C)
  %percNote(!instr31-!instr2C)
  !end

.pattern0_1
  db 72
  !rest
  db 90
  !rest
  !instr,!instr2E
  !pan,11
  db 9,$78
  !d4
  db 18
  !d4
  !d4
  !pan,12
  db 9,$76
  !d5
  !pan,10
  !a4
  !pan,8
  !f4
  !pan,11
  db 9,$78
  !d4
  db 18
  !d4
  !d4
  !pan,12
  db 9,$76
  !d5
  !pan,10
  !a4
  !pan,8
  !f4
  !end

.pattern0_2
  db 72
  !rest
  db 63
  !rest
  !instr,!instr05
  !volume,255
  db 9,$72
  !d4
  db 18,$75
  !d3
  db 9,$68
  !g2
  db 18,$18
  !g2
  db 18,$76
  !g3
  db 9,$66
  !d3
  !g3
  !d3
  !g3
  db 18,$68
  !g2
  db 18,$66
  !cs3
  db 9
  !gs3
  db 18,$68
  !cs3
  !end

.pattern0_3
  !instr,!instr0B
  !volume,150
  !subtranspose,20
  !pan,12
  db 9,$71
  !a6
  !d7
  db 9,$74
  !a6
  !d7
  !a6
  !d7
  !subtranspose,0
  !e6
  db 9,$75
  !f6
  db 9,$76
  !d6
  db 9,$78
  !f6
  db 9,$79
  !c6
  db 9,$7A
  !f6
  db 9,$7C
  !e6
  !f6
  !c6
  !f6
  !e6
  !f6
  !vibrato,0,15,40
  !tremolo,3,15,50
  !subtranspose,60
  !pan,8
  !instr,!instr17
  !volume,195
  db 9,$58
  !f6
  db 18,$06
  !f6
  !f6
  db 27,$46
  !f6
  db 9,$58
  !d6
  db 18,$06
  !d6
  !ds6
  db 9,$56
  !ds6
  db 18
  !ds6
  !end

.pattern0_4
  !instr,!instr0B
  !volume,150
  !pan,8
  db 9,$71
  !a6
  !d7
  db 9,$74
  !a6
  !d7
  !a6
  !d7
  !a6
  db 9,$75
  !d7
  db 9,$76
  !a6
  db 9,$78
  !d7
  db 9,$79
  !a6
  db 9,$7A
  !d7
  db 9,$7C
  !a6
  !d7
  !a6
  !d7
  !a6
  !d7
  !vibrato,0,15,40
  !tremolo,3,15,50
  !subtranspose,60
  !pan,12
  !instr,!instr17
  !volume,195
  db 9,$58
  !g6
  db 18,$06
  !g6
  !a6
  db 27,$46
  !a6
  db 9,$58
  !f6
  db 18,$06
  !f6
  !f6
  db 9,$56
  !f6
  db 18
  !f6
  !end

.pattern0_5
  db 1
  !rest
  !volume,165
  !pan,10
  !instr,!instr25
  db 8,$76
  !a6
  db 16
  !d7
  !dynamicVolume,36,50
  db 36
  !tie
  db 101
  !rest
  !vibrato,0,15,40
  !tremolo,3,15,50
  !subtranspose,60
  !pan,10
  !instr,!instr17
  !volume,205
  db 9,$58
  !c7
  db 18,$06
  !c7
  !c7
  db 27,$46
  !c7
  db 9,$58
  !b6
  db 18,$06
  !b6
  !b6
  db 9,$56
  !b6
  db 18
  !b6
  !end

.pattern0_6
  db 72
  !rest
  db 90
  !rest
  !pan,8
  !instr,!instr02
  !volume,190
  db 9,$58
  !d6
  db 18,$06
  !d6
  !d6
  db 27,$46
  !d6
  db 9,$58
  !d6
  db 18,$06
  !d6
  !cs6
  db 9,$56
  !cs6
  db 18
  !cs6
  !end

.pattern1_0
  !volume,255
  !pan,10
  !loop : dw .sub5719 : db 4
  !end

.pattern1_1
  !volume,255
  !instr,!instr2D
  !pan,11
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,12
  !gs4
  !gs4
  !pan,9
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,8
  !gs4
  !gs4
  !pan,11
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,12
  !gs4
  !gs4
  !pan,9
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,8
  !gs4
  !gs4
  !loop : dw .sub573E : db 3
  !end

.pattern1_2
  !instr,!instr05
  !volume,255
  db 18,$46
  !c3
  db 9
  !g3
  !c3
  !c3
  db 9,$43
  !c4
  db 9,$46
  !c3
  !c3
  !g3
  !c3
  !c3
  db 9,$43
  !c4
  db 9,$46
  !c3
  !c3
  !g3
  !c3
  db 18,$47
  !as2
  db 9,$46
  !f3
  db 9,$47
  !as2
  !as2
  db 9,$44
  !as3
  db 9,$47
  !as2
  !as2
  db 9,$46
  !f3
  db 9,$47
  !as2
  !as2
  db 9,$44
  !as3
  db 9,$47
  !as2
  !as2
  db 9,$46
  !f3
  db 9,$47
  !as2
  db 18,$49
  !f2
  db 9,$46
  !c3
  db 9,$49
  !f2
  !f2
  db 9,$46
  !f3
  db 9,$49
  !f2
  !f2
  db 9,$46
  !c3
  db 9,$49
  !f2
  !f2
  db 9,$46
  !f3
  db 9,$49
  !f2
  !f2
  db 9,$46
  !c3
  !f2
  db 18
  !d3
  db 9,$45
  !gs3
  db 9,$46
  !d3
  !d3
  db 9,$43
  !d4
  db 9,$46
  !d3
  !d3
  !f3
  db 9,$47
  !as2
  !as2
  db 9,$44
  !as3
  db 9,$47
  !as2
  !as2
  db 9,$46
  !gs3
  db 9,$45
  !as3
  !end

.pattern1_3
  !vibrato,0,15,20
  !tremolo,3,15,50
  !subtranspose,60
  !pan,11
  !instr,!instr17
  !volume,195
  db 9,$46
  !e6
  db 18,$06
  !e6
  db 18,$46
  !g6
  db 9
  !c6
  !d6
  !e6
  db 9,$45
  !c7
  db 18,$05
  !c7
  db 18,$46
  !g6
  db 9
  !g6
  db 9,$45
  !c7
  db 9,$46
  !g6
  !d6
  db 18,$06
  !f6
  db 36,$76
  !d6
  db 9
  !rest
  !endTremolo
  !transpose,12
  !instr,!instr09
  !volume,145
  !subtranspose,0
  !pan,8
  db 9,$49
  !g6
  db 9,$46
  !as6
  db 9,$41
  !g6
  !pan,12
  db 9,$46
  !c7
  db 9,$41
  !as6
  db 9,$46
  !f7
  !pan,8
  db 9,$45
  !e7
  !pan,12
  !g7
  !tremolo,3,15,50
  !transpose,0
  !volume,195
  !subtranspose,60
  !instr,!instr17
  !pan,11
  db 9,$46
  !e6
  db 18,$06
  !e6
  db 18,$46
  !g6
  db 9
  !c6
  !e6
  db 9,$44
  !e7
  db 9,$25
  !d7
  db 18,$55
  !c7
  db 18,$45
  !a6
  db 9,$46
  !g6
  db 9,$45
  !a6
  !c7
  !gs6
  db 9,$46
  !f6
  db 9,$45
  !c7
  db 45,$76
  !gs6
  !endVibrato
  !endTremolo
  !subtranspose,0
  !instr,!instr0B
  !volume,165
  !pan,12
  db 9,$46
  !d6
  db 18,$06
  !f6
  !d6
  db 9,$46
  !d6
  !f6
  !f6
  !end

.pattern1_4
  !vibrato,0,15,40
  !tremolo,3,15,50
  !pan,10
  !subtranspose,60
  !instr,!instr17
  !volume,210
  db 9,$46
  !g6
  db 18,$06
  !a6
  db 18,$46
  !c7
  db 9
  !e6
  !g6
  !c7
  db 9,$45
  !f7
  db 18,$05
  !e7
  db 18,$46
  !c7
  db 9
  !d7
  db 9,$45
  !e7
  db 9,$46
  !c7
  !as6
  db 18,$06
  !c7
  db 36,$76
  !g6
  db 9
  !rest
  !transpose,12
  !instr,!instr09
  !volume,145
  !subtranspose,0
  !pan,8
  db 9,$49
  !d6
  db 9,$46
  !f6
  db 9,$41
  !d6
  !pan,12
  db 9,$46
  !g6
  db 9,$41
  !f6
  db 9,$46
  !d7
  !pan,8
  db 9,$45
  !c7
  !pan,12
  !d7
  !transpose,0
  !volume,210
  !subtranspose,60
  !instr,!instr17
  !pan,10
  db 9,$46
  !g6
  db 18,$06
  !a6
  db 18,$46
  !c7
  db 9
  !g6
  !a6
  db 9,$44
  !g7
  db 9,$25
  !f7
  db 18,$55
  !e7
  db 18,$45
  !d7
  db 9,$46
  !c7
  db 9,$45
  !d7
  !e7
  !d7
  db 9,$46
  !gs6
  db 9,$45
  !e7
  db 45,$76
  !c7
  !endVibrato
  !endTremolo
  !subtranspose,0
  !instr,!instr0B
  !volume,165
  !pan,8
  db 9,$46
  !as6
  db 18,$06
  !c7
  !as6
  db 9,$46
  !f6
  !gs6
  !as6
  !end

.pattern1_5
  !endTremolo
  !subtranspose,0
  !instr,!instr01
  !pan,7
  !volume,160
  !vibrato,10,30,90
  db 27,$56
  !e5
  db 27,$06
  !e5
  db 9,$46
  !e5
  db 18,$16
  !e5
  !subtranspose,58
  !volume,150
  !instr,!instr1C
  !pan,13
  !dynamicPan,54,7
  db 9,$36
  !e5
  !g5
  !e5
  !c6
  !e5
  !g5
  !e5
  !subtranspose,0
  !instr,!instr01
  !pan,7
  !volume,160
  db 27,$56
  !d5
  db 27,$06
  !d5
  db 9,$46
  !d5
  db 18,$16
  !d5
  !subtranspose,58
  !instr,!instr1C
  !volume,155
  !pan,13
  !dynamicPan,54,7
  db 9,$36
  !d5
  !f5
  !d5
  !as5
  !d5
  !f5
  !d5
  !subtranspose,0
  !instr,!instr01
  !pan,7
  !volume,160
  db 9,$56
  !a5
  db 18,$16
  !a5
  !a5
  db 9,$56
  !a5
  db 18,$16
  !a5
  !subtranspose,58
  !volume,155
  !instr,!instr1C
  !pan,13
  !dynamicPan,54,7
  db 9,$36
  !c6
  !a5
  !c6
  !c6
  !f6
  !c6
  !a5
  !f5
  !subtranspose,0
  !instr,!instr01
  !pan,7
  !volume,160
  db 9,$56
  !gs5
  db 18,$16
  !gs5
  db 18,$66
  !gs5
  !subtranspose,58
  !instr,!instr1C
  !volume,155
  !pan,13
  db 9,$36
  !gs4
  !pan,10
  !d5
  !pan,8
  !f5
  !subtranspose,0
  !instr,!instr01
  !pan,7
  !volume,160
  db 9,$56
  !gs5
  !gs5
  !gs5
  db 18,$66
  !gs5
  !subtranspose,58
  !instr,!instr1C
  !volume,175
  !pan,13
  db 9,$46
  !f4
  !f4
  !f4
  !end

.pattern1_6
  !subtranspose,0
  !instr,!instr02
  !pan,7
  !volume,165
  !vibrato,10,30,90
  db 27,$56
  !c6
  db 27,$06
  !c6
  db 9,$46
  !c6
  db 18,$16
  !c6
  !subtranspose,58
  !volume,150
  !instr,!instr1C
  !pan,13
  !dynamicPan,54,7
  db 9,$36
  !g5
  !c6
  !g5
  !e6
  !g5
  !c6
  !g5
  !subtranspose,0
  !instr,!instr02
  !pan,7
  !volume,165
  db 27,$56
  !as5
  db 27,$06
  !as5
  db 9,$46
  !as5
  db 18,$16
  !as5
  !subtranspose,58
  !instr,!instr1C
  !volume,155
  !pan,13
  !dynamicPan,54,7
  db 9,$36
  !f5
  !as5
  !f5
  !d6
  !f5
  !as5
  !f5
  !subtranspose,0
  !instr,!instr02
  !pan,7
  !volume,165
  db 9,$56
  !f6
  db 18,$16
  !f6
  !f6
  db 9,$56
  !f6
  db 18,$16
  !f6
  !subtranspose,58
  !volume,155
  !instr,!instr1C
  !pan,13
  !dynamicPan,54,7
  db 9,$36
  !f5
  !c5
  !g5
  !f5
  !a5
  !f5
  !c5
  !a4
  !subtranspose,0
  !instr,!instr01
  !pan,7
  !volume,165
  db 9,$56
  !c6
  db 18,$16
  !c6
  db 18,$66
  !c6
  !subtranspose,58
  !instr,!instr1C
  !volume,155
  !pan,13
  db 9,$36
  !d5
  !pan,10
  !f5
  !pan,8
  !gs5
  !subtranspose,0
  !instr,!instr02
  !pan,7
  !volume,165
  db 9,$56
  !f6
  !f6
  !f6
  db 18,$66
  !f6
  !subtranspose,58
  !instr,!instr1C
  !volume,175
  !pan,7
  db 9,$46
  !gs4
  !gs4
  !gs4
  !end

.pattern2_0
  !pan,10
  db 36,$78
  %percNote(!instr2C-!instr2C)
  db 27,$76
  %percNote(!instr31-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$78
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2E
  db 18,$75
  !d5
  !pan,8
  db 9
  !a4
  !pan,10
  db 18,$76
  %percNote(!instr31-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  !echo,%01111011,36,36
  !pan,10
  db 18,$78
  %percNote(!instr2C-!instr2C)
  db 9
  %percNote(!instr2C-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  %percNote(!instr31-!instr2C)
  db 18
  %percNote(!instr31-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr31-!instr2C)
  db 18
  %percNote(!instr31-!instr2C)
  db 27
  %percNote(!instr31-!instr2C)
  db 9
  %percNote(!instr31-!instr2C)
  db 18
  %percNote(!instr31-!instr2C)
  db 9
  %percNote(!instr31-!instr2C)
  !instr,!instr2E
  !pan,12
  db 12,$79
  !a4
  !pan,8
  db 12,$77
  !b3
  !pan,10
  !e4
  !pan,12
  db 12,$79
  !a4
  !pan,8
  db 12,$77
  !b3
  !pan,10
  !e4
  !pan,10
  !instr,!instr31
  db 18
  !a4
  db 36
  !a4
  !end

.pattern2_1
  !pan,11
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,12
  !gs4
  !gs4
  !pan,9
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,8
  !gs4
  !gs4
  !pan,11
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,12
  !gs4
  !gs4
  !pan,9
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,8
  !gs4
  !gs4
  !instr,!instr02
  !pan,7
  !volume,180
  db 9,$56
  !f6
  db 18,$06
  !f6
  !f6
  db 9,$56
  !f6
  db 18
  !f6
  !instr,!instr01
  !pan,13
  !volume,185
  db 9,$46
  !c5
  db 18,$06
  !c5
  !c5
  db 9
  !rest
  db 9,$46
  !d5
  db 18,$06
  !d5
  db 9,$46
  !d5
  db 6
  !rest
  !volume,255
  !instr,!instr2E
  !pan,10
  db 12,$77
  !e4
  !pan,12
  !a4
  !pan,8
  !b3
  !pan,10
  !e4
  !pan,12
  !a4
  !pan,8
  db 6
  !b3
  db 18
  !tie
  !pan,13
  !volume,175
  !instr,!instr01
  !slideOut,17,19,248
  db 36,$46
  !e6
  !end

.pattern2_2
  db 18,$46
  !c3
  db 9
  !g3
  !c3
  !c3
  db 9,$43
  !c4
  db 9,$46
  !c3
  !c3
  !g3
  !c3
  !c3
  db 9,$43
  !c4
  db 9,$46
  !c3
  !c3
  !g3
  !c3
  db 18,$49
  !f2
  db 9,$46
  !c3
  db 9,$49
  !f2
  !f2
  db 9,$46
  !f3
  db 9,$49
  !f2
  !f2
  db 9,$59
  !gs2
  db 18,$19
  !gs2
  db 27
  !gs2
  db 9,$59
  !as2
  db 18,$19
  !as2
  db 9,$59
  !as2
  db 72
  !rest
  db 18,$78
  !g2
  !slideOut,17,19,248
  db 36,$48
  !c3
  !end

.pattern2_3
  !vibrato,0,15,20
  !tremolo,3,15,50
  !subtranspose,60
  !pan,12
  !instr,!instr17
  !volume,195
  db 9,$46
  !d6
  db 18,$06
  !e6
  db 18,$46
  !g6
  db 9
  !e6
  !g6
  db 9,$45
  !c7
  db 9,$46
  !c7
  db 18
  !g6
  db 18,$56
  !e6
  db 9
  !e6
  !g6
  !as6
  db 9,$45
  !a6
  db 18,$14
  !c7
  db 18,$45
  !a6
  db 18,$46
  !a6
  db 9
  !a6
  !as6
  db 18,$06
  !as6
  !as6
  db 9
  !rest
  db 9,$46
  !c7
  db 18,$06
  !c7
  db 9,$46
  !c7
  db 90
  !rest
  !slideOut,17,19,248
  db 36,$45
  !e7
  !end

.pattern2_4
  !vibrato,0,15,20
  !tremolo,3,15,50
  !subtranspose,60
  !pan,8
  !instr,!instr17
  !volume,210
  db 9,$46
  !g6
  db 18,$06
  !a6
  db 18,$46
  !c7
  db 9
  !g6
  !c7
  db 9,$45
  !f7
  db 9,$46
  !e7
  db 18
  !d7
  db 18,$56
  !c7
  db 9
  !c7
  !d7
  !e7
  db 9,$45
  !f7
  db 18,$14
  !g7
  db 18,$45
  !f7
  db 18,$46
  !c7
  db 9
  !d7
  !ds7
  db 18,$06
  !ds7
  !ds7
  db 9
  !rest
  db 9,$46
  !f7
  db 18,$06
  !f7
  db 9,$46
  !f7
  !transpose,12
  !endVibrato
  !endTremolo
  !instr,!instr25
  !volume,60
  !dynamicVolume,34,115
  !pan,20
  db 4
  !d7
  db 5,$76
  !ds7
  db 4
  !e7
  db 5
  !f7
  db 4
  !fs7
  db 5
  !g7
  db 4
  !gs7
  db 5
  !a7
  !dynamicVolume,34,60
  !dynamicPan,34,0
  db 4,$78
  !gs7
  db 5,$77
  !fs7
  db 4,$76
  !e7
  db 5
  !d7
  db 4
  !c7
  db 5
  !as6
  db 4
  !gs6
  db 5
  !fs6
  !transpose,0
  db 18
  !rest
  !endVibrato
  !transpose,12
  !vibrato,0,15,20
  !tremolo,3,15,50
  !subtranspose,60
  !pan,8
  !instr,!instr17
  !volume,210
  !slideOut,17,19,248
  db 36,$46
  !c7
  !end

.pattern2_5
  !subtranspose,0
  !instr,!instr01
  !pan,7
  !volume,160
  !vibrato,10,30,90
  db 27,$56
  !e5
  db 27,$06
  !e5
  db 9,$46
  !e5
  db 18,$16
  !e5
  !subtranspose,58
  !volume,150
  !instr,!instr1C
  !pan,13
  !dynamicPan,54,7
  db 9,$36
  !e5
  !g5
  !e5
  !as5
  !e5
  !g5
  !e5
  !pan,13
  !f5
  !c5
  !a5
  !c5
  !f5
  !c5
  !a5
  !c5
  !subtranspose,0
  !instr,!instr01
  !pan,7
  !volume,185
  db 9,$46
  !fs5
  db 18,$06
  !fs5
  !fs5
  db 9
  !rest
  db 9,$46
  !gs5
  db 18,$06
  !gs5
  db 9,$46
  !gs5
  db 2
  !rest
  !transpose,12
  !instr,!instr25
  !volume,60
  !dynamicVolume,34,115
  !pan,0
  db 4,$76
  !c7
  db 5
  !cs7
  db 4
  !d7
  db 5
  !ds7
  db 4
  !e7
  db 5
  !f7
  db 4
  !fs7
  db 5
  !g7
  db 4
  !gs7
  !dynamicVolume,34,60
  !dynamicPan,24,20
  db 5,$78
  !g7
  db 4,$77
  !f7
  db 5,$76
  !ds7
  db 4
  !cs7
  db 5
  !b6
  db 4
  !a6
  db 3
  !g6
  db 18
  !rest
  !transpose,0
  !instr,!instr02
  !pan,7
  !volume,175
  !slideOut,17,19,248
  db 36,$46
  !c6
  !end

.pattern2_6
  !subtranspose,0
  !instr,!instr02
  !pan,7
  !volume,165
  !vibrato,10,30,90
  db 27,$56
  !c6
  db 27,$06
  !c6
  db 9,$46
  !c6
  db 18,$16
  !c6
  !subtranspose,58
  !volume,150
  !instr,!instr1C
  !pan,13
  !dynamicPan,54,7
  db 9,$36
  !g5
  !as5
  !g5
  !d6
  !g5
  !as5
  !g5
  !pan,7
  !a5
  !f5
  !c6
  !f5
  !a5
  !f5
  !c6
  !f5
  !subtranspose,0
  !instr,!instr02
  !pan,10
  !volume,185
  db 9,$46
  !ds6
  db 18,$06
  !ds6
  !ds6
  db 9
  !rest
  db 9,$46
  !f6
  db 18,$06
  !f6
  db 9,$46
  !f6
  db 90
  !rest
  !slideOut,17,19,248
  db 36
  !c7
  !end

.pattern3_0
  db 72
  !rest
  !rest
  !echo,%00000001,36,36
  !dynamicEcho,72,1,1
  !rest
  !rest
  !echoParameters,1,1,2
  !loop : dw .sub5771 : db 25
  !end

.sub5719
  !pan,10
  db 36,$78
  %percNote(!instr2C-!instr2C)
  db 27,$76
  %percNote(!instr31-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$78
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2E
  db 18,$75
  !d5
  !pan,8
  db 9
  !a4
  !pan,10
  db 18,$76
  %percNote(!instr31-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  !end

.sub573E
  !instr,!instr2D
  !pan,11
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,12
  !gs4
  !gs4
  !pan,9
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,8
  !gs4
  !gs4
  !pan,11
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,12
  !gs4
  !gs4
  !pan,9
  db 9,$74
  !gs4
  db 9,$72
  !gs4
  !pan,8
  !gs4
  !gs4
  !end

.sub5771
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
