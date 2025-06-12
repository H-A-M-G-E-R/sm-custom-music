asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr07 = $16
!instr0B = $17
!instr1D = $18
!instr2E = $19
!instr2F = $1A
!instr30 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample06_07,Sample06_07+558
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr30
  db 8
  !rest
  !musicVolume,255
  !tempo,51
  !instr,!instr07
  !pan,10
  !volume,255
  !echo,%00111110,30,30
  !echoParameters,4,40,0
  db 24,$06
  !g3
  db 12,$43
  !g4
  db 24,$06
  !gs3
  db 12,$43
  !gs4
  db 24,$17
  !d3
  db 12,$45
  !d3
  db 24,$16
  !g3
  db 12,$46
  !g3
  !c3
  db 49
  !rest
  db 11
  !g3
  db 12,$26
  !c3
  db 60
  !rest
  !end

.pattern0_1
  db 8
  !rest
  !subtranspose,58
  !instr,!instr1D
  !volume,225
  !pan,10
  db 24,$06
  !g6
  db 12,$46
  !g6
  db 24,$07
  !gs6
  db 12,$47
  !gs6
  db 24,$07
  !a6
  db 12,$47
  !a6
  db 12,$46
  !b6
  !a6
  !g6
  !c7
  db 49
  !rest
  db 11
  !g6
  db 12,$26
  !c7
  db 60
  !rest
  !end

.pattern0_2
  db 8
  !rest
  !instr,!instr0B
  !volume,160
  !pan,12
  db 12,$46
  !f5
  db 12,$40
  !f5
  db 12,$46
  !f5
  !f5
  db 12,$40
  !f5
  db 12,$46
  !f5
  !d5
  db 12,$40
  !d5
  db 12,$46
  !d5
  !d5
  db 12,$40
  !d5
  db 12,$46
  !d5
  !c5
  db 49
  !rest
  db 11,$43
  !g4
  db 12
  !c4
  db 60
  !rest
  !end

.pattern0_3
  db 8
  !rest
  !instr,!instr0B
  !volume,160
  !pan,8
  db 12,$46
  !g5
  db 12,$40
  !g5
  db 12,$46
  !g5
  !gs5
  db 12,$40
  !gs5
  db 12,$46
  !gs5
  !f5
  db 12,$40
  !f5
  db 12,$46
  !f5
  !f5
  db 12,$40
  !f5
  db 12,$46
  !f5
  !g5
  db 49
  !rest
  !subtranspose,10
  db 11,$43
  !g4
  db 12
  !c4
  db 60
  !rest
  !end

.pattern0_4
  db 8
  !rest
  !instr,!instr0B
  !volume,155
  !pan,11
  db 12,$46
  !b5
  db 12,$40
  !b5
  db 12,$46
  !b5
  !b5
  db 12,$40
  !b5
  db 12,$46
  !b5
  !a5
  db 12,$40
  !a5
  db 12,$46
  !a5
  !g5
  db 12,$40
  !g5
  db 12,$46
  !g5
  !c6
  db 60
  !rest
  db 72
  !rest
  !end

.pattern0_5
  db 8
  !rest
  !instr,!instr0B
  !volume,155
  !pan,9
  db 12,$46
  !d6
  db 12,$40
  !d6
  db 12,$46
  !d6
  !d6
  db 12,$40
  !d6
  db 12,$46
  !d6
  !c6
  db 12,$40
  !c6
  db 12,$46
  !c6
  !b5
  db 12,$40
  !b5
  db 12,$46
  !b5
  !e6
  db 60
  !rest
  db 72
  !rest
  !end

.pattern0_6
  !pan,10
  !volume,255
  db 4,$71
  %percNote(!instr30-!instr30)
  db 4,$72
  %percNote(!instr30-!instr30)
  db 12,$76
  %percNote(!instr30-!instr30)
  db 12,$72
  %percNote(!instr30-!instr30)
  db 12,$73
  %percNote(!instr30-!instr30)
  db 12,$76
  %percNote(!instr30-!instr30)
  db 12,$72
  %percNote(!instr30-!instr30)
  db 12,$75
  %percNote(!instr30-!instr30)
  db 12,$76
  %percNote(!instr30-!instr30)
  db 12,$71
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  !pan,11
  db 12,$72
  !ds5
  db 12,$76
  !ds5
  !pan,8
  !a4
  !pan,12
  !e4
  !pan,8
  !e4
  db 49
  !rest
  !instr,!instr2F
  !pan,10
  !volume,255
  db 11
  !g6
  db 72
  !c7
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
