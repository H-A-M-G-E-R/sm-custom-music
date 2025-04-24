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
!instr10 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0E,$FF,$E0,$B8,$05,$80
  db !instr0F,$8F,$E0,$B8,$07,$A0
  db !instr10,$8F,$E0,$B8,$07,$10
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
  dw Sample10,Sample10+3375
endspcblock

spcblock $B210-($6E00-!p_sampleData) nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0E: incbin "Sample0E.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2AFF

Tracker2AFF:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, .pattern4_6, .pattern4_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110111,50,50
  !echoParameters,6,72,3
  !tempo,28
  !musicVolume,200;255
  !end

.pattern1_0
  !instr,!instr04
  !volume,200
  !vibrato,12,24,96
  db 12,$7F
  !d6
  !rest
  !e6
  !rest
  !end

.pattern1_1
  !instr,!instr0A
  !vibrato,12,36,128
  !pan,8
  !volume,150
  db 12,$7F
  !d6
  db 12,$75
  !d6
  db 12,$7F
  !e6
  db 12,$75
  !e6

.pattern1_2
  !instr,!instr07
  !volume,200
  db 12,$7F
  !e2
  !rest
  db 24
  !e3

.pattern1_3
  !volume,255
  db 24,$7F
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern1_4
  !instr,!instr0A
  !vibrato,12,36,128
  !pan,12
  !volume,150
  db 12,$7F
  !d5
  db 12,$75
  !d5
  db 12,$7F
  !e5
  db 12,$75
  !e5

.pattern1_5
  !instr,!instr05
  !volume,150
  db 24
  !rest
  !rest

.pattern1_6
  !volume,255
  db 24
  !rest
  !rest

.pattern1_7
  !volume,255
  db 24,$75
  %percNote(!instr10-!instr0C)
  %percNote(!instr10-!instr0C)

.pattern2_0
  db 48,$7F
  !e6
  db 12
  !f6
  db 36
  !rest
  db 48
  !e6
  db 12
  !d6
  db 36
  !rest
  db 12
  !e6
  !rest
  !f6
  !rest
  !e6
  !rest
  !d6
  !rest
  db 96
  !cs6
  !end

.pattern2_1
  !volume,50
  !dynamicVolume,48,150
  db 48,$7F
  !e5
  db 12
  !f5
  db 36
  !rest
  !volume,50
  !dynamicVolume,48,150
  db 48
  !e5
  db 12
  !d5
  db 36
  !rest
  !volume,50
  !dynamicVolume,24,150
  db 24
  !e5
  !volume,50
  !dynamicVolume,24,150
  !f5
  !volume,50
  !dynamicVolume,24,150
  !e5
  !volume,50
  !dynamicVolume,24,150
  !d5
  !volume,50
  !dynamicVolume,48,150
  db 96
  !cs5

.pattern2_2
  db 18,$7F
  !a2
  db 6
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  !as2
  db 36
  !rest
  db 18
  !a2
  db 6
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  !g2
  db 36
  !rest
  db 12
  !a2
  db 6,$2F
  !a2
  !a2
  db 12,$7F
  !as2
  db 6,$2F
  !as2
  !as2
  db 12,$7F
  !a2
  db 6,$2F
  !a2
  !a2
  db 12,$7F
  !g2
  db 6,$2F
  !g2
  !g2
  db 12,$7F
  !fs2
  db 6,$2F
  !fs2
  !fs2
  db 12
  !fs3
  db 6
  !fs2
  !fs2
  db 12,$7F
  !fs2
  db 6
  !fs3
  !fs2
  db 12
  !fs3
  !fs2

.pattern2_3
  db 18,$7F
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 48
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 48
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern2_4
  !volume,50
  !dynamicVolume,48,120
  db 48,$7F
  !a4
  db 12
  !as4
  db 36
  !rest
  !volume,50
  !dynamicVolume,48,120
  db 48
  !a4
  db 12
  !g4
  db 36
  !rest
  !volume,50
  !dynamicVolume,24,150
  db 24
  !a4
  !volume,50
  !dynamicVolume,24,150
  !as4
  !volume,50
  !dynamicVolume,24,150
  !a4
  !volume,50
  !dynamicVolume,24,150
  !g4
  !volume,50
  !dynamicVolume,48,120
  db 96
  !fs4

.pattern2_5
  db 96
  !rest
  !rest
  !rest
  db 24
  !rest
  db 6,$7F
  !fs5
  !cs6
  !fs6
  db 6,$70
  !fs6
  db 6,$79
  !fs5
  !cs6
  !fs6
  db 6,$70
  !fs6
  db 6,$75
  !fs5
  !cs6
  !fs6
  db 6,$70
  !fs6

.pattern2_6
  !loop : dw .sub2F82 : db 1
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest

.pattern2_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 36
  !rest
  db 12
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 36
  !rest
  db 12
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

.pattern3_0
  db 48,$7F
  !e6
  db 12
  !f6
  db 36
  !rest
  db 48
  !e6
  db 12
  !d6
  !rest
  db 6
  !a5
  !b5
  !c6
  !d6
  db 12
  !e6
  !rest
  !d6
  !rest
  !e6
  !rest
  !f6
  !rest
  !g6
  !rest
  !f6
  !rest
  !g6
  !rest
  !gs6
  !rest
  !end

.pattern3_1
  !volume,50
  !dynamicVolume,48,150
  db 48,$7F
  !e5
  !volume,50
  !dynamicVolume,48,150
  !f5
  !volume,50
  !dynamicVolume,48,150
  !e5
  !volume,50
  !dynamicVolume,48,150
  !d5
  !volume,50
  !dynamicVolume,24,150
  db 24
  !e5
  !volume,50
  !dynamicVolume,24,150
  !d5
  !volume,50
  !dynamicVolume,24,150
  !e5
  !volume,50
  !dynamicVolume,24,150
  !f5
  !volume,50
  !dynamicVolume,24,150
  !g5
  !volume,50
  !dynamicVolume,24,150
  !f5
  !volume,50
  !dynamicVolume,24,150
  !g5
  !volume,50
  !dynamicVolume,24,150
  !gs5

.pattern3_2
  db 18,$7F
  !a2
  db 6
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  !as2
  db 6,$2F
  !as2
  !as2
  db 6,$7F
  !as3
  db 6,$2F
  !as2
  db 12,$7F
  !as2
  db 18
  !a2
  db 6
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  !g2
  db 6,$2F
  !g2
  !g2
  db 6,$7F
  !g3
  db 6,$2F
  !g2
  db 6,$7F
  !g2
  !gs2
  db 12
  !a2
  db 6,$2F
  !a2
  !a2
  db 12,$7F
  !g2
  db 6,$2F
  !g2
  !g2
  db 12,$7F
  !a2
  db 6,$2F
  !a2
  !a2
  db 12,$7F
  !as2
  db 6,$2F
  !as2
  !as2
  db 12,$7F
  !c3
  db 6,$2F
  !c3
  !c3
  db 12,$7F
  !as2
  db 6,$2F
  !as2
  !as2
  db 12,$7F
  !c3
  db 6
  !c4
  db 6,$2F
  !c3
  db 12,$7F
  !cs3
  db 6
  !cs4
  db 6,$2F
  !cs3

.pattern3_3
  db 18,$7F
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2F8C : db 2
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern3_4
  !volume,50
  !dynamicVolume,48,150
  db 48,$7F
  !a4
  !volume,50
  !dynamicVolume,48,150
  !as4
  !volume,50
  !dynamicVolume,48,150
  !a4
  !volume,50
  !dynamicVolume,48,150
  !g4
  !volume,50
  !dynamicVolume,24,150
  db 24
  !a4
  !volume,50
  !dynamicVolume,24,150
  !g4
  !volume,50
  !dynamicVolume,24,150
  !a4
  !volume,50
  !dynamicVolume,24,150
  !as4
  !volume,50
  !dynamicVolume,24,150
  !c5
  !volume,50
  !dynamicVolume,24,150
  !as4
  !volume,50
  !dynamicVolume,24,150
  !c5
  !volume,50
  !dynamicVolume,24,150
  !cs5

.pattern3_5
  db 96
  !rest
  !rest
  !rest
  db 48
  !rest
  db 6,$79
  !g4
  !as4
  db 6,$7B
  !d5
  !g5
  db 6,$7D
  !gs5
  !c6
  db 6,$7F
  !ds6
  !gs6

.pattern3_6
  !loop : dw .sub2F82 : db 1
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest

.pattern3_7
  !loop : dw .sub2F98 : db 1
  !loop : dw .sub2FAB : db 2

.pattern4_0
  db 48,$7F
  !g6
  db 12
  !gs6
  db 36
  !rest
  db 48
  !g6
  db 12
  !f6
  db 36
  !rest
  db 12
  !g6
  !rest
  !gs6
  !rest
  !g6
  !rest
  !f6
  !rest
  !end

.pattern4_1
  !volume,50
  !dynamicVolume,48,150
  db 48,$7F
  !g5
  !volume,50
  !dynamicVolume,48,150
  !gs5
  !volume,50
  !dynamicVolume,48,150
  !g5
  !volume,50
  !dynamicVolume,48,150
  !f5
  !volume,50
  !dynamicVolume,24,150
  db 24
  !g5
  !volume,50
  !dynamicVolume,24,150
  !gs5
  !volume,50
  !dynamicVolume,24,150
  !g5
  !volume,50
  !dynamicVolume,24,150
  !f5

.pattern4_2
  db 18,$7F
  !c3
  db 6
  !c3
  db 12,$2F
  !c4
  db 12,$7F
  !c3
  !cs3
  db 6,$2F
  !cs3
  !cs3
  db 6,$7F
  !cs4
  db 6,$2F
  !cs3
  db 12,$7F
  !cs3
  db 18
  !c3
  db 6
  !c3
  db 12,$2F
  !c4
  db 12,$7F
  !c3
  !as2
  db 6,$2F
  !as2
  !as2
  db 6,$7F
  !as3
  db 6,$2F
  !as2
  db 6,$7F
  !as2
  !b2
  db 12
  !c3
  db 6,$2F
  !c3
  !c3
  db 12,$7F
  !cs3
  db 6,$2F
  !cs3
  !cs3
  db 12,$7F
  !c3
  db 6,$2F
  !c3
  !c3
  db 24,$7F
  !as2

.pattern4_3
  db 18,$7F
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)

.pattern4_4
  !volume,50
  !dynamicVolume,48,150
  db 48,$7F
  !c5
  !volume,50
  !dynamicVolume,48,150
  !cs5
  !volume,50
  !dynamicVolume,48,150
  !c5
  !volume,50
  !dynamicVolume,48,150
  !as4
  !volume,50
  !dynamicVolume,24,150
  db 24
  !c5
  !volume,50
  !dynamicVolume,24,150
  !cs5
  !volume,50
  !dynamicVolume,24,150
  !c5
  !volume,50
  !dynamicVolume,24,150
  !as4

.pattern4_6
  !loop : dw .sub2F82 : db 1
  db 72
  !rest
  db 24
  %percNote(!instr0E-!instr0C)

.pattern4_7
  !loop : dw .sub2F98 : db 1
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 48
  !rest

.sub2F82
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0C)
  db 72
  !rest
  db 24
  %percNote(!instr0E-!instr0C)
  !end

.sub2F8C
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !end

.sub2F98
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
  %percNote(!instr10-!instr0C)
  !end

.sub2FAB
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
