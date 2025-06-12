asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr06 = $17
!instr07 = $18
!instr09 = $19
!instr0A = $1A
!instr0C = $1B
!instr0D = $1C
!instr0F = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr06,$8F,$EB,$B8,$03,$00
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr09,$8F,$EF,$B8,$01,$00
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0F,$8F,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample06,Sample06+450
  dw Sample07,Sample07+1584
  dw Sample09,Sample09+27
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0F,Sample0F+729
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"
  Sample09: incbin "Sample09.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0F: incbin "Sample0F.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2EF3

Tracker2EF3:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw 0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern6: dw 0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, .pattern6_6, .pattern6_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110111,70,70
  !echoParameters,6,72,3
  !musicVolume,200;255
  !tempo,27
  !end

.pattern1_0
  !instr,!instr04
  !volume,165
  !vibrato,12,24,96
  !loop : dw .sub3544 : db 1
  !end

.pattern1_1
  !instr,!instr09
  !volume,132
  !vibrato,12,24,96
  !loop : dw .sub3544 : db 1
  !end

.pattern1_2
  !instr,!instr07
  !volume,225
  db 12,$7F
  !a2
  db 12,$2F
  !a2
  !a2
  db 6,$7F
  !a2
  db 12
  !g2
  db 6
  !g3
  db 12,$2F
  !g2
  !g2
  db 12,$7F
  !g2
  !a2
  db 12,$2F
  !a2
  !a2
  db 12,$7F
  !a2
  db 6
  !g2
  !g3
  db 12,$2F
  !g2
  !e2
  db 12,$7F
  !g2
  !a2
  db 12,$2F
  !a2
  !a2
  db 6,$7F
  !a2
  db 12
  !g2
  db 6
  !g3
  db 12,$2F
  !g2
  !g2
  db 12,$7F
  !g2
  !f2
  db 12,$2F
  !f2
  !f2
  db 12,$7F
  !f2
  db 6
  !e2
  !e3
  db 12,$2F
  !e2
  !g2
  db 12,$7F
  !e2
  !end

.pattern1_3
  !volume,255
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 6,$7B
  %percNote(!instr0D-!instr0C)
  db 6,$7D
  %percNote(!instr0D-!instr0C)
  db 6,$7F
  %percNote(!instr0D-!instr0C)
  !end

.pattern1_4
  !instr,!instr0A
  !vibrato,12,30,96
  !volume,120
  !dynamicVolume,64,30
  db 42,$7F
  !a6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 48
  !a6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !c7
  !volume,120
  !dynamicVolume,64,30
  !b6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !a6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !a6
  !volume,120
  !dynamicVolume,64,30
  db 30
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !e6
  !end

.pattern1_5
  !instr,!instr0A
  !vibrato,12,30,96
  !pan,20
  !volume,120
  !dynamicVolume,64,30
  db 42,$7F
  !e6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 48
  !e6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !g6
  !volume,120
  !dynamicVolume,64,30
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !e6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !f6
  !volume,120
  !dynamicVolume,64,30
  db 30
  !e6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !b5
  !end

.pattern1_6
  !instr,!instr0A
  !vibrato,12,30,96
  !pan,0
  !volume,120
  !dynamicVolume,64,30
  db 42,$7F
  !c6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !b5
  !volume,120
  !dynamicVolume,64,30
  db 48
  !c6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !e6
  !volume,120
  !dynamicVolume,64,30
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !c6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !b5
  !volume,120
  !dynamicVolume,64,30
  db 42
  !c6
  !volume,120
  !dynamicVolume,64,30
  db 30
  !b5
  !volume,120
  !dynamicVolume,64,30
  db 24
  !g5
  !end

.pattern1_7
  !volume,255
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub3558 : db 3
  !end

.pattern2_0
  !loop : dw .sub3561 : db 1
  !end

.pattern2_1
  !loop : dw .sub3561 : db 1
  !end

.pattern2_2
  db 12,$7F
  !f2
  db 12,$2F
  !f2
  !f2
  db 6,$7F
  !f2
  db 12
  !g2
  db 6
  !g3
  db 12,$2F
  !g2
  !g2
  db 12,$7F
  !g2
  !e2
  db 12,$2F
  !e2
  !e2
  db 6,$7F
  !e2
  db 12
  !a2
  db 6
  !a3
  db 12,$2F
  !a2
  !a2
  db 12,$7F
  !g2
  !d2
  db 12,$2F
  !d2
  !d2
  db 6,$7F
  !d2
  db 12
  !d2
  db 6
  !d3
  db 12,$2F
  !d2
  !d2
  db 12,$7F
  !d2
  !e2
  db 12,$2F
  !e2
  !e2
  db 6,$7F
  !e2
  db 18
  !g2
  db 12,$2F
  !g3
  db 12,$7F
  !e2
  db 12,$2F
  !e3
  !end

.pattern2_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub3584 : db 2
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern2_4
  !volume,120
  !dynamicVolume,64,30
  db 42,$7F
  !f6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !gs6
  !volume,120
  !dynamicVolume,64,30
  db 30
  !a6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !f6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !f6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 30
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !g6
  !end

.pattern2_5
  !volume,120
  !dynamicVolume,64,30
  db 42,$7F
  !c6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !e6
  !volume,120
  !dynamicVolume,64,30
  db 30
  !e6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 30
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !d6
  !end

.pattern2_6
  !volume,120
  !dynamicVolume,64,30
  db 42,$7F
  !a5
  !volume,120
  !dynamicVolume,64,30
  db 54
  !b5
  !volume,120
  !dynamicVolume,64,30
  db 42
  !b5
  !volume,120
  !dynamicVolume,64,30
  db 30
  !c6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !b5
  !volume,120
  !dynamicVolume,64,30
  db 42
  !a5
  !volume,120
  !dynamicVolume,64,30
  db 54
  !a5
  !volume,120
  !dynamicVolume,64,30
  db 42
  !b5
  !volume,120
  !dynamicVolume,64,30
  db 30
  !b5
  !volume,120
  !dynamicVolume,64,30
  db 24
  !b5
  !end

.pattern2_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub3558 : db 3
  !end

.pattern3_0
  !instr,!instr04
  !volume,165
  !vibrato,12,24,96
  !loop : dw .sub3544 : db 1
  !end

.pattern3_1
  !instr,!instr09
  !volume,132
  !vibrato,12,24,96
  !loop : dw .sub3544 : db 1
  !end

.pattern3_2
  !instr,!instr07
  !volume,225
  db 12,$7F
  !a2
  db 12,$2F
  !a2
  !a2
  db 6,$7F
  !a2
  db 12
  !g2
  db 6
  !g3
  db 12,$2F
  !g2
  !g2
  db 12,$7F
  !g2
  !a2
  db 12,$2F
  !a2
  !a2
  db 12,$7F
  !a2
  db 6
  !g2
  !g3
  db 12,$2F
  !g2
  !e2
  db 12,$7F
  !g2
  !a2
  db 12,$2F
  !a2
  !a2
  db 6,$7F
  !a2
  db 12
  !g2
  db 6
  !g3
  db 12,$2F
  !g2
  !g2
  db 12,$7F
  !g2
  !f2
  db 12,$2F
  !f2
  !f2
  db 12,$7F
  !f2
  db 6
  !e2
  !e3
  db 12,$2F
  !e2
  !g2
  db 12,$7F
  !e2
  !end

.pattern3_3
  !volume,255
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 6,$7B
  %percNote(!instr0D-!instr0C)
  db 6,$7D
  %percNote(!instr0D-!instr0C)
  db 6,$7F
  %percNote(!instr0D-!instr0C)
  !end

.pattern3_4
  !instr,!instr0A
  !vibrato,12,30,96
  !volume,120
  !dynamicVolume,64,30
  db 42,$7F
  !a6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 48
  !a6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !c7
  !volume,120
  !dynamicVolume,64,30
  !b6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !a6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !a6
  !volume,120
  !dynamicVolume,64,30
  db 30
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !e6
  !end

.pattern3_5
  !instr,!instr0A
  !vibrato,12,30,96
  !pan,20
  !volume,120
  !dynamicVolume,64,30
  db 42,$7F
  !e6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 48
  !e6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !g6
  !volume,120
  !dynamicVolume,64,30
  !g6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !e6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !f6
  !volume,120
  !dynamicVolume,64,30
  db 30
  !e6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !b5
  !end

.pattern3_6
  !instr,!instr0A
  !vibrato,12,30,96
  !pan,0
  !volume,120
  !dynamicVolume,64,30
  db 42,$7F
  !c6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !b5
  !volume,120
  !dynamicVolume,64,30
  db 48
  !c6
  !volume,120
  !dynamicVolume,64,30
  db 24
  !e6
  !volume,120
  !dynamicVolume,64,30
  !d6
  !volume,120
  !dynamicVolume,64,30
  db 42
  !c6
  !volume,120
  !dynamicVolume,64,30
  db 54
  !b5
  !volume,120
  !dynamicVolume,64,30
  db 42
  !c6
  !volume,120
  !dynamicVolume,64,30
  db 30
  !b5
  !volume,120
  !dynamicVolume,64,30
  db 24
  !g5
  !end

.pattern3_7
  !volume,255
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub3558 : db 3
  !end

.pattern4_0
  !loop : dw .sub3590 : db 1
  !end

.pattern4_1
  !loop : dw .sub3590 : db 1
  !end

.pattern4_2
  db 12,$7F
  !f2
  db 12,$2F
  !f2
  !f2
  db 6,$7F
  !f2
  db 12
  !g2
  db 6
  !g3
  db 12,$2F
  !g2
  !e2
  db 12,$7F
  !e2
  !e2
  db 6
  !e3
  db 12
  !a2
  db 6
  !a3
  db 12
  !a2
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !g2
  db 12,$2F
  !g3
  db 12,$7F
  !d2
  db 12,$2F
  !d2
  !d2
  db 6,$7F
  !d2
  db 12
  !d2
  db 6
  !d3
  db 12,$2F
  !d2
  !d2
  db 12,$7F
  !d2
  !e2
  db 12,$2F
  !e2
  !e2
  db 6,$7F
  !e2
  db 12
  !g2
  db 6
  !g3
  db 12,$2F
  !g2
  db 24,$7F
  !g3
  !pitchSlide,6,18 : !e2
  !end

.pattern4_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub3584 : db 2
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  !end

.pattern4_4
  !volume,120
  !dynamicVolume,48,30
  db 42,$7F
  !f6
  !volume,120
  !dynamicVolume,48,30
  db 30
  !g6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !gs6
  db 18
  !tie
  !volume,120
  !dynamicVolume,48,30
  db 30
  !a6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !a6
  !volume,120
  !dynamicVolume,48,30
  !g6
  !volume,120
  !dynamicVolume,48,30
  db 42
  !f6
  !volume,120
  !dynamicVolume,48,30
  db 54
  !f6
  !volume,120
  !dynamicVolume,48,30
  !g6
  !volume,120
  !dynamicVolume,48,30
  db 12
  !g6
  db 6
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 24
  !g6
  !end

.pattern4_5
  !volume,120
  !dynamicVolume,48,30
  db 42,$7F
  !c6
  !volume,120
  !dynamicVolume,48,30
  db 30
  !d6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !e6
  db 18
  !tie
  !volume,120
  !dynamicVolume,48,30
  db 30
  !e6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !e6
  !volume,120
  !dynamicVolume,48,30
  !d6
  !volume,120
  !dynamicVolume,48,30
  db 42
  !d6
  !volume,120
  !dynamicVolume,48,30
  db 54
  !d6
  !volume,120
  !dynamicVolume,48,30
  !d6
  !volume,120
  !dynamicVolume,48,30
  db 12
  !d6
  db 6
  !rest
  !volume,120
  !dynamicVolume,48,99
  db 24
  !d6
  !end

.pattern4_6
  !volume,120
  !dynamicVolume,48,30
  db 42,$7F
  !a5
  !volume,120
  !dynamicVolume,48,30
  db 30
  !b5
  !volume,120
  !dynamicVolume,48,30
  db 24
  !b5
  db 18
  !tie
  !volume,120
  !dynamicVolume,48,30
  db 30
  !c6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !c6
  !volume,120
  !dynamicVolume,48,30
  !b5
  !volume,120
  !dynamicVolume,48,30
  db 42
  !a5
  !volume,120
  !dynamicVolume,48,30
  db 54
  !a5
  !volume,120
  !dynamicVolume,48,30
  !b5
  !volume,120
  !dynamicVolume,48,30
  db 12
  !b5
  db 6
  !rest
  !volume,120
  !dynamicVolume,48,99
  db 24
  !b5
  !end

.pattern4_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub3558 : db 3
  !end

.pattern5_1
  !instr,!instr06
  !volume,255
  !loop : dw .sub35B2 : db 1
  db 6
  !d4
  !rest
  db 12
  !d4
  db 6
  !f4
  !d4
  !rest
  !d4
  db 36
  !rest
  db 6
  !a3
  !c4
  !d4
  !rest
  db 12
  !d4
  db 6
  !f4
  !d4
  !rest
  !d4
  !rest
  db 18
  !c4
  db 6
  !b3
  !rest
  db 12
  !g3
  !end

.pattern5_2
  !instr,!instr07
  !volume,255
  !loop : dw .sub35CE : db 1
  db 6
  !d3
  !rest
  db 12
  !d3
  db 6
  !f3
  !d3
  !rest
  !d3
  db 36
  !rest
  db 6
  !a2
  !c3
  !d3
  !rest
  db 12
  !d3
  db 6
  !f3
  !d3
  !rest
  !d3
  !rest
  db 18
  !c3
  db 6
  !b2
  !rest
  db 12
  !g2
  !end

.pattern5_3
  db 12,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub35EA : db 2
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  !end

.pattern5_4
  !loop : dw .sub35F8 : db 1
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 18
  !a6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !a6
  !end

.pattern5_5
  !loop : dw .sub361C : db 1
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 18
  !f6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !f6
  !end

.pattern5_6
  !loop : dw .sub3640 : db 1
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 18
  !d6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !d6
  !end

.pattern5_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub3558 : db 3
  !end

.pattern6_1
  !loop : dw .sub35B2 : db 1
  db 6
  !d4
  !rest
  db 12
  !d4
  db 6
  !f4
  !d4
  !rest
  !d4
  db 36
  !rest
  db 6
  !a3
  !d4
  !e4
  !rest
  db 12
  !e4
  db 6
  !g4
  !e4
  !rest
  !e4
  db 48
  !rest
  !end

.pattern6_2
  !loop : dw .sub35CE : db 1
  db 6
  !d3
  !rest
  db 12
  !d3
  db 6
  !f3
  !d3
  !rest
  !d3
  db 36
  !rest
  db 6
  !a2
  !d3
  !e3
  !rest
  db 12
  !e3
  db 6
  !g3
  !e3
  !rest
  !e3
  db 48
  !rest
  !end

.pattern6_3
  db 12,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub35EA : db 2
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern6_4
  !loop : dw .sub35F8 : db 1
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 18
  !e7
  !volume,120
  !dynamicVolume,48,30
  db 24
  !e7
  !end

.pattern6_5
  !loop : dw .sub361C : db 1
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 18
  !b6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !b6
  !end

.pattern6_6
  !loop : dw .sub3640 : db 1
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 18
  !g6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !g6
  !end

.pattern6_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub3558 : db 3
  !end

.sub3544
  db 24,$7F
  !a6
  !c7
  !b6
  !g6
  db 48
  !e6
  !g6
  db 24
  !a6
  !c7
  !b6
  !g6
  !d6
  db 18
  !g6
  db 54
  !e6
  !end

.sub3558
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub3561
  db 24,$7F
  !f6
  db 18
  !a6
  db 54
  !g6
  db 24
  !gs6
  db 18
  !b6
  db 30
  !a6
  db 12
  !a6
  !b6
  db 24
  !c7
  db 18
  !d7
  db 24
  !ds7
  db 18
  !d7
  db 12
  !c7
  db 42
  !d7
  !pitchSlide,24,18 : !g6
  db 54
  !g6
  !end

.sub3584
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.sub3590
  db 24,$7F
  !f6
  db 18
  !a6
  db 30
  !g6
  db 24
  !gs6
  db 18
  !b6
  db 30
  !a6
  db 24
  !a6
  !b6
  db 18
  !c7
  !gs6
  !f6
  !ds6
  db 12
  !d6
  !c6
  db 48
  !d6
  db 6
  !rest
  !g7
  db 12
  !rest
  !g7
  !rest
  !end

.sub35B2
  db 6,$7F
  !a3
  !rest
  db 12
  !a3
  db 6
  !c4
  !a3
  !rest
  !a3
  db 36
  !rest
  db 6
  !e3
  !g3
  !a3
  !rest
  db 12
  !a3
  db 6
  !c4
  !a3
  !rest
  !a3
  db 48
  !rest
  !end

.sub35CE
  db 6,$7F
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  !a2
  !rest
  !a2
  db 36
  !rest
  db 6
  !e2
  !g2
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  !a2
  !rest
  !a2
  db 48
  !rest
  !end

.sub35EA
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !end

.sub35F8
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 42,$7F
  !a6
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 18
  !a6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !a6
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 42
  !a6
  !end

.sub361C
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 42,$7F
  !e6
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 18
  !e6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !e6
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 42
  !f6
  !end

.sub3640
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 42,$7F
  !c6
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 18
  !c6
  !volume,120
  !dynamicVolume,48,30
  db 24
  !c6
  db 54
  !rest
  !volume,120
  !dynamicVolume,48,30
  db 42
  !c6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
