asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr03 = $18
!instr06 = $19
!instr20 = $1A
!instr23 = $1B
!instr24 = $1C
!instr25 = $1D
!instr27 = $1E
!instr2A = $1F
!instr2B = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$07,$00
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr20,$FF,$E0,$B8,$02,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr2A,$FF,$EE,$B8,$11,$F0
  db !instr2B,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+819
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample05_06,Sample05_06+216
  dw Sample20,Sample20+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample2A,Sample2A+1665
  dw Sample2B,Sample2B+1620
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_daee1fba1349bada3b2b763cd04133f4.brr"
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample20: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
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
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr24
  !musicVolume,255
  !tempo,51
  !echo,%01111100,26,26
  !echoParameters,4,75,0
  !volume,255
  !pan,10
  !instr,!instr23
  db 18,$78
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$73
  !f5
  db 9,$77
  !f5
  !instr,!instr27
  !d5
  !d5
  !instr,!instr23
  db 9,$73
  !f5
  db 9,$77
  !f5
  !instr,!instr27
  db 18,$78
  !d5
  !instr,!instr23
  db 9,$74
  !f5
  !instr,!instr27
  db 9,$78
  !d5
  db 9,$77
  !d5
  db 9,$78
  !a4
  db 9,$77
  !f4
  !end

.pattern0_1
  !instr,!instr2A
  !volume,230
  db 9,$67
  !g3
  db 18,$27
  !g3
  !g3
  db 9,$67
  !g3
  !g3
  !g3
  !rest
  db 18,$25
  !c4
  db 9,$67
  !c3
  db 9,$65
  !c4
  db 9,$67
  !c3
  db 18
  !c3
  !end

.pattern0_2
  !instr,!instr01
  !volume,188
  !pan,10
  db 9,$67
  !g6
  !g6
  !d5
  !g6
  !d5
  !g6
  !g6
  db 9,$63
  !g6
  db 9,$67
  !e5
  db 18,$17
  !c7
  db 9,$67
  !e5
  !slideOut,10,7,250
  db 18,$57
  !c7
  !volume,178
  !endSlide
  db 9,$58
  !f6
  db 9,$57
  !g6
  !end

.pattern0_3
  !instr,!instr01
  !volume,183
  !pan,12
  db 9,$67
  !as5
  !as5
  !f4
  !as5
  !f4
  !as5
  !as5
  db 9,$63
  !as5
  db 9,$67
  !g4
  db 18,$17
  !e6
  db 9,$67
  !g4
  !slideOut,10,7,250
  db 18,$57
  !e6
  !rest
  !end

.pattern0_4
  !instr,!instr01
  !volume,183
  !pan,8
  db 9,$67
  !d6
  !d6
  !as4
  !d6
  !as4
  !d6
  !d6
  db 9,$63
  !d6
  db 9,$67
  !as4
  db 18,$17
  !g6
  db 9,$67
  !as4
  !slideOut,10,7,250
  db 18,$57
  !g6
  !rest
  !end

.pattern0_5
  db 72
  !rest
  db 45
  !rest
  !instr,!instr03
  !volume,160
  !pan,10
  !subtranspose,10
  db 9,$47
  !c6
  !pan,9
  !f6
  !pan,15
  !g6
  !end

.pattern0_6
  !volume,207
  !pan,12
  !instr,!instr25
  db 18,$7A
  !a4
  !a4
  db 9
  !a4
  db 9,$79
  !a4
  db 9,$7A
  !a4
  db 8,$79
  !a4
  !pan,8
  db 5,$73
  !d5
  db 5,$76
  !d5
  db 18,$7A
  !d5
  !pan,12
  db 9,$79
  !a4
  !pan,8
  !d5
  !pan,12
  !a4
  !pan,8
  !d5
  !pan,12
  !a4
  !end

.pattern0_7
  db 72
  !rest
  db 45
  !rest
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr24)
  !pan,4
  %percNote(!instr24-!instr24)
  !pan,16
  %percNote(!instr24-!instr24)
  !end

.pattern1_0
  !instr,!instr23
  db 18,$78
  !f5
  !instr,!instr27
  db 18,$77
  !d5
  !instr,!instr23
  db 9
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$71
  !f5
  db 9,$77
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 18,$78
  !f5
  db 9,$74
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$73
  !f5
  !instr,!instr23
  db 9,$78
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$72
  !f5
  db 9,$77
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$72
  !f5
  db 9,$77
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 18,$78
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  db 9,$73
  !d5
  !instr,!instr23
  db 9,$78
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$71
  !f5
  db 9,$77
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$71
  !f5
  db 9,$77
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 18,$78
  !f5
  db 9,$74
  !f5
  !instr,!instr27
  db 6,$77
  !d5
  db 6,$72
  !d5
  !d5
  !instr,!instr23
  db 9,$78
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$71
  !f5
  db 9,$77
  !f5
  !instr,!instr27
  db 9,$72
  !d5
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$71
  !f5
  db 9,$77
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 18,$78
  !f5
  !instr,!instr27
  db 9,$73
  !d5
  db 9,$78
  !d5
  db 9,$72
  !d5
  !instr,!instr23
  db 9,$78
  !f5
  db 9,$73
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$71
  !f5
  db 9,$78
  !f5
  !instr,!instr27
  db 9,$72
  !d5
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$71
  !f5
  db 9,$78
  !f5
  db 9,$74
  !f5
  !instr,!instr27
  db 9,$77
  !d5
  !instr,!instr23
  db 9,$72
  !f5
  db 9,$78
  !f5
  !instr,!instr27
  !a4
  !f4
  !d4
  !instr,!instr27
  db 6
  !d5
  db 5,$70
  !d5
  !d5
  db 5,$71
  !d5
  !d5
  db 5,$72
  !d5
  !d5
  db 5,$73
  !d5
  !d5
  db 5,$74
  !d5
  db 5,$75
  !d5
  !d5
  db 5,$76
  !d5
  db 6
  !d5
  db 36,$7A
  !d4
  !end

.pattern1_1
  !instr,!instr2A
  !volume,230
  db 9,$67
  !f3
  db 18,$27
  !f3
  db 9,$68
  !c3
  db 18,$67
  !f3
  db 9,$68
  !c3
  db 9,$67
  !f3
  !g3
  db 18,$27
  !g3
  db 9,$67
  !d3
  db 18
  !g3
  db 9
  !d3
  !g3
  !as3
  db 18,$27
  !as3
  db 9,$67
  !f3
  !c4
  !c4
  db 9,$68
  !c3
  db 9,$67
  !c4
  !f3
  db 18,$27
  !f3
  db 9,$68
  !c3
  db 18,$67
  !f3
  db 9,$68
  !c3
  db 9,$67
  !e3
  !f3
  db 18,$27
  !f3
  db 9,$68
  !c3
  db 18,$67
  !f3
  db 9,$68
  !c3
  db 9,$67
  !f3
  !g3
  db 18,$27
  !g3
  db 9,$67
  !d3
  db 18
  !g3
  db 9
  !d3
  !g3
  !as3
  !as3
  !f3
  !as3
  !c4
  db 9,$68
  !c3
  db 9,$67
  !as3
  !c4
  !f3
  db 18,$27
  !f3
  db 9,$68
  !c3
  db 9,$67
  !f3
  !f3
  !f3
  db 9,$68
  !c3
  !as2
  !as2
  db 9,$67
  !as3
  db 9,$68
  !as2
  !as2
  !as2
  db 9,$67
  !as3
  db 9,$68
  !as2
  !c3
  !c3
  db 9,$67
  !c4
  db 9,$68
  !c3
  !c3
  !c3
  db 9,$67
  !as3
  !c4
  db 72,$7B
  !d2
  db 36,$17
  !d3
  !end

.pattern1_2
  !endSlide
  !vibrato,0,20,20
  !volume,178
  !pan,10
  !instr,!instr01
  !subtranspose,0
  db 18,$18
  !a6
  db 18,$17
  !c7
  db 9,$47
  !a6
  !g6
  db 18,$17
  !f6
  db 9,$48
  !g6
  db 18,$18
  !b5
  db 18,$17
  !g6
  db 9,$47
  !d6
  !d6
  !e6
  db 9,$48
  !f6
  db 18,$17
  !f6
  db 9,$47
  !f6
  db 9,$48
  !e6
  db 9,$47
  !d6
  !e6
  !g6
  db 9,$48
  !f6
  db 18,$17
  !c6
  !f6
  db 9,$47
  !a5
  !c6
  !f6
  db 18,$18
  !a6
  db 18,$17
  !c7
  db 9,$48
  !a6
  db 9,$47
  !g6
  db 18,$17
  !f6
  db 9,$48
  !g6
  db 18,$17
  !b5
  !g6
  db 9,$47
  !d6
  !d6
  !e6
  db 9,$48
  !f6
  db 18,$17
  !f6
  db 9,$47
  !f6
  db 9,$48
  !e6
  db 9,$47
  !d6
  !e6
  !g6
  db 9,$48
  !f6
  db 18,$17
  !f6
  !f6
  db 9,$44
  !f6
  db 6,$79
  !a5
  !c6
  !f6
  db 9,$48
  !as6
  !d6
  !f6
  db 9,$47
  !as6
  db 9,$48
  !d7
  !f6
  !as6
  db 9,$47
  !d7
  db 9,$48
  !e7
  !g6
  !c7
  db 9,$47
  !e7
  db 9,$48
  !g7
  !c7
  !e7
  !g7
  !volume,100
  !dynamicVolume,71,188
  db 72,$79
  !a7
  db 36,$27
  !a7
  !end

.pattern1_3
  !endSlide
  !instr,!instr2B
  !volume,170
  !pan,8
  db 9,$47
  !a5
  !f5
  !a5
  !c6
  db 18
  !a5
  db 9
  !a5
  !f5
  !g5
  !d5
  !f5
  !b5
  db 18
  !f5
  db 9
  !f5
  !d5
  !f5
  !d5
  !f5
  !as5
  !g5
  !c5
  !e5
  !g5
  !f5
  !c5
  !f5
  !a5
  db 18
  !f5
  db 9
  !c5
  !f5
  !a5
  !f5
  !a5
  !c6
  db 18
  !a5
  db 9
  !a5
  !f5
  !g5
  !d5
  !f5
  !b5
  db 18
  !f5
  db 9
  !f5
  !d5
  !f5
  !d5
  !f5
  !as5
  !g5
  !c5
  !e5
  !g5
  !f5
  !c5
  !f5
  !a5
  db 18
  !f5
  db 9
  !c5
  !f5
  !volume,178
  !instr,!instr01
  !as5
  !f5
  !as5
  !d6
  !d6
  !as5
  !d6
  !f6
  !g6
  !c6
  !e6
  !g6
  !g6
  !e6
  !g6
  !as6
  !volume,100
  !dynamicVolume,71,188
  db 72,$78
  !d7
  db 36,$27
  !d7
  !end

.pattern1_4
  !endSlide
  !instr,!instr2B
  !volume,170
  !pan,12
  db 9,$47
  !c6
  !a5
  !c6
  !f6
  db 18
  !c6
  db 9
  !c6
  !a5
  !b5
  !f5
  !b5
  !d6
  db 18
  !b5
  db 9
  !b5
  !f5
  !as5
  !f5
  !as5
  !d6
  !c6
  !e5
  !g5
  !c6
  !a5
  !f5
  !a5
  !c6
  db 18
  !a5
  db 9
  !f5
  !a5
  !c6
  !a5
  !c6
  !f6
  db 18
  !c6
  db 9
  !c6
  !a5
  !b5
  !f5
  !b5
  !d6
  db 18
  !b5
  db 9
  !b5
  !f5
  !as5
  !f5
  !as5
  !d6
  !c6
  !e5
  !g5
  !c6
  !a5
  !f5
  !a5
  !c6
  db 18
  !a5
  db 9
  !f5
  !a5
  !volume,178
  !instr,!instr01
  !d6
  !as5
  !d6
  !f6
  !f6
  !d6
  !f6
  !as6
  !as6
  !e6
  !g6
  !as6
  !as6
  !g6
  !as6
  !e7
  !volume,100
  !dynamicVolume,71,188
  db 72,$78
  !fs7
  db 36,$27
  !fs7
  !end

.pattern1_5
  !instr,!instr03
  !volume,170
  !pan,10
  !subtranspose,10
  !pan,8
  db 18,$18
  !a6
  !pan,12
  db 18,$17
  !c7
  !pan,7
  db 9,$47
  !a6
  !pan,13
  !g6
  !pan,9
  db 18,$17
  !f6
  !pan,15
  db 9,$48
  !g6
  !pan,4
  db 18,$18
  !b5
  !pan,13
  db 18,$17
  !g6
  !pan,7
  db 9,$47
  !d6
  !pan,11
  !d6
  !pan,9
  !e6
  !pan,17
  db 9,$48
  !f6
  !pan,3
  db 18,$17
  !f6
  !pan,13
  db 9,$47
  !f6
  !pan,7
  db 9,$48
  !e6
  !pan,8
  db 9,$47
  !d6
  !pan,14
  !e6
  !pan,6
  !g6
  !pan,11
  db 9,$48
  !f6
  !pan,13
  db 18,$17
  !c6
  !pan,2
  !f6
  !pan,12
  db 9,$47
  !a5
  !pan,8
  !c6
  !pan,12
  !f6
  !pan,4
  db 18,$18
  !a6
  !pan,16
  db 18,$17
  !c7
  !pan,20
  db 9,$48
  !a6
  !pan,0
  db 9,$47
  !g6
  !pan,12
  db 18,$17
  !f6
  !pan,9
  db 9,$48
  !g6
  !pan,5
  db 18,$17
  !b5
  !pan,15
  db 18,$77
  !g6
  !pan,12
  db 9,$47
  !d6
  !pan,7
  !d6
  !pan,6
  !e6
  !pan,14
  db 9,$48
  !f6
  !pan,6
  db 18,$17
  !f6
  !pan,4
  db 9,$47
  !f6
  !pan,15
  db 9,$48
  !e6
  !pan,16
  db 9,$47
  !d6
  !pan,6
  !e6
  !pan,11
  !g6
  !pan,9
  db 9,$48
  !f6
  !pan,13
  db 18,$17
  !f6
  !pan,7
  db 18,$77
  !f6
  !pan,13
  db 9,$44
  !f6
  !pan,20
  db 6,$79
  !a5
  !pan,0
  !c6
  !pan,20
  !f6
  !pan,10
  db 9,$48
  !as6
  !pan,7
  db 9,$47
  !d6
  !pan,13
  !f6
  !pan,7
  !as6
  !pan,10
  db 9,$48
  !d7
  !pan,13
  db 9,$47
  !f6
  !pan,7
  !as6
  !pan,13
  !d7
  !pan,10
  db 9,$48
  !e7
  !pan,7
  db 9,$47
  !g6
  !pan,13
  !c7
  !pan,7
  !e7
  !pan,10
  db 9,$48
  !g7
  !pan,13
  db 9,$47
  !c7
  !pan,7
  !e7
  !pan,13
  !g7
  !instr,!instr06
  !volume,185
  !pan,12
  !dynamicPan,71,8
  db 12,$77
  !fs5
  !d6
  !a6
  !fs7
  !a6
  !d6
  !instr,!instr00
  !volume,160
  !pan,13
  db 36,$27
  !d5
  !end

.pattern1_6
  !volume,150
  !pan,10
  !instr,!instr20
  !slideOut,0,36,244
  !pan,10
  db 36,$77
  !gs4
  !endSlide
  !pan,10
  !volume,220
  !instr,!instr25
  db 36,$79
  !a4
  !pan,8
  db 27
  !d5
  !pan,12
  db 18
  !a4
  !pan,8
  db 9
  !d5
  !pan,12
  db 18
  !a4
  !loop : dw .sub4E6C : db 2
  !volume,150
  !pan,10
  !instr,!instr20
  !slideOut,0,36,244
  !pan,10
  db 36,$77
  !gs4
  !endSlide
  !pan,10
  !volume,220
  !instr,!instr25
  db 9,$79
  !a4
  db 18
  !a4
  db 9
  !a4
  !pan,8
  !d5
  db 18
  !d5
  !pan,12
  !a4
  !pan,8
  db 9
  !d5
  !pan,12
  !a4
  !a4
  !volume,150
  !pan,10
  !instr,!instr20
  !slideOut,0,36,244
  !pan,10
  db 18,$77
  !gs4
  !gs4
  !endSlide
  !pan,10
  !volume,245
  !instr,!instr25
  db 9,$79
  !d5
  db 18
  !d5
  db 9
  !d5
  !pan,12
  !a4
  !pan,8
  db 18
  !d5
  !pan,12
  db 9
  !a4
  !pan,8
  db 18
  !d5
  !pan,12
  db 9
  !a4
  !pan,8
  !d5
  db 6
  !rest
  !instr,!instr06
  !volume,185
  !pan,15
  !dynamicPan,71,5
  db 12,$77
  !a5
  !fs6
  !d7
  !d7
  !fs6
  db 6
  !a5
  !instr,!instr00
  !volume,160
  !pan,7
  db 36,$27
  !fs5
  !end

.pattern1_7
  !loop : dw .sub4E98 : db 2
  !pan,12
  db 9,$74
  %percNote(!instr24-!instr24)
  !pan,8
  db 9,$72
  %percNote(!instr24-!instr24)
  !pan,16
  %percNote(!instr24-!instr24)
  !pan,4
  %percNote(!instr24-!instr24)
  !pan,8
  db 9,$74
  %percNote(!instr24-!instr24)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr24)
  !pan,4
  %percNote(!instr24-!instr24)
  !pan,16
  %percNote(!instr24-!instr24)
  !pan,12
  db 9,$74
  %percNote(!instr24-!instr24)
  !pan,8
  db 9,$72
  %percNote(!instr24-!instr24)
  !pan,16
  %percNote(!instr24-!instr24)
  !pan,4
  %percNote(!instr24-!instr24)
  !pan,8
  db 9,$74
  %percNote(!instr24-!instr24)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr24)
  !pan,4
  db 6
  %percNote(!instr24-!instr24)
  !pan,16
  %percNote(!instr24-!instr24)
  !pan,4
  %percNote(!instr24-!instr24)
  !loop : dw .sub4E98 : db 2
  !pan,20
  !dynamicPan,72,0
  db 6,$74
  %percNote(!instr24-!instr24)
  db 6,$72
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 36,$77
  !d5
  !end

.pattern2_0
  db 72
  !rest
  !rest
  !endEcho
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.sub4E6C
  !volume,150
  !pan,10
  !instr,!instr20
  !slideOut,0,36,244
  !pan,10
  db 36,$77
  !gs4
  !endSlide
  !pan,10
  !volume,220
  !instr,!instr25
  db 18,$79
  !a4
  !a4
  !pan,8
  db 9
  !d5
  db 18
  !d5
  !pan,12
  !a4
  !pan,8
  db 9
  !d5
  !pan,12
  db 18
  !a4
  !end

.sub4E98
  !pan,12
  db 9,$74
  %percNote(!instr24-!instr24)
  !pan,8
  db 9,$72
  %percNote(!instr24-!instr24)
  !pan,16
  %percNote(!instr24-!instr24)
  !pan,4
  %percNote(!instr24-!instr24)
  !pan,8
  db 9,$74
  %percNote(!instr24-!instr24)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr24)
  !pan,4
  %percNote(!instr24-!instr24)
  !pan,16
  %percNote(!instr24-!instr24)
  !pan,12
  db 9,$74
  %percNote(!instr24-!instr24)
  !pan,8
  db 9,$72
  %percNote(!instr24-!instr24)
  !pan,16
  %percNote(!instr24-!instr24)
  !pan,4
  %percNote(!instr24-!instr24)
  !pan,8
  db 9,$74
  %percNote(!instr24-!instr24)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr24)
  !pan,4
  %percNote(!instr24-!instr24)
  !pan,16
  %percNote(!instr24-!instr24)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
