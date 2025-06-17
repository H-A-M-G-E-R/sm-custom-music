asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr19 = $17
!instr23 = $18
!instr26 = $19
!instr2B = $1A
!instr2E = $1B
!instr32 = $1C
!instr34 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr32,$8F,$E0,$B8,$03,$C0
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+1098
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample23,Sample23+396
  dw Sample26,Sample26+27
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2E,Sample2E+2151
  dw Sample32,Sample32+2232
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern1_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,255
  !tempo,51
  !echo,%00011111,38,38
  !echoParameters,5,60,0
  !instr,!instr04
  !vibrato,0,25,15
  !volume,188
  !pan,11
  db 17,$09
  !f3
  db 34,$63
  !c5
  db 17,$08
  !c5
  db 17,$09
  !f3
  db 17,$08
  !c5
  db 17,$09
  !c3
  db 17,$08
  !c5
  db 17,$09
  !f3
  db 34,$63
  !c5
  db 17,$07
  !c5
  db 17,$09
  !f3
  db 17,$07
  !c5
  db 17,$09
  !c3
  db 17,$06
  !c5
  !end

.pattern0_1
  !vibrato,0,25,15
  !instr,!instr04
  !volume,188
  !pan,9
  db 17,$08
  !c4
  db 34,$63
  !f5
  db 17,$08
  !f5
  !c4
  !f5
  !f3
  !f5
  !c4
  db 34,$63
  !f5
  db 17,$07
  !f5
  db 17,$08
  !c4
  db 17,$07
  !f5
  db 17,$08
  !f3
  db 17,$06
  !f5
  !end

.pattern0_2
  !vibrato,0,25,15
  !instr,!instr04
  !volume,188
  !pan,10
  db 17,$07
  !f4
  db 34,$63
  !a5
  db 17,$08
  !a5
  db 17,$07
  !f4
  db 17,$08
  !a5
  db 17,$09
  !c4
  db 17,$08
  !a5
  db 17,$07
  !f4
  db 34,$63
  !a5
  db 17,$08
  !a5
  !f4
  !a5
  db 17,$09
  !c4
  db 17,$06
  !a5
  !end

.pattern0_3
  !volume,255
  !loop : dw .sub5404 : db 2
  !end

.pattern1_0
  !instr,!instr04
  !vibrato,0,25,15
  !volume,180
  !pan,11
  !endSlide
  db 17,$18
  !f3
  db 34,$63
  !a4
  db 17,$18
  !a4
  !f3
  !a4
  !c3
  !a4
  !loop : dw .sub5421 : db 1
  !end

.pattern1_1
  !instr,!instr04
  !vibrato,0,25,15
  !volume,180
  !pan,9
  !endSlide
  db 17,$18
  !c4
  db 34,$63
  !c5
  db 17,$18
  !c5
  !c4
  !c5
  !f3
  !c5
  !c4
  db 34,$63
  !c5
  db 17,$18
  !c5
  !c4
  !c5
  !f3
  !c5
  !loop : dw .sub5443 : db 2
  !end

.pattern1_2
  !instr,!instr04
  !vibrato,0,25,15
  !volume,180
  !pan,10
  !endSlide
  db 17,$18
  !f4
  db 34,$63
  !f5
  db 17,$18
  !f5
  !f4
  !f5
  !c4
  !f5
  !f4
  db 34,$63
  !f5
  db 17,$18
  !f5
  !f4
  !f5
  !c4
  !f5
  !loop : dw .sub544F : db 2
  !end

.pattern1_3
  !loop : dw .sub5404 : db 2
  !loop : dw .sub545B : db 2
  !end

.pattern1_4
  !loop : dw .sub5478 : db 1
  !pan,9
  !subtranspose,0
  !instr,!instr26
  !volume,140
  db 51,$74
  !as7
  db 17,$16
  !f7
  !slideIn,0,7,1
  db 22,$76
  !f7
  !endSlide
  db 6
  !g7
  db 5
  !f7
  !g7
  !f7
  !g7
  !f7
  !g7
  !f7
  !g7
  !end

.pattern2_0
  db 17,$18
  !f3
  db 34,$63
  !a4
  db 17,$18
  !a4
  !f3
  !a4
  !c3
  !a4
  !loop : dw .sub5421 : db 1
  !end

.pattern2_1
  db 17,$18
  !c4
  db 34,$63
  !c5
  db 17,$18
  !c5
  !c4
  !c5
  !f3
  !c5
  !c4
  db 34,$63
  !c5
  db 17,$18
  !c5
  !c4
  !c5
  !f3
  !c5
  !loop : dw .sub5443 : db 2
  !end

.pattern2_2
  db 17,$18
  !f4
  db 34,$63
  !f5
  db 17,$18
  !f5
  !f4
  !f5
  !c4
  !f5
  !f4
  db 34,$63
  !f5
  db 17,$18
  !f5
  !f4
  !f5
  !c4
  !f5
  !loop : dw .sub544F : db 2
  !end

.pattern2_4
  !loop : dw .sub5478 : db 1
  db 17
  !rest
  !pan,11
  !subtranspose,0
  !instr,!instr23
  !volume,120
  db 6,$79
  !d7
  db 5,$75
  !ds7
  db 6,$65
  !e7
  db 17,$18
  !f7
  db 17,$15
  !as7
  db 17,$17
  !f7
  db 17,$15
  !as7
  db 5,$77
  !f7
  db 5,$76
  !g7
  db 24,$26
  !f7
  !end

.pattern3_0
  db 17,$17
  !as4
  !as4
  !as4
  db 9,$57
  !as4
  db 16,$17
  !as4
  db 9,$57
  !as4
  db 17,$17
  !as4
  !as4
  db 17,$67
  !a4
  db 17,$17
  !gs4
  !gs4
  !gs4
  db 9,$57
  !gs4
  db 16,$17
  !gs4
  db 9,$57
  !gs4
  db 17,$17
  !gs4
  !gs4
  db 17,$67
  !a4
  db 17,$17
  !as4
  !as4
  !as4
  db 9,$57
  !as4
  db 16,$17
  !as4
  db 9,$57
  !as4
  db 17,$17
  !as4
  !as4
  db 17,$67
  !a4
  db 17,$17
  !gs4
  !gs4
  !gs4
  db 9,$57
  !gs4
  db 25,$17
  !gs4
  !pan,6
  db 17,$57
  !f4
  !as4
  !b4
  !end

.pattern3_1
  db 17,$17
  !e5
  !e5
  !e5
  db 9,$57
  !e5
  db 16,$17
  !e5
  db 9,$57
  !e5
  db 17,$17
  !e5
  !e5
  db 17,$67
  !ds5
  db 17,$17
  !d5
  !d5
  !d5
  db 9,$57
  !d5
  db 16,$17
  !d5
  db 9,$57
  !d5
  db 17,$17
  !d5
  !d5
  db 17,$67
  !ds5
  db 17,$17
  !e5
  !e5
  !e5
  db 9,$57
  !e5
  db 16,$17
  !e5
  db 9,$57
  !e5
  db 17,$17
  !e5
  !e5
  db 17,$67
  !ds5
  db 17,$17
  !d5
  !d5
  !d5
  db 9,$57
  !d5
  db 25,$17
  !d5
  !pan,14
  !subtranspose,10
  db 17,$57
  !f4
  !as4
  !b4
  !end

.pattern3_2
  db 17,$17
  !g5
  !g5
  !g5
  db 9,$57
  !g5
  db 16,$17
  !g5
  db 9,$57
  !g5
  db 17,$17
  !g5
  !g5
  db 17,$67
  !fs5
  db 17,$17
  !f5
  !f5
  !f5
  db 9,$57
  !f5
  db 16,$17
  !f5
  db 9,$57
  !f5
  db 17,$17
  !f5
  !f5
  db 17,$67
  !fs5
  db 17,$17
  !g5
  !g5
  !g5
  db 9,$57
  !g5
  db 16,$17
  !g5
  db 9,$57
  !g5
  db 17,$17
  !g5
  !g5
  db 17,$67
  !fs5
  db 17,$17
  !f5
  !f5
  !f5
  db 9,$57
  !f5
  db 16,$17
  !f5
  db 60
  !rest
  !end

.pattern3_3
  !instr,!instr2B
  db 17,$16
  !c3
  !c3
  !c3
  db 9,$56
  !c3
  db 16,$16
  !c3
  db 9,$56
  !c3
  db 17,$16
  !c3
  !c3
  db 17,$66
  !b2
  db 17,$16
  !as2
  !as2
  !as2
  db 9,$56
  !as2
  db 16,$16
  !as2
  db 9,$56
  !as2
  db 17,$16
  !as2
  !as2
  db 17,$66
  !b2
  db 17,$16
  !c3
  !c3
  !c3
  db 9,$56
  !c3
  db 16,$16
  !c3
  db 9,$56
  !c3
  db 17,$16
  !c3
  !c3
  db 17,$66
  !b2
  db 17,$16
  !as2
  !as2
  !as2
  db 9,$56
  !as2
  db 8
  !as2
  !instr,!instr34
  db 17,$59
  !as2
  !f3
  db 17,$56
  !as3
  !b3
  !end

.pattern3_4
  !vibrato,0,20,20
  !instr,!instr32
  !pan,10
  !subtranspose,40
  !volume,225
  db 119,$76
  !c5
  db 17,$73
  !b4
  db 119,$76
  !as4
  db 17,$73
  !b4
  db 119,$76
  !c5
  db 17,$73
  !b4
  db 51,$76
  !as4
  db 9,$72
  !as4
  db 8,$75
  !as4
  !instr,!instr2E
  db 17,$7D
  !g2
  !instr,!instr32
  !volume,225
  db 17,$77
  !f4
  db 17,$76
  !as4
  !b4
  !end

.pattern4_0
  !pan,11
  db 26,$57
  !as4
  db 8
  !g4
  db 17,$17
  !g4
  !g4
  db 9,$57
  !as4
  db 8
  !g4
  db 17,$17
  !g4
  !g4
  !g4
  db 26,$57
  !gs4
  db 8
  !f4
  db 17,$17
  !f4
  !f4
  db 9,$57
  !gs4
  db 8
  !f4
  db 17,$17
  !f4
  !f4
  !f4
  db 26,$57
  !gs4
  db 8
  !ds4
  db 17,$17
  !ds4
  !ds4
  db 9,$57
  !gs4
  db 8
  !ds4
  db 17,$17
  !ds4
  !ds4
  !ds4
  db 9,$57
  !d5
  db 8
  !d5
  db 17,$17
  !d5
  !d5
  db 34,$57
  !d5
  !slideIn,0,6,1
  db 17,$38
  !g4
  db 17,$58
  !g4
  !g4
  !end

.pattern4_1
  !pan,9
  !subtranspose,0
  db 26,$57
  !e5
  db 8
  !as4
  db 17,$17
  !as4
  !as4
  db 9,$57
  !e5
  db 8
  !as4
  db 17,$17
  !as4
  !as4
  !as4
  db 26,$57
  !d5
  db 8
  !as4
  db 17,$17
  !as4
  !as4
  db 9,$57
  !d5
  db 8
  !as4
  db 17,$17
  !as4
  !as4
  !as4
  db 26,$57
  !c5
  db 8
  !gs4
  db 17,$17
  !gs4
  !gs4
  db 9,$57
  !c5
  db 8
  !gs4
  db 17,$17
  !gs4
  !gs4
  !gs4
  db 9,$57
  !f5
  db 8
  !f5
  db 17,$17
  !f5
  !f5
  db 34,$57
  !e5
  !slideIn,0,6,1
  db 17,$38
  !as4
  db 17,$58
  !as4
  !c5
  !end

.pattern4_2
  db 26,$58
  !g5
  db 8
  !e5
  db 17,$18
  !f5
  !e5
  db 9,$58
  !g5
  db 8
  !f5
  db 17,$18
  !e5
  !f5
  !e5
  db 26,$58
  !f5
  db 8,$59
  !d5
  db 17,$19
  !ds5
  !d5
  db 9,$58
  !f5
  db 8,$59
  !ds5
  db 17,$19
  !d5
  !ds5
  !d5
  db 26,$58
  !ds5
  db 8,$19
  !c5
  db 17
  !cs5
  !c5
  db 9,$58
  !ds5
  db 8,$59
  !cs5
  db 17,$19
  !c5
  !cs5
  !c5
  db 9,$57
  !c6
  db 8
  !b5
  db 17,$17
  !as5
  !a5
  db 34,$58
  !g5
  !slideIn,0,7,1
  db 17,$39
  !c5
  db 17,$59
  !d5
  !e5
  !end

.pattern4_3
  db 17,$26
  !c4
  !instr,!instr2B
  db 17,$23
  !c4
  db 17,$26
  !c3
  db 9,$23
  !c4
  db 17,$26
  !c3
  db 8
  !c3
  db 17,$23
  !c4
  db 17,$26
  !c3
  db 17,$23
  !c4
  db 17,$26
  !as2
  db 17,$25
  !as3
  db 17,$26
  !as2
  db 9,$25
  !as3
  db 17,$26
  !as2
  db 8
  !as2
  db 17,$25
  !as3
  db 17,$26
  !as2
  db 17,$25
  !as3
  db 17,$27
  !gs2
  db 17,$26
  !gs3
  db 17,$27
  !gs2
  db 9,$26
  !gs3
  db 17,$27
  !gs2
  db 8
  !gs2
  db 17,$26
  !gs3
  db 17,$27
  !gs2
  db 17,$26
  !gs3
  db 9,$28
  !g2
  db 8
  !g2
  db 17
  !g2
  db 17,$26
  !d3
  db 34
  !c3
  db 17,$28
  !c3
  !c3
  !c3
  !end

.pattern4_4
  db 17,$7E
  !c4
  !subtranspose,0
  !transpose,12
  !instr,!instr26
  !volume,135
  !pan,9
  !subtranspose,0
  db 9,$76
  !c6
  db 8
  !e6
  db 17,$17
  !g6
  db 17,$16
  !c7
  db 7,$76
  !g6
  db 6
  !a6
  db 5
  !g6
  !a6
  !g6
  !a6
  !g6
  !a6
  !g6
  !a6
  !g6
  !a6
  !g6
  db 9
  !rest
  db 8,$7A
  !f5
  db 9,$76
  !as5
  db 8
  !d6
  db 17,$17
  !f6
  db 17,$16
  !as6
  db 7,$76
  !f6
  db 6
  !g6
  db 5
  !f6
  !g6
  !f6
  !g6
  !f6
  !g6
  !f6
  !g6
  !f6
  !g6
  !f6
  !volume,125
  !instr,!instr23
  !pan,11
  db 17,$29
  !ds5
  db 9,$76
  !gs5
  db 8
  !c6
  db 17,$27
  !ds6
  db 17,$25
  !gs6
  db 7,$76
  !ds6
  db 6
  !f6
  db 5
  !ds6
  !f6
  !ds6
  !f6
  !ds6
  !f6
  !ds6
  !f6
  !ds6
  !f6
  !ds6
  !volume,255
  !pan,10
  !transpose,0
  !instr,!instr34
  db 9
  !g3
  db 8
  !g3
  db 17
  !g3
  !d4
  db 34
  !c4
  db 17
  !c4
  db 9,$77
  !g4
  db 8,$78
  !c4
  db 17,$7C
  !c3
  !end

.sub5404
  !instr,!instr34
  db 17,$7A
  !f3
  !instr,!instr2B
  db 17,$16
  !c3
  !f3
  !c3
  db 17,$19
  !f2
  db 17,$16
  !c3
  !instr,!instr34
  db 17,$7C
  !c3
  !instr,!instr2B
  db 17,$16
  !c3
  !end

.sub5421
  !f3
  db 34,$63
  !a4
  db 17,$18
  !a4
  !f3
  !a4
  !c3
  !a4
  !as2
  db 34,$63
  !as4
  db 17,$18
  !as4
  !as2
  !as4
  !f3
  !as4
  !as2
  db 34,$63
  !gs4
  db 17,$18
  !gs4
  !as2
  !gs4
  !f3
  !gs4
  !end

.sub5443
  !f3
  db 34,$63
  !d5
  db 17,$18
  !d5
  !f3
  !d5
  !as3
  !d5
  !end

.sub544F
  !as3
  db 34,$63
  !f5
  db 17,$18
  !f5
  !as3
  !f5
  !f4
  !f5
  !end

.sub545B
  !instr,!instr34
  db 17,$79
  !as3
  !instr,!instr2B
  db 17,$16
  !f3
  !as3
  !f3
  db 17,$19
  !as2
  db 17,$16
  !f3
  !instr,!instr34
  db 17,$7C
  !f3
  !instr,!instr2B
  db 17,$16
  !f3
  !end

.sub5478
  !pan,10
  !instr,!instr19
  !volume,225
  !subtranspose,60
  !vibrato,0,20,20
  !slideIn,0,11,1
  db 51,$56
  !c6
  !endSlide
  db 17,$16
  !c6
  !f6
  !ds6
  !d6
  !ds6
  db 34,$56
  !c6
  db 17,$16
  !as5
  db 34,$56
  !a5
  db 17,$16
  !as5
  !c6
  !f5
  db 51,$56
  !as5
  db 17,$16
  !f5
  db 68,$76
  !f5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
