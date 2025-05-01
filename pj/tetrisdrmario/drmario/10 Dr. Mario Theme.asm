asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr05 = $16
!instr07 = $17
!instr09 = $18
!instr0A = $19
!instr0E = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr09,$F8,$E1,$B8,$03,$00
  db !instr0A,$FF,$FD,$B8,$06,$F0
  db !instr0E,$FF,$E1,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample07,Sample07+1971
  dw Sample09,Sample09+27
  dw Sample0A,Sample0A+27
  dw Sample0E,Sample0E+3213
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample09: incbin "Sample09.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0E: incbin "Sample0E.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerE644

TrackerE644:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0

.pattern0_0
  !musicVolume,210;240
  !musicTranspose,2
  !tempo,30
  !instr,!instr0E
  !volume,220
  !pan,10
  !vibrato,12,20,100
  !echo,%00001111,20,20
  !echoParameters,4,80,0
  db 24,$7F
  !b6
  !b6
  !b6
  !rest
  !loop : dw .subE9C5 : db 1
  db 18
  !rest
  db 6
  !c7
  db 18
  !rest
  db 6
  !c7
  db 18
  !d7
  db 6
  !d7
  db 24
  !d7
  !b6
  !b6
  !g6
  !rest
  !loop : dw .subE9C5 : db 1
  db 96
  !rest
  !end

.pattern0_1
  !volume,200
  !pan,10
  !instr,!instr09
  !vibrato,0,40,60
  db 96
  !rest
  !loop : dw .subE9D8 : db 7

.pattern0_2
  !instr,!instr05
  !volume,240
  !pan,10
  !loop : dw .subE9DA : db 1
  !rest
  !rest
  db 18
  !rest
  db 6,$7F
  !d3
  db 18
  !c3
  db 6
  !rest
  db 18
  !b2
  db 6
  !rest
  db 18
  !a2
  db 6
  !rest

.pattern0_3
  !volume,200
  !pan,10
  !instr,!instr07
  !loop : dw .subE9DA : db 1
  !rest
  !rest
  db 64
  !rest
  db 8,$7F
  !g4
  db 24
  !g5

.pattern0_4
  !volume,200
  !pan,10
  !instr,!instr0A
  db 24
  !rest
  db 48,$7F
  !c5
  db 24
  !c5
  !loop : dw .subE9E1 : db 7

.pattern1_0
  !loop : dw .subE9E7 : db 1
  db 18
  !rest
  db 6
  !g6
  db 18
  !rest
  db 6
  !e7
  db 18
  !d7
  db 6
  !c7
  db 18
  !b6
  db 6
  !a6
  db 48
  !g6
  !rest
  db 96
  !rest
  !end

.pattern1_1
  !loop : dw .subE9DA : db 1
  !rest
  db 48,$17
  !b6
  !g6
  !c7
  !a6

.pattern1_2
  !loop : dw .subEA21 : db 1
  !loop : dw .subEA30 : db 2
  !g2
  !b2
  !e3
  !as2
  !a2
  !ds3
  !d3
  !gs2

.pattern1_3
  db 24
  !rest
  db 16,$7B
  !g6
  db 32
  !g6
  db 24,$7F
  !g5
  !loop : dw .subEA3D : db 6
  db 16
  !rest
  db 8,$7B
  !g6
  db 24,$7F
  !g5
  db 4,$7B
  !g6
  !g6
  db 8
  !g6
  !g6
  !g6
  db 8,$7F
  !g5
  !g5

.pattern1_4
  db 16,$73
  !c5
  db 8
  !c5
  db 16,$7F
  !c5
  db 8,$73
  !c5
  db 16
  !c5
  db 8
  !c5
  db 16,$7F
  !c5
  db 8,$73
  !c5
  !loop : dw .subEA47 : db 7

.pattern2_0
  !loop : dw .subE9E7 : db 1
  db 18
  !rest
  db 6
  !g6
  db 18
  !rest
  db 6
  !g6
  db 18
  !fs6
  db 6
  !g6
  db 18
  !a6
  db 6
  !fs6
  db 96
  !g6
  !rest
  !end

.pattern2_1
  !loop : dw .subE9DA : db 1
  !rest
  db 48,$17
  !b6
  !c7
  !cs7
  !d7

.pattern2_2
  !loop : dw .subEA21 : db 1
  !loop : dw .subEA30 : db 1
  !g2
  !d3
  !b2
  !g2
  !c3
  !e3
  !d3
  !fs2
  !g2
  db 18
  !g2
  db 6
  !g3
  db 24
  !a2
  db 18
  !a2
  db 6
  !a3
  db 24
  !as2
  db 18
  !as2
  db 6
  !as3
  db 24
  !b2
  db 18
  !b2
  db 6
  !b3

.pattern2_3
  !loop : dw .subEA5C : db 4

.pattern2_4
  db 16,$73
  !c5
  db 8
  !c5
  db 16,$7F
  !c5
  db 8,$73
  !c5
  db 16
  !c5
  db 8
  !c5
  db 16,$7F
  !c5
  db 8,$73
  !c5
  !loop : dw .subEA47 : db 7

.pattern3_0
  db 18
  !rest
  db 6,$7F
  !g7
  db 24
  !rest
  !e7
  !c7
  !c7
  db 18
  !d7
  db 6
  !e7
  db 48
  !rest
  db 18
  !rest
  db 6
  !b6
  db 24
  !rest
  !b6
  !c7
  !d7
  db 72
  !rest
  db 18
  !rest
  db 6
  !g7
  db 24
  !rest
  !e7
  !c7
  !c7
  db 18
  !d7
  db 6
  !e7
  db 48
  !rest
  db 16
  !d7
  !d7
  !d7
  !d7
  !d7
  !d7
  db 48
  !d7
  !rest
  !end

.pattern3_1
  db 24
  !rest
  db 24,$37
  !g6
  !a6
  !g6
  !rest
  !g6
  !a6
  !g6
  !rest
  !d6
  !e6
  !d6
  !rest
  !d6
  !e6
  !d6
  !rest
  !g6
  !a6
  !g6
  !rest
  !g6
  !a6
  !g6
  db 96
  !rest
  db 16
  !c6
  !d6
  !e6
  !fs6
  !gs6
  !as6

.pattern3_2
  db 24,$7F
  !c2
  !e2
  db 18
  !g2
  db 6
  !c2
  db 18
  !a2
  db 6
  !c2
  db 18
  !as2
  db 6
  !c2
  db 18
  !a2
  db 6
  !c2
  db 18
  !g2
  db 6
  !c2
  db 18
  !e2
  db 6
  !c2
  db 24
  !g2
  !b2
  db 18
  !d3
  db 6
  !g2
  db 18
  !e3
  db 6
  !g2
  db 18
  !f3
  db 6
  !g2
  db 18
  !e3
  db 6
  !g2
  db 18
  !d3
  db 6
  !g2
  db 18
  !b2
  db 6
  !g2
  db 18
  !c2
  db 6
  !c2
  db 24
  !e2
  db 18
  !g2
  db 6
  !c2
  db 18
  !a2
  db 6
  !c2
  db 18
  !as2
  db 6
  !c2
  db 18
  !a2
  db 6
  !c2
  db 18
  !g2
  db 6
  !c2
  db 18
  !e2
  db 6
  !c2
  db 18
  !d3
  db 6
  !d2
  db 24
  !fs2
  !a2
  !fs2
  db 72
  !as2
  db 24
  !rest

.pattern3_3
  db 24
  !rest
  db 48,$7F
  !g4
  db 16
  !g4
  db 8
  !g5
  !loop : dw .subEA74 : db 5
  db 16
  !g6
  !g6
  !g6
  !g5
  !g5
  !g5
  !dynamicVolume,48,100
  db 6,$7B
  !g6
  db 6,$7F
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !dynamicVolume,48,200
  db 4
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5

.pattern3_4
  db 16,$73
  !c5
  db 8
  !c5
  db 16,$7F
  !c5
  db 8,$73
  !c5
  db 16
  !c5
  db 8
  !c5
  db 16,$7F
  !c5
  db 8,$73
  !c5
  !loop : dw .subEA47 : db 5
  db 96,$7F
  !c5
  !rest

.pattern4_0
  db 24,$7F
  !b6
  db 18
  !d7
  db 6
  !g6
  db 48
  !rest
  db 18
  !rest
  db 6
  !a6
  db 18
  !rest
  db 6
  !g6
  db 18
  !a6
  db 6
  !b6
  db 18
  !c7
  db 6
  !d7
  db 24
  !b6
  db 18
  !g6
  db 6
  !d6
  db 48
  !rest
  db 18
  !rest
  db 6
  !a6
  db 18
  !rest
  db 6
  !g6
  db 18
  !a6
  db 6
  !b6
  db 18
  !c7
  db 6
  !d7
  db 24
  !b6
  !d7
  !g6
  !rest
  db 18
  !rest
  db 6
  !g6
  db 18
  !rest
  db 6
  !g6
  db 18
  !fs6
  db 6
  !g6
  db 18
  !a6
  db 6
  !fs6
  db 72
  !g6
  db 24
  !rest
  db 96
  !rest
  !end

.pattern4_1
  !loop : dw .subE9DA : db 1
  !rest
  !rest
  !rest

.pattern4_2
  !loop : dw .subEA21 : db 1
  !loop : dw .subEA30 : db 2
  !f2
  !f2
  !f2
  !f2
  db 8
  !c2
  !c2
  !c2
  !c2
  !c2
  !c2
  !c2
  !c2
  !c2
  db 24
  !c2

.pattern4_3
  db 24
  !rest
  db 16,$7B
  !g6
  db 32
  !g6
  db 16,$7F
  !g5
  db 8
  !g4
  !loop : dw .subEA7D : db 3
  !g4
  !g4
  !g4
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  db 24
  !g6

.pattern4_4
  db 16,$73
  !c5
  db 8
  !c5
  db 16,$7F
  !c5
  db 8,$73
  !c5
  db 16
  !c5
  db 8
  !c5
  db 16,$7F
  !c5
  db 8,$73
  !c5
  !loop : dw .subEA47 : db 6
  db 16
  !c5
  db 8
  !c5
  db 16,$7F
  !c5
  db 8,$73
  !c5
  db 16
  !c5
  db 8
  !c5
  db 24,$7F
  !c5

.subE9C5
  db 18
  !rest
  db 6
  !c7
  db 18
  !rest
  db 6
  !c7
  db 18
  !d7
  db 6
  !d7
  db 24
  !d7
  !b6
  !c7
  !b6
  !rest
  !end

.subE9D8
  !rest
  !end

.subE9DA
  db 96
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.subE9E1
  !rest
  db 48
  !c5
  db 24
  !c5
  !end

.subE9E7
  db 24,$7F
  !b6
  db 18
  !d7
  db 6
  !g6
  db 48
  !rest
  db 18
  !rest
  db 6
  !e7
  db 18
  !rest
  db 6
  !e7
  db 18
  !d7
  db 6
  !c7
  db 18
  !b6
  db 6
  !a6
  db 24
  !b6
  db 18
  !d7
  db 6
  !g6
  db 48
  !rest
  db 18
  !rest
  db 6
  !g6
  db 18
  !rest
  db 6
  !g6
  db 18
  !fs6
  db 6
  !g6
  db 18
  !a6
  db 6
  !g6
  db 24
  !b6
  db 18
  !d7
  db 6
  !g6
  db 48
  !rest
  !end

.subEA21
  db 24,$7F
  !g2
  !b2
  !e2
  !g2
  db 18
  !c2
  db 6
  !c2
  db 24
  !e2
  !d2
  !fs2
  !end

.subEA30
  !g2
  !b2
  !e2
  !g2
  db 18
  !c2
  db 6
  !c2
  db 24
  !e2
  !d2
  !fs2
  !end

.subEA3D
  !rest
  db 16,$7B
  !g6
  db 32
  !g6
  db 24,$7F
  !g5
  !end

.subEA47
  db 16
  !c5
  db 8
  !c5
  db 16,$7F
  !c5
  db 8,$73
  !c5
  db 16
  !c5
  db 8
  !c5
  db 16,$7F
  !c5
  db 8,$73
  !c5
  !end

.subEA5C
  db 24
  !rest
  db 16,$7B
  !g6
  db 32
  !g6
  db 24,$7F
  !g5
  !rest
  db 16,$7B
  !g6
  db 24
  !g6
  db 8,$7F
  !g5
  db 16
  !g4
  db 8
  !g4
  !end

.subEA74
  db 24
  !rest
  db 48
  !g4
  db 16
  !g4
  db 8
  !g5
  !end

.subEA7D
  db 24
  !rest
  db 16,$7B
  !g6
  db 32
  !g6
  db 24,$7F
  !g5
  !rest
  db 16,$7B
  !g6
  db 32
  !g6
  db 16,$7F
  !g5
  db 8
  !g4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
