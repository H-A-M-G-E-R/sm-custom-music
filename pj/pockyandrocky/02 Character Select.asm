asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr0A = $18
!instr0E = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0E,$FF,$E0,$B8,$05,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample05,Sample05+1404
  dw Sample0A,Sample0A+2268
  dw Sample0E,Sample0E+2979
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0E: incbin "Sample0E.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker275E

Tracker275E:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0

.pattern0_0
  !percBase,!instr0E
  !echo,%11111111,70,70
  !echoParameters,6,72,3
  !tempo,23
  !musicVolume,200;255
  !end

.pattern1_0
  !instr,!instr04
  !volume,200
  !transpose,244
  !vibrato,12,24,64
  !loop : dw .sub287D : db 2
  !end

.pattern1_1
  !instr,!instr05
  !volume,150
  !pan,5
  db 12,$2F
  !a5
  !c6
  !e6
  !g6
  !a5
  !c6
  !e6
  !g6
  !loop : dw .sub288F : db 2
  !a5
  !c6
  !e6
  !g6
  !a6
  !g6
  !e6
  !c6

.pattern1_2
  !instr,!instr0A
  !volume,150
  db 96,$7F
  !a4
  !tie
  !as4
  !tie

.pattern1_3
  !volume,255
  db 96
  !rest
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0E)
  db 96
  !rest
  db 72
  !rest
  db 24
  %percNote(!instr0E-!instr0E)

.pattern1_4
  !instr,!instr0A
  !volume,150
  db 96,$7F
  !a3
  !tie
  !as3
  !tie

.pattern1_5
  !instr,!instr05
  !volume,150
  !pan,15
  db 12,$2F
  !a4
  !c5
  !e5
  !g5
  !a4
  !c5
  !e5
  !g5
  !loop : dw .sub2898 : db 2
  !a4
  !c5
  !e5
  !g5
  !a5
  !g5
  !e5
  !c5

.pattern2_0
  !loop : dw .sub287D : db 1
  db 36,$7F
  !a6
  db 12
  !c7
  db 48,$6F
  !d7
  db 12,$7F
  !d7
  !c7
  !a6
  !c7
  db 48,$6F
  !d7
  !end

.pattern2_1
  db 12,$2F
  !a5
  !c6
  !e6
  !g6
  !a5
  !c6
  !e6
  !g6
  !loop : dw .sub288F : db 2
  db 12,$7F
  !a5
  !c6
  !e6
  !g6
  db 6
  !a4
  !c5
  !e5
  !g5
  !a5
  !c6
  !e6
  !g6

.pattern2_2
  db 96,$7F
  !a4
  !tie
  !as4
  !tie

.pattern2_3
  db 96
  !rest
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0E)
  db 96
  !rest
  db 72
  !rest
  db 24
  %percNote(!instr0E-!instr0E)

.pattern2_4
  db 96,$7F
  !a3
  !a3
  !as3
  !as3

.pattern2_5
  db 12,$2F
  !a4
  !c5
  !e5
  !g5
  !a4
  !c5
  !e5
  !g5
  !loop : dw .sub2898 : db 2
  db 12,$7F
  !a4
  !c5
  !e5
  !g5
  db 6
  !a3
  !c4
  !e4
  !g4
  !a4
  !c5
  !e5
  !g5

.sub287D
  db 36,$7F
  !e6
  db 12
  !g6
  db 48,$6F
  !a6
  db 12,$7F
  !a6
  !g6
  !e6
  !g6
  db 48,$6F
  !a6
  !end

.sub288F
  !a5
  !c6
  !e6
  !g6
  !a5
  !c6
  !e6
  !g6
  !end

.sub2898
  !a4
  !c5
  !e5
  !g5
  !a4
  !c5
  !e5
  !g5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
