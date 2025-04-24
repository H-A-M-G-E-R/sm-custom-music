asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr06 = $18
!instr07 = $19
!instr09 = $1A
!instr0A = $1B
!instr0C = $1C
!instr0D = $1D
!instr0E = $1E
!instr0F = $1F
!instr10 = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$8F,$EB,$B8,$03,$00
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr09,$8F,$EF,$B8,$01,$00
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
  dw Sample06,Sample06+450
  dw Sample07,Sample07+1584
  dw Sample09,Sample09+27
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
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"
  Sample09: incbin "Sample09.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0E: incbin "Sample0E.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker241A

Tracker241A:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw .pattern10
  dw .pattern11
  dw .pattern12
  dw .pattern13
  dw .pattern14
  dw .pattern15
  dw .pattern16
  dw .pattern17
  dw .pattern18
-
  dw .pattern19
  dw .pattern20
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, 0, 0, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, 0, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, 0, 0, .pattern5_6, .pattern5_7
.pattern6: dw .pattern6_0, 0, .pattern6_2, .pattern6_3, 0, 0, .pattern6_6, .pattern6_7
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, .pattern7_5, .pattern7_6, .pattern7_7
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, .pattern8_6, .pattern8_7
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, .pattern9_5, 0, .pattern9_7
.pattern10: dw .pattern10_0, .pattern10_1, .pattern10_2, .pattern10_3, .pattern10_4, .pattern10_5, .pattern10_6, .pattern10_7
.pattern11: dw .pattern11_0, .pattern11_1, .pattern11_2, .pattern11_3, .pattern11_4, .pattern11_5, .pattern11_6, .pattern11_7
.pattern12: dw .pattern12_0, .pattern12_1, .pattern12_2, .pattern12_3, .pattern12_4, .pattern12_5, .pattern12_6, .pattern12_7
.pattern13: dw .pattern13_0, .pattern13_1, .pattern13_2, .pattern13_3, .pattern13_4, .pattern13_5, .pattern13_6, .pattern13_7
.pattern14: dw .pattern14_0, .pattern14_1, .pattern14_2, .pattern14_3, .pattern14_4, .pattern14_5, .pattern14_6, .pattern14_7
.pattern15: dw .pattern15_0, .pattern15_1, .pattern15_2, .pattern15_3, .pattern15_4, .pattern15_5, .pattern15_6, .pattern15_7
.pattern16: dw .pattern16_0, .pattern16_1, .pattern16_2, .pattern16_3, .pattern16_4, .pattern16_5, 0, .pattern16_7
.pattern17: dw .pattern17_0, .pattern17_1, .pattern17_2, .pattern17_3, .pattern17_4, .pattern17_5, .pattern17_6, .pattern17_7
.pattern18: dw .pattern18_0, .pattern18_1, .pattern18_2, .pattern18_3, .pattern18_4, .pattern18_5, .pattern18_6, .pattern18_7
.pattern19: dw .pattern19_0, .pattern19_1, .pattern19_2, .pattern19_3, .pattern19_4, .pattern19_5, .pattern19_6, .pattern19_7
.pattern20: dw .pattern20_0, .pattern20_1, .pattern20_2, .pattern20_3, .pattern20_4, .pattern20_5, .pattern20_6, .pattern20_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110111,70,70
  !echoParameters,6,72,3
  !musicVolume,200;255
  !tempo,22
  !end

.pattern1_0
  !instr,!instr04
  !volume,220
  !vibrato,12,30,72
  db 24,$6F
  !a5
  !d6
  db 48,$5F
  !g5
  !loop : dw .sub2CB6 : db 1
  !end

.pattern1_1
  !instr,!instr05
  !volume,220
  db 24,$7F
  !a5
  !d6
  db 48
  !g5
  db 12
  !f5
  !g5
  !f5
  !c5
  db 48
  !d5
  db 72
  !tie
  db 12
  !f5
  !g5

.pattern1_2
  !instr,!instr07
  !volume,255
  !vibrato,24,30,72
  !loop : dw .sub2CC6 : db 1

.pattern2_0
  db 24,$6F
  !a5
  !d6
  db 36,$5F
  !g5
  db 12
  !c5
  !loop : dw .sub2CB6 : db 1
  !end

.pattern2_1
  db 24,$7F
  !a5
  !d6
  db 36
  !g5
  db 12
  !c5
  !f5
  !g5
  !f5
  !c5
  db 48
  !d5
  db 96
  !tie

.pattern2_2
  !loop : dw .sub2CC6 : db 1

.pattern2_4
  !instr,!instr0A
  !vibrato,12,30,72
  !volume,50
  !dynamicVolume,192,150
  db 96,$7F
  !d6
  !tie
  !dynamicVolume,96,50
  !tie

.pattern3_0
  !loop : dw .sub2CD7 : db 1
  db 24
  !d5
  !f5
  !g5
  db 12
  !f5
  !g5
  !end

.pattern3_1
  !instr,!instr0A
  !vibrato,12,30,72
  !pan,13
  !loop : dw .sub2CF1 : db 1
  !volume,120
  !dynamicVolume,48,80
  !f5
  !volume,120
  !dynamicVolume,48,100
  !g5

.pattern3_2
  db 48,$7F
  !f3
  !e3
  !d3
  !cs3
  !c3
  !b2
  !as2
  !c3

.pattern3_3
  !instr,!instr09
  !volume,100
  !vibrato,12,30,72
  !transpose,12
  !loop : dw .sub2D18 : db 1
  db 24
  !d6
  !f6
  db 48
  !g6

.pattern3_4
  !instr,!instr05
  !volume,120
  !pan,20
  db 6
  !rest
  db 48,$7F
  !a5
  !g5
  !f5
  !e5
  !f5
  !f5
  !f5
  db 42
  !g5

.pattern3_5
  !instr,!instr05
  !volume,120
  !pan,10
  db 3
  !rest
  db 48,$7F
  !f5
  !e5
  !d5
  !cs5
  !c5
  !d5
  !d5
  db 45
  !e5

.pattern3_6
  !instr,!instr05
  !volume,120
  !pan,0
  db 48,$7F
  !c5
  !c5
  !a4
  !a4
  !a4
  !b4
  !as4
  !c5

.pattern3_7
  !instr,!instr0A
  !vibrato,12,30,72
  !pan,7
  !loop : dw .sub2D2E : db 1
  !volume,120
  !dynamicVolume,48,80
  !d5
  !volume,120
  !dynamicVolume,48,100
  !e5

.pattern4_0
  !loop : dw .sub2CD7 : db 1
  db 24
  !d5
  !f5
  !g5
  !c6
  !dynamicVolume,192,80
  db 96,$78
  !tie
  db 72
  !tie
  !volume,220
  db 24,$7F
  !c5
  !end

.pattern4_1
  !loop : dw .sub2CF1 : db 1
  !volume,120
  !dynamicVolume,48,80
  !f5
  !volume,120
  !dynamicVolume,24,100
  db 24
  !g5
  !volume,120
  !dynamicVolume,24,100
  !c6
  !dynamicVolume,192,40
  db 96
  !tie
  db 72
  !tie
  db 24
  !rest

.pattern4_2
  db 48,$7F
  !f3
  !e3
  !d3
  !cs3
  !c3
  !b2
  !as2
  !c3
  !dynamicVolume,192,40
  db 96
  !tie
  db 72
  !tie
  db 24
  !rest

.pattern4_3
  !loop : dw .sub2D18 : db 1
  db 24
  !d6
  !f6
  !g6
  !c7
  db 96
  !tie
  !tie

.pattern4_4
  db 6
  !rest
  db 48,$7F
  !a5
  !g5
  !f5
  !e5
  !f5
  !f5
  !f5
  db 24
  !g5
  db 18
  !c6
  !loop : dw .sub2D55 : db 1

.pattern4_5
  db 3
  !rest
  db 48,$7F
  !f5
  !e5
  !d5
  !cs5
  !c5
  !d5
  !d5
  db 24
  !e5
  db 21
  !g5
  !loop : dw .sub2D55 : db 1

.pattern4_6
  db 48,$7F
  !c5
  !c5
  !a4
  !a4
  !a4
  !b4
  !as4
  db 24
  !c5
  !e5
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest

.pattern4_7
  !loop : dw .sub2D2E : db 1
  !volume,120
  !dynamicVolume,48,80
  !d5
  !volume,120
  !dynamicVolume,24,100
  db 24
  !e5
  !volume,120
  !dynamicVolume,24,100
  !g5
  !dynamicVolume,192,40
  db 96
  !tie
  !tie

.pattern5_0
  !loop : dw .sub2D5F : db 1
  !f5
  !g5
  db 12,$4F
  !a5
  db 12,$6F
  !a5
  db 24
  !g5
  !c5
  !d5
  !f5
  !g5
  !c6
  db 72
  !a5
  db 24
  !c6
  !end

.pattern5_1
  !transpose,0
  !loop : dw .sub2D55 : db 1
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest

.pattern5_2
  !volume,255
  db 48,$7F
  !f3
  !e3
  !d3
  !c3
  !as2
  !c3
  db 96
  !d3

.pattern5_3
  !transpose,0
  !volume,255
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 48
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2D6A : db 3

.pattern5_6
  !volume,255
  !pan,10
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0C)
  !loop : dw .sub2D71 : db 3

.pattern5_7
  !volume,255
  !pan,10
  db 24,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub2D76 : db 3

.pattern6_0
  !loop : dw .sub2D7B : db 1
  db 96,$5F
  !f5
  !end

.pattern6_2
  db 48,$7F
  !as2
  !a2
  !as2
  !a2
  !g2
  !f2
  !as2
  !c3
  db 96
  !f2

.pattern6_3
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 48
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2D6A : db 3
  db 36
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)

.pattern6_6
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0C)
  !loop : dw .sub2D71 : db 3
  !rest
  !rest
  !rest
  !rest

.pattern6_7
  db 24,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub2D76 : db 4

.pattern7_0
  db 36,$6F
  !d5
  db 6
  !f5
  !g5
  db 24
  !a5
  !f5
  !loop : dw .sub2D9E : db 1
  !end

.pattern7_1
  !instr,!instr05
  !volume,180
  !pan,10
  db 36,$7F
  !d5
  db 6
  !f5
  !g5
  db 24
  !a5
  !f5
  !loop : dw .sub2D9E : db 1

.pattern7_2
  !loop : dw .sub2DB3 : db 1
  !f2
  db 12
  !rest
  !f2
  db 24
  !f2
  !rest

.pattern7_3
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2DCB : db 3

.pattern7_4
  !instr,!instr0A
  !pan,13
  !loop : dw .sub2DD3 : db 1
  !volume,80
  !dynamicVolume,72,140
  db 72
  !f5
  !volume,80
  !dynamicVolume,24,160
  db 24
  !g5
  !volume,80
  !dynamicVolume,96,160
  db 96
  !e5

.pattern7_5
  !instr,!instr0A
  !pan,7
  !loop : dw .sub2DE2 : db 1
  !volume,80
  !dynamicVolume,72,140
  db 72
  !d5
  !volume,80
  !dynamicVolume,24,160
  db 24
  !d5
  !volume,80
  !dynamicVolume,96,160
  db 96
  !c5

.pattern7_6
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0C)
  !loop : dw .sub2D71 : db 3

.pattern7_7
  !loop : dw .sub2DF1 : db 4

.pattern8_0
  db 36,$6F
  !d5
  db 6
  !f5
  !g5
  db 24
  !a5
  !f5
  !loop : dw .sub2E0A : db 1
  !end

.pattern8_1
  db 36,$7F
  !d5
  db 6
  !f5
  !g5
  db 24
  !a5
  !f5
  !loop : dw .sub2E0A : db 1

.pattern8_2
  !loop : dw .sub2DB3 : db 1
  !c3
  db 12
  !rest
  !c3
  db 24
  !c3
  !rest

.pattern8_3
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2DCB : db 3

.pattern8_4
  !loop : dw .sub2DD3 : db 1
  !volume,80
  !dynamicVolume,96,160
  !f5
  !volume,80
  !dynamicVolume,96,160
  !g5

.pattern8_5
  !loop : dw .sub2DE2 : db 1
  !volume,80
  !dynamicVolume,96,160
  !d5
  !volume,80
  !dynamicVolume,96,160
  !e5

.pattern8_6
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0C)
  !loop : dw .sub2D71 : db 3

.pattern8_7
  !loop : dw .sub2DF1 : db 4

.pattern9_0
  db 12,$6F
  !f6
  !g6
  !f6
  !d6
  !c6
  !d6
  !c6
  !a5
  !g5
  !f5
  !d5
  !f5
  db 48
  !f5
  !tie
  db 24
  !f5
  !g5
  !end

.pattern9_1
  db 12,$7F
  !f6
  !g6
  !f6
  !d6
  !c6
  !d6
  !c6
  !a5
  !g5
  !f5
  !d5
  !f5
  db 48
  !f5
  !tie
  !rest

.pattern9_2
  db 48,$7F
  !as2
  db 24
  !a2
  !d3
  !g2
  !c3
  db 48
  !f2
  !tie
  db 24
  !c3
  !e3

.pattern9_3
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 36
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)

.pattern9_4
  !volume,80
  !dynamicVolume,48,160
  db 48,$7F
  !f5
  !volume,80
  !dynamicVolume,24,160
  db 24
  !e5
  !volume,80
  !dynamicVolume,24,160
  !f5
  !volume,80
  !dynamicVolume,24,160
  !f5
  !volume,80
  !dynamicVolume,24,160
  !g5
  !volume,80
  !dynamicVolume,72,160
  db 48
  !f5
  db 24
  !tie
  !dynamicVolume,72,80
  db 72
  !tie

.pattern9_5
  !volume,80
  !dynamicVolume,48,160
  db 48,$7F
  !d5
  !volume,80
  !dynamicVolume,24,160
  db 24
  !c5
  !volume,80
  !dynamicVolume,24,160
  !d5
  !volume,80
  !dynamicVolume,24,160
  !d5
  !volume,80
  !dynamicVolume,24,160
  !e5
  !volume,80
  !dynamicVolume,72,160
  db 48
  !c5
  db 24
  !tie
  !dynamicVolume,72,80
  db 72
  !tie

.pattern9_7
  db 36,$75
  %percNote(!instr0F-!instr0C)
  db 12
  %percNote(!instr0F-!instr0C)
  db 24
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 12
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)

.pattern10_0
  !loop : dw .sub2E1E : db 1
  db 24
  !d5
  !f5
  !g5
  db 12
  !f5
  !g5
  !end

.pattern10_1
  !instr,!instr06
  !volume,150
  !pan,20
  !loop : dw .sub2E34 : db 1

.pattern10_2
  !loop : dw .sub2E58 : db 1
  !as2
  db 6
  !rest
  !as2
  db 12,$1F
  !as3
  db 12,$7F
  !as2
  !c3
  db 12,$2F
  !c4
  db 12,$7F
  !e3
  db 12,$2F
  !e4

.pattern10_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2E88 : db 3

.pattern10_4
  !loop : dw .sub2CF1 : db 1
  !volume,120
  !dynamicVolume,48,80
  !f5
  !volume,120
  !dynamicVolume,48,80
  !g5

.pattern10_5
  !loop : dw .sub2D2E : db 1
  !volume,120
  !dynamicVolume,48,80
  !d5
  !volume,120
  !dynamicVolume,48,80
  !e5

.pattern10_6
  !instr,!instr06
  !volume,150
  !pan,0
  !loop : dw .sub2E90 : db 1

.pattern10_7
  !loop : dw .sub2EB4 : db 4

.pattern11_0
  !loop : dw .sub2E1E : db 1
  db 24
  !d5
  !f5
  !g5
  !c6
  !end

.pattern11_1
  !loop : dw .sub2E34 : db 1

.pattern11_2
  !loop : dw .sub2E58 : db 1
  !as2
  db 6
  !rest
  !as2
  db 12,$1F
  !as3
  db 12,$7F
  !as2
  !c3
  db 12,$2F
  !c4
  db 24,$7F
  !c3

.pattern11_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2E88 : db 2
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern11_4
  !loop : dw .sub2CF1 : db 1
  !volume,120
  !dynamicVolume,48,80
  !f5
  !volume,120
  !dynamicVolume,24,100
  db 24
  !g5
  !volume,120
  !dynamicVolume,24,100
  !c6

.pattern11_5
  !loop : dw .sub2D2E : db 1
  !volume,120
  !dynamicVolume,48,80
  !d5
  !volume,120
  !dynamicVolume,24,100
  db 24
  !e5
  !volume,120
  !dynamicVolume,24,100
  !g5

.pattern11_6
  !loop : dw .sub2E90 : db 1

.pattern11_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub2EE1 : db 2
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)

.pattern12_0
  !loop : dw .sub2D5F : db 1
  !f5
  !g5
  db 12,$3F
  !a5
  db 12,$6F
  !a5
  db 24
  !g5
  !c5
  !d5
  !f5
  !g5
  !c6
  db 72
  !a5
  db 24
  !c6
  !end

.pattern12_1
  !instr,!instr09
  !volume,150
  !pan,20
  !transpose,12
  db 96
  !rest
  !rest
  !rest
  db 36
  !rest
  db 4,$7F
  !d7
  !a7
  !g7
  !f7
  !e7
  !d7
  !c7
  !as6
  !a6
  !g6
  !f6
  !e6
  !d6
  !c6
  !rest

.pattern12_2
  !volume,255
  db 48,$7F
  !f3
  !e3
  !d3
  !c3
  !as2
  !c3
  db 96
  !d3

.pattern12_3
  !transpose,0
  !volume,255
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 48
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2D6A : db 3

.pattern12_4
  !instr,!instr09
  !volume,150
  !pan,0
  !transpose,12
  db 96
  !rest
  !rest
  !rest
  db 40
  !rest
  db 4,$7F
  !d7
  !a7
  !g7
  !f7
  !e7
  !d7
  !c7
  !as6
  !a6
  !g6
  !f6
  !e6
  !d6
  !c6

.pattern12_5
  !instr,!instr0A
  !volume,50
  !dynamicVolume,192,150
  !pan,0
  !dynamicPan,192,10
  !vibrato,12,30,72
  db 96,$7F
  !c6
  !tie
  !dynamicVolume,192,50
  !dynamicPan,192,20
  !tie
  !tie

.pattern12_6
  !volume,255
  !pan,10
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0C)
  !loop : dw .sub2D71 : db 3

.pattern12_7
  !volume,255
  !pan,10
  db 24,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub2D76 : db 3

.pattern13_0
  !loop : dw .sub2D7B : db 1
  db 96,$7F
  !f5
  !end

.pattern13_1
  db 4,$7B
  !c7
  !as6
  !a6
  !g6
  db 4,$79
  !f6
  !e6
  !d6
  !c6
  !rest
  db 4,$77
  !c7
  !as6
  !a6
  !g6
  db 4,$75
  !f6
  !e6
  !d6
  !c6
  !rest
  db 4,$73
  !c7
  !as6
  !a6
  db 4,$71
  !g6
  !f6
  !e6
  !transpose,0
  !loop : dw .sub2D55 : db 1
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest

.pattern13_2
  db 48,$7F
  !as2
  !a2
  !as2
  !a2
  !g2
  !f2
  !as2
  !c3
  db 96
  !f2

.pattern13_3
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 48
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2D6A : db 3
  db 36
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)

.pattern13_4
  !dynamicVolume,96,30
  db 4
  !rest
  db 4,$7B
  !c7
  !as6
  !a6
  !g6
  db 4,$79
  !f6
  !e6
  !d6
  !c6
  !rest
  db 4,$77
  !c7
  !as6
  !a6
  !g6
  db 4,$75
  !f6
  !e6
  !d6
  !c6
  !rest
  db 4,$73
  !c7
  !as6
  !a6
  db 4,$71
  !g6
  !f6
  !transpose,0
  !loop : dw .sub2D55 : db 1
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest

.pattern13_5
  !instr,!instr04
  !volume,150
  !vibrato,12,24,64
  !pan,10
  db 96
  !rest
  !rest
  !rest
  !rest
  db 12
  !rest
  db 12,$7F
  !d7
  !c7
  !as6
  db 48
  !a6

.pattern13_6
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0C)
  !loop : dw .sub2D71 : db 3
  !rest
  !rest
  !rest
  !rest

.pattern13_7
  db 24,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub2D76 : db 4

.pattern14_0
  db 36,$6F
  !d5
  db 6
  !f5
  !g5
  db 24
  !a5
  !f5
  !loop : dw .sub2D9E : db 1
  !end

.pattern14_1
  !instr,!instr05
  !volume,180
  !pan,10
  db 36,$7F
  !d5
  db 6
  !f5
  !g5
  db 24
  !a5
  !f5
  !loop : dw .sub2D9E : db 1

.pattern14_2
  !loop : dw .sub2DB3 : db 1
  !f2
  db 12
  !rest
  !f2
  db 24
  !f2
  !rest

.pattern14_3
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2DCB : db 3

.pattern14_4
  !instr,!instr0A
  !pan,13
  !loop : dw .sub2DD3 : db 1
  !volume,80
  !dynamicVolume,72,140
  db 72
  !f5
  !volume,80
  !dynamicVolume,24,160
  db 24
  !g5
  !volume,80
  !dynamicVolume,96,160
  db 96
  !e5

.pattern14_5
  !instr,!instr0A
  !pan,7
  !loop : dw .sub2DE2 : db 1
  !volume,80
  !dynamicVolume,72,140
  db 72
  !d5
  !volume,80
  !dynamicVolume,24,160
  db 24
  !d5
  !volume,80
  !dynamicVolume,96,160
  db 96
  !c5

.pattern14_6
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0C)
  !loop : dw .sub2D71 : db 3

.pattern14_7
  !loop : dw .sub2DF1 : db 4

.pattern15_0
  db 36,$6F
  !d5
  db 6
  !f5
  !g5
  db 24
  !a5
  !f5
  !loop : dw .sub2E0A : db 1
  !end

.pattern15_1
  db 36,$7F
  !d5
  db 6
  !f5
  !g5
  db 24
  !a5
  !f5
  !loop : dw .sub2E0A : db 1

.pattern15_2
  !loop : dw .sub2DB3 : db 1
  !c3
  db 12
  !rest
  !c3
  db 24
  !c3
  !rest

.pattern15_3
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2DCB : db 3

.pattern15_4
  !loop : dw .sub2DD3 : db 1
  !volume,80
  !dynamicVolume,96,160
  !f5
  !volume,80
  !dynamicVolume,96,160
  !g5

.pattern15_5
  !loop : dw .sub2DE2 : db 1
  !volume,80
  !dynamicVolume,96,160
  !d5
  !volume,80
  !dynamicVolume,96,160
  !e5

.pattern15_6
  db 72
  !rest
  db 24,$7F
  %percNote(!instr0E-!instr0C)
  !loop : dw .sub2D71 : db 3

.pattern15_7
  !loop : dw .sub2DF1 : db 4

.pattern16_0
  db 12,$6F
  !f6
  !g6
  !f6
  !d6
  !c6
  !d6
  !c6
  !a5
  !g5
  !f5
  !d5
  !f5
  db 48
  !f5
  !tie
  db 24
  !f5
  !g5
  !end

.pattern16_1
  db 12,$7F
  !f6
  !g6
  !f6
  !d6
  !c6
  !d6
  !c6
  !a5
  !g5
  !f5
  !d5
  !f5
  db 48
  !f5
  !tie
  !rest

.pattern16_2
  db 48,$7F
  !as2
  db 24
  !a2
  !d3
  !g2
  !c3
  db 48
  !f2
  !tie
  db 24
  !c3
  !e3

.pattern16_3
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 36
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)

.pattern16_4
  !volume,80
  !dynamicVolume,48,160
  db 48,$7F
  !f5
  !volume,80
  !dynamicVolume,24,160
  db 24
  !e5
  !volume,80
  !dynamicVolume,24,160
  !f5
  !volume,80
  !dynamicVolume,24,160
  !f5
  !volume,80
  !dynamicVolume,24,160
  !g5
  !volume,80
  !dynamicVolume,72,160
  db 48
  !f5
  db 24
  !tie
  !dynamicVolume,72,80
  db 72
  !tie

.pattern16_5
  !volume,80
  !dynamicVolume,48,160
  db 48,$7F
  !d5
  !volume,80
  !dynamicVolume,24,160
  db 24
  !c5
  !volume,80
  !dynamicVolume,24,160
  !d5
  !volume,80
  !dynamicVolume,24,160
  !d5
  !volume,80
  !dynamicVolume,24,160
  !e5
  !volume,80
  !dynamicVolume,72,160
  db 48
  !c5
  db 24
  !tie
  !dynamicVolume,72,80
  db 72
  !tie

.pattern16_7
  db 36,$75
  %percNote(!instr0F-!instr0C)
  db 12
  %percNote(!instr0F-!instr0C)
  db 24
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 12
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)

.pattern17_0
  !loop : dw .sub2E1E : db 1
  db 24
  !d5
  !f5
  !g5
  db 12
  !f5
  !g5
  !end

.pattern17_1
  !instr,!instr06
  !volume,150
  !pan,20
  !loop : dw .sub2E34 : db 1

.pattern17_2
  !loop : dw .sub2E58 : db 1
  !as2
  db 6
  !rest
  !as2
  db 12,$1F
  !as3
  db 12,$7F
  !as2
  !c3
  db 12,$2F
  !c4
  db 12,$7F
  !e3
  db 12,$2F
  !e4

.pattern17_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2E88 : db 3

.pattern17_4
  !loop : dw .sub2CF1 : db 1
  !volume,120
  !dynamicVolume,48,80
  !f5
  !volume,120
  !dynamicVolume,48,80
  !g5

.pattern17_5
  !loop : dw .sub2D2E : db 1
  !volume,120
  !dynamicVolume,48,80
  !d5
  !volume,120
  !dynamicVolume,48,80
  !e5

.pattern17_6
  !instr,!instr06
  !volume,150
  !pan,0
  !loop : dw .sub2E90 : db 1

.pattern17_7
  !loop : dw .sub2EB4 : db 4

.pattern18_0
  !loop : dw .sub2E1E : db 1
  db 24
  !d5
  !f5
  !g5
  !c6
  !end

.pattern18_1
  !loop : dw .sub2E34 : db 1

.pattern18_2
  !loop : dw .sub2E58 : db 1
  !as2
  db 6
  !rest
  !as2
  db 12,$1F
  !as3
  db 12,$7F
  !as2
  !c3
  db 12,$2F
  !c4
  db 24,$7F
  !c3

.pattern18_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2E88 : db 2
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern18_4
  !loop : dw .sub2CF1 : db 1
  !volume,120
  !dynamicVolume,48,80
  !f5
  !volume,120
  !dynamicVolume,24,100
  db 24
  !g5
  !volume,120
  !dynamicVolume,24,100
  !c6

.pattern18_5
  !loop : dw .sub2D2E : db 1
  !volume,120
  !dynamicVolume,48,80
  !d5
  !volume,120
  !dynamicVolume,24,100
  db 24
  !e5
  !volume,120
  !dynamicVolume,24,100
  !g5

.pattern18_6
  !loop : dw .sub2E90 : db 1

.pattern18_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub2EE1 : db 2
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)

.pattern19_0
  !echo,%11111111,70,70
  db 48,$6F
  !a5
  db 24
  !c6
  !a5
  !loop : dw .sub2EEA : db 1
  !end

.pattern19_1
  !instr,!instr05
  !volume,180
  !pan,10
  db 48,$7F
  !a5
  db 24
  !c6
  !a5
  !loop : dw .sub2EEA : db 1

.pattern19_2
  db 96,$7F
  !ds3
  !d3
  !cs3
  !c3

.pattern19_3
  !loop : dw .sub2EF9 : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)

.pattern19_4
  !instr,!instr0A
  !pan,10
  !loop : dw .sub2EFE : db 1
  !volume,80
  !dynamicVolume,96,160
  db 72
  !e5
  db 12
  !f5
  !g5

.pattern19_5
  !instr,!instr0A
  !pan,13
  !volume,80
  !dynamicVolume,96,160
  db 96,$7F
  !ds5
  !volume,80
  !dynamicVolume,96,120
  db 48
  !d5
  !volume,80
  !dynamicVolume,48,120
  !d5
  !volume,80
  !dynamicVolume,72,160
  db 96
  !cs5
  !volume,80
  !dynamicVolume,96,160
  !c5

.pattern19_6
  !instr,!instr0A
  !pan,7
  !loop : dw .sub2F1B : db 1
  !volume,80
  !dynamicVolume,72,160
  db 96
  !as4
  !volume,80
  !dynamicVolume,96,160
  !a4

.pattern19_7
  db 47
  !rest
  db 1,$7F
  %percNote(!instr0E-!instr0C)
  db 48
  %percNote(!instr0E-!instr0C)
  !loop : dw .sub2F31 : db 3

.pattern20_0
  db 48,$6F
  !a5
  db 24
  !c6
  !a5
  !g5
  !a5
  !f5
  !c5
  !cs5
  !f5
  !g5
  !c6
  db 96
  !g5
  !end

.pattern20_1
  db 48,$7F
  !a5
  db 24
  !c6
  !a5
  !g5
  !a5
  !f5
  !c5
  !cs5
  !f5
  !g5
  !c6
  db 96
  !g5

.pattern20_2
  db 96,$7F
  !ds3
  !d3
  !cs3
  !c3

.pattern20_3
  !loop : dw .sub2EF9 : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)

.pattern20_4
  !loop : dw .sub2EFE : db 1
  !volume,80
  !dynamicVolume,96,160
  db 48
  !e5
  !volume,80
  !dynamicVolume,48,160
  !g5

.pattern20_5
  !volume,80
  !dynamicVolume,96,160
  db 96,$7F
  !ds5
  !volume,80
  !dynamicVolume,96,160
  db 48
  !d5
  !volume,80
  !dynamicVolume,48,160
  !d5
  !volume,80
  !dynamicVolume,72,160
  db 96
  !cs5
  !volume,80
  !dynamicVolume,96,160
  db 48
  !c5
  !volume,80
  !dynamicVolume,48,160
  !e5

.pattern20_6
  !loop : dw .sub2F1B : db 1
  !volume,80
  !dynamicVolume,72,160
  db 96
  !gs4
  !volume,80
  !dynamicVolume,96,160
  db 48
  !g4
  !volume,80
  !dynamicVolume,48,160
  !c5

.pattern20_7
  db 47
  !rest
  db 1,$7F
  %percNote(!instr0E-!instr0C)
  db 48
  %percNote(!instr0E-!instr0C)
  !loop : dw .sub2F31 : db 3

.sub2CB6
  db 12,$6F
  !f5
  !g5
  !f5
  !c5
  db 48
  !d5
  db 72,$4F
  !tie
  db 12,$6F
  !f5
  !g5
  !end

.sub2CC6
  db 48,$7F
  !d3
  !c3
  db 24
  !as2
  !c3
  db 48
  !d3
  db 12
  !d2
  !g2
  !a2
  !c3
  db 48
  !d3
  !end

.sub2CD7
  db 24,$6F
  !a5
  !c6
  db 36,$5F
  !g5
  db 12,$6F
  !c5
  db 24
  !f5
  !a5
  db 48,$5F
  !e5
  db 24,$6F
  !f5
  !a5
  db 12
  !g5
  !f5
  !d5
  !c5
  !end

.sub2CF1
  !volume,120
  !dynamicVolume,48,80
  db 48,$7F
  !a5
  !volume,120
  !dynamicVolume,48,80
  !g5
  !volume,120
  !dynamicVolume,48,80
  !f5
  !volume,120
  !dynamicVolume,48,80
  !e5
  !volume,120
  !dynamicVolume,48,80
  !f5
  !volume,120
  !dynamicVolume,48,80
  !f5
  !end

.sub2D18
  db 24,$7F
  !a6
  !c7
  db 36
  !g6
  db 12
  !c6
  db 24
  !f6
  !a6
  db 48
  !e6
  db 24
  !f6
  !a6
  db 12
  !g6
  !f6
  !d6
  !c6
  !end

.sub2D2E
  !volume,120
  !dynamicVolume,48,80
  db 48,$7F
  !f5
  !volume,120
  !dynamicVolume,48,80
  !e5
  !volume,120
  !dynamicVolume,48,80
  !d5
  !volume,120
  !dynamicVolume,48,80
  !cs5
  !volume,120
  !dynamicVolume,48,80
  !c5
  !volume,120
  !dynamicVolume,48,80
  !d5
  !end

.sub2D55
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.sub2D5F
  !volume,220
  db 24,$6F
  !f5
  !a5
  db 36
  !g5
  db 12
  !c5
  !end

.sub2D6A
  db 36
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 48
  %percNote(!instr0C-!instr0C)
  !end

.sub2D71
  db 72
  !rest
  db 24
  %percNote(!instr0E-!instr0C)
  !end

.sub2D76
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub2D7B
  db 12,$6F
  !d6
  !f6
  !d6
  !a5
  !c6
  !d6
  !d6
  !rest
  !d6
  !f6
  !d6
  !a5
  !c6
  !d6
  !d6
  !a5
  !g5
  !a5
  !c6
  !d6
  !c6
  !a5
  !g5
  !f5
  db 24
  !d5
  !f5
  db 12
  !g5
  !a5
  !f5
  !d5
  !end

.sub2D9E
  db 36
  !g5
  db 6
  !a5
  !c6
  db 24
  !d6
  !c6
  db 36
  !d6
  db 6
  !f6
  !g6
  db 24
  !a6
  !f6
  !e6
  !c6
  !a5
  !f5
  !end

.sub2DB3
  db 24,$7F
  !as2
  db 12
  !rest
  !as2
  db 24
  !as2
  !rest
  !a2
  db 12
  !rest
  !a2
  db 24
  !a2
  !rest
  !g2
  db 12
  !rest
  !g2
  db 24
  !g2
  !rest
  !end

.sub2DCB
  db 36
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.sub2DD3
  !volume,80
  !dynamicVolume,96,160
  db 96,$7F
  !d5
  !volume,80
  !dynamicVolume,96,160
  !e5
  !end

.sub2DE2
  !volume,80
  !dynamicVolume,96,160
  db 96,$7F
  !as4
  !volume,80
  !dynamicVolume,96,160
  !c5
  !end

.sub2DF1
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  !end

.sub2E0A
  db 36
  !g5
  db 6
  !a5
  !c6
  db 24
  !d6
  !c6
  !d6
  db 12
  !f6
  !g6
  db 24
  !a6
  !f6
  db 72
  !g6
  db 24
  !a6
  !end

.sub2E1E
  db 24,$6F
  !a5
  !c6
  db 36
  !g5
  db 12
  !c5
  db 24
  !f5
  !a5
  db 48
  !e5
  db 24
  !f5
  !a5
  db 12
  !g5
  !f5
  !d5
  !c5
  !end

.sub2E34
  db 12
  !rest
  db 12,$1F
  !f5
  !rest
  !f5
  !rest
  !e5
  !rest
  !e5
  !rest
  !f5
  !rest
  !f5
  !rest
  !e5
  !rest
  !e5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !g5
  !rest
  !g5
  !end

.sub2E58
  db 12,$7F
  !f3
  db 6
  !rest
  !f3
  db 12,$1F
  !f4
  db 12,$7F
  !f3
  !e3
  db 24
  !rest
  db 12
  !e3
  !d3
  db 6
  !rest
  !d3
  db 12,$1F
  !d4
  db 12,$7F
  !d3
  !cs3
  db 24
  !rest
  db 12
  !cs3
  !c3
  db 6
  !rest
  !c3
  db 12,$1F
  !c4
  db 12,$7F
  !c3
  !b2
  db 24
  !rest
  db 12
  !b2
  !end

.sub2E88
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.sub2E90
  db 12
  !rest
  db 12,$1F
  !c5
  !rest
  !c5
  !rest
  !c5
  !rest
  !c5
  !rest
  !d5
  !rest
  !d5
  !rest
  !cs5
  !rest
  !cs5
  !rest
  !c5
  !rest
  !c5
  !rest
  !d5
  !rest
  !d5
  !rest
  !d5
  !rest
  !d5
  !rest
  !e5
  !rest
  !e5
  !end

.sub2EB4
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr10-!instr0C)
  db 6
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  !end

.sub2EE1
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub2EEA
  !g5
  !a5
  db 48
  !f5
  db 24
  !f5
  !g5
  !f5
  !g5
  db 72
  !a5
  db 12
  !f5
  !g5
  !end

.sub2EF9
  db 96,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  !end

.sub2EFE
  !volume,80
  !dynamicVolume,96,160
  db 96,$7F
  !a5
  !volume,80
  !dynamicVolume,96,160
  db 48
  !g5
  !volume,80
  !dynamicVolume,48,160
  !f5
  !volume,80
  !dynamicVolume,72,160
  db 96
  !f5
  !end

.sub2F1B
  !volume,80
  !dynamicVolume,96,160
  db 96,$7F
  !c5
  !volume,80
  !dynamicVolume,96,160
  db 48
  !b4
  !volume,80
  !dynamicVolume,48,160
  !b4
  !end

.sub2F31
  db 47
  !rest
  db 1
  %percNote(!instr0E-!instr0C)
  db 48
  %percNote(!instr0E-!instr0C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
