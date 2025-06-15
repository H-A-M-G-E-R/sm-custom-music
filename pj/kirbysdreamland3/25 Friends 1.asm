asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr02 = $17
!instr24 = $18
!instr25 = $19
!instr26 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$07,$00
  db !instr02,$AF,$B2,$B8,$0E,$F0
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr26,$BF,$D3,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+819
  dw Sample02,Sample02+27
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_daee1fba1349bada3b2b763cd04133f4.brr"
  Sample02: incbin "Sample_1086e6fe5f17482c7f004cd2924d0b6b.brr"
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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echo,%00011000,38,38
  !echoParameters,4,70,0
  !musicVolume,255
  !tempo,46
  !volume,215
  !instr,!instr26
  db 23,$77
  !c3
  db 7,$73
  !as4
  db 15,$77
  !as4
  db 23,$76
  !c3
  db 7,$73
  !as4
  db 15,$77
  !as4
  db 15,$75
  !c3
  db 8,$72
  !as4
  db 7,$71
  !as4
  !loop : dw .sub488E : db 3
  db 5,$70
  !as4
  db 5,$71
  !b4
  db 5,$72
  !c5
  db 15,$77
  !f3
  db 15,$06
  !c5
  db 30,$78
  !c3
  !instr,!instr25
  db 5,$70
  !e5
  db 5,$72
  !e5
  db 5,$73
  !e5
  db 8,$77
  !f4
  db 7,$72
  !f4
  db 15,$77
  !c4
  !end

.pattern0_1
  !instr,!instr02
  !volume,190
  db 30,$58
  !g2
  db 15,$27
  !g3
  db 15,$28
  !g2
  !g2
  db 15,$27
  !a3
  db 15,$28
  !g2
  !g2
  db 15,$17
  !f3
  !g3
  !rest
  !f3
  !g3
  !rest
  db 15,$27
  !d3
  db 15,$29
  !f2
  db 30,$58
  !g2
  db 15,$27
  !g3
  db 15,$28
  !g2
  !g2
  db 15,$27
  !a3
  db 15,$28
  !g2
  !g2
  db 15,$17
  !f3
  !g3
  !rest
  !f3
  !g3
  db 15,$23
  !b3
  db 15,$78
  !g2
  !fs2
  db 30,$59
  !f2
  db 15,$27
  !f3
  db 15,$29
  !f2
  !f2
  db 15,$27
  !g3
  db 15,$29
  !f2
  !f2
  db 15,$17
  !ds3
  !f3
  !rest
  !ds3
  !f3
  !rest
  db 15,$47
  !c3
  db 15,$4A
  !ds2
  db 30,$59
  !f2
  db 15,$27
  !f3
  db 15,$29
  !f2
  !f2
  db 15,$27
  !g3
  db 15,$29
  !f2
  !f2
  db 15,$17
  !ds3
  db 15,$18
  !f3
  !rest
  !ds3
  !rest
  !f3
  db 15,$79
  !f2
  db 15,$78
  !fs2
  !end

.pattern0_2
  !instr,!instr24
  !volume,110
  !loop : dw .sub48D4 : db 1
  !loop : dw .sub4955 : db 2
  !end

.pattern0_3
  db 30
  !rest
  !instr,!instr00
  !volume,170
  !pan,8
  db 15,$16
  !d5
  db 30
  !rest
  db 15,$17
  !f5
  db 30
  !rest
  db 15,$16
  !b4
  db 105
  !rest
  db 30
  !rest
  db 15
  !d5
  db 30
  !rest
  db 15,$17
  !f5
  db 30
  !rest
  db 15,$16
  !b4
  db 105
  !rest
  !loop : dw .sub4A16 : db 2
  !end

.pattern0_4
  db 30
  !rest
  !instr,!instr00
  !volume,160
  !pan,12
  db 15,$17
  !f5
  db 30
  !rest
  db 15,$16
  !d5
  db 30
  !rest
  db 15,$17
  !d5
  db 105
  !rest
  db 30
  !rest
  db 15
  !f5
  db 30
  !rest
  db 15,$16
  !d5
  db 30
  !rest
  db 15,$17
  !d5
  db 105
  !rest
  !loop : dw .sub4A27 : db 2
  !end

.sub488E
  db 5,$70
  !as4
  db 5,$71
  !b4
  db 5,$72
  !c5
  db 15,$77
  !f3
  db 15,$06
  !c5
  db 30,$78
  !c3
  !instr,!instr25
  db 5,$70
  !e5
  db 5,$71
  !e5
  db 5,$73
  !e5
  db 16,$47
  !f4
  !instr,!instr26
  db 7,$73
  !as4
  db 7,$72
  !as4
  !instr,!instr26
  db 23,$77
  !c3
  db 7,$73
  !as4
  db 15,$77
  !as4
  db 23,$76
  !c3
  db 7,$73
  !as4
  db 15,$77
  !as4
  db 15,$75
  !c3
  db 8,$72
  !as4
  db 7,$71
  !as4
  !end

.sub48D4
  !pan,10
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,0
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,20
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,10
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,0
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,20
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,10
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !end

.sub4955
  !pan,0
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,20
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,10
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,0
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,20
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,10
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,0
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,20
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,10
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,0
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,20
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,10
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$7B
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !end

.sub4A16
  db 30
  !rest
  db 15
  !c5
  db 30
  !rest
  db 15,$17
  !ds5
  db 30
  !rest
  db 15,$16
  !a4
  db 105
  !rest
  !end

.sub4A27
  db 30
  !rest
  db 15
  !ds5
  db 30
  !rest
  db 15,$16
  !c5
  db 30
  !rest
  db 15,$17
  !c5
  db 105
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
