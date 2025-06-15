asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr23 = $18
!instr24 = $19
!instr25 = $1A
!instr27 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr02,$AF,$B2,$B8,$0E,$F0
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample02,Sample02+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample02: incbin "Sample_1086e6fe5f17482c7f004cd2924d0b6b.brr"
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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !musicVolume,255
  !tempo,47
  !volume,230
  !echo,%00011100,34,34
  !echoParameters,4,196,0
  !pan,10
  db 17,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 8,$71
  !g4
  db 17,$72
  !g4
  db 8,$71
  !g4
  !pan,10
  !instr,!instr27
  db 17,$77
  !d4
  !pan,12
  !instr,!instr24
  db 8,$71
  !g4
  db 17,$72
  !g4
  db 8,$71
  !g4
  db 17
  !g4
  !pan,10
  !instr,!instr27
  db 8,$74
  !d4
  db 17,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 8,$71
  !g4
  !pan,10
  !instr,!instr27
  db 17,$77
  !d4
  !pan,12
  !instr,!instr24
  db 8,$72
  !g4
  !pan,8
  !instr,!instr25
  db 17
  !g4
  db 8,$71
  !g4
  !loop : dw .sub4BEA : db 7
  !end

.pattern0_1
  !instr,!instr02
  !volume,170
  db 25,$57
  !c3
  db 50
  !rest
  db 17
  !c3
  db 8,$54
  !c4
  db 25,$57
  !c3
  db 42
  !rest
  db 8,$54
  !c4
  db 17,$57
  !c3
  db 8,$54
  !c4
  !loop : dw .sub4C3B : db 1
  db 25,$57
  !d3
  db 50
  !rest
  db 17
  !d3
  db 25,$08
  !d3
  db 8,$53
  !d4
  db 17,$57
  !d3
  db 8,$53
  !d4
  db 25,$57
  !d3
  db 17
  !d3
  db 8,$54
  !cs4
  db 25,$57
  !c3
  db 50
  !rest
  db 17
  !c3
  db 8,$54
  !c4
  db 25,$57
  !c3
  db 42
  !rest
  db 8,$54
  !c4
  db 17,$57
  !c3
  db 8,$54
  !c4
  !loop : dw .sub4C3B : db 1
  db 25,$57
  !d3
  db 50
  !rest
  db 17
  !d3
  db 25,$08
  !d3
  db 8,$53
  !d4
  db 17,$57
  !d3
  db 8,$53
  !d4
  db 17,$57
  !d3
  db 8,$58
  !cs3
  db 17
  !c3
  db 8
  !cs3
  !end

.pattern0_2
  db 25
  !rest
  !instr,!instr01
  !volume,165
  !pan,12
  db 25,$07
  !b4
  !as4
  !rest
  db 17
  !rest
  db 25
  !as4
  !a4
  db 33
  !rest
  !loop : dw .sub4C6F : db 1
  db 25
  !rest
  !a4
  !gs4
  !rest
  db 17
  !rest
  db 25
  !gs4
  !g4
  db 8,$57
  !g4
  db 17
  !gs4
  db 8,$67
  !as4
  db 25
  !rest
  db 25,$07
  !b4
  !as4
  !rest
  db 17
  !rest
  db 25
  !as4
  !a4
  db 33
  !rest
  !loop : dw .sub4C6F : db 1
  db 25
  !rest
  !a4
  !gs4
  !rest
  db 17
  !rest
  db 25
  !gs4
  !g4
  db 8,$57
  !gs4
  db 17
  !as4
  db 8,$67
  !c5
  !end

.pattern0_3
  db 25
  !rest
  !instr,!instr01
  !volume,165
  !pan,8
  db 25,$07
  !e5
  !ds5
  !rest
  db 17
  !rest
  db 25
  !ds5
  !d5
  db 33
  !rest
  !loop : dw .sub4C88 : db 1
  db 25
  !rest
  !d5
  !cs5
  !rest
  db 17
  !rest
  db 25
  !cs5
  !c5
  db 8,$57
  !c5
  db 17
  !cs5
  db 8,$67
  !ds5
  db 25
  !rest
  db 25,$07
  !e5
  !ds5
  !rest
  db 17
  !rest
  db 25
  !ds5
  !d5
  db 33
  !rest
  !loop : dw .sub4C88 : db 1
  db 25
  !rest
  !d5
  !cs5
  !rest
  db 17
  !rest
  db 25
  !cs5
  !c5
  db 8,$57
  !cs5
  db 17
  !ds5
  db 8,$67
  !f5
  !end

.pattern0_4
  db 25
  !rest
  !instr,!instr01
  !volume,160
  !pan,10
  db 25,$07
  !a5
  !gs5
  !rest
  db 17
  !rest
  db 25
  !gs5
  !g5
  db 33
  !rest
  !loop : dw .sub4CA1 : db 1
  db 25
  !rest
  !g5
  !fs5
  !rest
  db 17
  !rest
  db 25
  !fs5
  !f5
  db 8,$57
  !f5
  db 17
  !fs5
  db 8,$67
  !gs5
  db 25
  !rest
  db 25,$07
  !a5
  !gs5
  !rest
  db 17
  !rest
  db 25
  !gs5
  !g5
  db 33
  !rest
  !loop : dw .sub4CA1 : db 1
  db 25
  !rest
  !g5
  !fs5
  !rest
  db 17
  !rest
  db 25
  !fs5
  !f5
  db 8,$57
  !fs5
  db 17
  !gs5
  db 8,$67
  !as5
  !end

.pattern1_0
  !pan,10
  db 17,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 8,$71
  !g4
  db 17,$72
  !g4
  db 8,$71
  !g4
  !pan,10
  !instr,!instr27
  db 17,$77
  !d4
  !pan,12
  !instr,!instr24
  db 8,$71
  !g4
  db 17,$72
  !g4
  db 8,$71
  !g4
  db 17
  !g4
  !pan,10
  !instr,!instr27
  db 8,$74
  !d4
  db 17,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 8,$71
  !g4
  !pan,10
  !instr,!instr27
  db 17,$77
  !d4
  !pan,12
  !instr,!instr24
  db 8,$72
  !g4
  !pan,8
  !instr,!instr25
  db 17
  !g4
  db 8,$71
  !g4
  !loop : dw .sub4BEA : db 6
  !pan,10
  db 17,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 8,$71
  !g4
  db 17,$72
  !g4
  db 8,$71
  !g4
  !pan,10
  !instr,!instr27
  db 17,$77
  !d4
  !pan,12
  !instr,!instr24
  db 8,$71
  !g4
  db 17,$72
  !g4
  db 8,$71
  !g4
  db 18
  !g4
  !pan,10
  !instr,!instr27
  db 7,$74
  !d4
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 7,$71
  !g4
  !pan,12
  !instr,!instr25
  db 18,$75
  !g4
  db 7,$73
  !g4
  !pan,8
  db 9,$75
  !g4
  db 8,$73
  !g4
  !g4
  !end

.pattern1_1
  db 25,$57
  !b2
  db 50
  !rest
  db 17
  !b2
  db 8,$55
  !b3
  db 25,$57
  !b2
  db 42
  !rest
  db 8,$55
  !b3
  db 17,$57
  !b2
  db 8,$55
  !b3
  db 25,$57
  !b2
  db 50
  !rest
  db 17
  !b2
  db 25,$08
  !b2
  db 8,$55
  !b3
  db 17,$57
  !b2
  db 8,$55
  !b3
  db 25,$57
  !b2
  db 17
  !b2
  db 8,$55
  !b3
  db 25,$57
  !e3
  db 50
  !rest
  db 17
  !e3
  db 8,$53
  !e4
  db 25,$57
  !e3
  db 42
  !rest
  db 8,$53
  !e4
  db 17,$57
  !e3
  db 8,$53
  !e4
  db 25,$57
  !e3
  db 50
  !rest
  db 17
  !e3
  db 25,$08
  !e3
  db 8,$53
  !e4
  db 17,$57
  !e3
  db 8,$53
  !e4
  db 17,$57
  !e3
  db 8,$56
  !e4
  db 17,$57
  !ds3
  db 8
  !d3
  db 25
  !b2
  db 50
  !rest
  db 17
  !b2
  db 8,$55
  !b3
  db 25,$57
  !b2
  db 42
  !rest
  db 8,$55
  !b3
  db 17,$57
  !b2
  db 8,$55
  !b3
  db 25,$57
  !b2
  db 50
  !rest
  db 17
  !b2
  db 25,$08
  !b2
  db 8,$55
  !b3
  db 17,$57
  !b2
  db 8,$55
  !b3
  db 17,$57
  !b2
  db 8,$55
  !b3
  db 17,$57
  !b2
  db 8,$54
  !c4
  db 25,$57
  !cs3
  db 50
  !rest
  db 17
  !cs3
  db 8,$53
  !cs4
  db 25,$57
  !cs3
  db 42
  !rest
  db 8,$53
  !cs4
  db 17,$57
  !cs3
  db 8,$53
  !cs4
  db 25,$57
  !cs3
  db 50
  !rest
  db 17
  !cs3
  db 25,$07
  !cs3
  db 8,$53
  !cs4
  db 17,$57
  !cs3
  db 8,$53
  !cs4
  db 17,$57
  !cs3
  db 8
  !ds4
  db 17
  !e3
  db 8
  !f3
  !end

.pattern1_2
  db 25
  !rest
  db 25,$07
  !cs5
  !c5
  !rest
  db 17
  !rest
  db 25
  !c5
  !b4
  db 33
  !rest
  db 25
  !rest
  !cs5
  !c5
  !rest
  db 17
  !rest
  db 25
  !c5
  !b4
  db 33
  !rest
  db 25
  !rest
  !b4
  !as4
  !rest
  db 17
  !rest
  db 25
  !as4
  !a4
  db 33
  !rest
  db 25
  !rest
  !b4
  !as4
  !rest
  db 17
  !rest
  db 25
  !as4
  !a4
  db 8,$57
  !a4
  db 17
  !as4
  db 8,$67
  !c5
  db 25,$07
  !d5
  !cs5
  !c5
  !rest
  db 17
  !rest
  db 25
  !c5
  !b4
  db 33
  !rest
  db 25
  !rest
  !cs5
  !c5
  !rest
  db 17
  !rest
  db 25
  !c5
  !b4
  db 33
  !rest
  db 25
  !rest
  !as4
  !a4
  !rest
  db 17
  !rest
  db 25
  !a4
  !gs4
  db 33
  !rest
  db 25
  !rest
  !gs4
  !g4
  !rest
  db 17
  !rest
  db 25
  !g4
  !fs4
  db 8,$57
  !gs4
  db 17
  !a4
  db 8,$67
  !as4
  !end

.pattern1_3
  db 25
  !rest
  db 25,$07
  !fs5
  !f5
  !rest
  db 17
  !rest
  db 25
  !f5
  !e5
  db 33
  !rest
  db 25
  !rest
  !fs5
  !f5
  !rest
  db 17
  !rest
  db 25
  !f5
  !e5
  db 33
  !rest
  db 25
  !rest
  !e5
  !ds5
  !rest
  db 17
  !rest
  db 25
  !ds5
  !d5
  db 33
  !rest
  db 25
  !rest
  !e5
  !ds5
  !rest
  db 17
  !rest
  db 25
  !ds5
  !d5
  db 8,$57
  !d5
  db 17
  !ds5
  db 8,$67
  !f5
  db 25,$07
  !g5
  !fs5
  !f5
  !rest
  db 17
  !rest
  db 25
  !f5
  !e5
  db 33
  !rest
  db 25
  !rest
  !fs5
  !f5
  !rest
  db 17
  !rest
  db 25
  !f5
  !e5
  db 33
  !rest
  db 25
  !rest
  !ds5
  !d5
  !rest
  db 17
  !rest
  db 25
  !d5
  !cs5
  db 33
  !rest
  db 25
  !rest
  !cs5
  !c5
  !rest
  db 17
  !rest
  db 25
  !c5
  !b4
  db 8,$57
  !cs5
  db 17
  !d5
  db 8,$67
  !ds5
  !end

.pattern1_4
  db 25
  !rest
  db 25,$07
  !b5
  !as5
  !rest
  db 17
  !rest
  db 25
  !as5
  !a5
  db 33
  !rest
  db 25
  !rest
  !b5
  !as5
  !rest
  db 17
  !rest
  db 25
  !as5
  !a5
  db 33
  !rest
  db 25
  !rest
  !a5
  !gs5
  !rest
  db 17
  !rest
  db 25
  !gs5
  !g5
  db 33
  !rest
  db 25
  !rest
  !a5
  !gs5
  !rest
  db 17
  !rest
  db 25
  !gs5
  !g5
  db 8,$57
  !g5
  db 17
  !gs5
  db 8,$67
  !as5
  db 25,$06
  !c6
  db 25,$07
  !b5
  !as5
  !rest
  db 17
  !rest
  db 25
  !as5
  !a5
  db 33
  !rest
  db 25
  !rest
  !b5
  !as5
  !rest
  db 17
  !rest
  db 25
  !as5
  !a5
  db 33
  !rest
  db 25
  !rest
  !gs5
  !g5
  !rest
  db 17
  !rest
  db 25
  !g5
  !fs5
  db 33
  !rest
  db 25
  !rest
  !fs5
  !f5
  !rest
  db 17
  !rest
  db 25
  !f5
  !e5
  db 8,$57
  !fs5
  db 17
  !g5
  db 8,$67
  !gs5
  !end

.sub4BEA
  !pan,10
  db 17,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 8,$71
  !g4
  db 17,$72
  !g4
  db 8,$71
  !g4
  !pan,10
  !instr,!instr27
  db 17,$77
  !d4
  !pan,12
  !instr,!instr24
  db 8,$71
  !g4
  db 17,$72
  !g4
  db 8,$71
  !g4
  db 18
  !g4
  !pan,10
  !instr,!instr27
  db 7,$74
  !d4
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 7,$71
  !g4
  !pan,10
  !instr,!instr27
  db 18,$77
  !d4
  !pan,12
  !instr,!instr24
  db 7,$72
  !g4
  !pan,8
  !instr,!instr25
  db 17
  !g4
  db 8,$71
  !g4
  !end

.sub4C3B
  db 25,$57
  !c3
  db 50
  !rest
  db 17
  !c3
  db 25,$08
  !c3
  db 8,$54
  !c4
  db 17,$57
  !c3
  db 8,$54
  !c4
  db 25,$57
  !c3
  db 17
  !c3
  db 8,$54
  !cs4
  db 25,$57
  !d3
  db 50
  !rest
  db 17
  !d3
  db 8,$53
  !d4
  db 25,$57
  !d3
  db 42
  !rest
  db 8,$53
  !d4
  db 17,$57
  !d3
  db 8,$53
  !d4
  !end

.sub4C6F
  db 25
  !rest
  !b4
  !as4
  !rest
  db 17
  !rest
  db 25
  !as4
  !a4
  db 33
  !rest
  db 25
  !rest
  !a4
  !gs4
  !rest
  db 17
  !rest
  db 25
  !gs4
  !g4
  db 33
  !rest
  !end

.sub4C88
  db 25
  !rest
  !e5
  !ds5
  !rest
  db 17
  !rest
  db 25
  !ds5
  !d5
  db 33
  !rest
  db 25
  !rest
  !d5
  !cs5
  !rest
  db 17
  !rest
  db 25
  !cs5
  !c5
  db 33
  !rest
  !end

.sub4CA1
  db 25
  !rest
  !a5
  !gs5
  !rest
  db 17
  !rest
  db 25
  !gs5
  !g5
  db 33
  !rest
  db 25
  !rest
  !g5
  !fs5
  !rest
  db 17
  !rest
  db 25
  !fs5
  !f5
  db 33
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
