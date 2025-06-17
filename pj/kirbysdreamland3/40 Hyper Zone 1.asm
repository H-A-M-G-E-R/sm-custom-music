asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr06 = $18
!instr07 = $19
!instr10 = $1A
!instr19 = $1B
!instr1B = $1C
!instr1D = $1D
!instr20 = $1E
!instr23 = $1F
!instr24 = $20
!instr25 = $21
!instr27 = $22
!instr28 = $23
!instr29 = $24
!instr2A = $25

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr07,$8F,$EF,$B8,$04,$00
  db !instr10,$FF,$E0,$B8,$03,$B0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr20,$FF,$E0,$B8,$02,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$FF,$B2,$B8,$12,$00
  db !instr29,$FF,$E0,$B8,$04,$80
  db !instr2A,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample05_06,Sample05_06+216
  dw Sample07_08_09,Sample07_08_09+360
  dw Sample10,Sample10+27
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1B,Sample1B+1170
  dw Sample1D,Sample1D+27
  dw Sample20,Sample20+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample28,Sample28+1386
  dw Sample29,Sample29+1620
  dw Sample2A,Sample2A+1638
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample07_08_09: incbin "Sample_38e63eed215c29c5a4534a9767604a6d.brr"
  Sample10: incbin "Sample_00909a2c7ac12f30a998285388a5259c.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample20: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28: incbin "Sample_20e2cb70cf7bd1b7d37e41f3f7d57bfb.brr"
  Sample29: incbin "Sample_ce04077ea3405bc500288eaedde7f293.brr"
  Sample2A: incbin "Sample_22f1c3ddac7e136236eac1eb0e82a501.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern3_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern3_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, 0, 0, 0
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echo,%00011110,38,38
  !echoParameters,4,181,0
  !musicVolume,255
  !tempo,47
  !volume,255
  !instr,!instr27
  db 90,$79
  !d2
  db 38
  !tie
  db 78
  !d2
  db 50
  !d2
  db 96
  !tie
  !tie
  db 8,$77
  !d5
  db 24
  !d5
  !end

.pattern0_1
  !instr,!instr29
  !volume,255
  !pan,10
  db 64,$7D
  !d2
  !tie
  !loop : dw .sub56D6 : db 1
  !end

.pattern0_2
  !subtranspose,60
  !instr,!instr19
  !volume,140
  !slideIn,0,40,1
  !pan,13
  db 64,$77
  !e4
  !tie
  !loop : dw .sub56D6 : db 1
  !end

.pattern0_3
  !subtranspose,60
  !instr,!instr19
  !volume,140
  !slideIn,0,40,1
  !pan,7
  db 64,$77
  !a4
  !tie
  !loop : dw .sub56D6 : db 1
  !end

.pattern0_4
  !vibrato,0,9,70
  !subtranspose,60
  !instr,!instr19
  !volume,130
  !slideIn,0,40,1
  !pan,10
  db 64,$77
  !d5
  !tie
  !loop : dw .sub56D6 : db 1
  !end

.pattern1_0
  !echo,%00011000,38,38
  !volume,255
  !loop : dw .sub55D3 : db 3
  !pan,10
  !instr,!instr23
  db 32,$77
  !e5
  !e5
  db 16
  !e5
  !e5
  !e5
  !e5
  !end

.pattern1_1
  !volume,245
  !instr,!instr27
  !loop : dw .sub5620 : db 4
  !end

.pattern1_2
  !endSlide
  !subtranspose,0
  !instr,!instr2A
  !volume,255
  !pan,10
  db 32,$78
  !g2
  !as2
  !a2
  !gs2
  !g2
  !as2
  !a2
  !gs2
  !g2
  !as2
  !a2
  !gs2
  !instr,!instr28
  db 16
  !g2
  db 48
  !rest
  db 64
  !rest
  !end

.pattern1_3
  !endSlide
  !subtranspose,0
  !instr,!instr29
  !volume,220
  !pan,10
  db 32,$77
  !g4
  !as4
  !a4
  !gs4
  !g4
  !as4
  !a4
  !gs4
  !g4
  !as4
  !a4
  !gs4
  db 16
  !g4
  db 48
  !rest
  db 64
  !rest
  !end

.pattern1_4
  db 64
  !rest
  !rest
  !rest
  !rest
  !endSlide
  !subtranspose,0
  !endVibrato
  !instr,!instr29
  !volume,190
  !pan,10
  db 32,$77
  !g5
  !as5
  !a5
  !gs5
  db 16
  !g5
  !volume,230
  !instr,!instr25
  !pan,20
  !g4
  !pan,0
  db 8
  !d4
  !pan,20
  db 16
  !g4
  !pan,0
  db 8
  !d4
  !pan,20
  db 16
  !g4
  !pan,0
  db 8
  !d4
  !pan,20
  db 16
  !g4
  !pan,0
  db 8
  !d4
  !pan,20
  db 16
  !g4
  !end

.pattern2_0
  !echo,%00011000,38,38
  !volume,255
  !loop : dw .sub542A : db 1
  !end

.pattern2_1
  !volume,230
  !loop : dw .sub54A9 : db 1
  !loop : dw .sub553E : db 1
  !end

.pattern2_2
  !volume,255
  !instr,!instr29
  db 24,$47
  !f4
  !f4
  !fs4
  db 8
  !rest
  !instr,!instr28
  db 16
  !fs3
  db 32,$48
  !fs2
  db 16,$47
  !fs3
  db 8,$77
  !cs3
  db 16,$47
  !fs3
  db 8,$77
  !cs3
  db 24
  !fs3
  db 8
  !rest
  db 16,$48
  !fs2
  db 16,$47
  !fs3
  !cs3
  db 16,$76
  !c4
  !pitchSlide,6,10 : !b2
  !instr,!instr29
  db 24,$47
  !f4
  !f4
  db 16,$57
  !fs4
  !instr,!instr28
  db 16,$47
  !fs3
  db 32,$48
  !fs2
  db 16,$47
  !fs3
  db 8,$77
  !cs3
  db 16,$47
  !fs3
  db 8,$77
  !cs3
  db 24
  !fs3
  db 8
  !rest
  db 16,$48
  !fs2
  db 16,$47
  !fs3
  !cs3
  !end

.pattern2_3
  !endSlide
  !pan,8
  !instr,!instr29
  !volume,210
  db 24,$37
  !ds5
  !ds5
  db 24,$77
  !e5
  db 8
  !rest
  !volume,85
  !dynamicVolume,48,230
  !instr,!instr2A
  db 48
  !gs6
  db 16
  !rest
  !instr,!instr06
  !volume,145
  db 8,$47
  !e7
  !b7
  db 8,$42
  !fs7
  db 8,$47
  !b7
  !fs7
  db 8,$42
  !b7
  db 8,$47
  !e7
  db 8,$42
  !b7
  db 8,$47
  !fs7
  db 8,$42
  !b7
  db 8,$47
  !gs7
  db 8,$42
  !b7
  db 8,$47
  !e7
  db 8,$42
  !b7
  db 16
  !rest
  !pan,8
  !instr,!instr29
  !volume,210
  db 24,$37
  !ds5
  !ds5
  db 24,$77
  !e5
  !volume,85
  !dynamicVolume,40,220
  !instr,!instr2A
  db 40
  !gs6
  db 16
  !rest
  !instr,!instr06
  !volume,145
  db 8,$47
  !e7
  !b7
  db 8,$42
  !fs7
  db 8,$47
  !b7
  !fs7
  db 8,$42
  !b7
  db 8,$47
  !e7
  db 8,$42
  !b7
  db 8,$47
  !fs7
  db 8,$42
  !b7
  db 8,$47
  !gs7
  db 8,$42
  !b7
  db 8,$47
  !e7
  db 8,$42
  !b7
  !end

.pattern2_4
  !endSlide
  !pan,12
  !instr,!instr2A
  !volume,210
  db 24,$37
  !g5
  !g5
  db 24,$77
  !gs5
  db 8
  !rest
  !volume,85
  !dynamicVolume,48,230
  !instr,!instr29
  db 48
  !e6
  db 16
  !rest
  !instr,!instr06
  !volume,145
  db 8,$47
  !b7
  !fs7
  db 8,$42
  !b7
  db 8,$47
  !gs7
  !b7
  db 8,$42
  !fs7
  db 8,$47
  !b7
  db 8,$42
  !e7
  db 8,$47
  !b7
  db 8,$42
  !fs7
  db 8,$47
  !b7
  db 8,$42
  !gs7
  db 8,$47
  !b7
  db 8,$42
  !e7
  db 16
  !rest
  !pan,12
  !instr,!instr2A
  !volume,210
  db 24,$37
  !g5
  !g5
  db 24,$77
  !gs5
  !volume,85
  !dynamicVolume,40,230
  !instr,!instr29
  db 40
  !e6
  db 16
  !rest
  !instr,!instr06
  !volume,145
  db 8,$47
  !b7
  !fs7
  db 8,$42
  !b7
  db 8,$47
  !gs7
  !b7
  db 8,$42
  !fs7
  db 8,$47
  !b7
  db 8,$42
  !e7
  db 8,$47
  !b7
  db 8,$42
  !fs7
  db 8,$47
  !b7
  db 8,$42
  !gs7
  db 8,$47
  !b7
  db 8,$42
  !e7
  !end

.pattern3_0
  !loop : dw .sub542A : db 1
  !end

.pattern3_1
  !loop : dw .sub54A9 : db 1
  !loop : dw .sub553E : db 1
  !end

.pattern3_2
  !instr,!instr29
  db 24,$49
  !a3
  !a3
  !gs3
  db 8
  !rest
  !instr,!instr28
  db 16,$47
  !gs3
  db 32,$48
  !gs2
  db 16,$47
  !gs3
  db 8,$77
  !ds3
  db 16,$47
  !gs3
  db 8,$77
  !ds3
  db 24
  !gs3
  db 8
  !rest
  db 16,$48
  !ds3
  db 16,$47
  !gs3
  !gs2
  db 16,$76
  !d4
  !pitchSlide,6,10 : !cs3
  !instr,!instr29
  db 24,$47
  !g4
  !g4
  db 16,$57
  !fs4
  !instr,!instr28
  db 16,$47
  !cs3
  !fs3
  db 16,$48
  !fs2
  db 16,$47
  !fs3
  db 8,$77
  !cs3
  db 16,$47
  !fs3
  db 8,$77
  !cs3
  db 32
  !fs3
  db 16,$47
  !cs3
  !fs3
  db 16,$48
  !fs2
  !end

.pattern3_3
  !pan,8
  !instr,!instr29
  !volume,210
  db 24,$37
  !g5
  !g5
  db 24,$77
  !fs5
  db 8
  !rest
  !volume,85
  !dynamicVolume,48,220
  !instr,!instr2A
  db 48
  !cs6
  db 16
  !rest
  !instr,!instr06
  !volume,145
  !transpose,12
  db 8,$47
  !fs6
  !cs7
  db 8,$42
  !gs6
  db 8,$47
  !cs7
  !gs6
  db 8,$42
  !cs7
  db 8,$47
  !fs6
  db 8,$42
  !cs7
  db 8,$47
  !gs6
  db 8,$42
  !cs7
  db 8,$47
  !b6
  db 8,$42
  !cs7
  db 8,$47
  !gs6
  db 8,$42
  !cs7
  !transpose,0
  db 16
  !rest
  !pan,8
  !instr,!instr29
  !volume,210
  db 24,$37
  !f5
  !f5
  db 24,$77
  !e5
  !volume,85
  !dynamicVolume,40,220
  !instr,!instr2A
  db 40
  !cs7
  !transpose,12
  !instr,!instr06
  !volume,145
  db 8,$47
  !fs6
  !cs7
  db 8,$42
  !fs6
  db 8,$47
  !cs7
  !gs6
  db 8,$42
  !cs7
  db 8,$47
  !as6
  !cs7
  !as6
  !cs7
  db 8,$42
  !fs6
  !cs7
  db 8,$47
  !gs6
  db 8,$42
  !cs7
  db 8,$47
  !as6
  db 8,$42
  !cs7
  !end

.pattern3_4
  !pan,12
  !instr,!instr2A
  !volume,210
  db 24,$37
  !b5
  !b5
  db 24,$77
  !b5
  db 8
  !rest
  !volume,85
  !dynamicVolume,48,230
  !instr,!instr29
  db 48
  !b6
  db 16
  !rest
  !instr,!instr06
  !volume,145
  !transpose,12
  db 8,$47
  !cs7
  !gs6
  db 8,$42
  !cs7
  db 8,$47
  !b6
  !cs7
  db 8,$42
  !gs6
  db 8,$47
  !cs7
  db 8,$42
  !fs6
  db 8,$47
  !cs7
  db 8,$42
  !gs6
  db 8,$47
  !cs7
  db 8,$42
  !b6
  db 8,$47
  !cs7
  db 8,$42
  !gs6
  !transpose,0
  db 16
  !rest
  !pan,12
  !instr,!instr2A
  !volume,210
  db 24,$37
  !b5
  !b5
  db 24,$77
  !b5
  !volume,85
  !dynamicVolume,40,230
  !instr,!instr29
  db 40
  !fs7
  !transpose,12
  !instr,!instr06
  !volume,145
  db 8,$47
  !cs7
  !fs6
  db 8,$42
  !cs7
  db 8,$47
  !gs6
  !cs7
  db 8,$42
  !gs6
  db 8,$47
  !cs7
  !as6
  !cs7
  db 8,$42
  !fs6
  !cs7
  db 8,$47
  !fs6
  !cs7
  db 8,$42
  !gs6
  db 8,$47
  !cs7
  db 8,$42
  !as6
  !end

.pattern4_0
  !instr,!instr20
  !slideIn,0,8,232
  db 16,$25
  !gs3
  !rest
  !gs3
  !rest
  !gs3
  !rest
  !gs3
  !rest
  !loop : dw .sub5651 : db 3
  !end

.pattern4_1
  !pan,12
  db 8,$70
  !d5
  db 8,$72
  !d5
  db 8,$77
  !d5
  db 8,$72
  !d5
  !pan,8
  db 8,$70
  !d5
  db 8,$72
  !d5
  !pan,12
  db 8,$77
  !d5
  db 8,$73
  !d5
  !pan,8
  db 5,$78
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,12
  db 5,$78
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,8
  db 8,$77
  !d5
  db 8,$72
  !d5
  !pan,12
  db 8,$77
  !d5
  db 8,$73
  !d5
  !pan,8
  db 8,$77
  !d5
  db 8,$73
  !d5
  !pan,12
  db 8,$75
  !d5
  db 8,$77
  !d5
  !pan,8
  db 8,$72
  !d5
  db 8,$75
  !d5
  !pan,12
  db 5,$77
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,8
  db 5,$77
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,12
  db 8,$77
  !e5
  db 8,$72
  !e5
  !loop : dw .sub553E : db 1
  !end

.pattern4_2
  !instr,!instr29
  db 48,$36
  !f5
  db 32,$47
  !fs5
  !instr,!instr28
  db 16
  !fs3
  db 32,$48
  !fs2
  db 16,$47
  !fs3
  db 8,$77
  !cs3
  db 16,$47
  !fs3
  db 8,$77
  !cs3
  db 24
  !fs3
  db 8
  !rest
  db 16,$48
  !fs2
  db 16,$47
  !fs3
  !cs3
  db 16,$76
  !c4
  !pitchSlide,6,10 : !b2
  !instr,!instr29
  db 32,$66
  !f5
  db 32,$47
  !fs5
  !instr,!instr28
  db 16
  !fs3
  db 32,$48
  !fs2
  db 16,$47
  !fs3
  db 8,$77
  !cs3
  db 16,$47
  !fs3
  db 8,$77
  !cs3
  db 24
  !fs3
  db 8
  !rest
  db 16,$48
  !fs2
  db 16,$47
  !fs3
  !cs3
  !end

.pattern4_3
  !transpose,0
  !pan,8
  !instr,!instr29
  !volume,210
  db 48,$36
  !ds5
  db 32,$47
  !e5
  !volume,85
  !dynamicVolume,48,220
  !instr,!instr2A
  db 48,$77
  !gs6
  !instr,!instr03
  !volume,150
  !pan,14
  db 16
  !gs6
  !fs6
  !e6
  !cs6
  !as5
  !gs5
  !e5
  !cs5
  !rest
  !pan,8
  !instr,!instr29
  !volume,210
  db 32,$66
  !ds5
  db 32,$47
  !e5
  db 8
  !rest
  !volume,85
  !dynamicVolume,40,220
  !instr,!instr2A
  db 40,$77
  !gs6
  !instr,!instr03
  !volume,150
  !pan,6
  db 16
  !cs5
  !e5
  !gs5
  !as5
  !cs6
  !e6
  !gs6
  !cs7
  !end

.pattern4_4
  !transpose,0
  !pan,12
  !instr,!instr2A
  !volume,210
  db 48,$36
  !g5
  db 32,$47
  !gs5
  !volume,85
  !dynamicVolume,48,230
  !instr,!instr29
  db 48,$77
  !e6
  db 24
  !rest
  !subtranspose,20
  !instr,!instr03
  !volume,150
  !pan,6
  db 16
  !gs6
  !fs6
  !e6
  !cs6
  !as5
  !gs5
  db 8
  !e5
  db 16
  !rest
  !subtranspose,0
  !pan,12
  !instr,!instr2A
  !volume,210
  db 32,$66
  !g5
  db 32,$47
  !gs5
  db 8
  !rest
  !volume,85
  !dynamicVolume,40,230
  !instr,!instr29
  db 40,$77
  !e6
  db 24
  !rest
  !instr,!instr03
  !subtranspose,20
  !volume,150
  !pan,14
  db 16
  !cs5
  !e5
  !gs5
  !as5
  !cs6
  !e6
  db 8
  !gs6
  !end

.pattern5_0
  db 16,$25
  !gs3
  !rest
  !gs3
  !rest
  !gs3
  !rest
  !gs3
  !rest
  !gs3
  !rest
  !gs3
  !rest
  !gs3
  !rest
  !gs3
  !rest
  db 64
  !rest
  !rest
  !endSlide
  !instr,!instr23
  db 32,$77
  !f5
  !f5
  db 16
  !f5
  db 16,$73
  !f5
  db 16,$77
  !f5
  db 16,$73
  !f5
  !end

.pattern5_1
  !loop : dw .sub54A9 : db 1
  db 64
  !rest
  !rest
  !pan,12
  db 8,$77
  !d5
  db 8,$73
  !d5
  db 8,$77
  !d5
  db 8,$73
  !d5
  !pan,8
  db 8,$77
  !d5
  db 8,$73
  !d5
  db 8,$77
  !d5
  db 8,$73
  !d5
  !pan,12
  db 5,$77
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,8
  db 5,$77
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,12
  db 5,$77
  !e5
  db 4,$72
  !e5
  db 4,$71
  !e5
  db 3,$70
  !e5
  !end

.pattern5_2
  !instr,!instr29
  db 48,$66
  !a4
  db 32,$57
  !gs4
  !instr,!instr28
  db 16,$47
  !gs3
  db 32,$48
  !gs2
  db 16,$47
  !gs3
  db 8,$77
  !ds3
  db 16,$47
  !gs3
  db 8,$77
  !ds3
  db 24
  !gs3
  db 8
  !rest
  db 16,$48
  !ds3
  db 16,$47
  !gs3
  !gs2
  !instr,!instr29
  db 8,$56
  !g4
  db 16,$16
  !g4
  db 8
  !rest
  db 16
  !g4
  db 16,$77
  !fs4
  !rest
  !instr,!instr28
  !slideIn,0,9,1
  db 16,$47
  !cs3
  !endSlide
  !fs3
  db 16,$48
  !fs2
  db 64
  !rest
  !rest
  !end

.pattern5_3
  !pan,8
  !instr,!instr29
  !volume,210
  !slideIn,0,9,1
  db 48,$66
  !g5
  !endSlide
  db 32,$57
  !fs5
  !volume,85
  !dynamicVolume,48,220
  !instr,!instr2A
  db 48,$77
  !cs6
  !instr,!instr07
  !volume,190
  db 16
  !ds7
  !b6
  !fs6
  !cs6
  !gs5
  !cs6
  !fs6
  !b6
  !pan,8
  !instr,!instr29
  !volume,210
  db 8,$57
  !f5
  db 16,$17
  !f5
  db 8
  !rest
  db 16
  !f5
  db 16,$77
  !e5
  db 64
  !rest
  !rest
  !rest
  !end

.pattern5_4
  !subtranspose,0
  !pan,12
  !instr,!instr2A
  !volume,210
  !slideIn,0,9,1
  db 48,$66
  !b5
  !endSlide
  db 32,$57
  !b5
  !volume,85
  !dynamicVolume,48,230
  !instr,!instr29
  db 48,$77
  !b6
  db 24
  !rest
  !instr,!instr07
  !volume,190
  db 16
  !ds7
  !b6
  !fs6
  !cs6
  !gs5
  !cs6
  db 8
  !fs6
  !pan,12
  !instr,!instr2A
  !volume,210
  db 8,$57
  !b5
  db 16,$17
  !b5
  db 8
  !rest
  db 16
  !b5
  db 16,$77
  !b5
  db 64
  !rest
  !volume,230
  !instr,!instr25
  !pan,0
  db 16
  !d4
  !pan,20
  !g4
  !pan,0
  db 8
  !d4
  !pan,20
  db 16
  !g4
  !pan,0
  db 8
  !d4
  !pan,20
  db 16
  !g4
  !pan,0
  db 8
  !d4
  !pan,20
  db 16
  !g4
  !pan,0
  db 8
  !d4
  !pan,20
  db 16
  !g4
  !end

.pattern6_0
  !pan,10
  !loop : dw .sub565A : db 4
  !end

.pattern6_2
  db 8,$79
  !f2
  db 16,$77
  !cs3
  !cs3
  db 8
  !fs3
  db 16
  !cs3
  db 16,$78
  !fs2
  db 8,$77
  !cs3
  db 8,$78
  !fs2
  db 8,$77
  !f3
  !fs3
  !cs3
  db 8,$78
  !fs2
  db 16,$77
  !c3
  db 8
  !f3
  !c3
  !b3
  !fs3
  !cs3
  !fs3
  !c3
  !as3
  !f3
  !c3
  db 8,$76
  !cs4
  db 8,$77
  !b3
  !fs3
  !cs3
  db 8,$79
  !f2
  db 16,$77
  !cs3
  !cs3
  db 8
  !fs3
  db 16
  !cs3
  db 8,$78
  !f2
  db 16,$77
  !cs3
  db 8,$78
  !fs2
  db 8,$77
  !f3
  !fs3
  !cs3
  db 8,$78
  !fs2
  db 16,$77
  !c3
  db 8
  !f3
  !c3
  !b3
  !fs3
  !cs3
  !fs3
  !c3
  !as3
  !f3
  !c3
  db 8,$76
  !cs4
  db 8,$77
  !b3
  !fs3
  !cs3
  !end

.pattern6_3
  !pan,8
  !instr,!instr29
  !volume,210
  db 8,$57
  !ds5
  db 16,$17
  !e5
  !e5
  db 8,$57
  !e6
  db 16
  !e5
  !rest
  db 16,$17
  !e5
  db 8,$57
  !ds5
  db 16,$17
  !e5
  db 8,$57
  !e5
  !instr,!instr10
  !volume,135
  !vibrato,0,20,100
  db 32,$77
  !ds5
  !e5
  !ds5
  !e5
  !endVibrato
  !pan,8
  !instr,!instr29
  !volume,210
  db 8,$57
  !ds5
  db 16,$17
  !e5
  !e5
  db 8,$57
  !e6
  db 16
  !e5
  db 8,$17
  !ds5
  db 16
  !e5
  !e5
  db 8,$57
  !e6
  !e5
  !e6
  !instr,!instr1B
  !volume,165
  db 16,$77
  !ds5
  !as4
  !e5
  !b4
  !ds5
  !as4
  !e5
  !b4
  !end

.pattern6_4
  !pan,12
  !instr,!instr2A
  !volume,210
  db 8,$57
  !g5
  db 16,$17
  !gs5
  !gs5
  db 8,$57
  !gs6
  db 16
  !gs5
  !rest
  db 16,$17
  !gs5
  db 8,$57
  !g5
  db 16,$17
  !gs5
  db 8,$57
  !gs5
  !instr,!instr10
  !volume,135
  !vibrato,0,20,100
  db 32,$77
  !as4
  !b4
  !as4
  !b4
  !endVibrato
  !pan,12
  !instr,!instr2A
  !volume,210
  db 8,$57
  !g5
  db 16,$17
  !gs5
  !gs5
  db 8,$57
  !gs6
  db 16
  !gs5
  db 8
  !g5
  db 16,$17
  !gs5
  !gs5
  db 8,$57
  !gs6
  !gs5
  !gs6
  !instr,!instr1B
  !volume,165
  db 16,$77
  !c6
  !g5
  !cs6
  !gs5
  !c6
  !g5
  !cs6
  !gs5
  !end

.pattern7_0
  !loop : dw .sub565A : db 3
  !instr,!instr23
  db 16,$77
  !f5
  !instr,!instr25
  !a4
  !instr,!instr23
  db 8
  !f5
  !instr,!instr25
  db 16,$78
  !a4
  !instr,!instr23
  db 8,$73
  !f5
  db 8,$77
  !f5
  !instr,!instr25
  db 8,$73
  !a4
  db 16,$77
  !a4
  !pan,8
  db 8,$78
  !a4
  db 8,$76
  !a4
  !pan,12
  db 8,$79
  !f4
  !f4
  !end

.pattern7_2
  db 8,$77
  !a3
  db 16
  !a2
  !a3
  db 8
  !a2
  !a3
  !a2
  !gs3
  db 16,$78
  !gs2
  db 16,$77
  !gs3
  db 8
  !ds3
  db 8,$78
  !gs2
  db 8,$77
  !gs3
  db 16,$78
  !gs2
  db 8,$77
  !ds3
  db 8,$78
  !gs2
  !gs2
  db 8,$77
  !ds3
  db 8,$78
  !gs2
  !gs2
  db 8,$77
  !gs3
  db 8,$78
  !gs2
  !gs2
  db 8,$77
  !ds3
  db 8,$78
  !gs2
  !gs2
  db 8,$77
  !gs3
  db 8,$78
  !gs2
  !g2
  db 16,$77
  !d3
  db 16,$78
  !g2
  db 8
  !g2
  db 8,$77
  !d3
  db 8,$78
  !g2
  !fs2
  db 8,$77
  !fs3
  db 8,$78
  !fs2
  db 16,$77
  !fs3
  db 8,$78
  !fs2
  db 8,$77
  !fs3
  db 8,$78
  !fs2
  db 16
  !fs2
  db 8,$77
  !cs3
  db 8,$78
  !fs2
  !fs2
  db 8,$77
  !fs3
  db 8,$78
  !fs2
  !fs2
  db 8,$77
  !cs3
  db 8,$78
  !fs2
  !fs2
  db 8,$77
  !fs3
  db 8,$78
  !fs2
  !fs2
  db 8,$77
  !fs3
  db 8,$78
  !fs2
  !end

.pattern7_3
  !pan,8
  !instr,!instr29
  !volume,210
  db 8,$57
  !g5
  db 16,$17
  !g5
  !g5
  db 8,$57
  !g6
  db 16,$17
  !g5
  !fs6
  db 8,$57
  !fs5
  db 16,$17
  !fs6
  db 8,$57
  !fs5
  !fs6
  !fs5
  db 16
  !rest
  !instr,!instr06
  !volume,145
  !transpose,12
  db 8,$47
  !fs6
  !cs7
  db 8,$42
  !gs6
  db 8,$47
  !cs7
  !gs6
  db 8,$42
  !cs7
  db 8,$47
  !fs6
  db 8,$42
  !cs7
  db 8,$47
  !gs6
  db 8,$42
  !cs7
  db 8,$47
  !b6
  db 8,$42
  !cs7
  db 8,$47
  !gs6
  db 8,$42
  !cs7
  !transpose,0
  !pan,8
  !instr,!instr29
  !volume,210
  db 8,$57
  !f6
  db 16,$17
  !f5
  !f5
  db 8,$57
  !f6
  !f5
  !f5
  !e6
  db 16,$17
  !e5
  !e5
  db 8,$57
  !e6
  !e5
  !e5
  !instr,!instr03
  !volume,160
  db 8,$47
  !fs6
  !cs7
  db 8,$42
  !fs6
  db 8,$47
  !cs7
  !gs6
  db 8,$42
  !cs7
  db 8,$47
  !as6
  !cs7
  !as6
  !cs7
  db 8,$42
  !fs6
  !cs7
  db 8,$47
  !gs6
  db 8,$42
  !cs7
  db 8,$47
  !as6
  db 8,$42
  !cs7
  !end

.pattern7_4
  !pan,12
  !instr,!instr2A
  !volume,210
  db 8,$57
  !b5
  db 16,$17
  !b5
  !b5
  db 8,$57
  !b6
  db 16,$17
  !b5
  !b6
  db 8,$57
  !b5
  db 16,$17
  !b6
  db 8,$57
  !b5
  !b6
  !b5
  db 16
  !rest
  !instr,!instr06
  !volume,145
  !transpose,12
  db 8,$47
  !cs7
  !gs6
  db 8,$42
  !cs7
  db 8,$47
  !b6
  !cs7
  db 8,$42
  !gs6
  db 8,$47
  !cs7
  db 8,$42
  !fs6
  db 8,$47
  !cs7
  db 8,$42
  !gs6
  db 8,$47
  !cs7
  db 8,$42
  !b6
  db 8,$47
  !cs7
  db 8,$42
  !gs6
  !transpose,0
  !pan,12
  !instr,!instr2A
  !volume,210
  db 8,$57
  !b6
  db 16,$17
  !b5
  !b5
  db 8,$57
  !b6
  !b5
  !b5
  !b6
  db 16,$17
  !b5
  !b5
  db 8,$57
  !b6
  !b5
  !b5
  !instr,!instr03
  !volume,160
  db 8,$47
  !cs7
  !fs6
  db 8,$42
  !cs7
  db 8,$47
  !gs6
  !cs7
  db 8,$42
  !gs6
  db 8,$47
  !cs7
  !as6
  !cs7
  db 8,$42
  !fs6
  !cs7
  db 8,$47
  !fs6
  !cs7
  db 8,$42
  !gs6
  db 8,$47
  !cs7
  db 8,$42
  !as6
  !end

.pattern8_0
  !pan,10
  !echo,%00011010,38,38
  !loop : dw .sub565A : db 4
  !end

.pattern8_1
  !instr,!instr1D
  !pan,12
  !volume,160
  !loop : dw .sub5691 : db 1
  !cs5
  !e5
  !gs5
  !e5
  !cs5
  !e5
  !gs5
  !e5
  !cs5
  !e5
  !b5
  !e5
  !cs5
  !e5
  !b5
  !e5
  !end

.pattern8_2
  db 8,$77
  !b3
  db 16
  !b2
  !b2
  db 8
  !b3
  db 16
  !b2
  db 8
  !b3
  db 16
  !b2
  !b3
  db 8
  !b2
  !b3
  !b2
  !loop : dw .sub56C4 : db 3
  !end

.pattern8_3
  !transpose,0
  !instr,!instr1B
  !pan,8
  !volume,165
  db 8,$47
  !fs6
  !fs6
  !b5
  !fs6
  !fs6
  !b5
  !fs6
  !b5
  !fs6
  !fs6
  !b5
  !fs6
  !fs6
  !b5
  !fs6
  !b5
  !gs6
  !gs6
  !cs6
  !gs6
  !gs6
  !cs6
  !gs6
  !cs6
  !gs6
  !gs6
  !cs6
  !gs6
  !gs6
  !cs6
  !gs6
  !cs6
  !a6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !d6
  !gs6
  !gs6
  !cs6
  !gs6
  !gs6
  !cs6
  !gs6
  !cs6
  !gs6
  !cs6
  !gs6
  !gs6
  !cs6
  !gs6
  !gs6
  !cs6
  !end

.pattern8_4
  !transpose,0
  !instr,!instr1B
  !pan,10
  !volume,160
  db 8,$47
  !a6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !d6
  !b6
  !b6
  !e6
  !b6
  !b6
  !e6
  !b6
  !e6
  !b6
  !b6
  !e6
  !b6
  !b6
  !e6
  !b6
  !e6
  !cs7
  !cs7
  !fs6
  !cs7
  !cs7
  !fs6
  !cs7
  !fs6
  !cs7
  !cs7
  !fs6
  !cs7
  !cs7
  !fs6
  !cs7
  !fs6
  !b6
  !b6
  !e6
  !b6
  !b6
  !e6
  !b6
  !e6
  !b6
  !e6
  !b6
  !b6
  !e6
  !b6
  !b6
  !e6
  !end

.pattern9_0
  !loop : dw .sub565A : db 3
  !instr,!instr23
  db 16,$77
  !f5
  !instr,!instr25
  !a4
  !instr,!instr23
  db 8
  !f5
  !instr,!instr25
  db 16,$78
  !a4
  !instr,!instr23
  db 8,$73
  !f5
  !instr,!instr25
  db 32,$78
  !a4
  db 8
  !f4
  db 8,$74
  !f4
  !pan,8
  db 8,$7A
  !f4
  !pan,12
  !f4
  !end

.pattern9_1
  !loop : dw .sub5691 : db 1
  !cs5
  !f5
  !gs5
  !cs5
  !f5
  !gs5
  !cs5
  !f5
  !gs5
  db 24
  !rest
  !instr,!instr29
  !pan,0
  !volume,180
  db 8,$77
  !cs6
  db 24,$47
  !c6
  !end

.pattern9_2
  db 8,$77
  !b3
  db 16
  !b2
  !b2
  db 8
  !b3
  db 16
  !b2
  db 8
  !b3
  db 16
  !b2
  !b3
  db 8
  !b2
  !b3
  !b2
  !b3
  db 16
  !b2
  !b2
  db 8
  !b3
  db 16
  !b2
  db 8
  !b3
  db 16
  !b2
  !b3
  db 8
  !b2
  !b3
  !b2
  db 8,$74
  !e4
  db 16,$77
  !e3
  !e3
  db 8,$74
  !e4
  db 16,$77
  !e3
  db 8,$74
  !e4
  db 16,$77
  !e3
  db 16,$74
  !e4
  db 8,$77
  !e3
  db 8,$74
  !e4
  db 8,$77
  !e3
  db 8,$74
  !ds4
  db 16,$77
  !ds3
  db 16,$74
  !ds4
  db 8,$77
  !ds3
  db 8,$74
  !ds4
  db 8,$77
  !ds3
  db 8,$74
  !ds4
  db 24
  !rest
  db 8,$77
  !cs3
  db 24,$47
  !c3
  !end

.pattern9_3
  !instr,!instr01
  !pan,8
  !volume,175
  db 8,$47
  !fs6
  !fs6
  !b5
  !fs6
  !fs6
  !b5
  !fs6
  !fs6
  !b5
  !fs6
  !fs6
  !b5
  !fs6
  !b5
  !fs6
  !b5
  !gs6
  !gs6
  !cs6
  !gs6
  !gs6
  !cs6
  !gs6
  !gs6
  !cs6
  !gs6
  !gs6
  !cs6
  !gs6
  !cs6
  !gs6
  !cs6
  !a6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !d6
  !gs6
  !gs6
  !cs6
  !gs6
  !cs6
  !gs6
  !gs6
  !cs6
  !gs6
  db 24
  !rest
  !pan,20
  !instr,!instr29
  !volume,180
  db 8,$77
  !f6
  db 24,$47
  !e6
  !end

.pattern9_4
  !instr,!instr01
  !pan,10
  !volume,175
  db 8,$47
  !a6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !a6
  !d6
  !a6
  !d6
  !a6
  !d6
  !b6
  !b6
  !e6
  !b6
  !b6
  !e6
  !b6
  !b6
  !e6
  !b6
  !b6
  !e6
  !b6
  !e6
  !b6
  !e6
  !cs7
  !cs7
  !fs6
  !cs7
  !cs7
  !fs6
  !cs7
  !fs6
  !cs7
  !cs7
  !fs6
  !cs7
  !cs7
  !fs6
  !cs7
  !fs6
  !c7
  !c7
  !f6
  !c7
  !f6
  !c7
  !c7
  !f6
  !c7
  db 24
  !rest
  !instr,!instr2A
  !volume,180
  db 8,$77
  !c7
  db 24,$47
  !b6
  !end

.sub56D6
  !tie
  !tie
  db 96
  !tie
  db 93
  !tie
  db 35
  !rest
  !end

.sub55D3
  !pan,10
  !instr,!instr23
  db 16,$77
  !e5
  !pan,12
  !instr,!instr24
  db 8,$72
  !a4
  !pan,8
  !instr,!instr24
  !a4
  !pan,10
  !instr,!instr27
  db 16,$79
  !d4
  !pan,12
  !instr,!instr24
  db 8,$72
  !a4
  !pan,8
  !instr,!instr24
  !a4
  !pan,10
  !instr,!instr23
  db 16,$77
  !e5
  !pan,12
  !instr,!instr24
  db 8,$72
  !a4
  !pan,8
  !instr,!instr24
  !a4
  !pan,10
  !instr,!instr27
  db 16,$79
  !d4
  !pan,12
  !instr,!instr24
  db 8,$72
  !a4
  !pan,8
  !instr,!instr24
  !a4
  !end

.sub5620
  db 8,$77
  !d5
  db 8,$72
  !d5
  db 8,$73
  !d5
  db 8,$71
  !d5
  db 8,$77
  !d5
  db 8,$72
  !d5
  db 8,$73
  !d5
  db 8,$71
  !d5
  db 8,$77
  !d5
  db 8,$72
  !d5
  db 8,$73
  !d5
  db 8,$71
  !d5
  db 8,$77
  !d5
  db 8,$72
  !d5
  db 8,$73
  !d5
  db 8,$71
  !d5
  !end

.sub542A
  !pan,10
  !instr,!instr23
  db 16,$77
  !f5
  !instr,!instr24
  db 16,$73
  !c4
  db 16,$75
  !c4
  db 16,$73
  !c4
  !instr,!instr27
  db 32,$79
  !c4
  !instr,!instr24
  db 16,$75
  !c4
  db 16,$73
  !c4
  db 16,$75
  !c4
  !instr,!instr27
  db 16,$77
  !d4
  !instr,!instr23
  !f5
  db 16,$74
  !f5
  !instr,!instr27
  db 32,$79
  !c4
  !instr,!instr24
  db 16,$75
  !c4
  db 16,$73
  !c4
  !pan,10
  !instr,!instr23
  db 16,$77
  !f5
  !instr,!instr24
  db 16,$73
  !c4
  db 8,$75
  !c4
  !instr,!instr23
  db 8,$77
  !f5
  !instr,!instr24
  db 16,$73
  !c4
  !instr,!instr27
  db 32,$79
  !c4
  !instr,!instr24
  db 16,$75
  !c4
  db 16,$73
  !c4
  db 16,$75
  !c4
  !instr,!instr27
  db 16,$77
  !d4
  !instr,!instr23
  db 8
  !f5
  db 16
  !f5
  db 8,$74
  !f5
  !instr,!instr27
  db 32,$79
  !c4
  !instr,!instr24
  db 16,$75
  !c4
  db 16,$73
  !c4
  !end

.sub54A9
  !instr,!instr27
  !pan,12
  db 8,$70
  !d5
  db 8,$72
  !d5
  db 8,$77
  !d5
  db 8,$72
  !d5
  !pan,8
  db 8,$70
  !d5
  db 8,$72
  !d5
  !pan,12
  db 8,$77
  !d5
  db 8,$73
  !d5
  !pan,8
  db 5,$78
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,12
  db 5,$78
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,8
  db 8,$77
  !d5
  db 8,$72
  !d5
  !pan,12
  db 8,$77
  !d5
  db 8,$73
  !d5
  !pan,8
  db 8,$77
  !d5
  db 8,$73
  !d5
  !pan,12
  db 8,$75
  !d5
  db 8,$77
  !d5
  !pan,8
  db 8,$72
  !d5
  db 8,$75
  !d5
  !pan,12
  db 5,$77
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,8
  db 5,$77
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,12
  db 8,$77
  !e5
  db 8,$72
  !e5
  !end

.sub553E
  !instr,!instr27
  !pan,8
  db 8,$70
  !d5
  db 8,$72
  !d5
  db 8,$77
  !d5
  db 8,$72
  !d5
  !pan,12
  db 8,$70
  !d5
  db 8,$72
  !d5
  !pan,8
  db 8,$77
  !d5
  db 8,$73
  !d5
  !pan,12
  db 5,$78
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,8
  db 5,$78
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,12
  db 8,$77
  !d5
  db 8,$72
  !d5
  !pan,8
  db 8,$77
  !d5
  db 8,$73
  !d5
  !pan,12
  db 8,$77
  !d5
  db 8,$73
  !d5
  !pan,8
  db 8,$75
  !d5
  db 8,$77
  !d5
  !pan,12
  db 8,$72
  !d5
  db 8,$75
  !d5
  !pan,8
  db 5,$77
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,12
  db 5,$77
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  !d5
  db 4,$70
  !d5
  db 3
  !d5
  !pan,8
  db 8,$77
  !e5
  db 8,$72
  !e5
  !end

.sub5651
  !gs3
  !rest
  !gs3
  !rest
  !gs3
  !rest
  !gs3
  !rest
  !end

.sub565A
  !instr,!instr23
  db 16,$77
  !f5
  !instr,!instr25
  !a4
  !instr,!instr23
  db 8
  !f5
  !instr,!instr25
  db 16,$78
  !a4
  !instr,!instr23
  db 8,$73
  !f5
  db 8,$77
  !f5
  !instr,!instr25
  db 8,$73
  !a4
  db 16,$77
  !a4
  !instr,!instr23
  db 8
  !f5
  !instr,!instr25
  db 8,$73
  !a4
  db 5,$78
  !a4
  db 4,$74
  !a4
  db 4,$73
  !a4
  db 3,$71
  !a4
  !end

.sub5691
  db 8,$47
  !b4
  !d5
  !fs5
  !d5
  !b4
  !d5
  !fs5
  !d5
  !b4
  !d5
  !fs5
  !d5
  !b4
  !d5
  !fs5
  !d5
  !cs5
  !e5
  !gs5
  !e5
  !cs5
  !e5
  !gs5
  !e5
  !cs5
  !e5
  !gs5
  !e5
  !cs5
  !e5
  !gs5
  !e5
  !d5
  !fs5
  !a5
  !fs5
  !d5
  !fs5
  !a5
  !fs5
  !d5
  !fs5
  !a5
  !fs5
  !d5
  !fs5
  !a5
  !fs5
  !end

.sub56C4
  !b3
  db 16
  !b2
  !b2
  db 8
  !b3
  db 16
  !b2
  db 8
  !b3
  db 16
  !b2
  !b3
  db 8
  !b2
  !b3
  !b2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
