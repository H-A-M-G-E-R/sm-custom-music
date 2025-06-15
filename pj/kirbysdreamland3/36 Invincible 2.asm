asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr06 = $17
!instr1D = $18
!instr23 = $19
!instr24 = $1A
!instr25 = $1B
!instr27 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample05_06,Sample05_06+216
  dw Sample1D,Sample1D+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
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
  !echo,%00011100,34,34
  !echoParameters,4,70,0
  !musicVolume,255
  !volume,255
  !tempo,47
  !loop : dw .sub47C4 : db 1
  !end

.pattern0_1
  !pan,10
  !instr,!instr1D
  !volume,200
  !transpose,0
  !loop : dw .sub491D : db 1
  !end

.pattern0_2
  !transpose,0
  !instr,!instr06
  !volume,160
  !loop : dw .sub49C8 : db 2
  !end

.pattern0_3
  !transpose,0
  !instr,!instr01
  !pan,8
  !volume,160
  !loop : dw .sub4A63 : db 2
  !end

.pattern0_4
  !transpose,0
  !instr,!instr01
  !pan,12
  !volume,160
  !loop : dw .sub4ABA : db 2
  !end

.pattern1_0
  !loop : dw .sub47C4 : db 1
  !end

.pattern1_1
  !transpose,1
  !loop : dw .sub491D : db 1
  !end

.pattern1_2
  !transpose,1
  !loop : dw .sub49C8 : db 2
  !end

.pattern1_3
  !transpose,1
  !loop : dw .sub4A63 : db 2
  !end

.pattern1_4
  !transpose,1
  !loop : dw .sub4ABA : db 2
  !end

.sub47C4
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 9,$77
  !b4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 8,$75
  !b4
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 8,$76
  !a4
  !instr,!instr23
  db 9,$77
  !e5
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 9,$77
  !b4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$73
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 9,$77
  !b4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 8,$75
  !b4
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 8,$76
  !b4
  !instr,!instr23
  db 17,$77
  !e5
  !instr,!instr27
  db 9
  !b4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 9,$77
  !f4
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 9,$77
  !e5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 9,$77
  !b4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 8,$75
  !b4
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 8,$76
  !a4
  !instr,!instr23
  db 9,$77
  !e5
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 9,$77
  !b4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$73
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 9,$77
  !b4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 8,$75
  !b4
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 8,$76
  !b4
  !instr,!instr23
  db 13,$77
  !e5
  !instr,!instr27
  db 4,$73
  !b4
  db 9,$78
  !b4
  db 9,$76
  !b4
  !pan,9
  db 8,$78
  !fs4
  !pan,11
  db 8,$79
  !e4
  !end

.sub491D
  db 9,$38
  !f3
  db 8,$37
  !f3
  db 9
  !g3
  db 8,$36
  !f3
  db 9,$37
  !gs3
  db 8
  !f3
  db 9,$35
  !f4
  db 8,$37
  !f3
  db 9,$35
  !f4
  db 8,$37
  !f3
  db 9
  !g3
  db 8
  !as3
  db 9
  !gs3
  db 8,$35
  !f4
  db 9,$36
  !c4
  db 8,$37
  !g3
  db 9,$35
  !f4
  db 8,$37
  !f3
  db 9
  !g3
  db 8
  !f3
  db 9,$38
  !f3
  db 8,$37
  !f3
  db 9,$35
  !f4
  db 8,$37
  !f3
  db 9,$36
  !c4
  db 8,$37
  !f3
  db 9
  !as3
  db 8,$35
  !ds4
  db 9
  !d4
  db 8,$37
  !as3
  db 9
  !g3
  db 8
  !c3
  db 9,$38
  !f3
  db 8,$37
  !f3
  db 9
  !g3
  db 8,$36
  !f3
  db 9,$37
  !gs3
  db 8
  !f3
  db 9,$35
  !f4
  db 8,$37
  !f3
  db 9,$35
  !f4
  db 8,$37
  !f3
  db 9
  !g3
  db 8
  !as3
  db 9
  !gs3
  db 8,$35
  !f4
  db 9,$36
  !c4
  db 8,$37
  !g3
  db 9,$35
  !f4
  db 8,$37
  !f3
  db 9
  !g3
  db 8
  !f3
  db 9,$38
  !f3
  db 8,$37
  !f3
  db 9,$35
  !f4
  db 8,$37
  !f3
  db 9,$36
  !c4
  db 8,$37
  !f3
  db 9
  !as3
  db 8,$45
  !ds4
  db 9
  !d4
  db 8,$47
  !as3
  db 9
  !g3
  db 8
  !c3
  !end

.sub49C8
  !pan,12
  db 9,$25
  !f6
  !pan,8
  db 8
  !f6
  !pan,20
  db 9,$27
  !f7
  !pan,0
  db 8,$25
  !f6
  !pan,12
  db 9,$27
  !f7
  !pan,8
  db 8,$25
  !gs6
  !pan,20
  db 9
  !f6
  !pan,0
  db 8,$27
  !f7
  !pan,12
  db 9,$25
  !gs6
  !pan,8
  db 8,$27
  !f7
  !pan,20
  db 9,$25
  !f6
  !pan,0
  db 8,$27
  !f7
  !pan,12
  db 9,$25
  !c7
  !pan,8
  db 8,$27
  !f7
  !pan,20
  db 9
  !ds7
  !pan,0
  db 8,$26
  !f7
  !pan,12
  db 9,$25
  !gs6
  !pan,8
  db 8
  !f6
  !pan,20
  db 9,$27
  !f7
  !pan,0
  db 8,$25
  !f6
  !pan,12
  db 9,$27
  !f7
  !pan,8
  db 8,$25
  !gs6
  !pan,20
  db 9
  !f6
  !pan,0
  db 8,$27
  !f7
  !pan,12
  db 9,$25
  !f6
  !pan,8
  db 8,$27
  !f7
  !pan,20
  db 9,$25
  !c7
  !pan,0
  db 8,$27
  !f7
  !pan,12
  db 9,$25
  !gs6
  !pan,8
  db 8,$27
  !f7
  !pan,20
  db 9
  !ds7
  !pan,0
  db 8,$26
  !f7
  !end

.sub4A63
  db 9,$38
  !gs5
  db 8,$36
  !f5
  db 9
  !c5
  db 8,$39
  !c6
  db 9,$36
  !c5
  db 8,$38
  !f5
  db 9,$39
  !c6
  db 8,$36
  !c5
  db 9
  !ds5
  db 8
  !c5
  db 9,$38
  !as5
  db 8,$36
  !c5
  db 9,$39
  !d6
  db 8,$36
  !c5
  db 9
  !f5
  db 8
  !c5
  db 9,$38
  !c6
  db 8,$36
  !f5
  db 9
  !c5
  db 8,$39
  !ds6
  db 9,$36
  !c5
  db 8,$38
  !gs5
  db 9,$39
  !ds6
  db 8,$36
  !c5
  db 9
  !ds5
  db 8
  !c5
  db 9,$38
  !as5
  db 8,$36
  !c5
  db 9,$39
  !d6
  db 8,$36
  !c5
  db 9
  !f5
  db 8
  !c5
  !end

.sub4ABA
  db 9,$39
  !c6
  db 8,$36
  !gs5
  db 9
  !ds5
  db 8,$38
  !gs5
  db 9,$36
  !ds5
  db 8,$39
  !gs5
  db 9,$38
  !gs5
  db 8,$36
  !ds5
  db 9
  !gs5
  db 8
  !ds5
  db 9,$39
  !d6
  db 8,$36
  !f5
  db 9,$38
  !as5
  db 8,$36
  !f5
  db 9
  !as5
  db 8
  !f5
  db 9,$39
  !ds6
  db 8,$36
  !gs5
  db 9
  !ds5
  db 8,$38
  !c6
  db 9,$36
  !ds5
  db 8,$39
  !c6
  db 9,$38
  !c6
  db 8,$36
  !ds5
  db 9
  !gs5
  db 8
  !ds5
  db 9,$39
  !d6
  db 8,$36
  !f5
  db 9,$38
  !as5
  db 8,$36
  !f5
  db 9
  !as5
  db 8
  !f5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
