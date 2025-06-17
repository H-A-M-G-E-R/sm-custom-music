asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr09 = $18
!instr0A = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr09,$8F,$EF,$B8,$01,$00
  db !instr0A,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample05,Sample05+1404
  dw Sample09,Sample09+27
  dw Sample0A,Sample0A+2268
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample09: incbin "Sample09.brr"
  Sample0A: incbin "Sample0A.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2422

Tracker2422:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, 0, 0, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern2_0, .pattern2_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7

.pattern0_0
  !echo,%01111111,50,50
  !echoParameters,6,72,3
  !tempo,31
  !musicVolume,200
  !end

.pattern1_0
  !instr,!instr05
  !volume,150
  !pan,5
  db 24,$7F
  !d5
  !a5
  !d6
  !a5
  !d5
  !a5
  !d6
  !a5
  !c5
  !g5
  !c6
  !g5
  !d5
  !a5
  !d6
  !rest
  !d5
  !a5
  !d6
  !a5
  !d5
  !a5
  !d6
  !a5
  !c5
  !g5
  !c6
  !g5
  !d5
  !a5
  !d6
  !rest
  !end

.pattern1_1
  !instr,!instr05
  !volume,150
  !pan,15
  db 24,$7F
  !d4
  !a4
  !d5
  !a4
  !d4
  !a4
  !d5
  !a4
  !c4
  !g4
  !c5
  !g4
  !d4
  !a4
  !d5
  !rest
  !d4
  !a4
  !d5
  !a4
  !d4
  !a4
  !d5
  !a4
  !c4
  !g4
  !c5
  !g4
  !d4
  !a4
  !d5
  !rest
  !end

.pattern1_4
  !instr,!instr04
  !volume,200
  !vibrato,24,24,64
  db 48,$7F
  !a5
  !d6
  !loop : dw .sub2684 : db 1
  db 72
  !d5
  db 12
  !f5
  !g5
  db 48
  !a5
  !d6
  !loop : dw .sub2684 : db 1
  db 96
  !d5
  !end

.pattern1_5
  !instr,!instr0A
  !volume,100
  !vibrato,24,24,72
  db 48,$7F
  !a5
  !d6
  !loop : dw .sub2684 : db 1
  db 72
  !d5
  db 12
  !f5
  !g5
  db 48
  !a5
  !d6
  !loop : dw .sub2684 : db 1
  db 96
  !d5
  !end

.pattern2_0
  db 24,$7F
  !a5
  !c5
  !f5
  !a5
  !g5
  !c5
  !e5
  !g5
  !f5
  !a4
  !d5
  !f5
  !e5
  !a4
  !cs5
  !e5
  !f5
  !a4
  !c5
  !f5
  !f5
  !a4
  !b4
  !f5
  !f5
  !as4
  !d5
  !f5
  !g5
  !c5
  !e5
  !g5
  !end

.pattern2_1
  db 24,$7F
  !a4
  !c4
  !f4
  !a4
  !g4
  !c4
  !e4
  !g4
  !f4
  !a3
  !d4
  !f4
  !e4
  !a3
  !cs4
  !e4
  !f4
  !a3
  !c4
  !f4
  !f4
  !a3
  !b3
  !f4
  !f4
  !as3
  !d4
  !f4
  !g4
  !c4
  !e4
  !g4
  !end

.pattern2_2
  !instr,!instr0A
  !volume,120
  !pan,7
  db 24,$2F
  !f5
  !f5
  !f5
  !f5
  !loop : dw .sub268D : db 2
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !g5
  !g5
  !g5
  !g5
  !end

.pattern2_3
  !instr,!instr0A
  !volume,120
  !pan,13
  db 24,$2F
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !d5
  !d5
  !d5
  !d5
  !cs5
  !cs5
  !cs5
  !cs5
  !c5
  !c5
  !c5
  !c5
  !b4
  !b4
  !b4
  !b4
  !d5
  !d5
  !d5
  !d5
  !e5
  !e5
  !e5
  !e5
  !end

.pattern2_4
  !loop : dw .sub2696 : db 1
  db 72
  !g5
  db 12
  !f5
  !g5
  !end

.pattern2_5
  !loop : dw .sub2696 : db 1
  db 96
  !g5
  !end

.pattern2_6
  !instr,!instr0A
  !volume,150
  !vibrato,24,24,96
  db 96,$7F
  !f4
  !e4
  !d4
  !cs4
  !c4
  !b3
  !as3
  !c4
  !end

.pattern2_7
  !instr,!instr09
  !volume,80
  !vibrato,24,24,48
  !transpose,12
  db 48,$7F
  !a6
  !c7
  db 96
  !g6
  db 48
  !f6
  !a6
  db 96
  !e6
  db 48
  !f6
  !a6
  db 24
  !g6
  !f6
  !d6
  !c6
  db 48
  !d6
  !f6
  db 96
  !g6
  !end

.pattern3_2
  db 24,$2F
  !f5
  !f5
  !f5
  !f5
  !loop : dw .sub268D : db 2
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !g5
  !g5
  !g5
  !g5
  !end

.pattern3_3
  db 24,$2F
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !d5
  !d5
  !d5
  !d5
  !cs5
  !cs5
  !cs5
  !cs5
  !c5
  !c5
  !c5
  !c5
  !b4
  !b4
  !b4
  !b4
  !d5
  !d5
  !d5
  !d5
  !e5
  !e5
  !e5
  !e5
  !end

.pattern3_4
  !loop : dw .sub2696 : db 1
  !g5
  !c6
  !end

.pattern3_5
  !loop : dw .sub2696 : db 1
  !g5
  !c6
  !end

.pattern3_6
  db 96,$7F
  !f4
  !e4
  !d4
  !cs4
  !c4
  !b3
  !as3
  !c4
  !end

.pattern3_7
  db 48,$7F
  !a6
  !c7
  db 96
  !g6
  db 48
  !f6
  !a6
  db 96
  !e6
  db 48
  !f6
  !a6
  db 24
  !g6
  !f6
  !d6
  !c6
  db 48
  !d6
  !f6
  !g6
  !c7
  !end

.sub2684
  db 72
  !a5
  db 24
  !f5
  !g5
  !a5
  !g5
  !f5
  !end

.sub268D
  !e5
  !e5
  !e5
  !e5
  !f5
  !f5
  !f5
  !f5
  !end

.sub2696
  db 48,$7F
  !a5
  !c6
  db 96
  !g5
  db 48
  !f5
  !a5
  db 96
  !e5
  db 48
  !f5
  !a5
  db 24
  !g5
  !f5
  !d5
  !c5
  db 48
  !d5
  !f5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
