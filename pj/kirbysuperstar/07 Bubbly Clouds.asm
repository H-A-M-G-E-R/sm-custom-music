asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr03 = $16
!instr05 = $17
!instr0B = $18
!instr1B = $19
!instr1D = $1A
!instr20 = $1B
!instr22 = $1C
!instr23 = $1D
!instr27 = $1E
!instr2B = $1F
!instr2C = $20
!instr2D = $21
!instr2F = $22

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FC,$E0,$B8,$03,$80
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr20,$FF,$E0,$B8,$03,$00
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr27,$8F,$E0,$B8,$03,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1F_20,Sample1F_20+27
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample27,Sample27+45
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2F,Sample2F+1080
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample_55d7dd5330b8a8ef8525169d9eaa7cd3.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample1F_20: incbin "Sample_dba4d6f4dab80fdde9fe7792a812ef02.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample27: incbin "Sample_55365c24760b7ccb8bdcacbb9417c216.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"

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
  dw .pattern5
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !musicVolume,255
  !tempo,51
  !echo,%00011000,28,28
  !echoParameters,4,176,0
  !volume,235
  !loop : dw .sub53F5 : db 1
  !end

.pattern0_1
  !instr,!instr2D
  !volume,165
  !pan,12
  !loop : dw .sub5443 : db 1
  !loop : dw .sub5452 : db 3
  !end

.pattern0_2
  !instr,!instr05
  !volume,165
  !loop : dw .sub545F : db 1
  db 18,$09
  !a3
  !e4
  db 18,$05
  !b4
  db 18,$04
  !c5
  db 18,$06
  !a4
  !rest
  db 18,$19
  !d3
  !a3
  db 18,$79
  !d4
  db 18,$73
  !a3
  db 18,$79
  !d4
  db 18,$73
  !a3
  !loop : dw .sub545F : db 1
  db 18,$09
  !a3
  !e4
  db 18,$05
  !b4
  db 18,$04
  !c5
  db 18,$06
  !a4
  !rest
  db 18,$1A
  !d3
  db 18,$19
  !d3
  db 18,$1A
  !d3
  db 18,$19
  !d3
  db 18,$1A
  !e3
  !fs3
  !end

.pattern0_3
  !instr,!instr20
  !pan,8
  !volume,126
  db 36,$06
  !g4
  !instr,!instr1D
  !volume,172
  !subtranspose,58
  db 18
  !d6
  !d6
  !b5
  !rest
  !loop : dw .sub5476 : db 1
  db 36
  !rest
  db 36,$46
  !b5
  !a5
  !instr,!instr20
  !pan,8
  !volume,126
  db 36,$06
  !g4
  !instr,!instr1D
  !volume,163
  !subtranspose,58
  db 18
  !d6
  !d6
  !b5
  !rest
  !loop : dw .sub5476 : db 1
  !rest
  !cs7
  !c7
  !b6
  !as6
  !a6
  !end

.pattern0_4
  !loop : dw .sub5491 : db 1
  !subtranspose,0
  !instr,!instr20
  !volume,120
  db 36,$06
  !e4
  !subtranspose,58
  !instr,!instr1D
  !volume,163
  db 18
  !g6
  !g6
  !g6
  !rest
  db 36
  !rest
  db 36,$46
  !e6
  !fs6
  !loop : dw .sub5491 : db 1
  !subtranspose,0
  !instr,!instr20
  !volume,120
  db 36,$06
  !c5
  !subtranspose,58
  !instr,!instr1D
  !volume,163
  db 18
  !g6
  !g6
  !g6
  !rest
  !d7
  !d7
  !d7
  !d7
  !d7
  !d7
  !end

.pattern1_0
  !volume,231
  !loop : dw .sub53F5 : db 1
  !end

.pattern1_1
  !volume,163
  !loop : dw .sub5443 : db 1
  !loop : dw .sub5452 : db 3
  !end

.pattern1_2
  !volume,163
  !loop : dw .sub545F : db 1
  !loop : dw .sub54AC : db 1
  db 18,$09
  !d3
  !a3
  db 18,$06
  !d4
  !e4
  !d4
  !rest
  db 18,$09
  !d3
  !a3
  db 36,$46
  !d4
  db 36,$47
  !fs3
  db 18,$09
  !g3
  !d4
  db 18,$06
  !a4
  db 18,$05
  !b4
  db 18,$06
  !g4
  !rest
  db 18,$1A
  !d3
  db 18,$19
  !d4
  db 18,$1A
  !d4
  db 18,$19
  !d3
  db 18,$1A
  !d4
  !d4
  !end

.pattern1_3
  !subtranspose,0
  !vibrato,36,20,30
  !instr,!instr23
  !volume,148
  !pan,11
  db 54,$76
  !g6
  db 18
  !a6
  !g6
  !a6
  db 36,$26
  !b6
  db 72,$45
  !b6
  db 108,$66
  !d7
  !pitchSlide,62,10 : !c7
  db 108,$76
  !c7
  db 36
  !rest
  db 18
  !fs6
  !g6
  !fs6
  !g6
  db 36,$16
  !a6
  db 54,$76
  !c7
  db 18
  !c7
  db 105
  !b6
  db 3
  !rest
  !pan,12
  !volume,153
  !instr,!instr27
  db 36,$66
  !fs6
  !pan,13
  !e6
  !pan,14
  !d6
  !end

.pattern1_4
  !subtranspose,0
  !vibrato,36,20,30
  !instr,!instr23
  !volume,148
  !pan,9
  db 54,$76
  !b6
  db 18
  !c7
  !b6
  !c7
  db 36,$26
  !d7
  db 72,$44
  !g7
  db 108,$65
  !fs7
  !pitchSlide,62,10 : !e7
  db 108,$76
  !e7
  db 36
  !rest
  db 18
  !a6
  !b6
  !a6
  !b6
  db 36,$16
  !c7
  db 54,$76
  !fs7
  db 18
  !e7
  db 105
  !d7
  db 3
  !rest
  !pan,8
  !volume,153
  !instr,!instr27
  db 36,$66
  !a6
  !pan,7
  !a6
  !pan,6
  !a6
  !end

.pattern2_0
  !loop : dw .sub53F5 : db 1
  !end

.pattern2_1
  !loop : dw .sub5443 : db 1
  !loop : dw .sub5452 : db 3
  !end

.pattern2_2
  !loop : dw .sub545F : db 1
  !loop : dw .sub54AC : db 1
  db 18,$19
  !ds3
  !ds3
  !ds4
  !ds3
  !ds4
  !ds3
  !f3
  !f3
  db 18,$18
  !f4
  db 18,$19
  !f3
  db 18,$18
  !f4
  db 18,$19
  !f3
  db 18,$29
  !g3
  !d4
  db 18,$26
  !g4
  !a4
  !g4
  db 18,$29
  !d4
  !g3
  !d4
  db 18,$26
  !g4
  !a4
  db 18,$25
  !b4
  db 18,$29
  !d4
  !end

.pattern2_3
  !instr,!instr03
  !volume,143
  !pan,11
  db 54,$76
  !g6
  db 18
  !a6
  !g6
  !a6
  db 36,$26
  !b6
  db 72,$44
  !b6
  db 72,$76
  !d7
  db 36
  !c7
  db 108
  !c7
  db 36,$54
  !ds7
  db 36,$55
  !d7
  !c7
  db 36,$54
  !ds7
  db 54,$55
  !a6
  db 18
  !a6
  db 108,$76
  !b6
  !tie
  !end

.pattern2_4
  !instr,!instr03
  !volume,143
  !pan,9
  db 54,$76
  !b6
  db 18
  !c7
  !b6
  !c7
  db 36,$26
  !d7
  db 72,$44
  !g7
  db 72,$76
  !fs7
  db 36
  !e7
  db 108
  !e7
  db 36,$54
  !g7
  db 36,$55
  !f7
  !ds7
  db 36,$54
  !g7
  db 54,$55
  !f7
  db 18,$54
  !g7
  db 108,$76
  !d7
  !tie
  !end

.pattern3_0
  !loop : dw .sub53F5 : db 1
  !end

.pattern3_1
  !loop : dw .sub5443 : db 1
  !loop : dw .sub5452 : db 3
  !end

.pattern3_2
  db 18,$09
  !f3
  !c4
  db 18,$08
  !f4
  db 18,$09
  !c4
  db 18,$06
  !g4
  db 18,$09
  !c4
  !f3
  !c4
  db 18,$08
  !f4
  db 18,$09
  !c4
  db 18,$06
  !g4
  db 18,$09
  !c4
  !loop : dw .sub54C7 : db 1
  !loop : dw .sub54E4 : db 2
  !loop : dw .sub54C7 : db 1
  !end

.pattern3_3
  !subtranspose,0
  !instr,!instr22
  !volume,145
  !endVibrato
  db 18,$06
  !f6
  !c6
  !f6
  !c6
  !f6
  !e6
  !f6
  !c6
  !f6
  !e6
  !f6
  !c6
  !g6
  !d6
  !g6
  !fs6
  !g6
  !a6
  !g6
  !d6
  !g6
  !d6
  !g6
  !d6
  !f6
  !c6
  !f6
  !c6
  !f6
  !e6
  !f6
  !c6
  !f6
  !e6
  !f6
  !c6
  !g6
  !d6
  !g6
  !d6
  !g6
  !a6
  !g6
  !d6
  !fs6
  !d6
  !g6
  !d6
  !end

.pattern3_4
  !instr,!instr0B
  !subtranspose,0
  !volume,154
  !endVibrato
  db 18,$76
  !a6
  db 18,$71
  !a6
  db 18,$76
  !a6
  db 18,$71
  !a6
  db 18,$76
  !a6
  !b6
  !c7
  db 18,$71
  !c7
  db 18,$76
  !a6
  db 18,$71
  !a6
  db 18,$76
  !c7
  db 18,$71
  !c7
  db 18,$76
  !b6
  db 18,$71
  !b6
  db 18,$76
  !b6
  db 18,$71
  !b6
  db 18,$76
  !b6
  !c7
  !d7
  db 18,$71
  !d7
  db 18,$76
  !c7
  db 18,$71
  !c7
  db 18,$76
  !b6
  db 18,$71
  !b6
  db 18,$76
  !a6
  db 18,$71
  !a6
  db 18,$76
  !a6
  db 18,$71
  !a6
  db 18,$76
  !a6
  !b6
  !c7
  db 18,$71
  !c7
  db 18,$76
  !a6
  db 18,$71
  !a6
  db 18,$76
  !c7
  db 18,$71
  !c7
  db 18,$76
  !d7
  db 18,$71
  !d7
  db 18,$76
  !b6
  db 18,$71
  !b6
  db 18,$76
  !d7
  db 18,$71
  !d7
  db 30,$74
  !g7
  db 30,$70
  !g7
  !g7
  db 18
  !g7
  !end

.pattern4_0
  !loop : dw .sub53F5 : db 1
  !end

.pattern4_1
  !loop : dw .sub5443 : db 1
  !loop : dw .sub5452 : db 3
  !end

.pattern4_2
  !instr,!instr2B
  !volume,163
  db 18,$79
  !f3
  !c4
  db 18,$76
  !a4
  db 18,$79
  !c4
  db 18,$76
  !g4
  db 18,$79
  !c4
  !f3
  !c4
  db 18,$78
  !f4
  db 18,$79
  !c4
  db 18,$76
  !g4
  db 18,$79
  !c4
  !g3
  !d4
  db 18,$75
  !b4
  db 18,$79
  !d4
  db 18,$76
  !g4
  db 18,$79
  !d4
  !g3
  !d4
  db 18,$76
  !a4
  db 18,$79
  !d4
  db 18,$76
  !g4
  db 18,$79
  !d4
  !loop : dw .sub54F3 : db 3
  db 18,$1A
  !d3
  db 18,$19
  !d3
  db 18,$1A
  !d3
  db 18,$19
  !d3
  db 18,$1A
  !e3
  !fs3
  !end

.pattern4_3
  !subtranspose,58
  !instr,!instr1B
  !vibrato,10,13,20
  !volume,91
  !dynamicVolume,40,154
  !slideIn,0,14,1
  db 72,$76
  !a6
  !endSlide
  db 18
  !g6
  !f6
  db 36
  !e6
  !f6
  !g6
  !slideIn,0,8,1
  db 72
  !d6
  !slideIn,0,3,1
  db 18
  !b5
  !endSlide
  !c6
  db 36
  !d6
  !c6
  !b5
  db 108
  !a5
  !endVibrato
  !subtranspose,0
  !instr,!instr22
  !volume,145
  db 36,$46
  !e6
  !g6
  !a6
  db 72,$56
  !a6
  db 18,$46
  !fs6
  !a6
  !rest
  db 18,$06
  !cs7
  !c7
  !b6
  !as6
  !a6
  !end

.pattern4_4
  !endTremolo
  !subtranspose,58
  !instr,!instr1B
  !vibrato,10,13,20
  !volume,91
  !dynamicVolume,40,154
  !slideIn,0,14,1
  db 72,$76
  !a7
  !endSlide
  db 18
  !g7
  !f7
  db 36
  !e7
  !f7
  !g7
  !slideIn,0,8,1
  db 72
  !d7
  !slideIn,0,3,1
  db 18
  !b6
  !endSlide
  !c7
  db 36
  !d7
  !c7
  !b6
  db 108
  !a6
  !endVibrato
  !subtranspose,0
  !instr,!instr22
  !volume,151
  db 36,$46
  !a6
  !b6
  !c7
  db 72,$56
  !d7
  db 18,$46
  !b6
  !c7
  db 18,$06
  !d7
  !d7
  !d7
  !d7
  !d7
  !d7
  !end

.pattern5_0
  !loop : dw .sub53F5 : db 1
  !end

.pattern5_1
  !loop : dw .sub5443 : db 1
  !loop : dw .sub5452 : db 3
  !end

.pattern5_2
  !instr,!instr05
  !volume,172
  !loop : dw .sub5502 : db 1
  db 9,$49
  !d3
  db 9,$41
  !d3
  db 9,$49
  !a3
  db 9,$41
  !a3
  db 9,$79
  !d4
  db 9,$71
  !d4
  db 9,$73
  !a3
  db 9,$71
  !a3
  db 9,$79
  !d4
  db 9,$71
  !d4
  db 9,$73
  !a3
  db 9,$71
  !a3
  !loop : dw .sub5502 : db 1
  db 18,$1A
  !d3
  db 18,$19
  !d3
  db 18,$1A
  !d3
  db 18,$19
  !d3
  db 18,$1A
  !e3
  !fs3
  !end

.pattern5_3
  !instr,!instr1B
  !subtranspose,58
  !volume,163
  !pan,8
  db 18,$06
  !d6
  !b5
  !d6
  !b5
  !d6
  !a5
  !d6
  !b5
  !d6
  !b5
  !d6
  !a5
  !e6
  !c6
  !e6
  !c6
  !e6
  !a5
  !e6
  !c6
  !e6
  !b5
  !e6
  !a5
  !d6
  !b5
  !d6
  !b5
  !d6
  !g5
  !d6
  !b5
  !d6
  !b5
  !d6
  !a5
  !e6
  !b5
  !e6
  !a5
  !e6
  !g5
  !rest
  !instr,!instr1D
  !cs7
  !c7
  !b6
  !as6
  !a6
  !end

.pattern5_4
  !instr,!instr1B
  !subtranspose,58
  !volume,163
  !pan,12
  db 18,$06
  !fs6
  !d6
  !fs6
  !d6
  !fs6
  !b5
  !fs6
  !d6
  !fs6
  !d6
  !fs6
  !b5
  !g6
  !e6
  !g6
  !e6
  !g6
  !c6
  !g6
  !e6
  !g6
  !c6
  !g6
  !c6
  !loop : dw .sub555B : db 2
  !g6
  !c6
  !g6
  !c6
  !g6
  !c6
  !instr,!instr1D
  !d7
  !d7
  !d7
  !d7
  !d7
  !d7
  !end

.sub53F5
  !pan,10
  db 36,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,8
  db 18
  !d7
  !d7
  db 36
  !d7
  db 18
  !d7
  !d7
  db 36
  !d7
  !d7
  !pan,10
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,8
  db 18
  !d7
  !d7
  db 36
  !d7
  db 18
  !d7
  !d7
  !a6
  !d7
  !d7
  !a6
  !pan,10
  db 36
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,8
  db 18
  !d7
  !d7
  db 36
  !d7
  db 18
  !d7
  !d7
  db 36
  !d7
  !d7
  !pan,10
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,8
  db 18
  !d7
  !d7
  db 36
  !d7
  db 18
  !d7
  !d7
  !a6
  !d7
  !d7
  !a6
  !end

.sub5443
  db 18,$76
  !g4
  !e4
  !f4
  !e4
  !f4
  !e4
  !g4
  !f4
  !f4
  !g4
  !f4
  !f4
  !end

.sub5452
  !g4
  !e4
  !f4
  !e4
  !f4
  !e4
  !g4
  !f4
  !f4
  !g4
  !f4
  !f4
  !end

.sub545F
  db 18,$09
  !g3
  !d4
  db 18,$06
  !a4
  db 18,$05
  !b4
  db 18,$06
  !g4
  !rest
  db 18,$09
  !g3
  !d4
  db 36,$46
  !a4
  !g4
  !end

.sub5476
  db 36
  !rest
  db 36,$46
  !d6
  !b5
  !subtranspose,0
  !instr,!instr20
  !volume,126
  db 36,$06
  !a4
  !subtranspose,58
  !instr,!instr1D
  !volume,163
  db 18
  !e6
  !e6
  !c6
  !rest
  !end

.sub5491
  !instr,!instr20
  !pan,12
  !volume,120
  db 36,$06
  !b4
  !instr,!instr1D
  !volume,163
  !subtranspose,58
  db 18
  !fs6
  !fs6
  !fs6
  !rest
  db 36
  !rest
  db 36,$46
  !fs6
  !fs6
  !end

.sub54AC
  db 18,$09
  !c3
  !g3
  db 18,$06
  !d4
  !e4
  !c4
  !rest
  db 18,$19
  !c3
  !g3
  db 18,$79
  !d4
  db 18,$73
  !g3
  db 18,$79
  !c4
  db 18,$73
  !g3
  !end

.sub54C7
  !g3
  !d4
  db 18,$06
  !g4
  db 18,$09
  !d4
  db 18,$06
  !a4
  db 18,$09
  !d4
  !g3
  !d4
  db 18,$06
  !a4
  db 18,$09
  !d4
  db 18,$06
  !g4
  db 18,$09
  !d4
  !end

.sub54E4
  !f3
  !c4
  db 18,$08
  !f4
  db 18,$09
  !c4
  db 18,$06
  !g4
  db 18,$09
  !c4
  !end

.sub54F3
  !f3
  !c4
  db 18,$78
  !f4
  db 18,$79
  !c4
  db 18,$76
  !g4
  db 18,$79
  !c4
  !end

.sub5502
  db 9,$49
  !g3
  db 9,$41
  !g3
  db 9,$49
  !d4
  db 9,$41
  !d4
  db 9,$46
  !a4
  db 9,$41
  !a4
  db 9,$45
  !b4
  db 9,$41
  !b4
  db 9,$46
  !g4
  db 9,$41
  !g4
  db 18
  !rest
  db 9,$49
  !g3
  db 9,$41
  !g3
  db 9,$49
  !d4
  db 9,$41
  !d4
  db 18,$76
  !a4
  db 18,$71
  !a4
  db 18,$76
  !g4
  db 18,$71
  !g4
  db 9,$49
  !a3
  db 9,$41
  !a3
  db 9,$49
  !e4
  db 9,$41
  !e4
  db 9,$45
  !b4
  db 9,$41
  !b4
  db 9,$44
  !c5
  db 9,$41
  !c5
  db 9,$46
  !a4
  db 9,$41
  !a4
  db 18
  !rest
  !end

.sub555B
  !fs6
  !d6
  !fs6
  !d6
  !fs6
  !b5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
