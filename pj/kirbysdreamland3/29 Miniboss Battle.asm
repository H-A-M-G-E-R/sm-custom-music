asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr10 = $17
!instr1D = $18
!instr23 = $19
!instr24 = $1A
!instr25 = $1B
!instr27 = $1C
!instr2A = $1D
!instr2B = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr10,$FF,$E0,$B8,$03,$B0
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr2A,$FF,$EE,$B8,$11,$F0
  db !instr2B,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample10,Sample10+27
  dw Sample1D,Sample1D+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample2A,Sample2A+1665
  dw Sample2B,Sample2B+1620
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample10: incbin "Sample_00909a2c7ac12f30a998285388a5259c.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample2A: incbin "Sample_5d678d769e05ac18d8061931d0f4f795.brr"
  Sample2B: incbin "Sample_0724cc9b961c011b7ae6e0a4b08230d8.brr"

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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr24
  !musicVolume,255
  !tempo,46
  !echo,%00011100,34,34
  !echoParameters,4,65,0
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !instr,!instr23
  db 8
  !e5
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr24)
  !pan,8
  db 8
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr25
  !pan,11
  db 9,$77
  !c5
  !pan,9
  db 8
  !c5
  !loop : dw .sub4D08 : db 3
  !end

.pattern0_1
  !instr,!instr2A
  !volume,235
  !pan,10
  !loop : dw .sub4D65 : db 1
  !end

.pattern0_2
  !instr,!instr01
  !volume,155
  !pan,8
  db 8,$47
  !fs5
  !fs4
  db 9
  !fs5
  db 8
  !fs5
  db 9
  !fs4
  db 8
  !fs5
  db 9
  !fs4
  db 8
  !fs5
  db 9
  !fs4
  db 8
  !fs5
  db 9
  !fs5
  db 8
  !fs4
  db 9
  !fs5
  db 8
  !fs4
  db 9
  !fs5
  db 8
  !fs4
  !loop : dw .sub4DE7 : db 1
  db 9
  !e5
  db 8
  !e4
  db 9
  !e5
  db 8
  !e5
  db 9
  !e4
  db 8
  !e5
  db 9
  !e4
  db 8
  !e5
  db 9
  !e4
  db 8
  !e5
  db 9
  !e5
  db 8
  !e4
  db 9
  !e5
  !instr,!instr10
  !volume,110
  !pan,0
  db 8
  !e6
  !pan,10
  db 9
  !as5
  !pan,20
  !g5
  !end

.pattern0_3
  !instr,!instr01
  !volume,155
  !pan,12
  db 8,$47
  !a5
  !a4
  db 9
  !g5
  db 8
  !a5
  db 9
  !a4
  db 8
  !g5
  db 9
  !a4
  db 8
  !a5
  db 9
  !a4
  db 8
  !a5
  db 9
  !g5
  db 8
  !a4
  db 9
  !a5
  db 8
  !a4
  db 9
  !g5
  db 8
  !a4
  !loop : dw .sub4E28 : db 1
  db 9
  !g5
  db 8
  !g4
  db 9
  !f5
  db 8
  !g5
  db 9
  !g4
  db 8
  !f5
  db 9
  !g4
  db 8
  !g5
  db 9
  !g4
  db 8
  !g5
  db 9
  !f5
  db 8
  !g4
  db 9
  !g5
  !instr,!instr10
  !volume,110
  !pan,0
  db 8
  !fs6
  !pan,10
  db 9
  !c6
  !pan,20
  !as5
  !end

.pattern0_4
  !instr,!instr01
  !volume,160
  !pan,10
  db 8,$47
  !c6
  !d5
  db 9
  !b5
  db 8
  !c6
  db 9
  !d5
  db 8
  !b5
  db 9
  !d5
  db 8
  !c6
  db 9
  !d5
  db 8
  !c6
  db 9
  !b5
  db 8
  !d5
  db 9
  !c6
  db 8
  !d5
  db 9
  !b5
  db 8
  !d5
  !loop : dw .sub4E69 : db 1
  db 9
  !as5
  db 8
  !c5
  db 9
  !a5
  db 8
  !as5
  db 9
  !c5
  db 8
  !a5
  db 9
  !c5
  db 8
  !as5
  db 9
  !c5
  db 8
  !as5
  db 9
  !a5
  db 8
  !c5
  db 9
  !as5
  !instr,!instr10
  !volume,120
  !pan,0
  db 8
  !g6
  !pan,10
  db 9
  !e6
  !pan,20
  !c6
  !end

.pattern1_0
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !instr,!instr23
  db 8
  !e5
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr24)
  !pan,8
  db 8
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr25
  !pan,11
  db 9,$77
  !c5
  !pan,9
  db 8
  !c5
  !loop : dw .sub4D08 : db 3
  !end

.pattern1_1
  !loop : dw .sub4D65 : db 1
  !end

.pattern1_2
  !instr,!instr1D
  !volume,130
  !pan,8
  db 9,$37
  !fs5
  db 8
  !fs4
  db 9
  !fs5
  db 8
  !fs5
  db 9
  !fs4
  db 8
  !fs5
  db 9
  !fs4
  db 8
  !fs5
  db 9
  !fs4
  db 8
  !fs5
  db 9
  !fs5
  db 8
  !fs4
  db 9
  !fs5
  db 8
  !fs4
  db 9
  !fs5
  db 8
  !fs4
  !loop : dw .sub4DE7 : db 1
  db 9
  !e5
  db 8
  !e4
  db 9
  !e5
  db 8
  !e5
  db 9
  !e4
  db 8
  !e5
  db 9
  !e4
  db 8
  !e5
  db 9
  !e4
  db 8
  !e5
  db 9
  !e5
  db 8
  !e4
  db 9
  !e5
  !instr,!instr10
  !volume,110
  !pan,0
  db 8,$57
  !c6
  !pan,10
  db 9
  !e6
  !pan,20
  db 8
  !g6
  !end

.pattern1_3
  !instr,!instr1D
  !volume,130
  !pan,12
  db 9,$37
  !a5
  db 8
  !a4
  db 9
  !g5
  db 8
  !a5
  db 9
  !a4
  db 8
  !g5
  db 9
  !a4
  db 8
  !a5
  db 9
  !a4
  db 8
  !a5
  db 9
  !g5
  db 8
  !a4
  db 9
  !a5
  db 8
  !a4
  db 9
  !g5
  db 8
  !a4
  !loop : dw .sub4E28 : db 1
  db 9
  !g5
  db 8
  !g4
  db 9
  !f5
  db 8
  !g5
  db 9
  !g4
  db 8
  !f5
  db 9
  !g4
  db 8
  !g5
  db 9
  !g4
  db 8
  !g5
  db 9
  !f5
  db 8
  !g4
  db 9
  !g5
  !instr,!instr10
  !volume,110
  !pan,0
  db 8,$57
  !ds6
  !pan,10
  db 9
  !fs6
  !pan,20
  db 8
  !b6
  !end

.pattern1_4
  !instr,!instr1D
  !volume,135
  !pan,10
  db 9,$37
  !c6
  db 8
  !d5
  db 9
  !b5
  db 8
  !c6
  db 9
  !d5
  db 8
  !b5
  db 9
  !d5
  db 8
  !c6
  db 9
  !d5
  db 8
  !c6
  db 9
  !b5
  db 8
  !d5
  db 9
  !c6
  db 8
  !d5
  db 9
  !b5
  db 8
  !d5
  !loop : dw .sub4E69 : db 1
  db 9
  !as5
  db 8
  !c5
  db 9
  !a5
  db 8
  !as5
  db 9
  !c5
  db 8
  !a5
  db 9
  !c5
  db 8
  !as5
  db 9
  !c5
  db 8
  !as5
  db 9
  !a5
  db 8
  !c5
  db 9
  !as5
  !instr,!instr10
  !volume,120
  !pan,0
  db 8,$57
  !e6
  !pan,10
  db 9
  !g6
  !pan,20
  db 8
  !c7
  !end

.pattern2_0
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !instr,!instr23
  db 8
  !e5
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr24)
  !pan,8
  db 8
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr25
  !pan,11
  db 9,$77
  !c5
  !pan,9
  db 8
  !c5
  !loop : dw .sub4D08 : db 2
  !pan,10
  !instr,!instr23
  db 9
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  db 17,$78
  !cs5
  db 8,$77
  !cs5
  db 9,$73
  !cs5
  db 8
  !cs5
  db 9,$77
  !cs5
  db 8
  !cs5
  db 9,$73
  !cs5
  db 8,$77
  !cs5
  !end

.pattern2_1
  db 9,$57
  !ds3
  db 8
  !ds3
  db 9
  !ds4
  db 8
  !ds3
  db 9
  !ds3
  db 8
  !ds4
  db 9
  !ds3
  db 8
  !ds3
  db 9
  !ds4
  db 8
  !ds3
  db 9
  !ds3
  db 8
  !ds4
  db 9
  !ds3
  db 8
  !ds3
  db 9
  !ds4
  db 8
  !ds3
  db 9
  !f3
  db 8
  !f3
  db 9
  !f4
  db 8
  !f3
  db 9
  !f3
  db 8
  !f4
  db 9
  !f3
  db 8
  !f3
  db 9
  !f4
  db 8
  !f3
  db 9
  !f3
  db 8
  !f4
  db 9
  !f3
  db 8
  !f3
  db 9
  !f4
  db 8
  !f3
  !volume,245
  db 9,$78
  !g2
  db 8
  !g2
  db 9,$77
  !g3
  db 8,$78
  !g2
  db 9
  !g2
  db 8,$77
  !g3
  db 9,$78
  !g2
  db 8
  !g2
  db 9,$77
  !g3
  db 8,$78
  !g2
  db 9
  !g2
  db 8,$77
  !g3
  db 9,$78
  !g2
  db 8
  !g2
  db 9,$77
  !g3
  db 8,$78
  !g2
  db 9,$77
  !a2
  db 8
  !a2
  db 9
  !a3
  db 8
  !a2
  db 9
  !a2
  db 8
  !a3
  db 9
  !a2
  db 17,$28
  !a2
  db 8
  !rest
  !instr,!instr23
  db 17,$74
  !e5
  db 17,$77
  !e5
  db 9
  !e5
  db 8,$74
  !e5
  !end

.pattern2_2
  !pan,8
  !instr,!instr2B
  !volume,175
  db 9,$47
  !cs5
  db 8
  !ds4
  db 9
  !cs5
  db 8
  !ds4
  db 9
  !cs5
  db 8
  !ds4
  db 9
  !cs5
  db 8
  !cs5
  db 9
  !ds4
  db 8
  !cs5
  db 9
  !cs5
  db 8
  !ds4
  db 9
  !cs5
  db 8
  !ds4
  db 9
  !cs5
  db 8
  !ds4
  db 9
  !ds5
  db 8
  !f4
  db 9
  !ds5
  db 8
  !f4
  db 9
  !ds5
  db 8
  !f4
  db 9
  !ds5
  db 8
  !ds5
  db 9
  !f4
  db 8
  !ds5
  db 9
  !ds5
  db 8
  !f4
  db 9
  !ds5
  db 8
  !f4
  db 9
  !ds5
  db 8
  !f4
  db 9
  !f5
  db 8
  !g4
  db 9
  !f5
  db 8
  !g4
  db 9
  !f5
  db 8
  !g4
  db 9
  !f5
  db 8
  !f5
  db 9
  !g4
  db 8
  !f5
  db 9
  !f5
  db 8
  !g4
  db 9
  !f5
  db 8
  !g4
  db 9
  !f5
  db 8
  !g4
  db 9
  !g5
  db 8
  !a4
  db 9
  !g5
  db 8
  !a4
  db 9
  !g5
  db 8
  !g5
  db 9
  !a4
  db 17,$28
  !b5
  db 59
  !rest
  !end

.pattern2_3
  !pan,12
  !instr,!instr2B
  !volume,175
  db 9,$47
  !f5
  db 8
  !as4
  db 9
  !f5
  db 8
  !as4
  db 9
  !f5
  db 8
  !as4
  db 9
  !f5
  db 8
  !f5
  db 9
  !as4
  db 8
  !f5
  db 9
  !f5
  db 8
  !as4
  db 9
  !f5
  db 8
  !as4
  db 9
  !f5
  db 8
  !as4
  db 9
  !g5
  db 8
  !c5
  db 9
  !g5
  db 8
  !c5
  db 9
  !g5
  db 8
  !c5
  db 9
  !g5
  db 8
  !g5
  db 9
  !c5
  db 8
  !g5
  db 9
  !g5
  db 8
  !c5
  db 9
  !g5
  db 8
  !c5
  db 9
  !g5
  db 8
  !c5
  db 9
  !a5
  db 8
  !d5
  db 9
  !a5
  db 8
  !d5
  db 9
  !a5
  db 8
  !d5
  db 9
  !a5
  db 8
  !a5
  db 9
  !d5
  db 8
  !a5
  db 9
  !a5
  db 8
  !d5
  db 9
  !a5
  db 8
  !d5
  db 9
  !a5
  db 8
  !d5
  db 9
  !b5
  db 8
  !e5
  db 9
  !b5
  db 8
  !e5
  db 9
  !b5
  db 8
  !b5
  db 9
  !e5
  db 17,$28
  !d6
  db 59
  !rest
  !end

.pattern2_4
  !pan,10
  !instr,!instr2B
  !volume,180
  db 9,$47
  !gs5
  db 8
  !cs5
  db 9
  !g5
  db 8
  !cs5
  db 9
  !gs5
  db 8
  !cs5
  db 9
  !g5
  db 8
  !gs5
  db 9
  !cs5
  db 8
  !gs5
  db 9
  !g5
  db 8
  !cs5
  db 9
  !gs5
  db 8
  !cs5
  db 9
  !g5
  db 8
  !cs5
  db 9
  !as5
  db 8
  !ds5
  db 9
  !a5
  db 8
  !ds5
  db 9
  !as5
  db 8
  !ds5
  db 9
  !a5
  db 8
  !as5
  db 9
  !ds5
  db 8
  !as5
  db 9
  !a5
  db 8
  !ds5
  db 9
  !as5
  db 8
  !ds5
  db 9
  !a5
  db 8
  !ds5
  db 9
  !c6
  db 8
  !f5
  db 9
  !b5
  db 8
  !f5
  db 9
  !c6
  db 8
  !f5
  db 9
  !b5
  db 8
  !c6
  db 9
  !f5
  db 8
  !c6
  db 9
  !b5
  db 8
  !f5
  db 9
  !c6
  db 8
  !f5
  db 9
  !b5
  db 8
  !f5
  db 9
  !d6
  db 8
  !g5
  db 9
  !c6
  db 8
  !g5
  db 9
  !d6
  db 8
  !d6
  db 9
  !g5
  db 17,$28
  !g6
  !volume,245
  !instr,!instr25
  db 8,$77
  !c5
  db 9,$72
  !c5
  db 8,$77
  !a4
  db 9
  !c5
  db 8
  !c5
  !pan,12
  db 9,$74
  !a4
  !pan,8
  db 8
  !a4
  !end

.sub4D08
  !pan,10
  !instr,!instr23
  db 9
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !cs5
  !instr,!instr23
  db 8
  !e5
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr24)
  !pan,8
  db 8
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr25
  !pan,11
  db 9,$77
  !c5
  !pan,9
  db 8
  !c5
  !end

.sub4D65
  db 9,$57
  !d3
  db 8
  !d3
  db 9
  !d4
  db 8
  !d3
  db 9
  !d3
  db 8
  !d4
  db 9
  !d3
  db 8
  !d3
  db 9
  !d4
  db 8
  !d3
  db 9
  !d3
  db 8
  !d4
  db 9
  !d3
  db 8
  !d3
  db 9
  !c4
  db 8
  !d4
  db 9
  !d3
  db 8
  !d3
  db 9
  !d4
  db 8
  !d3
  db 9
  !d3
  db 8
  !d4
  db 9
  !d3
  db 8
  !d3
  db 9
  !d4
  db 8
  !d3
  db 9
  !d3
  db 8
  !d4
  db 9
  !d3
  db 8
  !d3
  db 9
  !c4
  db 8
  !d4
  db 9
  !c3
  db 8
  !c3
  db 9
  !c4
  db 8
  !c3
  db 9
  !c3
  db 8
  !c4
  db 9
  !c3
  db 8
  !c3
  db 9
  !c4
  db 8
  !c3
  db 9
  !c3
  db 8
  !c4
  db 9
  !c3
  db 8
  !c3
  db 9
  !as3
  db 8
  !c4
  db 9
  !c3
  db 8
  !c3
  db 9
  !c4
  db 8
  !c3
  db 9
  !c3
  db 8
  !c4
  db 9
  !c3
  db 8
  !c3
  db 9
  !as3
  db 8
  !c3
  db 9
  !c3
  db 8
  !c4
  db 9
  !c3
  db 8
  !c3
  db 9
  !a3
  db 8
  !as3
  !end

.sub4DE7
  db 9
  !fs5
  db 8
  !fs4
  db 9
  !fs5
  db 8
  !fs5
  db 9
  !fs4
  db 8
  !fs5
  db 9
  !fs4
  db 8
  !fs5
  db 9
  !fs4
  db 8
  !fs5
  db 9
  !fs5
  db 8
  !fs4
  db 9
  !fs5
  db 8
  !fs4
  db 9
  !fs5
  db 8
  !fs4
  db 9
  !e5
  db 8
  !e4
  db 9
  !e5
  db 8
  !e5
  db 9
  !e4
  db 8
  !e5
  db 9
  !e4
  db 8
  !e5
  db 9
  !e4
  db 8
  !e5
  db 9
  !e5
  db 8
  !e4
  db 9
  !e5
  db 8
  !e4
  db 9
  !e5
  db 8
  !e4
  !end

.sub4E28
  db 9
  !a5
  db 8
  !a4
  db 9
  !g5
  db 8
  !a5
  db 9
  !a4
  db 8
  !g5
  db 9
  !a4
  db 8
  !a5
  db 9
  !a4
  db 8
  !a5
  db 9
  !g5
  db 8
  !a4
  db 9
  !a5
  db 8
  !a4
  db 9
  !g5
  db 8
  !a4
  db 9
  !g5
  db 8
  !g4
  db 9
  !f5
  db 8
  !g5
  db 9
  !g4
  db 8
  !f5
  db 9
  !g4
  db 8
  !g5
  db 9
  !g4
  db 8
  !g5
  db 9
  !f5
  db 8
  !g4
  db 9
  !g5
  db 8
  !g4
  db 9
  !f5
  db 8
  !g4
  !end

.sub4E69
  db 9
  !c6
  db 8
  !d5
  db 9
  !b5
  db 8
  !c6
  db 9
  !d5
  db 8
  !b5
  db 9
  !d5
  db 8
  !c6
  db 9
  !d5
  db 8
  !c6
  db 9
  !b5
  db 8
  !d5
  db 9
  !c6
  db 8
  !d5
  db 9
  !b5
  db 8
  !d5
  db 9
  !as5
  db 8
  !c5
  db 9
  !a5
  db 8
  !as5
  db 9
  !c5
  db 8
  !a5
  db 9
  !c5
  db 8
  !as5
  db 9
  !c5
  db 8
  !as5
  db 9
  !a5
  db 8
  !c5
  db 9
  !as5
  db 8
  !c5
  db 9
  !a5
  db 8
  !c5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
