asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr21 = $17
!instr24 = $18
!instr25 = $19
!instr26 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$AF,$B2,$B8,$0E,$F0
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr26,$BF,$D3,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+27
  dw Sample21,Sample21+27
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_1086e6fe5f17482c7f004cd2924d0b6b.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
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
  !volume,225
  !instr,!instr26
  db 23,$78
  !c3
  db 7,$73
  !as4
  db 8,$77
  !as4
  db 7,$71
  !as4
  db 23,$78
  !c3
  db 7,$73
  !as4
  db 8,$77
  !as4
  db 7,$71
  !as4
  db 15,$78
  !c3
  db 8,$73
  !as4
  db 7,$77
  !as4
  db 5,$71
  !as4
  db 5,$72
  !as4
  db 5,$73
  !as4
  db 15,$78
  !c3
  db 8,$75
  !as4
  db 7,$72
  !as4
  db 15,$78
  !c3
  db 8,$72
  !as4
  db 7,$71
  !as4
  !instr,!instr25
  db 15,$07
  !a4
  !instr,!instr26
  db 15,$77
  !c3
  !instr,!instr25
  db 15,$76
  !a4
  !instr,!instr26
  db 23,$78
  !c3
  db 7,$73
  !as4
  db 8,$77
  !as4
  db 7,$71
  !as4
  db 23,$78
  !c3
  db 7,$73
  !as4
  db 8,$77
  !as4
  db 7,$71
  !as4
  db 15,$78
  !c3
  db 8,$73
  !as4
  db 7,$77
  !as4
  db 5,$71
  !as4
  db 5,$72
  !as4
  db 5,$73
  !as4
  db 15,$78
  !c3
  db 8,$75
  !as4
  db 7,$72
  !as4
  db 15,$78
  !c3
  db 8,$72
  !as4
  db 7,$71
  !as4
  !instr,!instr25
  db 8,$37
  !a4
  db 7,$35
  !a4
  !instr,!instr26
  db 16,$78
  !c3
  !instr,!instr25
  db 7,$77
  !a4
  db 7,$79
  !a4
  !end

.pattern0_1
  !instr,!instr02
  !volume,200
  db 23,$27
  !c3
  db 7,$57
  !c3
  db 15,$25
  !c4
  db 15,$57
  !c3
  !rest
  db 15,$27
  !c3
  db 15,$25
  !c4
  db 15,$27
  !c3
  !rest
  !c3
  db 15,$55
  !c4
  db 15,$57
  !c3
  db 8,$55
  !c4
  db 15,$57
  !c3
  db 7
  !c3
  db 8,$55
  !c4
  db 7,$57
  !c3
  db 8
  !c3
  db 7,$55
  !c4
  db 23,$27
  !as2
  db 7,$57
  !as2
  db 15,$26
  !as3
  db 15,$57
  !as2
  !rest
  db 15,$27
  !as2
  db 15,$26
  !as3
  db 15,$27
  !as2
  !rest
  !as2
  db 15,$56
  !as3
  db 15,$57
  !as2
  db 8,$56
  !as3
  db 15,$57
  !as2
  db 7
  !as2
  db 8,$56
  !as3
  db 7,$57
  !as2
  db 8
  !as2
  db 7,$56
  !as3
  !end

.pattern0_2
  !instr,!instr24
  !volume,145
  !pan,10
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,0
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,20
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,10
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,0
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,20
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,10
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,0
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,20
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,10
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,0
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,20
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,10
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,20
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,10
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,0
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,20
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !pan,10
  db 8,$79
  !c5
  db 7,$75
  !gs4
  !pan,0
  db 8,$77
  !gs4
  db 7,$75
  !gs4
  !end

.pattern0_3
  !instr,!instr21
  !volume,130
  !pan,12
  !loop : dw .sub4981 : db 2
  !end

.pattern0_4
  !instr,!instr21
  !volume,130
  !pan,8
  !loop : dw .sub499A : db 2
  !end

.sub4981
  db 15,$18
  !as4
  !g4
  !rest
  !as4
  !g4
  !g4
  db 15,$26
  !e4
  !g4
  !rest
  db 15,$18
  !as4
  !g4
  !g4
  !as4
  !as4
  db 15,$26
  !e4
  !g4
  !end

.sub499A
  db 15,$18
  !f5
  !e5
  !rest
  !f5
  !e5
  !c5
  db 15,$26
  !as4
  !c5
  !rest
  db 15,$18
  !f5
  !e5
  !c5
  !f5
  !e5
  db 15,$26
  !as4
  !c5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
