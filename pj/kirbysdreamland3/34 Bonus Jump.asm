asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr06 = $16
!instr20 = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr20,$FF,$E0,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05_06,Sample05_06+216
  dw Sample20,Sample20+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample20: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"

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
  !musicVolume,255
  !tempo,46
  db 15
  !rest
  !transpose,19
  !echo,%00011111,53,53
  !echoParameters,4,176,0
  !instr,!instr06
  !subtranspose,15
  !pan,0
  !volume,105
  db 10,$77
  !f6
  db 10,$72
  !c6
  !f6
  db 10,$77
  !g6
  db 10,$72
  !d6
  !g6
  db 10,$77
  !a6
  db 10,$72
  !g6
  !a6
  db 10,$77
  !f6
  db 10,$72
  !g6
  !d6
  !loop : dw .sub48A9 : db 39
  db 10,$77
  !f6
  db 10,$72
  !c6
  !f6
  db 10,$77
  !g6
  db 10,$72
  !d6
  !g6
  db 10,$77
  !a6
  db 10,$72
  !g6
  !a6
  db 10,$77
  !f6
  db 5,$72
  !g6
  !end

.pattern0_1
  db 16
  !rest
  !subtranspose,20
  !pan,20
  !transpose,19
  !instr,!instr06
  !volume,105
  db 10,$77
  !f6
  db 10,$72
  !c6
  !f6
  db 10,$77
  !g6
  db 10,$72
  !d6
  !g6
  db 10,$77
  !a6
  db 10,$72
  !g6
  !a6
  db 10,$77
  !f6
  db 10,$72
  !g6
  !d6
  !loop : dw .sub48A9 : db 39
  db 10,$77
  !f6
  db 10,$72
  !c6
  !f6
  db 10,$77
  !g6
  db 10,$72
  !d6
  !g6
  db 10,$77
  !a6
  db 10,$72
  !g6
  !a6
  db 10,$77
  !f6
  db 4,$72
  !g6
  !end

.pattern0_2
  db 5
  !rest
  !subtranspose,10
  !transpose,19
  !instr,!instr06
  !pan,11
  !volume,120
  db 10,$77
  !f6
  db 10,$72
  !c6
  !f6
  db 10,$77
  !g6
  db 10,$72
  !d6
  !g6
  db 10,$77
  !a6
  db 10,$72
  !g6
  !a6
  db 10,$77
  !f6
  db 10,$72
  !g6
  !d6
  !loop : dw .sub48A9 : db 39
  db 10,$77
  !f6
  db 10,$72
  !c6
  !f6
  db 10,$77
  !g6
  db 10,$72
  !d6
  !g6
  db 10,$77
  !a6
  db 10,$72
  !g6
  !a6
  db 10,$77
  !f6
  db 10,$72
  !g6
  db 5
  !d6
  !end

.pattern0_3
  db 6
  !rest
  !subtranspose,5
  !transpose,19
  !instr,!instr06
  !pan,9
  !volume,120
  db 10,$77
  !f6
  db 10,$72
  !c6
  !f6
  db 10,$77
  !g6
  db 10,$72
  !d6
  !g6
  db 10,$77
  !a6
  db 10,$72
  !g6
  !a6
  db 10,$77
  !f6
  db 10,$72
  !g6
  !d6
  !loop : dw .sub48A9 : db 39
  db 10,$77
  !f6
  db 10,$72
  !c6
  !f6
  db 10,$77
  !g6
  db 10,$72
  !d6
  !g6
  db 10,$77
  !a6
  db 10,$72
  !g6
  !a6
  db 10,$77
  !f6
  db 10,$72
  !g6
  db 4
  !d6
  !end

.pattern0_4
  !instr,!instr20
  !pan,10
  !volume,140
  !transpose,19
  db 10,$77
  !f6
  db 10,$72
  !c6
  !f6
  db 10,$77
  !g6
  db 10,$72
  !d6
  !g6
  db 10,$77
  !a6
  db 10,$72
  !g6
  !a6
  db 10,$77
  !f6
  db 10,$72
  !g6
  !d6
  !loop : dw .sub48A9 : db 40
  !end

.sub48A9
  db 10,$77
  !f6
  db 10,$72
  !c6
  !f6
  db 10,$77
  !g6
  db 10,$72
  !d6
  !g6
  db 10,$77
  !a6
  db 10,$72
  !g6
  !a6
  db 10,$77
  !f6
  db 10,$72
  !g6
  !d6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
