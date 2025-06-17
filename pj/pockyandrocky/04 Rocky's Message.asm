asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr06 = $18
!instr07 = $19
!instr09 = $1A
!instr0C = $1B
!instr0D = $1C
!instr0F = $1D
!instr10 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$8F,$EB,$B8,$03,$00
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr09,$8F,$EF,$B8,$01,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0F,$8F,$E0,$B8,$07,$A0
  db !instr10,$8F,$E0,$B8,$07,$10
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample05,Sample05+1404
  dw Sample06,Sample06+450
  dw Sample07,Sample07+1584
  dw Sample09,Sample09+27
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0F,Sample0F+729
  dw Sample10,Sample10+3375
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"
  Sample09: incbin "Sample09.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker26AD

Tracker26AD:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern1
  dw .pattern3
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern2_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern2_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110111,50,50
  !echoParameters,6,72,3
  !tempo,25
  !musicVolume,200
  !end

.pattern1_0
  !instr,!instr04
  !volume,200
  !vibrato,12,24,64
  !loop : dw .sub2A0A : db 1
  !end

.pattern1_1
  !instr,!instr05
  !volume,150
  !loop : dw .sub2A0A : db 1
  !end

.pattern1_2
  !instr,!instr07
  !volume,200
  db 12,$7F
  !d3
  db 24
  !rest
  db 12
  !d3
  !c3
  db 36
  !rest
  db 12
  !b2
  db 24
  !rest
  db 12
  !b2
  !as2
  !rest
  db 24
  !as2
  db 12
  !a2
  db 6
  !rest
  !a2
  !a3
  !rest
  db 12
  !a2
  !d3
  db 6
  !rest
  !d3
  !d4
  !rest
  db 12
  !d3
  !g2
  db 6
  !rest
  !g2
  !g3
  !rest
  db 12
  !g2
  !c3
  db 6
  !c4
  !c3
  db 12
  !c3
  !c4
  !end

.pattern1_3
  !volume,255
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 36
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2A47 : db 2
  !end

.pattern1_4
  !instr,!instr06
  !volume,170
  !pan,5
  !loop : dw .sub2A52 : db 1
  db 12
  !rest
  db 6
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  db 18
  !rest
  db 6
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  !rest
  db 12
  !rest
  db 6
  !as5
  !as5
  db 12
  !rest
  db 6
  !as5
  db 18
  !rest
  db 6
  !c6
  !c6
  db 12
  !rest
  db 6
  !c6
  !rest
  !end

.pattern1_5
  !instr,!instr06
  !volume,170
  !pan,15
  db 6,$7F
  !a5
  db 30
  !rest
  db 12
  !a5
  db 6
  !g5
  db 42
  !rest
  db 6
  !f5
  db 30
  !rest
  db 12
  !f5
  db 6
  !f5
  db 18
  !rest
  db 24
  !f5
  db 12
  !rest
  db 6
  !e5
  !e5
  db 12
  !rest
  db 6
  !e5
  db 18
  !rest
  db 6
  !f5
  !f5
  db 12
  !rest
  db 6
  !f5
  !rest
  db 12
  !rest
  db 6
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  db 18
  !rest
  db 6
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  !rest
  !end

.pattern1_6
  !instr,!instr09
  !volume,100
  !vibrato,12,24,64
  !transpose,12
  !loop : dw .sub2A52 : db 1
  db 48
  !a5
  !d6
  !g5
  !c6
  !end

.pattern1_7
  !volume,255
  db 36,$75
  %percNote(!instr0F-!instr0C)
  db 12
  %percNote(!instr0F-!instr0C)
  db 48
  %percNote(!instr0F-!instr0C)
  db 36
  %percNote(!instr0F-!instr0C)
  db 12
  %percNote(!instr0F-!instr0C)
  db 24
  %percNote(!instr0F-!instr0C)
  db 12,$73
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  !loop : dw .sub2A6A : db 1
  !end

.pattern2_0
  !loop : dw .sub2A7D : db 1
  !end

.pattern2_1
  !loop : dw .sub2A7D : db 1
  !end

.pattern2_2
  db 12,$7F
  !d3
  db 6
  !rest
  !d3
  !d4
  !rest
  db 12
  !d3
  !cs3
  db 6
  !rest
  !cs3
  !cs4
  !rest
  db 12
  !cs3
  !c3
  db 6
  !rest
  !c3
  !c3
  !rest
  db 12
  !c3
  !b2
  db 6
  !b3
  !b2
  db 12
  !b2
  !b3
  !c3
  db 6
  !rest
  !c3
  !c4
  !rest
  db 12
  !c3
  !b2
  db 6
  !rest
  !b2
  !b3
  !rest
  db 12
  !b2
  !as2
  db 6
  !rest
  !as2
  !as3
  !rest
  db 12
  !as2
  !c3
  db 6
  !c4
  !c3
  db 12
  !c3
  !c4
  !end

.pattern2_3
  db 18,$7F
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2A47 : db 2
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern2_4
  db 12
  !rest
  db 6,$7F
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  db 18
  !rest
  db 6
  !cs6
  !cs6
  db 12
  !rest
  db 6
  !cs6
  !rest
  !loop : dw .sub2AB1 : db 2
  db 12
  !rest
  db 6
  !as5
  !as5
  db 12
  !rest
  db 6
  !as5
  db 18
  !rest
  db 6
  !c6
  !c6
  db 12
  !rest
  db 6
  !c6
  !rest
  !end

.pattern2_5
  db 12
  !rest
  db 6,$7F
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  db 18
  !rest
  db 6
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  !rest
  db 12
  !rest
  db 6
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  db 18
  !rest
  db 6
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  !rest
  db 12
  !rest
  db 6
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  db 18
  !rest
  db 6
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  !rest
  db 12
  !rest
  db 6
  !f5
  !f5
  db 12
  !rest
  db 6
  !f5
  db 18
  !rest
  db 6
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  !rest
  !end

.pattern2_6
  db 48,$7F
  !d6
  !cs6
  !c6
  !b5
  !c6
  !b5
  !as5
  !c6
  !end

.pattern2_7
  !loop : dw .sub2A6A : db 1
  !loop : dw .sub2AC5 : db 2
  !end

.pattern3_0
  !loop : dw .sub2ACE : db 1
  !end

.pattern3_1
  !loop : dw .sub2ACE : db 1
  !end

.pattern3_2
  db 12,$7F
  !d3
  db 6
  !rest
  !d3
  !d4
  !rest
  db 12
  !d3
  !c3
  db 6
  !rest
  !c3
  !c4
  !rest
  db 12
  !c3
  !b2
  db 6
  !rest
  !b2
  !b3
  !rest
  db 12
  !b2
  !as2
  db 6
  !as2
  !as3
  db 12
  !as2
  !as2
  !a2
  db 6
  !rest
  !a2
  !a3
  !rest
  db 12
  !a2
  !c3
  db 6
  !rest
  !c3
  !c4
  !rest
  db 12
  !c3
  !d3
  db 6
  !rest
  !d3
  !d4
  !rest
  db 12
  !d3
  !d3
  db 6
  !d4
  !d3
  db 12
  !a2
  !c3
  !end

.pattern3_4
  db 12
  !rest
  db 6,$7F
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  db 18
  !rest
  db 6
  !c6
  !c6
  db 12
  !rest
  db 6
  !c6
  !rest
  db 12
  !rest
  db 6
  !b5
  !b5
  db 12
  !rest
  db 6
  !b5
  db 18
  !rest
  db 6
  !as5
  !as5
  db 12
  !rest
  db 6
  !as5
  !rest
  db 12
  !rest
  db 6
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  db 18
  !rest
  db 6
  !c6
  !c6
  db 12
  !rest
  db 6
  !c6
  !rest
  db 12
  !rest
  db 6
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  db 18
  !rest
  db 6
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  !rest
  !end

.pattern3_5
  db 12
  !rest
  db 6,$7F
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  db 18
  !rest
  db 6
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  !rest
  db 12
  !rest
  db 6
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  db 18
  !rest
  db 6
  !f5
  !f5
  db 12
  !rest
  db 6
  !f5
  !rest
  db 12
  !rest
  db 6
  !f5
  !f5
  db 12
  !rest
  db 6
  !f5
  db 18
  !rest
  db 6
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  !rest
  db 12
  !rest
  db 6
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  db 18
  !rest
  db 6
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  !rest
  !end

.pattern3_6
  db 48,$7F
  !d6
  !c6
  !b5
  !as5
  !a5
  !c6
  db 96
  !d6
  !end

.sub2A0A
  db 6,$7F
  !d6
  !c6
  !d6
  !f6
  !d6
  !rest
  db 12
  !c6
  db 6
  !a5
  db 30
  !rest
  db 12
  !f5
  db 6
  !g5
  !f5
  !g5
  !a5
  !g5
  !rest
  db 12
  !f5
  db 6
  !d5
  db 18
  !rest
  db 12
  !a4
  !c5
  db 18
  !d5
  db 6
  !c5
  !d5
  !rest
  db 12
  !f5
  db 6
  !g5
  !rest
  !a5
  !g5
  db 12
  !f5
  !c5
  db 18
  !d5
  db 6
  !c5
  !d5
  !rest
  db 12
  !f5
  db 36
  !g5
  db 12
  !rest
  !end

.sub2A47
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.sub2A52
  db 6,$7F
  !d6
  db 30
  !rest
  db 12
  !d6
  db 6
  !c6
  db 42
  !rest
  db 6
  !b5
  db 30
  !rest
  db 12
  !b5
  db 6
  !as5
  db 18
  !rest
  db 24
  !as5
  !end

.sub2A6A
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub2A7D
  db 6,$7F
  !a5
  !rest
  !a5
  !g5
  !a5
  !rest
  db 12
  !c6
  db 36
  !g5
  db 12
  !c5
  db 6
  !f5
  !rest
  !f5
  !e5
  !f5
  !rest
  db 12
  !a5
  db 48
  !e5
  db 18
  !f5
  db 6
  !e5
  !f5
  !rest
  db 12
  !a5
  db 6
  !g5
  !rest
  !g5
  !f5
  db 12
  !d5
  !c5
  db 18
  !d5
  db 6
  !c5
  db 12
  !d5
  !f5
  db 24
  !g5
  !c6
  !end

.sub2AB1
  db 12
  !rest
  db 6
  !c6
  !c6
  db 12
  !rest
  db 6
  !c6
  db 18
  !rest
  db 6
  !b5
  !b5
  db 12
  !rest
  db 6
  !b5
  !rest
  !end

.sub2AC5
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub2ACE
  db 6,$7F
  !a5
  !rest
  !a5
  !g5
  !a5
  !rest
  db 12
  !c6
  db 36
  !g5
  db 12
  !f5
  db 6
  !g5
  !f5
  !g5
  !a5
  !g5
  !rest
  db 12
  !f5
  db 24
  !d5
  db 12
  !a4
  !c5
  db 18
  !d5
  db 6
  !c5
  !d5
  !rest
  db 12
  !f5
  db 6
  !g5
  !rest
  !a5
  !g5
  db 12
  !f5
  !c5
  db 72
  !d5
  db 24
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
