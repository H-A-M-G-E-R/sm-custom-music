asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr03 = $18
!instr04 = $19
!instr06 = $1A
!instr1B = $1B
!instr1C = $1C
!instr1D = $1D
!instr21 = $1E
!instr23 = $1F
!instr24 = $20
!instr25 = $21
!instr27 = $22

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$07,$00
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr04,$CF,$F5,$B8,$08,$F0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+819
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample04,Sample04+1404
  dw Sample05_06,Sample05_06+216
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample1D,Sample1D+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_daee1fba1349bada3b2b763cd04133f4.brr"
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample04: incbin "Sample_ed5604d5b249b89747c4b04479c95eb2.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
-
  dw .pattern0
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
  !percBase,!instr23
  !musicVolume,255
  !tempo,46
  !echo,%00011100,26,26
  !echoParameters,4,191,0
  !volume,255
  !loop : dw .sub4E2E : db 7
  !pan,10
  db 17,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 17,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  db 9,$72
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 17,$77
  %percNote(!instr27-!instr23)
  !pan,12
  !instr,!instr25
  db 17,$76
  !a4
  !end

.pattern0_1
  !instr,!instr21
  !volume,180
  !loop : dw .sub4E66 : db 1
  !end

.pattern0_2
  !endVibrato
  db 17
  !rest
  !instr,!instr04
  !pan,12
  !volume,140
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  !loop : dw .sub4ED0 : db 2
  !loop : dw .sub4EF1 : db 1
  !end

.pattern0_3
  !transpose,0
  !endVibrato
  db 17
  !rest
  !instr,!instr04
  !pan,8
  !volume,140
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  !loop : dw .sub4F92 : db 2
  !loop : dw .sub4FB3 : db 1
  !end

.pattern0_4
  !pan,10
  !instr,!instr06
  !volume,160
  db 17,$17
  !f6
  db 9,$57
  !f6
  db 8
  !c7
  db 17,$17
  !b6
  !c7
  db 17,$16
  !f7
  db 17,$17
  !ds7
  !d7
  !c7
  !loop : dw .sub5054 : db 1
  db 26,$56
  !b6
  db 25,$19
  !c7
  db 17,$56
  !b6
  db 17,$19
  !c7
  db 34
  !rest
  db 5,$75
  !c7
  db 6,$76
  !d7
  db 6,$77
  !ds7
  db 17,$18
  !f7
  db 17,$17
  !ds7
  !d7
  db 9,$47
  !c7
  db 8
  !rest
  !slideIn,0,5,1
  db 17,$69
  !b6
  !endSlide
  db 17,$17
  !c7
  !a6
  !f6
  !ds6
  db 34,$16
  !f6
  db 17,$19
  !f6
  db 34,$55
  !g6
  db 17,$18
  !f6
  db 17,$17
  !ds6
  !loop : dw .sub507B : db 1
  !end

.pattern1_0
  !loop : dw .sub4E2E : db 7
  !pan,10
  db 17,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 17,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  db 9,$72
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  !instr,!instr25
  db 9,$76
  !c5
  db 8
  !c5
  !pan,8
  db 17
  !g4
  !end

.pattern1_1
  !loop : dw .sub4E66 : db 1
  !end

.pattern1_2
  db 17
  !rest
  db 9,$37
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  !loop : dw .sub509D : db 2
  !loop : dw .sub50B6 : db 1
  !end

.pattern1_3
  db 17
  !rest
  db 9,$37
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  !loop : dw .sub512F : db 2
  !loop : dw .sub5148 : db 1
  !end

.pattern1_4
  !instr,!instr1C
  !volume,165
  db 17,$17
  !f6
  db 9,$57
  !f6
  db 8
  !c7
  db 17,$17
  !b6
  !c7
  db 17,$16
  !f7
  db 17,$17
  !ds7
  !d7
  !c7
  !loop : dw .sub5054 : db 1
  db 26,$16
  !b6
  db 25,$19
  !c7
  db 17,$26
  !b6
  db 17,$19
  !c7
  db 34
  !rest
  db 5,$75
  !c7
  db 6,$76
  !d7
  db 6,$77
  !ds7
  db 17,$18
  !f7
  db 17,$17
  !ds7
  !d7
  db 9,$47
  !c7
  db 8
  !rest
  !slideIn,0,5,1
  db 17,$69
  !b6
  !endSlide
  db 17,$17
  !c7
  !a6
  !f6
  db 26
  !ds6
  db 25,$16
  !f6
  db 17,$19
  !f6
  db 34,$55
  !g6
  db 17,$18
  !f6
  db 17,$17
  !ds6
  !loop : dw .sub507B : db 1
  !end

.pattern2_0
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !loop : dw .sub51C1 : db 3
  !pan,10
  !instr,!instr27
  db 17,$77
  !c4
  !pan,12
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  !instr,!instr25
  db 9,$76
  !c5
  db 8
  !c5
  !pan,8
  db 17
  !g4
  !pan,10
  !dynamicEcho,34,1,1
  db 34,$16
  !c5
  !rest
  !end

.pattern2_1
  !loop : dw .sub5242 : db 1
  !loop : dw .sub5292 : db 2
  !loop : dw .sub52A7 : db 1
  !end

.pattern2_2
  !pan,12
  !instr,!instr1B
  !volume,165
  !loop : dw .sub52CD : db 1
  !end

.pattern2_3
  !pan,10
  !instr,!instr1B
  !volume,170
  !loop : dw .sub5353 : db 1
  !end

.pattern2_4
  !instr,!instr1D
  !volume,130
  !pan,8
  db 17,$17
  !f5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 17,$17
  !f5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 17,$17
  !as5
  db 9,$47
  !as5
  db 8
  !ds6
  db 17,$17
  !g5
  db 9,$47
  !as5
  db 8
  !ds6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !a5
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !f5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 17,$17
  !f5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 17,$17
  !g5
  db 9,$47
  !as5
  db 8
  !ds6
  db 17,$17
  !g5
  db 9,$47
  !as5
  db 8
  !ds6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  !loop : dw .sub53E0 : db 2
  !loop : dw .sub5409 : db 1
  !end

.pattern3_0
  !echo,%00011100,26,26
  !echoParameters,4,191,0
  !volume,255
  !loop : dw .sub4E2E : db 7
  !pan,10
  db 17,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 17,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  db 9,$72
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 17,$77
  %percNote(!instr27-!instr23)
  !pan,12
  !instr,!instr25
  db 17,$76
  !a4
  !end

.pattern3_1
  !instr,!instr21
  !volume,180
  !loop : dw .sub4E66 : db 1
  !end

.pattern3_2
  !endVibrato
  db 17
  !rest
  !instr,!instr04
  !pan,12
  !volume,140
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  !loop : dw .sub4ED0 : db 2
  !loop : dw .sub4EF1 : db 1
  !end

.pattern3_3
  !transpose,0
  !endVibrato
  db 17
  !rest
  !instr,!instr04
  !pan,8
  !volume,140
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  !loop : dw .sub4F92 : db 2
  !loop : dw .sub4FB3 : db 1
  !end

.pattern3_4
  !pan,10
  !instr,!instr00
  !volume,170
  db 17,$18
  !f5
  db 9,$57
  !f5
  db 8
  !c6
  db 17,$17
  !b5
  !c6
  db 17,$16
  !f6
  db 17,$17
  !ds6
  !d6
  !c6
  !b5
  db 17,$19
  !c6
  !rest
  !b5
  !c6
  !rest
  !b5
  db 17,$17
  !c6
  db 17,$18
  !f5
  db 9,$57
  !f5
  db 8
  !c6
  db 17,$17
  !b5
  !c6
  db 17,$16
  !f6
  db 17,$17
  !ds6
  !d6
  !c6
  !slideIn,0,5,1
  db 26,$37
  !b5
  !endSlide
  db 25,$07
  !c6
  db 17,$17
  !b5
  !c6
  db 34
  !rest
  db 5,$75
  !c6
  db 6,$76
  !d6
  db 6,$77
  !ds6
  db 17,$18
  !f6
  db 17,$17
  !ds6
  !d6
  !c6
  !slideIn,0,7,1
  db 17,$59
  !b5
  !endSlide
  db 17,$17
  !c6
  !a5
  !f5
  db 26,$18
  !ds5
  db 25,$17
  !f5
  db 17,$18
  !f5
  db 34,$55
  !g5
  db 17,$18
  !f5
  db 17,$17
  !ds5
  db 17,$18
  !f5
  db 17,$17
  !f5
  !g5
  !gs5
  db 17,$18
  !g5
  db 17,$17
  !g5
  !f5
  !ds5
  db 26
  !ds5
  db 25
  !f5
  db 17
  !ds5
  db 34
  !f5
  db 9,$77
  !ds5
  db 8
  !e5
  db 17
  !f5
  !end

.pattern4_0
  !loop : dw .sub4E2E : db 7
  !pan,10
  db 17,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 17,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  db 9,$72
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  !instr,!instr25
  db 9,$76
  !c5
  db 8
  !c5
  !pan,8
  db 17
  !g4
  !end

.pattern4_1
  !loop : dw .sub4E66 : db 1
  !end

.pattern4_2
  db 17
  !rest
  db 9,$37
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  !loop : dw .sub509D : db 2
  !loop : dw .sub50B6 : db 1
  !end

.pattern4_3
  db 17
  !rest
  db 9,$37
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  !loop : dw .sub512F : db 2
  !loop : dw .sub5148 : db 1
  !end

.pattern4_4
  !instr,!instr03
  !volume,155
  db 17,$17
  !f6
  db 9,$57
  !f6
  db 8
  !c7
  db 17,$17
  !b6
  !c7
  db 17,$16
  !f7
  db 17,$17
  !ds7
  !d7
  !c7
  !b6
  !c7
  !rest
  !b6
  !c7
  !rest
  !b6
  !c7
  !f6
  db 9,$57
  !f6
  db 8
  !c7
  db 17,$17
  !b6
  !c7
  db 17,$16
  !f7
  db 17,$17
  !ds7
  !d7
  !c7
  db 26
  !b6
  db 25
  !c7
  db 17
  !b6
  !c7
  db 34
  !rest
  db 5,$75
  !c7
  db 6,$76
  !d7
  db 6,$77
  !ds7
  db 17,$18
  !f7
  db 17,$17
  !ds7
  !d7
  db 14,$27
  !c7
  db 3,$74
  !as6
  db 17,$59
  !b6
  db 17,$17
  !c7
  !a6
  !f6
  db 26
  !ds6
  db 25
  !f6
  db 17,$19
  !f6
  db 34,$55
  !g6
  db 17,$18
  !f6
  db 17,$17
  !ds6
  db 17,$19
  !f6
  db 17,$17
  !f6
  !g6
  !gs6
  db 9,$59
  !g6
  db 17,$17
  !g6
  db 8,$57
  !g6
  db 17,$17
  !f6
  !ds6
  db 26
  !ds6
  db 25,$16
  !f6
  db 17,$14
  !ds6
  db 34
  !f6
  db 9,$75
  !ds6
  db 8
  !e6
  db 17
  !f6
  !end

.pattern5_0
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !loop : dw .sub51C1 : db 3
  !pan,10
  !instr,!instr27
  db 17,$77
  !c4
  !pan,12
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  !instr,!instr25
  db 9,$76
  !c5
  db 8
  !c5
  !pan,8
  db 17
  !g4
  !pan,10
  !dynamicEcho,34,1,1
  db 34,$16
  !c5
  !rest
  !end

.pattern5_1
  !loop : dw .sub5242 : db 1
  !loop : dw .sub5292 : db 2
  !loop : dw .sub52A7 : db 1
  !end

.pattern5_2
  !pan,12
  !instr,!instr01
  !volume,165
  !loop : dw .sub52CD : db 1
  !end

.pattern5_3
  !pan,10
  !instr,!instr01
  !volume,170
  !loop : dw .sub5353 : db 1
  !end

.pattern5_4
  !instr,!instr21
  !volume,125
  !pan,8
  db 17,$17
  !f5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 17,$17
  !f5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 17,$17
  !as5
  db 9,$47
  !as5
  db 8
  !ds6
  db 17,$17
  !g5
  db 9,$47
  !as5
  db 8
  !ds6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !a5
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !f5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 17,$17
  !f5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 17,$17
  !g5
  db 9,$47
  !as5
  db 8
  !ds6
  db 17,$17
  !g5
  db 9,$47
  !as5
  db 8
  !ds6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  db 17,$17
  !a5
  db 9,$47
  !c6
  db 8
  !f6
  !loop : dw .sub53E0 : db 2
  !loop : dw .sub5409 : db 1
  !end

.sub4E2E
  !pan,10
  db 17,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 17,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  db 9,$72
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 17,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  db 8,$70
  %percNote(!instr24-!instr23)
  !end

.sub4E66
  db 34,$57
  !f3
  !c3
  db 26
  !f3
  db 8
  !f3
  db 17,$17
  !c3
  !c3
  db 34
  !f3
  !c3
  !f3
  !c3
  db 34,$57
  !f3
  !c3
  db 9,$69
  !f3
  db 17,$37
  !f3
  db 8,$57
  !f3
  db 17,$16
  !c3
  !c3
  db 34
  !g3
  db 34,$17
  !c3
  db 34,$14
  !c4
  db 34,$57
  !c3
  !f3
  !c3
  db 26
  !f3
  db 8
  !f3
  db 17,$17
  !c3
  !c3
  db 34,$57
  !ds3
  db 34,$54
  !as3
  db 26,$57
  !ds3
  db 8
  !ds3
  db 17,$17
  !as3
  !ds3
  db 26,$57
  !cs3
  db 8
  !cs3
  db 9
  !gs3
  db 17
  !cs3
  db 8
  !d3
  db 26
  !ds3
  db 8
  !ds3
  db 17,$17
  !as3
  !ds3
  db 34,$57
  !f3
  db 34,$58
  !f2
  db 26,$57
  !f3
  db 8,$58
  !f2
  db 17,$17
  !ds3
  !f3
  !end

.sub4ED0
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  !end

.sub4EF1
  db 17
  !rest
  db 9,$37
  !e5
  db 8,$34
  !e5
  db 17
  !rest
  db 9,$37
  !e5
  db 8,$34
  !e5
  db 17
  !rest
  db 9,$37
  !e5
  db 8,$34
  !e5
  db 17
  !rest
  db 9,$37
  !e5
  db 8,$34
  !e5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !ds5
  db 8,$34
  !ds5
  db 17
  !rest
  db 9,$37
  !ds5
  db 8,$34
  !ds5
  db 17
  !rest
  db 9,$37
  !as4
  db 8,$34
  !as4
  db 17
  !rest
  db 9,$37
  !as4
  db 8,$34
  !as4
  db 17
  !rest
  db 9,$37
  !ds5
  db 8,$34
  !ds5
  db 17
  !rest
  db 9,$37
  !ds5
  db 8,$34
  !ds5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !f5
  db 8,$34
  !f5
  db 17
  !rest
  db 9,$37
  !g5
  db 8,$34
  !g5
  db 17
  !rest
  db 9,$37
  !g5
  db 8,$34
  !g5
  db 17
  !rest
  db 9,$38
  !c5
  db 8,$35
  !c5
  db 17
  !rest
  db 9,$38
  !c5
  db 8,$35
  !c5
  db 17
  !rest
  db 9,$38
  !c5
  db 8,$35
  !c5
  db 17
  !rest
  db 9,$38
  !c5
  db 8,$35
  !c5
  !end

.sub4F92
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  !end

.sub4FB3
  db 17
  !rest
  db 9,$37
  !g5
  db 8,$34
  !g5
  db 17
  !rest
  db 9,$37
  !g5
  db 8,$34
  !g5
  db 17
  !rest
  db 9,$37
  !g5
  db 8,$34
  !g5
  db 17
  !rest
  db 9,$37
  !g5
  db 8,$34
  !g5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !g5
  db 8,$34
  !g5
  db 17
  !rest
  db 9,$37
  !g5
  db 8,$34
  !g5
  db 17
  !rest
  db 9,$37
  !g5
  db 8,$34
  !g5
  db 17
  !rest
  db 9,$37
  !g5
  db 8,$34
  !g5
  db 17
  !rest
  db 9,$37
  !gs5
  db 8,$34
  !gs5
  db 17
  !rest
  db 9,$37
  !gs5
  db 8,$34
  !gs5
  db 17
  !rest
  db 9,$37
  !as5
  db 8,$34
  !as5
  db 17
  !rest
  db 9,$37
  !as5
  db 8,$34
  !as5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  db 17
  !rest
  db 9,$37
  !a5
  db 8,$34
  !a5
  !end

.sub5054
  db 17,$56
  !b6
  db 17,$19
  !c7
  !rest
  db 17,$56
  !b6
  db 17,$19
  !c7
  !rest
  db 17,$66
  !b6
  db 17,$17
  !c7
  !f6
  db 9,$57
  !f6
  db 8
  !c7
  db 17,$17
  !b6
  !c7
  db 17,$16
  !f7
  db 17,$17
  !ds7
  !d7
  !c7
  !end

.sub507B
  db 17,$19
  !f6
  db 17,$17
  !f6
  !g6
  !gs6
  db 17,$19
  !g6
  db 17,$17
  !g6
  !f6
  !ds6
  db 26
  !ds6
  db 25,$16
  !f6
  db 17,$14
  !ds6
  db 34
  !f6
  db 9,$75
  !ds6
  db 8
  !e6
  db 17
  !f6
  !end

.sub509D
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  !end

.sub50B6
  db 17
  !rest
  db 9
  !e5
  db 8
  !e5
  db 17
  !rest
  db 9
  !e5
  db 8
  !e5
  db 17
  !rest
  db 9
  !e5
  db 8
  !e5
  db 17
  !rest
  db 9
  !e5
  db 8
  !e5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !ds5
  db 8
  !ds5
  db 17
  !rest
  db 9
  !ds5
  db 8
  !ds5
  db 17
  !rest
  db 9
  !as4
  db 8
  !as4
  db 17
  !rest
  db 9
  !as4
  db 8
  !as4
  db 17
  !rest
  db 9
  !ds5
  db 8
  !ds5
  db 17
  !rest
  db 9
  !ds5
  db 8
  !ds5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !f5
  db 8
  !f5
  db 17
  !rest
  db 9
  !g5
  db 8
  !g5
  db 17
  !rest
  db 9
  !g5
  db 8
  !g5
  db 17
  !rest
  db 9
  !c5
  db 8
  !c5
  db 17
  !rest
  db 9
  !c5
  db 8
  !c5
  db 17
  !rest
  db 9
  !c5
  db 8
  !c5
  db 17
  !rest
  db 9
  !c5
  db 8
  !c5
  !end

.sub512F
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  !end

.sub5148
  db 17
  !rest
  db 9
  !g5
  db 8
  !g5
  db 17
  !rest
  db 9
  !g5
  db 8
  !g5
  db 17
  !rest
  db 9
  !g5
  db 8
  !g5
  db 17
  !rest
  db 9
  !g5
  db 8
  !g5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !g5
  db 8
  !g5
  db 17
  !rest
  db 9
  !g5
  db 8
  !g5
  db 17
  !rest
  db 9
  !g5
  db 8
  !g5
  db 17
  !rest
  db 9
  !g5
  db 8
  !g5
  db 17
  !rest
  db 9
  !gs5
  db 8
  !gs5
  db 17
  !rest
  db 9
  !gs5
  db 8
  !gs5
  db 17
  !rest
  db 9
  !as5
  db 8
  !as5
  db 17
  !rest
  db 9
  !as5
  db 8
  !as5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  db 17
  !rest
  db 9
  !a5
  db 8
  !a5
  !end

.sub51C1
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$75
  %percNote(!instr23-!instr23)
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  db 9,$73
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  !end

.sub5242
  db 26,$67
  !cs3
  db 8,$65
  !cs3
  db 9,$67
  !gs3
  db 17
  !cs3
  db 8
  !d3
  db 26
  !ds3
  db 8
  !ds3
  db 17,$17
  !as3
  db 17,$77
  !ds3
  db 34
  !f3
  db 34,$78
  !f2
  db 26,$77
  !f3
  db 8,$78
  !f2
  db 17,$27
  !ds3
  db 17,$67
  !f3
  db 26
  !cs3
  db 8,$65
  !cs3
  db 9,$67
  !gs3
  db 17
  !cs3
  db 8
  !d3
  db 26
  !ds3
  db 8
  !ds3
  db 17,$17
  !as3
  db 17,$77
  !ds3
  db 34
  !f3
  db 34,$78
  !f2
  db 26,$77
  !f3
  db 8,$78
  !f2
  db 17,$27
  !ds3
  db 17,$67
  !f3
  !end

.sub5292
  db 26,$77
  !as2
  db 8
  !as2
  db 17
  !f3
  db 17,$67
  !as2
  db 26,$77
  !c3
  db 8
  !c3
  db 17
  !g3
  db 17,$67
  !c3
  !end

.sub52A7
  db 26,$77
  !cs3
  db 8,$78
  !gs2
  db 17,$77
  !cs3
  db 17,$78
  !gs2
  db 26,$77
  !ds3
  db 8
  !as2
  db 17
  !ds3
  !as2
  db 26,$78
  !g2
  db 8,$77
  !g3
  db 17,$78
  !g2
  db 17,$77
  !g3
  db 17,$27
  !c3
  db 51
  !rest
  !end

.sub52CD
  db 17,$18
  !gs5
  db 17,$17
  !gs5
  !gs5
  !cs6
  db 17,$18
  !ds6
  db 17,$17
  !ds6
  !as5
  !ds6
  db 26
  !c6
  db 25
  !f6
  db 17
  !c6
  db 34,$07
  !f6
  db 17,$17
  !c6
  !f6
  db 17,$18
  !cs6
  db 17,$17
  !cs6
  !cs6
  !f6
  db 17,$18
  !g6
  db 17,$17
  !g6
  !ds6
  !g6
  db 26
  !g6
  db 25
  !a6
  db 17
  !f6
  db 34,$07
  !a6
  db 17,$17
  !g6
  !a6
  db 26,$18
  !as6
  db 8,$57
  !as6
  db 17,$17
  !gs6
  !f6
  !g6
  db 34
  !ds6
  db 17
  !g6
  db 9,$58
  !as6
  db 17,$17
  !as6
  db 8,$57
  !as6
  db 17,$17
  !f6
  !f6
  !g6
  db 34
  !ds6
  !slideIn,0,4,1
  db 17,$66
  !ds7
  !endSlide
  db 9,$58
  !cs7
  db 17,$17
  !cs7
  db 8,$57
  !cs7
  db 17,$17
  !c7
  !as6
  db 17,$18
  !gs6
  db 17,$17
  !g6
  !f6
  !g6
  !slideIn,0,23,1
  db 68,$77
  !d6
  !endSlide
  !volume,160
  db 17,$27
  !e6
  db 51
  !rest
  !end

.sub5353
  db 17,$18
  !cs6
  db 17,$17
  !cs6
  !ds6
  !f6
  db 17,$18
  !g6
  db 17,$17
  !g6
  !f6
  !g6
  db 26
  !g6
  db 25
  !a6
  db 17
  !g6
  db 34,$07
  !a6
  db 17,$17
  !g6
  !a6
  db 17,$18
  !f6
  db 17,$17
  !f6
  !g6
  !gs6
  db 17,$18
  !as6
  db 17,$17
  !as6
  !gs6
  !as6
  db 26
  !as6
  db 25
  !c7
  db 17
  !as6
  db 34,$07
  !c7
  db 17,$17
  !as6
  !c7
  db 26,$18
  !cs7
  db 8,$57
  !cs7
  db 17,$17
  !c7
  !as6
  !c7
  db 34
  !g6
  db 17
  !c7
  db 9,$58
  !cs7
  db 17,$17
  !cs7
  db 8,$57
  !cs7
  db 17,$17
  !c7
  !as6
  !c7
  db 34
  !g6
  !slideIn,0,4,1
  db 17,$66
  !g7
  !endSlide
  db 9,$58
  !f7
  db 17,$17
  !f7
  db 8,$57
  !f7
  db 17,$17
  !ds7
  !cs7
  db 17,$18
  !c7
  db 17,$17
  !as6
  !gs6
  !as6
  !slideIn,0,23,1
  db 68,$77
  !g6
  !endSlide
  db 17,$28
  !c7
  !rest
  !instr,!instr1B
  !transpose,12
  !volume,185
  db 17,$08
  !c7
  !rest
  !end

.sub53E0
  db 9
  !f5
  db 8,$45
  !cs5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 9
  !f5
  db 8,$45
  !cs5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 9
  !ds5
  db 8,$45
  !as4
  db 9,$47
  !g5
  db 8
  !as5
  db 9
  !ds5
  db 8,$45
  !as4
  db 9,$47
  !g5
  db 8
  !as5
  !end

.sub5409
  db 9
  !f5
  db 8,$45
  !cs5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 9
  !f5
  db 8,$45
  !cs5
  db 9,$47
  !gs5
  db 8
  !cs6
  db 9
  !g5
  db 8,$45
  !ds5
  db 9,$47
  !as5
  db 8
  !ds6
  db 9
  !g5
  db 8,$45
  !ds5
  db 9,$47
  !as5
  db 8
  !ds6
  db 9
  !g5
  db 8
  !as5
  db 9
  !d6
  db 8
  !f6
  db 9
  !g5
  db 8
  !as5
  db 9
  !d6
  db 8
  !f6
  !instr,!instr1C
  !volume,160
  db 17,$27
  !g6
  db 51
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
