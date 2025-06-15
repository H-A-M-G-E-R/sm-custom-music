asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr1D = $17
!instr24 = $18
!instr26 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr26,$BF,$D3,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample1D,Sample1D+27
  dw Sample24,Sample24+1161
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
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
  !echo,%00011010,30,30
  !echoParameters,4,60,0
  !musicVolume,255
  !tempo,46
  !volume,230
  !instr,!instr26
  db 23,$57
  !c3
  db 7,$73
  !as4
  db 15,$77
  !as4
  db 23,$57
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
  db 8,$72
  !as4
  db 7,$70
  !as4
  db 15,$77
  !c3
  db 15,$76
  !c5
  db 30,$38
  !c3
  db 15,$73
  !d5
  db 16,$77
  !c3
  db 7,$71
  !as4
  db 7,$73
  !as4
  db 23,$57
  !c3
  db 7,$73
  !as4
  db 15,$77
  !as4
  db 23,$57
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
  db 8,$72
  !as4
  db 7,$70
  !as4
  db 15,$77
  !c3
  db 15,$76
  !c5
  db 30,$38
  !c3
  db 15,$73
  !d5
  db 16,$77
  !c3
  db 7,$71
  !as4
  db 7,$73
  !as4
  !end

.pattern0_1
  !instr,!instr24
  !volume,145
  !loop : dw .sub4957 : db 4
  !end

.pattern0_2
  !instr,!instr1D
  !volume,190
  db 45,$34
  !c4
  db 15,$27
  !c3
  db 45,$37
  !c3
  db 15,$57
  !c3
  db 23
  !rest
  db 7,$78
  !g2
  db 23,$57
  !c3
  db 7
  !e3
  db 15,$17
  !g3
  db 15,$14
  !c4
  db 15,$15
  !b3
  db 15,$16
  !a3
  db 45,$37
  !g3
  db 15,$18
  !g2
  db 45,$38
  !g2
  db 15,$18
  !g2
  !rest
  db 15,$17
  !g3
  db 15,$58
  !g2
  db 15,$18
  !g2
  db 15,$17
  !g3
  db 15,$18
  !g2
  db 15,$56
  !as3
  db 15,$15
  !b3
  !end

.pattern0_3
  !instr,!instr01
  !volume,125
  !pan,12
  db 8,$59
  !d6
  db 7,$54
  !d6
  db 8,$57
  !d6
  db 7
  !e5
  db 8
  !d6
  db 7
  !e5
  db 8
  !d6
  db 7
  !e5
  db 8
  !d6
  db 7
  !e5
  db 8
  !d6
  db 7
  !e5
  db 8
  !d6
  db 7
  !e5
  db 8,$58
  !d6
  db 7
  !e5
  db 8,$59
  !d6
  db 7,$57
  !d6
  db 8,$54
  !d6
  db 7,$57
  !e5
  db 8
  !d6
  db 7
  !e5
  db 8
  !d6
  db 7
  !e5
  db 8
  !d6
  db 7
  !e5
  db 8
  !d6
  db 7
  !e5
  db 8,$59
  !d6
  db 7,$57
  !e5
  db 8
  !d6
  db 7
  !e5
  db 8,$5A
  !c6
  db 7,$54
  !c6
  db 8,$57
  !d6
  db 7
  !as4
  db 8
  !c6
  db 7
  !as4
  db 8
  !d6
  db 7
  !as4
  db 8
  !c6
  db 7
  !as4
  db 8
  !d6
  db 7
  !as4
  db 8
  !c6
  db 7
  !as4
  db 8,$58
  !d6
  db 7
  !as4
  db 8,$59
  !c6
  db 7,$57
  !c6
  db 8,$54
  !d6
  db 7,$57
  !as4
  db 8
  !c6
  db 7
  !as4
  db 8
  !d6
  db 7
  !as4
  db 8
  !c6
  db 7
  !as4
  db 8
  !d6
  db 7
  !as4
  db 8,$5B
  !c6
  db 7,$57
  !as4
  db 8,$58
  !d6
  db 7
  !as4
  !end

.pattern0_4
  !instr,!instr01
  !volume,125
  !pan,8
  db 8,$59
  !g6
  db 7,$54
  !g6
  db 8,$57
  !g6
  db 7
  !a5
  db 8
  !g6
  db 7
  !a5
  db 8
  !g6
  db 7
  !a5
  db 8
  !g6
  db 7
  !a5
  db 8
  !g6
  db 7
  !a5
  db 8
  !g6
  db 7
  !a5
  db 8,$58
  !g6
  db 7
  !a5
  db 8,$59
  !g6
  db 7,$57
  !g6
  db 8,$54
  !g6
  db 7,$57
  !a5
  db 8
  !g6
  db 7
  !a5
  db 8
  !g6
  db 7
  !a5
  db 8
  !g6
  db 7
  !a5
  db 8
  !g6
  db 7
  !a5
  db 8,$59
  !g6
  db 7,$57
  !a5
  db 8
  !g6
  db 7
  !a5
  db 8,$5A
  !f6
  db 7,$54
  !f6
  db 8,$57
  !f6
  db 7
  !f5
  db 8
  !f6
  db 7
  !f5
  db 8
  !f6
  db 7
  !f5
  db 8
  !f6
  db 7
  !f5
  db 8
  !f6
  db 7
  !f5
  db 8
  !f6
  db 7
  !f5
  db 8,$58
  !f6
  db 7
  !f5
  db 8,$59
  !f6
  db 7,$57
  !f6
  db 8,$54
  !f6
  db 7,$57
  !f5
  db 8
  !f6
  db 7
  !f5
  db 8
  !f6
  db 7
  !f5
  db 8
  !f6
  db 7
  !f5
  db 8
  !f6
  db 7
  !f5
  db 8,$5B
  !f6
  db 7,$57
  !f5
  db 8,$58
  !f6
  db 7
  !f5
  !end

.sub4957
  !pan,12
  db 8,$77
  !a4
  db 7,$72
  !f4
  !pan,8
  db 8,$77
  !g4
  db 7,$72
  !f4
  !pan,12
  db 8,$77
  !a4
  db 7,$72
  !f4
  !pan,8
  db 8,$77
  !g4
  db 7,$72
  !f4
  !pan,12
  db 8,$77
  !a4
  db 7,$72
  !f4
  !pan,8
  db 8,$77
  !g4
  db 7,$72
  !f4
  !pan,12
  db 8,$77
  !a4
  db 7,$72
  !f4
  !pan,8
  db 8,$77
  !g4
  db 7,$72
  !f4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
