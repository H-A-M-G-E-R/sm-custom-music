asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr06 = $18
!instr07 = $19
!instr0A = $1A
!instr0C = $1B
!instr0D = $1C
!instr0E = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$8F,$EB,$B8,$03,$00
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0E,$FF,$E0,$B8,$05,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample05,Sample05+1404
  dw Sample06,Sample06+450
  dw Sample07,Sample07+1584
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0E,Sample0E+2979
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0E: incbin "Sample0E.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker241A

Tracker241A:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, 0, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7

.pattern0_0
  !percBase,!instr0C
  !musicVolume,200;255
  !echoParameters,6,72,3
  !echo,%11110111,50,50
  !tempo,27
  db 12
  !rest
  !end

.pattern1_0
  !instr,!instr04
  !volume,220
  !vibrato,12,24,64
  db 12,$5F
  !a6
  !rest
  !a6
  !b6
  db 12,$2F
  !a6
  !a6
  !a6
  !rest
  db 12,$5F
  !a6
  !g6
  !e6
  !g6
  db 12,$2F
  !a6
  !a6
  !a6
  !rest
  db 12,$5F
  !a6
  !rest
  !a6
  !g6
  db 24
  !a6
  db 12
  !b6
  !b6
  !a6
  !a6
  !a6
  !g6
  db 48
  !a6
  !end

.pattern1_2
  db 96
  !rest
  !instr,!instr0A
  !vibrato,12,36,72
  !volume,100
  !rest
  !dynamicVolume,144,200
  db 96,$7F
  !a3
  db 60
  !tie
  !instr,!instr07
  db 12
  !f3
  !g3
  !rest
  !end

.pattern1_3
  !volume,255
  db 96
  !rest
  !rest
  !rest
  db 48
  !rest
  db 12,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.pattern1_4
  db 96
  !rest
  !rest
  !instr,!instr0A
  !vibrato,12,36,72
  !volume,50
  !pan,7
  !dynamicVolume,144,150
  db 96,$7F
  !a5
  db 60
  !tie
  db 12,$2F
  !f6
  !g6
  !rest
  !end

.pattern1_5
  db 96
  !rest
  !rest
  !instr,!instr0A
  !vibrato,12,36,72
  !volume,40
  !pan,13
  !dynamicVolume,144,140
  db 96,$7F
  !e5
  db 60
  !tie
  db 12,$2F
  !c6
  !d6
  !rest
  !end

.pattern1_6
  !instr,!instr0A
  !vibrato,12,36,72
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub2728 : db 3
  !end

.pattern1_7
  db 96
  !rest
  !rest
  !rest
  !volume,255
  db 60
  !rest
  db 12,$7F
  %percNote(!instr0E-!instr0C)
  db 24
  %percNote(!instr0E-!instr0C)
  !end

.pattern2_0
  !loop : dw .sub272D : db 1
  db 36
  !d6
  db 12
  !g6
  db 36
  !e6
  db 12
  !c6
  !d6
  !c6
  !d6
  !e6
  db 48
  !d6
  !end

.pattern2_1
  !instr,!instr05
  !volume,150
  !loop : dw .sub2740 : db 1
  db 36
  !d5
  db 12
  !g5
  db 36
  !e5
  db 12
  !c5
  !d5
  !c5
  !d5
  !e5
  db 48
  !d5
  !end

.pattern2_2
  !loop : dw .sub2753 : db 1
  !f2
  db 24
  !rest
  db 12
  !f2
  db 24
  !e2
  !g2
  !end

.pattern2_3
  !loop : dw .sub2773 : db 1
  !end

.pattern2_4
  !instr,!instr06
  !volume,150
  !loop : dw .sub2798 : db 1
  !end

.pattern2_5
  !instr,!instr06
  !volume,140
  db 48,$7F
  !e5
  !d5
  !e5
  db 24
  !e5
  !d5
  db 48
  !d5
  !b4
  !d5
  db 24
  !e5
  !d5
  !end

.pattern2_6
  !volume,100
  !loop : dw .sub2798 : db 1
  !end

.pattern2_7
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
  !end

.pattern3_0
  !loop : dw .sub272D : db 1
  db 24
  !d6
  !g6
  !e6
  !c6
  !a5
  !d6
  !b5
  !g5
  !end

.pattern3_1
  !loop : dw .sub2740 : db 1
  db 24
  !d5
  !g5
  !e5
  !c5
  !a4
  !d5
  !b4
  !g4
  !end

.pattern3_2
  !loop : dw .sub2753 : db 1
  !f2
  db 24
  !rest
  db 12
  !f2
  db 24
  !e2
  !e2
  !end

.pattern3_3
  !loop : dw .sub2773 : db 1
  !end

.pattern3_4
  !loop : dw .sub2798 : db 1
  !end

.pattern3_5
  db 48,$7F
  !e5
  !d5
  !e5
  db 24
  !e5
  !d5
  db 48
  !d5
  !b4
  !d5
  db 24
  !e5
  !e5
  !end

.pattern3_6
  !loop : dw .sub2798 : db 1
  !end

.pattern3_7
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
  !end

.pattern4_0
  !loop : dw .sub27A8 : db 1
  !a5
  !c6
  db 12
  !d6
  db 6
  !e6
  !d6
  db 12
  !c6
  !d6
  db 72
  !e6
  db 24
  !g6
  !end

.pattern4_1
  db 24,$5F
  !a4
  !c5
  db 12
  !d5
  db 6
  !e5
  !d5
  db 12
  !c5
  !d5
  !e5
  !d5
  !c5
  !b4
  db 24
  !a4
  !g4
  !a4
  !c5
  db 12
  !d5
  db 6
  !e5
  !d5
  db 12
  !c5
  !d5
  db 72
  !e5
  db 24
  !g5
  !end

.pattern4_2
  !loop : dw .sub27BC : db 1
  db 24
  !e2
  db 12,$2F
  !e3
  db 12,$7F
  !e2
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !g2
  db 12,$2F
  !g3
  !end

.pattern4_3
  !loop : dw .sub27F1 : db 1
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  !end

.pattern4_4
  !loop : dw .sub280F : db 1
  db 24,$2F
  !g5
  db 12,$5F
  !g6
  !g5
  db 12,$2F
  !a6
  !a6
  !g6
  !rest
  !end

.pattern4_5
  !loop : dw .sub2838 : db 1
  db 24,$2F
  !d5
  db 12,$5F
  !d6
  !d5
  db 12,$2F
  !e6
  !e6
  !d6
  !rest
  !end

.pattern4_6
  db 48,$7F
  !f5
  !g5
  !g5
  db 24
  !a5
  !g5
  db 48
  !f5
  !g5
  !g5
  db 24
  !a5
  !g5
  !end

.pattern4_7
  db 96
  !rest
  db 48
  !rest
  db 12,$7F
  %percNote(!instr0E-!instr0C)
  %percNote(!instr0E-!instr0C)
  db 24
  %percNote(!instr0E-!instr0C)
  db 96
  !rest
  db 48
  !rest
  db 12
  %percNote(!instr0E-!instr0C)
  %percNote(!instr0E-!instr0C)
  db 24
  %percNote(!instr0E-!instr0C)
  !end

.pattern5_0
  db 24,$5F
  !a6
  !c7
  db 12
  !d7
  db 6
  !e7
  !d7
  db 12
  !c7
  !d7
  !e7
  !d7
  !c7
  !b6
  db 24
  !a6
  !g6
  !a6
  !c7
  db 12
  !d7
  db 6
  !e7
  !d7
  db 12
  !b6
  !g6
  db 96
  !a6
  !end

.pattern5_1
  !loop : dw .sub27A8 : db 1
  !a5
  !c6
  db 12
  !d6
  db 6
  !e6
  !d6
  db 12
  !b5
  !g5
  db 96
  !a5
  !end

.pattern5_2
  !loop : dw .sub27BC : db 1
  db 24
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !g2
  db 12,$2F
  !g3
  !end

.pattern5_3
  !loop : dw .sub27F1 : db 1
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern5_4
  !loop : dw .sub280F : db 1
  db 12,$2F
  !e5
  !a5
  !cs6
  !e6
  !a6
  db 36
  !rest
  !end

.pattern5_5
  !loop : dw .sub2838 : db 1
  db 12,$2F
  !cs5
  !e5
  !a5
  !cs6
  !e6
  db 36
  !rest
  !end

.pattern5_6
  db 48,$7F
  !a5
  !b5
  !b5
  db 24
  !c6
  !b5
  db 48
  !a5
  !b5
  db 72
  !cs6
  db 24
  !rest
  !end

.pattern5_7
  db 96
  !rest
  db 48
  !rest
  db 12,$7F
  %percNote(!instr0E-!instr0C)
  %percNote(!instr0E-!instr0C)
  db 24
  %percNote(!instr0E-!instr0C)
  db 96
  !rest
  db 72
  !rest
  db 24
  %percNote(!instr0E-!instr0C)
  !end

.sub2728
  !rest
  !rest
  !rest
  !rest
  !end

.sub272D
  db 36,$5F
  !a6
  db 12
  !g6
  db 36
  !e6
  db 12
  !g6
  !a6
  !g6
  !a6
  !b6
  db 24
  !a6
  db 12
  !g6
  !e6
  !end

.sub2740
  db 36,$5F
  !a5
  db 12
  !g5
  db 36
  !e5
  db 12
  !g5
  !a5
  !g5
  !a5
  !b5
  db 24
  !a5
  db 12
  !g5
  !e5
  !end

.sub2753
  db 12,$7F
  !a2
  db 24
  !rest
  db 12
  !a2
  !g2
  db 24
  !rest
  db 12
  !g2
  !a2
  db 24
  !rest
  db 12
  !a2
  db 24
  !a2
  !g2
  db 12
  !f2
  db 24
  !rest
  db 12
  !f2
  !e2
  db 24
  !rest
  db 12
  !e2
  !end

.sub2773
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.sub2798
  db 48,$7F
  !a5
  !g5
  !a5
  db 24
  !a5
  !g5
  db 48
  !f5
  !e5
  !f5
  db 24
  !g5
  !g5
  !end

.sub27A8
  db 24,$5F
  !a5
  !c6
  db 12
  !d6
  db 6
  !e6
  !d6
  db 12
  !c6
  !d6
  !e6
  !d6
  !c6
  !b5
  db 24
  !a5
  !g5
  !end

.sub27BC
  db 24,$7F
  !f2
  db 12,$2F
  !f3
  db 12,$7F
  !f2
  db 24
  !g2
  db 12,$2F
  !g3
  db 12,$7F
  !g2
  db 24
  !e2
  db 12,$2F
  !e3
  db 12,$7F
  !e2
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !g2
  db 12,$2F
  !g3
  db 24,$7F
  !f2
  db 12,$2F
  !f3
  db 12,$7F
  !f2
  db 24
  !g2
  db 12,$2F
  !g3
  db 12,$7F
  !g2
  !end

.sub27F1
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !end

.sub280F
  db 24,$2F
  !f5
  db 12,$5F
  !f6
  !f5
  db 24,$2F
  !g5
  db 12,$5F
  !g6
  !g5
  db 24,$2F
  !g5
  db 12,$5F
  !g6
  !g5
  db 12,$2F
  !a6
  !a6
  !g6
  !rest
  db 24
  !f5
  db 12,$5F
  !f6
  !f5
  db 24,$2F
  !g5
  db 12,$5F
  !g6
  !g5
  !end

.sub2838
  db 24,$2F
  !c5
  db 12,$5F
  !c6
  !c5
  db 24,$2F
  !d5
  db 12,$5F
  !d6
  !d5
  db 24,$2F
  !d5
  db 12,$5F
  !d6
  !d5
  db 12,$2F
  !e6
  !e6
  !d6
  !rest
  db 24
  !c5
  db 12,$5F
  !c6
  !c5
  db 24,$2F
  !d5
  db 12,$5F
  !d6
  !d5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
