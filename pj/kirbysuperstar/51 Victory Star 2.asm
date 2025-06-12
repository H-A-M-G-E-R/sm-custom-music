asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr09 = $16
!instr2D = $17
!instr2F = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr09,$8F,$F2,$B8,$01,$00
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample08_09,Sample08_09+90
  dw Sample2D,Sample2D+1161
  dw Sample2F,Sample2F+1080
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
-
  dw .pattern0
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2D
  !echo,%00001111,38,38
  !echoParameters,5,40,0
  !musicVolume,255
  !tempo,51
  !pan,9
  !instr,!instr09
  !volume,135
  db 28,$76
  !g6
  !c7
  db 28,$74
  !d7
  db 28,$73
  !e7
  db 28,$76
  !c7
  !a6
  !g6
  !c7
  db 28,$74
  !d7
  db 28,$73
  !e7
  db 28,$76
  !c7
  !a6
  !f6
  !a6
  db 28,$74
  !d7
  db 28,$73
  !b6
  db 28,$76
  !d7
  !gs6
  !loop : dw .sub4FF7 : db 3
  !f6
  !a6
  db 28,$74
  !e7
  db 28,$73
  !d7
  db 28,$76
  !b6
  !d7
  !g6
  !c7
  db 28,$74
  !d7
  db 28,$73
  !e7
  db 28,$76
  !c7
  !a6
  !end

.pattern0_1
  !pan,8
  !instr,!instr09
  !volume,135
  db 15,$76
  !c7
  db 28
  !a6
  !g6
  !c7
  db 28,$74
  !d7
  db 28,$73
  !e7
  db 28,$76
  !c7
  !a6
  !g6
  !c7
  db 28,$74
  !d7
  db 28,$73
  !e7
  db 28,$76
  !c7
  !a6
  !f6
  !a6
  db 28,$74
  !d7
  db 28,$73
  !b6
  db 28,$76
  !d7
  !c7
  !loop : dw .sub4FF7 : db 3
  !f6
  !a6
  db 28,$74
  !e7
  db 28,$73
  !d7
  db 28,$76
  !b6
  !d7
  !g6
  !c7
  db 28,$74
  !d7
  db 28,$73
  !e7
  db 13,$76
  !c7
  !end

.pattern0_2
  !pan,10
  !transpose,12
  !instr,!instr09
  !volume,140
  db 28,$76
  !g6
  !g6
  !g6
  db 56
  !a6
  db 28
  !g6
  !e6
  !g6
  !c7
  db 84
  !g6
  db 28
  !c7
  !c7
  !c7
  !d7
  !c7
  !d7
  db 28,$75
  !e7
  db 43,$76
  !g6
  db 13,$73
  !a6
  db 84
  !g6
  db 28,$76
  !g6
  !g6
  !g6
  !a6
  db 28,$72
  !c7
  db 28,$76
  !g6
  !e6
  !g6
  !c7
  !g6
  !a6
  !c7
  !d7
  !c7
  !d7
  !c7
  !gs6
  !as6
  db 112
  !g6
  db 28
  !e6
  !f6
  !end

.pattern0_3
  !pan,12
  !transpose,12
  !instr,!instr09
  !volume,140
  db 28,$76
  !e6
  !e6
  !e6
  db 56
  !e6
  db 28
  !e6
  !c6
  !e6
  !g6
  db 84
  !e6
  db 28
  !a6
  !a6
  !a6
  !gs6
  !gs6
  !gs6
  db 28,$75
  !c7
  db 43,$76
  !e6
  db 13,$73
  !e6
  db 84
  !e6
  db 28,$76
  !e6
  !e6
  !e6
  !e6
  db 28,$72
  !g6
  db 28,$76
  !e6
  !c6
  !e6
  !g6
  !e6
  !e6
  !g6
  !a6
  !a6
  !a6
  !gs6
  !f6
  !f6
  db 112
  !e6
  db 28
  !g5
  !d6
  !end

.pattern0_4
  !volume,200
  !transpose,251
  db 15,$73
  %percNote(!instr2D-!instr2D)
  db 13,$71
  %percNote(!instr2D-!instr2D)
  db 15,$72
  %percNote(!instr2D-!instr2D)
  db 13,$71
  %percNote(!instr2D-!instr2D)
  db 15,$72
  %percNote(!instr2D-!instr2D)
  db 13,$71
  %percNote(!instr2D-!instr2D)
  !instr,!instr2F
  db 15,$78
  !gs7
  db 13,$71
  %percNote(!instr2D-!instr2D)
  db 15,$72
  %percNote(!instr2D-!instr2D)
  db 13,$71
  %percNote(!instr2D-!instr2D)
  db 15,$72
  %percNote(!instr2D-!instr2D)
  db 13,$71
  %percNote(!instr2D-!instr2D)
  !loop : dw .sub5004 : db 7
  !end

.sub4FF7
  !g6
  !c7
  db 28,$74
  !d7
  db 28,$73
  !e7
  db 28,$76
  !c7
  !a6
  !end

.sub5004
  db 15,$73
  %percNote(!instr2D-!instr2D)
  db 13,$71
  %percNote(!instr2D-!instr2D)
  db 15,$72
  %percNote(!instr2D-!instr2D)
  db 13,$71
  %percNote(!instr2D-!instr2D)
  db 15,$72
  %percNote(!instr2D-!instr2D)
  db 13,$71
  %percNote(!instr2D-!instr2D)
  !instr,!instr2F
  db 15,$78
  !gs7
  db 13,$71
  %percNote(!instr2D-!instr2D)
  db 15,$72
  %percNote(!instr2D-!instr2D)
  db 13,$71
  %percNote(!instr2D-!instr2D)
  db 15,$72
  %percNote(!instr2D-!instr2D)
  db 13,$71
  %percNote(!instr2D-!instr2D)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
