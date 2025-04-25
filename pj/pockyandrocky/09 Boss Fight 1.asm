asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr07 = $18
!instr0A = $19
!instr0C = $1A
!instr0D = $1B
!instr0E = $1C
!instr0F = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0E,$FF,$E0,$B8,$05,$80
  db !instr0F,$8F,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample05,Sample05+1404
  dw Sample07,Sample07+1584
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0E,Sample0E+2979
  dw Sample0F,Sample0F+729
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0E: incbin "Sample0E.brr"
  Sample0F: incbin "Sample0F.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2BAA

Tracker2BAA:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110011,70,70
  !echoParameters,6,72,3
  !tempo,29
  !musicVolume,200;255
  !end

.pattern1_0
  !instr,!instr04
  !volume,220
  !vibrato,12,24,64
  !loop : dw .sub2E09 : db 1
  db 16
  !e6
  db 4,$75
  !f6
  db 4,$71
  !e6
  !f6
  !e6
  db 4,$72
  !f6
  !e6
  db 4,$73
  !f6
  !e6
  db 4,$75
  !f6
  !e6
  db 4,$77
  !f6
  !e6
  db 4,$79
  !f6
  !e6
  db 4,$7B
  !f6
  !e6
  db 4,$7D
  !f6
  !e6
  db 4,$7F
  !f6
  !e6
  !end

.pattern1_1
  !instr,!instr0A
  !volume,150
  !vibrato,12,32,96
  db 24,$7F
  !e5
  db 12
  !f5
  db 60
  !rest
  db 24
  !e5
  db 12
  !f5
  db 60
  !rest
  db 12
  !e5
  !f5
  db 24
  !rest
  db 12
  !e5
  !f5
  db 24
  !rest
  !volume,30
  !dynamicVolume,72,120
  db 96
  !e5

.pattern1_2
  !instr,!instr07
  !volume,255
  !loop : dw .sub2E23 : db 1

.pattern1_3
  !volume,255
  db 96
  !rest
  !rest
  !rest
  db 64
  !rest
  db 4,$72
  %percNote(!instr0D-!instr0C)
  db 4,$73
  %percNote(!instr0D-!instr0C)
  db 4,$75
  %percNote(!instr0D-!instr0C)
  db 4,$77
  %percNote(!instr0D-!instr0C)
  db 4,$79
  %percNote(!instr0D-!instr0C)
  db 4,$7B
  %percNote(!instr0D-!instr0C)
  db 4,$7D
  %percNote(!instr0D-!instr0C)
  db 4,$7F
  %percNote(!instr0D-!instr0C)

.pattern1_4
  !instr,!instr0A
  !volume,150
  !vibrato,12,32,96
  db 24,$7F
  !b4
  db 12
  !c5
  db 60
  !rest
  db 24
  !b4
  db 12
  !c5
  db 60
  !rest
  db 12
  !b4
  !c5
  db 24
  !rest
  db 12
  !b4
  !c5
  db 24
  !rest
  !volume,30
  !dynamicVolume,72,120
  db 96
  !b4

.pattern1_5
  !instr,!instr05
  !volume,200
  !loop : dw .sub2E09 : db 1
  db 24
  !rest
  !rest
  !rest
  !rest

.pattern1_6
  !instr,!instr07
  !volume,200
  !pan,20
  !subtranspose,48
  !loop : dw .sub2E23 : db 1

.pattern1_7
  !volume,255
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub2E3D : db 3

.pattern2_0
  !volume,200
  db 12,$2F
  !a6
  !a6
  !g6
  !g6
  !a6
  !a6
  !b6
  !b6
  db 18,$7F
  !a6
  db 6
  !a6
  db 12
  !rest
  !g6
  db 6
  !a6
  db 42
  !rest
  db 12,$2F
  !a6
  !a6
  !g6
  !g6
  !a6
  !a6
  !b6
  !b6
  db 18,$7F
  !c7
  db 6
  !c7
  db 12
  !rest
  !b6
  !a6
  db 12,$2F
  !c7
  db 12,$7F
  !d7
  db 12,$2F
  !e7
  !end

.pattern2_1
  !volume,30
  !dynamicVolume,96,150
  db 96,$7F
  !a5
  !loop : dw .sub2E42 : db 1
  !dynamicVolume,96,150
  !a5
  !loop : dw .sub2E42 : db 1

.pattern2_2
  !loop : dw .sub2E47 : db 1

.pattern2_3
  !loop : dw .sub2E93 : db 1
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

.pattern2_4
  !volume,30
  !dynamicVolume,96,150
  db 96,$7F
  !e5
  !dynamicVolume,96,30
  !e5
  !dynamicVolume,96,150
  !e5
  !dynamicVolume,96,30
  !e5

.pattern2_5
  !volume,255
  db 96
  !rest
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0C)
  db 96
  !rest
  db 72
  !rest
  db 24
  %percNote(!instr0E-!instr0C)

.pattern2_6
  !loop : dw .sub2E47 : db 1

.pattern2_7
  !loop : dw .sub2EA8 : db 4

.pattern3_0
  db 12,$2F
  !d7
  !d7
  !c7
  !c7
  !d7
  !d7
  !e7
  !e7
  db 18,$7F
  !d7
  db 6
  !d7
  db 12
  !rest
  !c7
  db 6
  !d7
  db 42
  !rest
  db 12,$2F
  !d7
  !d7
  !c7
  !c7
  !d7
  !d7
  !e7
  !e7
  db 18,$7F
  !f7
  db 6
  !f7
  db 12
  !rest
  !e7
  !d7
  !rest
  db 24
  !b6
  !end

.pattern3_1
  !volume,30
  !dynamicVolume,96,150
  db 96,$7F
  !a5
  !loop : dw .sub2E42 : db 1
  !dynamicVolume,96,150
  !a5
  !loop : dw .sub2E42 : db 1

.pattern3_2
  !loop : dw .sub2EC1 : db 1

.pattern3_3
  !loop : dw .sub2E93 : db 1
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
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern3_4
  !volume,30
  !dynamicVolume,96,150
  db 96,$7F
  !f5
  !dynamicVolume,96,30
  !f5
  !dynamicVolume,96,150
  !f5
  !dynamicVolume,96,30
  !f5

.pattern3_5
  db 96
  !rest
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0C)
  db 96
  !rest
  db 72
  !rest
  db 24
  %percNote(!instr0E-!instr0C)

.pattern3_6
  !loop : dw .sub2EC1 : db 1

.pattern3_7
  !loop : dw .sub2EA8 : db 3
  db 12,$77
  %percNote(!instr0F-!instr0C)
  db 12,$73
  %percNote(!instr0F-!instr0C)
  db 12,$77
  %percNote(!instr0F-!instr0C)
  db 12,$73
  %percNote(!instr0F-!instr0C)
  db 12,$77
  %percNote(!instr0F-!instr0C)
  db 4,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 12,$77
  %percNote(!instr0F-!instr0C)
  db 12,$73
  %percNote(!instr0F-!instr0C)

.sub2E09
  db 48
  !rest
  db 12,$7F
  !e6
  !rest
  !f6
  !rest
  db 48
  !rest
  db 12
  !e6
  !rest
  !f6
  !rest
  db 24
  !rest
  db 12
  !e6
  !f6
  db 24
  !rest
  db 12
  !e6
  !f6
  !end

.sub2E23
  db 24,$7F
  !e3
  db 12
  !f3
  db 60
  !rest
  db 24
  !e3
  db 12
  !f3
  db 60
  !rest
  db 12
  !e3
  !f3
  db 24
  !rest
  db 12
  !e3
  !f3
  db 24
  !rest
  db 96
  !e2
  !end

.sub2E3D
  !rest
  !rest
  !rest
  !rest
  !end

.sub2E42
  !dynamicVolume,96,30
  !a5
  !end

.sub2E47
  db 12,$7F
  !a2
  db 12,$1F
  !a2
  db 12,$7F
  !b2
  db 12,$1F
  !b2
  db 12,$7F
  !c3
  db 12,$1F
  !c3
  db 12,$7F
  !b2
  db 12,$1F
  !b2
  db 18,$7F
  !a2
  db 6
  !a2
  db 12
  !rest
  !g2
  db 6
  !a2
  db 18
  !rest
  db 24
  !g2
  db 12
  !a2
  db 12,$1F
  !a2
  db 12,$7F
  !b2
  db 12,$1F
  !b2
  db 12,$7F
  !c3
  db 12,$1F
  !c3
  db 12,$7F
  !b2
  db 12,$1F
  !b2
  db 18,$7F
  !a2
  db 6
  !a2
  db 12
  !rest
  !g2
  db 6
  !a2
  db 18
  !rest
  db 24
  !e2
  !end

.sub2E93
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
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
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  !end

.sub2EA8
  db 12,$77
  %percNote(!instr0F-!instr0C)
  db 12,$73
  %percNote(!instr0F-!instr0C)
  db 12,$77
  %percNote(!instr0F-!instr0C)
  db 12,$73
  %percNote(!instr0F-!instr0C)
  db 12,$77
  %percNote(!instr0F-!instr0C)
  db 12,$73
  %percNote(!instr0F-!instr0C)
  db 12,$77
  %percNote(!instr0F-!instr0C)
  db 12,$73
  %percNote(!instr0F-!instr0C)
  !end

.sub2EC1
  db 12,$7F
  !d3
  db 12,$1F
  !d3
  db 12,$7F
  !e3
  db 12,$1F
  !e3
  db 12,$7F
  !f3
  db 12,$1F
  !f3
  db 12,$7F
  !e3
  db 12,$1F
  !e3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12
  !rest
  !c3
  db 6
  !d3
  db 18
  !rest
  db 24
  !c3
  db 12
  !d3
  db 12,$1F
  !d3
  db 12,$7F
  !e3
  db 12,$1F
  !e3
  db 12,$7F
  !f3
  db 12,$1F
  !f3
  db 12,$7F
  !e3
  db 12,$1F
  !e3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12
  !rest
  !c3
  !d2
  db 12,$2F
  !d3
  db 12,$7F
  !e2
  db 12,$2F
  !e3
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
