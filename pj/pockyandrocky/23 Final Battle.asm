asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr07 = $17
!instr09 = $18
!instr0A = $19
!instr0C = $1A
!instr0D = $1B
!instr0F = $1C
!instr10 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr09,$8F,$EF,$B8,$01,$00
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0F,$8F,$E0,$B8,$07,$A0
  db !instr10,$8F,$E0,$B8,$07,$10
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample07,Sample07+1584
  dw Sample09,Sample09+27
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0F,Sample0F+729
  dw Sample10,Sample10+3375
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample07: incbin "Sample07.brr"
  Sample09: incbin "Sample09.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2D6C

Tracker2D6C:
  dw .pattern0
  dw .pattern1
-
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
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, .pattern2_7
.pattern3: dw .pattern3_0, 0, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, .pattern4_7
.pattern5: dw .pattern5_0, 0, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, 0, .pattern6_7
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, .pattern7_5, 0, .pattern7_7
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, 0, .pattern8_7
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, .pattern9_5, 0, .pattern9_7
.pattern10: dw .pattern10_0, .pattern10_1, .pattern10_2, .pattern10_3, .pattern10_4, .pattern10_5, 0, .pattern10_7
.pattern11: dw .pattern11_0, .pattern11_1, .pattern11_2, .pattern11_3, .pattern11_4, .pattern11_5, 0, .pattern11_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110111,70,70
  !echoParameters,6,72,3
  !musicVolume,200;255
  !tempo,31
  !end

.pattern1_0
  !instr,!instr0A
  !vibrato,12,30,72
  !subtranspose,10
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !a5
  !volume,80
  !dynamicVolume,96,180
  !b5
  !volume,80
  !dynamicVolume,96,180
  !c6
  !volume,80
  !dynamicVolume,96,180
  !d6
  !pitchSlide,46,4,181
  !end

.pattern1_1
  !instr,!instr09
  !vibrato,12,30,72
  !transpose,12
  !volume,120
  !pan,20
  db 24
  !rest
  db 6,$1F
  !e6
  !a6
  !c7
  !e7
  !a7
  !e7
  !c7
  !a6
  db 6,$15
  !a7
  !e7
  !c7
  !a6
  !loop : dw .sub33BB : db 1

.pattern1_2
  !instr,!instr07
  !volume,225
  !vibrato,24,30,72
  db 96,$7F
  !a2
  !g2
  !f2
  db 48
  !as2
  !as2

.pattern1_3
  !volume,255
  db 48,$7F
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 23
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub33F2 : db 2
  db 48
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 23
  %percNote(!instr0D-!instr0C)
  db 4,$77
  %percNote(!instr0D-!instr0C)
  db 5,$79
  %percNote(!instr0D-!instr0C)
  db 5,$7B
  %percNote(!instr0D-!instr0C)
  db 5,$7D
  %percNote(!instr0D-!instr0C)
  db 5,$7F
  %percNote(!instr0D-!instr0C)

.pattern1_4
  !instr,!instr0A
  !volume,255
  db 96,$7F
  !a2
  !g2
  !f2
  db 48
  !as2
  !as2

.pattern1_5
  !instr,!instr0A
  !vibrato,12,30,72
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !e4
  !volume,80
  !dynamicVolume,96,180
  !g4
  !volume,80
  !dynamicVolume,96,180
  !a4
  !volume,80
  !dynamicVolume,96,180
  !as4

.pattern1_6
  !instr,!instr09
  !vibrato,12,30,72
  !transpose,12
  !volume,120
  !pan,0
  db 23
  !rest
  db 6,$1F
  !e6
  !a6
  !c7
  !e7
  !a7
  !e7
  !c7
  !a6
  db 6,$15
  !a7
  !e7
  !c7
  !a6
  !loop : dw .sub33BB : db 1
  db 1
  !rest

.pattern1_7
  !volume,255
  !loop : dw .sub33FB : db 4

.pattern2_0
  !instr,!instr09
  !volume,180
  !vibrato,0,30,128
  db 96,$7F
  !e7
  !d7
  !c7
  !b6
  !end

.pattern2_1
  !transpose,0
  !pan,10
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub3410 : db 3

.pattern2_2
  db 6,$7F
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !e2
  db 6
  !e3
  db 12
  !e2
  !g2
  !g3
  db 6
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !c3
  db 6
  !c4
  db 12
  !c3
  !b2
  !b3
  db 6
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !e2
  db 6
  !e3
  db 12
  !e2
  !g2
  !g3
  db 6
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !c3
  db 6
  !c4
  db 12
  !c3
  !b2
  !b3

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
  !loop : dw .sub3415 : db 3

.pattern2_4
  !instr,!instr0A
  !vibrato,12,30,72
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !a5
  !dynamicVolume,96,80
  !tie
  !dynamicVolume,96,180
  !a5
  !dynamicVolume,96,80
  !tie

.pattern2_5
  !instr,!instr0A
  !vibrato,12,30,72
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !e5
  !dynamicVolume,96,80
  !tie
  !dynamicVolume,96,180
  !e5
  !dynamicVolume,96,80
  !tie

.pattern2_7
  !loop : dw .sub3421 : db 4

.pattern3_0
  db 96,$7F
  !g6
  !c7
  !ds7
  !g7
  !end

.pattern3_2
  !loop : dw .sub3442 : db 1

.pattern3_3
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
  !loop : dw .sub3415 : db 3

.pattern3_4
  !dynamicVolume,96,180
  db 96,$7F
  !c6
  !dynamicVolume,96,80
  !tie
  !dynamicVolume,96,180
  !c6
  !dynamicVolume,96,80
  !tie

.pattern3_5
  !dynamicVolume,96,180
  db 96,$7F
  !g5
  !dynamicVolume,96,80
  !tie
  !dynamicVolume,96,180
  !g5
  !dynamicVolume,96,80
  !tie

.pattern3_7
  !loop : dw .sub3421 : db 4

.pattern4_0
  !instr,!instr09
  !volume,180
  !vibrato,0,30,128
  db 96,$7F
  !e7
  !d7
  !c7
  !b6
  !end

.pattern4_1
  !transpose,0
  !pan,10
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub3410 : db 3

.pattern4_2
  db 6,$7F
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !e2
  db 6
  !e3
  db 12
  !e2
  !g2
  !g3
  db 6
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !c3
  db 6
  !c4
  db 12
  !c3
  !b2
  !b3
  db 6
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !e2
  db 6
  !e3
  db 12
  !e2
  !g2
  !g3
  db 6
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !c3
  db 6
  !c4
  db 12
  !c3
  !b2
  !b3

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
  !loop : dw .sub3415 : db 3

.pattern4_4
  !instr,!instr0A
  !vibrato,12,30,72
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !a5
  !dynamicVolume,96,80
  !tie
  !dynamicVolume,96,180
  !a5
  !dynamicVolume,96,80
  !tie

.pattern4_5
  !instr,!instr0A
  !vibrato,12,30,72
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !e5
  !dynamicVolume,96,80
  !tie
  !dynamicVolume,96,180
  !e5
  !dynamicVolume,96,80
  !tie

.pattern4_7
  !loop : dw .sub3421 : db 4

.pattern5_0
  db 96,$7F
  !g6
  !c7
  !ds7
  !g7
  !end

.pattern5_2
  !loop : dw .sub3442 : db 1

.pattern5_3
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
  !loop : dw .sub3415 : db 2
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
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern5_4
  !dynamicVolume,96,180
  db 96,$7F
  !c6
  !dynamicVolume,96,80
  !tie
  !dynamicVolume,96,180
  !c6
  !dynamicVolume,96,80
  !tie

.pattern5_5
  !dynamicVolume,96,180
  db 96,$7F
  !g5
  !dynamicVolume,96,80
  !tie
  !dynamicVolume,96,180
  !g5
  !dynamicVolume,96,80
  !tie

.pattern5_7
  !loop : dw .sub3421 : db 4

.pattern6_0
  db 36,$7F
  !a6
  db 6
  !as6
  !b6
  db 48
  !c7
  db 36
  !b6
  db 6
  !c7
  !cs7
  db 24
  !d7
  !as6
  db 36
  !a6
  db 6
  !as6
  !b6
  db 48
  !c7
  db 36
  !b6
  db 6
  !c7
  !cs7
  db 24
  !d7
  !as6
  !end

.pattern6_1
  !instr,!instr09
  !volume,180
  !vibrato,0,30,128
  db 36,$7F
  !e6
  db 6
  !f6
  !fs6
  db 48
  !g6
  db 36
  !fs6
  db 6
  !g6
  !gs6
  db 24
  !a6
  !f6
  db 36
  !e6
  db 6
  !f6
  !fs6
  db 48
  !g6
  db 36
  !fs6
  db 6
  !g6
  !gs6
  db 24
  !a6
  !f6

.pattern6_2
  db 18,$7F
  !a2
  !a2
  db 12
  !a2
  db 18
  !c3
  !c3
  db 12
  !c3
  db 18
  !b2
  !b2
  db 12
  !b2
  db 6
  !as2
  !rest
  db 12
  !as2
  db 6
  !as3
  db 18
  !as2
  !a2
  !a2
  db 12
  !a2
  db 18
  !c3
  !c3
  db 12
  !c3
  db 18
  !b2
  !b2
  db 12
  !b2
  db 6
  !as2
  !rest
  db 12
  !as2
  db 6
  !as3
  db 18
  !as2

.pattern6_3
  !loop : dw .sub3484 : db 1
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)

.pattern6_4
  !volume,80
  !dynamicVolume,48,180
  db 48,$7F
  !a5
  !volume,80
  !dynamicVolume,48,180
  !c6
  !volume,80
  !dynamicVolume,48,180
  !b5
  !volume,80
  !dynamicVolume,48,180
  !as5
  !volume,80
  !dynamicVolume,48,180
  !a5
  !volume,80
  !dynamicVolume,48,180
  !c6
  !volume,80
  !dynamicVolume,48,180
  !b5
  !volume,80
  !dynamicVolume,48,180
  !as5

.pattern6_5
  !volume,80
  !dynamicVolume,48,180
  db 48,$7F
  !e5
  !volume,80
  !dynamicVolume,48,180
  !g5
  !volume,80
  !dynamicVolume,48,180
  !fs5
  !volume,80
  !dynamicVolume,48,180
  !f5
  !volume,80
  !dynamicVolume,48,180
  !e5
  !volume,80
  !dynamicVolume,48,180
  !g5
  !volume,80
  !dynamicVolume,48,180
  !fs5
  !volume,80
  !dynamicVolume,48,180
  !f5

.pattern6_7
  !loop : dw .sub3421 : db 4

.pattern7_0
  db 36,$7F
  !c7
  db 6
  !cs7
  !d7
  db 48
  !ds7
  db 36
  !d7
  db 6
  !ds7
  !e7
  db 24
  !f7
  !cs7
  db 36
  !c7
  db 6
  !cs7
  !d7
  db 48
  !ds7
  db 36
  !d7
  db 6
  !ds7
  !e7
  db 24
  !f7
  !gs7
  db 18
  !g7
  !g7
  db 12
  !g7
  !g7
  db 36
  !rest
  !end

.pattern7_1
  db 36,$7F
  !g6
  db 6
  !gs6
  !a6
  db 48
  !as6
  db 36
  !a6
  db 6
  !as6
  !b6
  db 24
  !c7
  !gs6
  db 36
  !g6
  db 6
  !gs6
  !a6
  db 48
  !as6
  db 36
  !a6
  db 6
  !as6
  !b6
  db 24
  !c7
  !ds7
  db 18
  !d7
  !d7
  db 12
  !d7
  !d7
  db 36
  !rest

.pattern7_2
  db 18,$7F
  !c3
  !c3
  db 12
  !c3
  db 18
  !ds3
  !ds3
  db 12
  !ds3
  db 18
  !d3
  !d3
  db 12
  !d3
  db 6
  !cs3
  !rest
  db 12
  !cs3
  db 6
  !cs4
  db 18
  !cs3
  !c3
  !c3
  db 12
  !c3
  db 18
  !ds3
  !ds3
  db 12
  !ds3
  db 18
  !d3
  !d3
  db 12
  !d3
  db 6
  !cs3
  !rest
  db 12
  !cs3
  db 6
  !cs4
  db 18
  !cs3
  !g2
  !g2
  db 12
  !g2
  !g2
  db 36
  !rest

.pattern7_3
  !loop : dw .sub3484 : db 1
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)

.pattern7_4
  !volume,80
  !dynamicVolume,48,180
  db 48,$7F
  !c6
  !volume,80
  !dynamicVolume,48,180
  !ds6
  !volume,80
  !dynamicVolume,48,180
  !d6
  !volume,80
  !dynamicVolume,48,180
  !cs6
  !volume,80
  !dynamicVolume,48,180
  !c6
  !volume,80
  !dynamicVolume,48,180
  !ds6
  !volume,80
  !dynamicVolume,48,180
  !d6
  !volume,80
  !dynamicVolume,48,180
  !cs6
  db 12,$5F
  !g6
  db 6
  !rest
  db 12
  !g6
  db 6
  !rest
  db 12
  !g6
  !g6
  db 36
  !rest

.pattern7_5
  !volume,80
  !dynamicVolume,48,180
  db 48,$7F
  !g5
  !volume,80
  !dynamicVolume,48,180
  !as5
  !volume,80
  !dynamicVolume,48,180
  !a5
  !volume,80
  !dynamicVolume,48,180
  !gs5
  !volume,80
  !dynamicVolume,48,180
  !g5
  !volume,80
  !dynamicVolume,48,180
  !as5
  !volume,80
  !dynamicVolume,48,180
  !a5
  !volume,80
  !dynamicVolume,48,180
  !gs5
  db 12,$5F
  !d6
  db 6
  !rest
  db 12
  !d6
  db 6
  !rest
  db 12
  !d6
  !d6
  db 36
  !rest

.pattern7_7
  !loop : dw .sub3421 : db 4
  db 18,$75
  %percNote(!instr10-!instr0C)
  %percNote(!instr10-!instr0C)
  db 12
  %percNote(!instr10-!instr0C)
  db 48,$77
  %percNote(!instr0F-!instr0C)

.pattern8_0
  !loop : dw .sub34AE : db 1
  !end

.pattern8_1
  !instr,!instr04
  !volume,180
  !vibrato,12,24,64
  !loop : dw .sub34AE : db 1

.pattern8_2
  db 6,$7F
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !a2
  db 6
  !a3
  db 12
  !a2
  !g2
  !g3
  db 6
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !a2
  db 6
  !a3
  db 12
  !a2
  !g2
  !g3
  !loop : dw .sub34C2 : db 2

.pattern8_3
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
  !loop : dw .sub3415 : db 3

.pattern8_4
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !e5
  !volume,80
  !dynamicVolume,96,180
  !g5
  !volume,80
  !dynamicVolume,96,180
  !g5
  !loop : dw .sub34D3 : db 1

.pattern8_5
  !loop : dw .sub34DA : db 1
  !volume,80
  !dynamicVolume,96,180
  !e5
  !loop : dw .sub34D3 : db 1
  !volume,80
  !dynamicVolume,96,180
  !b4

.pattern8_7
  !loop : dw .sub3421 : db 4

.pattern9_0
  !loop : dw .sub34E3 : db 1
  db 36
  !b6
  db 60
  !g6
  !end

.pattern9_1
  db 96,$7F
  !c6
  !d6
  !f6
  !g6

.pattern9_2
  !loop : dw .sub34F6 : db 1
  db 6
  !g2
  !rest
  db 12
  !g2
  db 6
  !g3
  db 12
  !g2
  !g2
  db 6
  !g3
  db 12
  !g2
  !b2
  !b3

.pattern9_3
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
  !loop : dw .sub3415 : db 3

.pattern9_4
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !f5
  !volume,80
  !dynamicVolume,96,180
  !g5
  !volume,80
  !dynamicVolume,96,180
  !a5
  !volume,80
  !dynamicVolume,96,180
  !b5

.pattern9_5
  !loop : dw .sub34DA : db 1
  !loop : dw .sub34D3 : db 1
  !volume,80
  !dynamicVolume,96,180
  !f5
  !volume,80
  !dynamicVolume,96,180
  !g5

.pattern9_7
  !loop : dw .sub3421 : db 4

.pattern10_0
  !loop : dw .sub34AE : db 1
  !end

.pattern10_1
  !instr,!instr04
  !volume,180
  !vibrato,12,24,64
  !loop : dw .sub34AE : db 1

.pattern10_2
  db 6,$7F
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !a2
  db 6
  !a3
  db 12
  !a2
  !g2
  !g3
  db 6
  !a2
  !rest
  db 12
  !a2
  db 6
  !c3
  db 12
  !a2
  !a2
  db 6
  !a3
  db 12
  !a2
  !g2
  !g3
  !loop : dw .sub34C2 : db 2

.pattern10_3
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
  !loop : dw .sub3415 : db 3

.pattern10_4
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !e5
  !volume,80
  !dynamicVolume,96,180
  !g5
  !volume,80
  !dynamicVolume,96,180
  !g5
  !loop : dw .sub34D3 : db 1

.pattern10_5
  !loop : dw .sub34DA : db 1
  !volume,80
  !dynamicVolume,96,180
  !e5
  !loop : dw .sub34D3 : db 1
  !volume,80
  !dynamicVolume,96,180
  !b4

.pattern10_7
  !loop : dw .sub3421 : db 4

.pattern11_0
  !loop : dw .sub34E3 : db 1
  !as6
  db 72
  !f7
  !end

.pattern11_1
  db 96,$7F
  !c6
  !d6
  !f6
  db 24
  !f6
  db 72
  !f6

.pattern11_2
  !loop : dw .sub34F6 : db 1
  db 6
  !as2
  !d3
  !f3
  !as3
  db 72
  !as2

.pattern11_3
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
  !loop : dw .sub3415 : db 2
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern11_4
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !f5
  !volume,80
  !dynamicVolume,96,180
  !g5
  !volume,80
  !dynamicVolume,96,180
  !a5
  db 24,$2F
  !as5
  !dynamicVolume,72,120
  db 72,$7F
  !f6

.pattern11_5
  !loop : dw .sub34DA : db 1
  !loop : dw .sub34D3 : db 1
  !volume,80
  !dynamicVolume,96,180
  !f5
  db 24,$2F
  !f5
  !dynamicVolume,72,120
  db 72,$7F
  !d6

.pattern11_7
  !loop : dw .sub3421 : db 4

.sub33BB
  db 24
  !rest
  db 6,$1F
  !d6
  !g6
  !b6
  !d7
  !g7
  !d7
  !b6
  !g6
  db 6,$15
  !g7
  !d7
  !b6
  !g6
  db 24
  !rest
  db 6,$1F
  !f6
  !a6
  !c7
  !f7
  !a7
  !f7
  !c7
  !a6
  db 6,$15
  !a7
  !f7
  !c7
  !a6
  db 24
  !rest
  db 6,$1F
  !as5
  !d6
  !f6
  !as6
  !d7
  !f7
  !as7
  db 6,$17
  !f6
  !as6
  !d7
  !f7
  !as7
  !end

.sub33F2
  db 48
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 23
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  !end

.sub33FB
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 24,$75
  %percNote(!instr10-!instr0C)
  db 12
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  !end

.sub3410
  !rest
  !rest
  !rest
  !rest
  !end

.sub3415
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

.sub3421
  db 6,$77
  %percNote(!instr0F-!instr0C)
  db 6,$73
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$77
  %percNote(!instr0F-!instr0C)
  db 6,$73
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$77
  %percNote(!instr0F-!instr0C)
  db 6,$73
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$77
  %percNote(!instr0F-!instr0C)
  db 6,$73
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub3442
  db 6,$7F
  !c3
  !rest
  db 12
  !c3
  db 6
  !ds3
  db 12
  !c3
  !g2
  db 6
  !g3
  db 12
  !g2
  !as2
  !as3
  db 6
  !c3
  !rest
  db 12
  !c3
  db 6
  !ds3
  db 12
  !c3
  !ds3
  db 6
  !ds4
  db 12
  !ds3
  !d3
  !d4
  db 6
  !c3
  !rest
  db 12
  !c3
  db 6
  !ds3
  db 12
  !c3
  !g2
  db 6
  !g3
  db 12
  !g2
  !as2
  !as3
  db 6
  !c3
  !rest
  db 12
  !c3
  db 6
  !ds3
  db 12
  !c3
  !ds3
  db 6
  !ds4
  db 12
  !ds3
  !d3
  !d4
  !end

.sub3484
  db 18,$7F
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
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
  db 6
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !end

.sub34AE
  db 84,$7F
  !e6
  db 6
  !f6
  !fs6
  db 72
  !g6
  db 24
  !d6
  db 76
  !g6
  db 5
  !fs6
  !f6
  !e6
  !ds6
  db 96
  !d6
  !end

.sub34C2
  db 6
  !g2
  !rest
  db 12
  !g2
  db 6
  !b2
  db 12
  !g2
  !g2
  db 6
  !g3
  db 12
  !g2
  !f2
  !f3
  !end

.sub34D3
  !volume,80
  !dynamicVolume,96,180
  !d5
  !end

.sub34DA
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !c5
  !end

.sub34E3
  db 36,$7F
  !f6
  !g6
  db 24
  !a6
  db 36
  !g6
  db 48
  !d6
  db 6
  !ds6
  !e6
  db 36
  !f6
  !g6
  db 24
  !a6
  !end

.sub34F6
  db 6,$7F
  !f2
  !rest
  db 12
  !f2
  db 6
  !f3
  db 12
  !f2
  !f2
  db 6
  !f3
  db 12
  !f2
  !f2
  !f3
  db 6
  !g2
  !rest
  db 12
  !g2
  db 6
  !g3
  db 12
  !g2
  !g2
  db 6
  !g3
  db 12
  !g2
  !e2
  !e3
  db 6
  !f2
  !rest
  db 12
  !f2
  db 6
  !f3
  db 12
  !f2
  !f2
  db 6
  !f3
  db 12
  !f2
  !f2
  !f3
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
