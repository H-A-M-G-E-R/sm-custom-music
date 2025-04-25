asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr06 = $18
!instr0A = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$8F,$EB,$B8,$03,$00
  db !instr0A,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample05,Sample05+1404
  dw Sample06,Sample06+450
  dw Sample0A,Sample0A+2268
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample06: incbin "Sample06.brr"
  Sample0A: incbin "Sample0A.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker3C55

Tracker3C55:
  dw .pattern0
  dw .pattern1
  dw $0000

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0

.pattern0_0
  !echo,%00111111,50,50
  !echoParameters,6,72,3
  !tempo,25
  !musicVolume,200;255
  !end

.pattern1_0
  !instr,!instr04
  !volume,200
  !vibrato,12,24,64
  db 96,$7F
  !a4
  db 24
  !a4
  !d5
  !e5
  !g5
  !dynamicMusicVolume,192,40
  db 96
  !a5
  !tie
  !end

.pattern1_1
  !instr,!instr05
  !volume,120
  !pan,0
  !loop : dw .sub3CE1 : db 1

.pattern1_2
  !instr,!instr06
  !volume,255
  db 96,$7F
  !a2
  !g2
  !f2
  !tie

.pattern1_3
  !instr,!instr0A
  !volume,90
  !vibrato,12,32,72
  db 96,$7F
  !a5
  db 24
  !a5
  !d6
  !e6
  !g6
  db 96
  !a6
  !tie

.pattern1_4
  !instr,!instr05
  !volume,120
  !pan,20
  !subtranspose,24
  !loop : dw .sub3CE1 : db 1

.pattern1_5
  !instr,!instr04
  !volume,255
  !subtranspose,48
  db 96,$7F
  !a2
  !g2
  !f2
  !tie

.sub3CE1
  db 12,$7F
  !a5
  !g5
  !a5
  !c6
  !a5
  !rest
  !g5
  !e5
  !d5
  !c5
  !d5
  !e5
  !d5
  !rest
  !b4
  !g4
  db 6
  !a4
  !c5
  !f5
  !a5
  db 72
  !rest
  db 24
  !rest
  !rest
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
