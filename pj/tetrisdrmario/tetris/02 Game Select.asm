asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr03 = $16
!instr05 = $17
!instr06 = $18
!instr07 = $19
!instr0A = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr06,$CF,$EE,$B8,$08,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr0A,$FF,$FD,$B8,$06,$F0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample06,Sample06+27
  dw Sample07,Sample07+1971
  dw Sample0A,Sample0A+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample03.brr"
  Sample05: incbin "Sample05.brr"
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"
  Sample0A: incbin "Sample0A.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD917

TrackerD917:
-
  dw .pattern0
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, 0

.pattern0_0
  !musicVolume,210;240
  !tempo,26
  !instr,!instr05
  !volume,240
  !pan,10
  !echo,%00011111,20,20
  !echoParameters,8,80,0
  !loop : dw .subD9F6 : db 2
  !end

.pattern0_1
  !volume,200
  !pan,10
  !instr,!instr03
  db 12,$07
  !g7
  !g6
  !g7
  db 6,$07
  !g6
  db 12,$07
  !g7
  db 12,$07
  !g7
  db 6,$07
  !g6
  db 12
  !g7
  !g6
  !loop : dw .subDA04 : db 3
  !end

.pattern0_2
  !volume,200
  !pan,10
  !instr,!instr06
  db 19,$7F
  !a4
  db 5
  !a4
  db 72
  !rest
  db 96,$77
  !gs4
  db 19,$7F
  !a4
  db 5
  !a4
  db 72
  !rest
  db 96,$77
  !fs4
  !end

.pattern0_3
  !volume,200
  !pan,10
  !instr,!instr06
  db 19,$7F
  !c5
  db 5
  !c5
  db 72
  !rest
  db 96,$77
  !cs5
  db 19,$7F
  !c5
  db 5
  !c5
  db 72
  !rest
  db 96,$77
  !a4
  !end

.pattern0_4
  !volume,200
  !pan,10
  !instr,!instr06
  db 19,$7F
  !e5
  db 5
  !e5
  db 72
  !rest
  db 96,$77
  !e5
  db 19,$7F
  !e5
  db 5
  !e5
  db 72
  !rest
  db 96,$77
  !d5
  !end

.pattern0_5
  !volume,200
  !pan,10
  !instr,!instr0A
  !loop : dw .subDA17 : db 4
  !end

.pattern0_6
  !volume,200
  !pan,10
  db 96
  !rest
  !rest
  !instr,!instr07
  db 12
  !rest
  db 24,$7B
  !g6
  db 7,$79
  !g5
  db 5
  !g5
  db 12
  !rest
  db 24,$7B
  !g6
  db 7,$79
  !g5
  db 5
  !g5
  db 12
  !rest
  db 24,$7B
  !g6
  db 7,$79
  !g5
  db 5
  !g5
  db 7
  !rest
  db 12,$7B
  !g6
  db 12,$79
  !g5
  db 5,$7B
  !g6
  db 7,$79
  !g5
  db 5
  !g5
  !end

.subD9F6
  db 18,$7F
  !g2
  db 12,$3F
  !g2
  db 13
  !g2
  !g2
  db 40
  !rest
  db 96
  !rest
  !end

.subDA04
  !g7
  !g6
  !g7
  db 6,$07
  !g6
  db 12,$07
  !g7
  db 12,$07
  !g7
  db 6,$07
  !g6
  db 12
  !g7
  !g6
  !end

.subDA17
  db 7,$7B
  !g4
  db 5,$73
  !g4
  db 7,$77
  !g4
  db 5,$73
  !g4
  db 7,$7F
  !g4
  db 5,$73
  !g4
  db 7,$77
  !g4
  db 5,$73
  !g4
  db 7,$7B
  !g4
  db 5,$73
  !g4
  db 7,$77
  !g4
  db 5,$73
  !g4
  db 7,$7F
  !g4
  db 5,$73
  !g4
  db 7,$77
  !g4
  db 5,$73
  !g4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
