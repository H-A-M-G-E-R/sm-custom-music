asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr07 = $17
!instr0A = $18
!instr0C = $19
!instr0D = $1A
!instr0F = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0F,$8F,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample07,Sample07+1584
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0F,Sample0F+729
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample07: incbin "Sample07.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0F: incbin "Sample0F.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker37D1

Tracker37D1:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw $008C,-

.pattern0: dw .pattern0_0, .pattern0_1, 0, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, .pattern6_6, .pattern6_7
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, .pattern7_5, .pattern7_6, .pattern7_7
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, .pattern8_6, .pattern8_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110111,50,50
  !echoParameters,6,72,3
  !tempo,35
  !musicVolume,200;255
  db 24
  !rest
  !rest
  !rest
  !end

.pattern0_1
  !instr,!instr0A
  !volume,180
  db 6,$7F
  !e6
  !ds6
  !d6
  !cs6
  !c6
  !b5
  !as5
  !a5
  !gs5
  !g5
  !fs5
  !f5
  !end

.pattern0_3
  !volume,255
  db 12
  !rest
  db 6,$70
  %percNote(!instr0D-!instr0C)
  db 6,$71
  %percNote(!instr0D-!instr0C)
  db 6,$72
  %percNote(!instr0D-!instr0C)
  db 6,$73
  %percNote(!instr0D-!instr0C)
  db 6,$75
  %percNote(!instr0D-!instr0C)
  db 6,$77
  %percNote(!instr0D-!instr0C)
  db 6,$79
  %percNote(!instr0D-!instr0C)
  db 6,$7B
  %percNote(!instr0D-!instr0C)
  db 6,$7D
  %percNote(!instr0D-!instr0C)
  db 6,$7F
  %percNote(!instr0D-!instr0C)
  !end

.pattern0_4
  !instr,!instr0A
  !volume,160
  db 6,$7F
  !b5
  !as5
  !a5
  !gs5
  !g5
  !fs5
  !f5
  !e5
  !ds5
  !d5
  !cs5
  !c5
  !end

.pattern1_0
  !instr,!instr04
  !volume,200
  !vibrato,24,24,96
  db 96,$6F
  !e6
  !b6
  !a6
  !e6
  !end

.pattern1_1
  !instr,!instr0A
  !vibrato,12,24,128
  !pan,7
  !volume,80
  !dynamicVolume,96,200
  !loop : dw .sub3AED : db 1
  !volume,80
  !dynamicVolume,96,200
  !loop : dw .sub3AED : db 1
  !end

.pattern1_2
  !instr,!instr07
  !volume,220
  !pan,0
  !loop : dw .sub3AF9 : db 1
  !end

.pattern1_3
  !volume,255
  !loop : dw .sub3B11 : db 1
  db 12
  %percNote(!instr0C-!instr0C)
  db 35
  %percNote(!instr0C-!instr0C)
  db 1,$79
  %percNote(!instr0D-!instr0C)
  db 12,$7F
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  !end

.pattern1_4
  !instr,!instr0A
  !vibrato,12,24,128
  !pan,13
  !volume,80
  !dynamicVolume,96,180
  !loop : dw .sub3B2F : db 1
  !volume,80
  !dynamicVolume,96,180
  !loop : dw .sub3B2F : db 1
  !end

.pattern1_5
  !instr,!instr04
  !volume,180
  !vibrato,24,24,96
  !subtranspose,4
  db 96,$6F
  !e5
  !b5
  !a5
  !e5
  !end

.pattern1_6
  !instr,!instr07
  !volume,220
  !subtranspose,24
  !pan,20
  !loop : dw .sub3AF9 : db 1
  !end

.pattern1_7
  !volume,255
  !loop : dw .sub3B3B : db 4
  !end

.pattern2_0
  db 96,$6F
  !f6
  !c7
  !a6
  db 48
  !c7
  !d7
  !end

.pattern2_1
  !loop : dw .sub3B54 : db 2
  !end

.pattern2_2
  !loop : dw .sub3B65 : db 1
  !end

.pattern2_3
  !loop : dw .sub3B11 : db 1
  db 12
  %percNote(!instr0C-!instr0C)
  db 35
  %percNote(!instr0C-!instr0C)
  db 1,$79
  %percNote(!instr0D-!instr0C)
  db 12,$7F
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern2_4
  !loop : dw .sub3B7D : db 2
  !end

.pattern2_5
  db 96,$6F
  !f5
  !c6
  !a5
  db 48
  !c6
  !d6
  !end

.pattern2_6
  !loop : dw .sub3B65 : db 1
  !end

.pattern2_7
  !loop : dw .sub3B3B : db 4
  !end

.pattern3_0
  !instr,!instr04
  !volume,200
  !vibrato,24,24,96
  db 96,$6F
  !e6
  !b6
  !a6
  !e6
  !end

.pattern3_1
  !instr,!instr0A
  !vibrato,12,24,128
  !pan,7
  !volume,80
  !dynamicVolume,96,200
  !loop : dw .sub3AED : db 1
  !volume,80
  !dynamicVolume,96,200
  !loop : dw .sub3AED : db 1
  !end

.pattern3_2
  !instr,!instr07
  !volume,220
  !pan,0
  !loop : dw .sub3AF9 : db 1
  !end

.pattern3_3
  !volume,255
  !loop : dw .sub3B11 : db 1
  db 12
  %percNote(!instr0C-!instr0C)
  db 35
  %percNote(!instr0C-!instr0C)
  db 1,$79
  %percNote(!instr0D-!instr0C)
  db 12,$7F
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  !end

.pattern3_4
  !instr,!instr0A
  !vibrato,12,24,128
  !pan,13
  !volume,80
  !dynamicVolume,96,180
  !loop : dw .sub3B2F : db 1
  !volume,80
  !dynamicVolume,96,180
  !loop : dw .sub3B2F : db 1
  !end

.pattern3_5
  !instr,!instr04
  !volume,180
  !vibrato,24,24,96
  !subtranspose,4
  db 96,$6F
  !e5
  !b5
  !a5
  !e5
  !end

.pattern3_6
  !instr,!instr07
  !volume,220
  !subtranspose,24
  !pan,20
  !loop : dw .sub3AF9 : db 1
  !end

.pattern3_7
  !volume,255
  !loop : dw .sub3B3B : db 4
  !end

.pattern4_0
  db 96,$6F
  !f6
  !c7
  !a6
  db 48
  !c7
  !d7
  !end

.pattern4_1
  !loop : dw .sub3B54 : db 1
  !loop : dw .sub3C43 : db 1
  db 12
  !f5
  !f5
  db 12,$75
  !f5
  !rest
  db 12,$4F
  !c5
  !cs5
  !d5
  !ds5
  !end

.pattern4_2
  !loop : dw .sub3B65 : db 1
  !end

.pattern4_3
  !loop : dw .sub3B11 : db 1
  db 12
  %percNote(!instr0C-!instr0C)
  db 35
  %percNote(!instr0C-!instr0C)
  db 1,$79
  %percNote(!instr0D-!instr0C)
  db 12,$7F
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern4_4
  !loop : dw .sub3B7D : db 1
  !loop : dw .sub3C4C : db 1
  db 12
  !c5
  !c5
  db 12,$75
  !c5
  !rest
  db 12,$4F
  !g4
  !gs4
  !a4
  !as4
  !end

.pattern4_5
  db 96,$6F
  !f5
  !c6
  !a5
  db 48
  !c6
  !d6
  !end

.pattern4_6
  !loop : dw .sub3B65 : db 1
  !end

.pattern4_7
  !loop : dw .sub3B3B : db 4
  !end

.pattern5_0
  db 36,$6F
  !e6
  db 48
  !g6
  db 12
  !fs6
  db 36
  !tie
  db 44
  !f6
  db 8
  !d6
  !ds6
  db 36
  !e6
  db 48
  !g6
  db 12
  !fs6
  db 36
  !tie
  !f6
  db 8
  !e6
  !f6
  !fs6
  !end

.pattern5_1
  !volume,180
  db 36,$7F
  !e5
  db 48
  !d5
  db 12
  !cs5
  db 36
  !tie
  db 60
  !c5
  db 36
  !e5
  db 48
  !d5
  db 12
  !cs5
  db 36
  !tie
  db 60
  !c5
  !end

.pattern5_2
  !loop : dw .sub3B8E : db 1
  !end

.pattern5_3
  !loop : dw .sub3BB1 : db 1
  !loop : dw .sub3BC6 : db 1
  !end

.pattern5_4
  !volume,160
  db 36,$7F
  !b4
  db 48
  !a4
  db 12
  !gs4
  db 36
  !tie
  db 60
  !g4
  db 36
  !b4
  db 48
  !a4
  db 12
  !gs4
  db 36
  !tie
  db 60
  !g4
  !end

.pattern5_5
  db 36,$6F
  !b5
  db 48
  !d6
  db 12
  !cs6
  db 36
  !tie
  db 44
  !c6
  db 8
  !a5
  !as5
  db 36
  !b5
  db 48
  !d6
  db 12
  !cs6
  db 36
  !tie
  !c6
  db 8
  !b5
  !c6
  !cs6
  !end

.pattern5_6
  !loop : dw .sub3B8E : db 1
  !end

.pattern5_7
  !loop : dw .sub3B3B : db 4
  !end

.pattern6_0
  !loop : dw .sub3BD9 : db 1
  db 36
  !tie
  db 60
  !d7
  !end

.pattern6_1
  !loop : dw .sub3BEE : db 1
  db 36
  !tie
  db 60
  !a5
  !end

.pattern6_2
  !loop : dw .sub3C00 : db 1
  !tie
  !c3
  !rest
  db 48
  !d3
  db 12
  !rest
  !end

.pattern6_3
  !loop : dw .sub3BB1 : db 1
  !loop : dw .sub3BC6 : db 1
  !end

.pattern6_4
  !loop : dw .sub3C1C : db 1
  db 36
  !tie
  db 60
  !fs5
  !end

.pattern6_5
  !loop : dw .sub3C2E : db 1
  db 36
  !tie
  db 60
  !a6
  !end

.pattern6_6
  !loop : dw .sub3C00 : db 1
  !tie
  !c3
  !rest
  db 48
  !d3
  db 12
  !rest
  !end

.pattern6_7
  !loop : dw .sub3B3B : db 4
  !end

.pattern7_0
  db 36,$6F
  !e6
  db 48
  !g6
  db 12
  !fs6
  db 36
  !tie
  db 44
  !f6
  db 8
  !d6
  !ds6
  db 36
  !e6
  db 48
  !g6
  db 12
  !fs6
  db 36
  !tie
  !f6
  db 8
  !e6
  !f6
  !fs6
  !end

.pattern7_1
  !volume,180
  db 36,$7F
  !e5
  db 48
  !d5
  db 12
  !cs5
  db 36
  !tie
  db 60
  !c5
  db 36
  !e5
  db 48
  !d5
  db 12
  !cs5
  db 36
  !tie
  db 60
  !c5
  !end

.pattern7_2
  !loop : dw .sub3B8E : db 1
  !end

.pattern7_3
  !loop : dw .sub3BB1 : db 1
  !loop : dw .sub3BC6 : db 1
  !end

.pattern7_4
  !volume,160
  db 36,$7F
  !b4
  db 48
  !a4
  db 12
  !gs4
  db 36
  !tie
  db 60
  !g4
  db 36
  !b4
  db 48
  !a4
  db 12
  !gs4
  db 36
  !tie
  db 60
  !g4
  !end

.pattern7_5
  db 36,$6F
  !b5
  db 48
  !d6
  db 12
  !cs6
  db 36
  !tie
  db 44
  !c6
  db 8
  !a5
  !as5
  db 36
  !b5
  db 48
  !d6
  db 12
  !cs6
  db 36
  !tie
  !c6
  db 8
  !b5
  !c6
  !cs6
  !end

.pattern7_6
  !loop : dw .sub3B8E : db 1
  !end

.pattern7_7
  !loop : dw .sub3B3B : db 4
  !end

.pattern8_0
  !loop : dw .sub3BD9 : db 1
  db 36
  !tie
  db 60
  !f7
  db 96,$78
  !tie
  !end

.pattern8_1
  !loop : dw .sub3BEE : db 1
  db 36
  !tie
  db 60
  !c6
  !dynamicVolume,96,100
  db 96
  !tie
  !end

.pattern8_2
  !loop : dw .sub3C00 : db 1
  !tie
  !c3
  !rest
  db 60
  !f2
  db 96
  !tie
  !end

.pattern8_3
  !loop : dw .sub3BB1 : db 1
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 36
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 11
  !tie
  db 1
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 60
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern8_4
  !loop : dw .sub3C1C : db 1
  db 36
  !tie
  db 60
  !a5
  !dynamicVolume,95,100
  db 96
  !tie
  !end

.pattern8_5
  !loop : dw .sub3C2E : db 1
  db 36
  !tie
  db 60
  !c7
  db 96,$78
  !tie
  !end

.pattern8_6
  !loop : dw .sub3C00 : db 1
  !tie
  !c3
  !rest
  db 60
  !f2
  db 24
  !rest
  !rest
  !rest
  !rest
  !end

.pattern8_7
  !loop : dw .sub3B3B : db 5
  !end

.sub3AED
  db 96,$7F
  !e5
  db 12
  !e5
  !e5
  db 12,$75
  !e5
  db 60
  !rest
  !end

.sub3AF9
  db 12,$6F
  !e2
  db 24
  !rest
  db 60
  !e2
  db 12
  !e2
  !e2
  db 72
  !rest
  db 12
  !e2
  db 24
  !rest
  db 60
  !e2
  db 12
  !e2
  !e2
  db 72
  !rest
  !end

.sub3B11
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 36
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 35
  %percNote(!instr0C-!instr0C)
  db 1,$79
  %percNote(!instr0D-!instr0C)
  db 12,$7F
  %percNote(!instr0D-!instr0C)
  db 36
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 36
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.sub3B2F
  db 96,$7F
  !b4
  db 12
  !b4
  !b4
  db 12,$75
  !b4
  db 60
  !rest
  !end

.sub3B3B
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

.sub3B54
  !volume,80
  !dynamicVolume,96,200
  db 96,$7F
  !f5
  db 12
  !f5
  !f5
  db 12,$75
  !f5
  db 60
  !rest
  !end

.sub3B65
  db 12,$6F
  !f2
  db 24
  !rest
  db 60
  !f2
  db 12
  !f2
  !f2
  db 72
  !rest
  db 12
  !f2
  db 24
  !rest
  db 60
  !f2
  db 12
  !f2
  !f2
  db 72
  !rest
  !end

.sub3B7D
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !c5
  db 12
  !c5
  !c5
  db 12,$75
  !c5
  db 60
  !rest
  !end

.sub3C43
  !volume,80
  !dynamicVolume,96,200
  db 96,$7F
  !f5
  !end

.sub3C4C
  !volume,80
  !dynamicVolume,96,180
  db 96,$7F
  !c5
  !end

.sub3B8E
  db 12,$7F
  !e2
  !e2
  !rest
  db 24
  !g2
  db 12
  !g2
  !rest
  !fs2
  !tie
  !fs2
  !rest
  db 48
  !f2
  db 12
  !rest
  !e2
  !e2
  !rest
  db 24
  !g2
  db 12
  !g2
  !rest
  !fs2
  !tie
  !fs2
  !rest
  db 48
  !f2
  db 12
  !rest
  !end

.sub3BB1
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 36
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  !tie
  db 12
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.sub3BC6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 36
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  !tie
  db 12
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.sub3BD9
  db 36,$6F
  !g6
  db 48
  !as6
  db 12
  !a6
  db 36
  !tie
  db 48
  !gs6
  db 6
  !f6
  !fs6
  db 36
  !g6
  db 48
  !as6
  db 12
  !c7
  !end

.sub3BEE
  db 36,$7F
  !g5
  db 48
  !f5
  db 12
  !e5
  db 36
  !tie
  db 60
  !ds5
  db 36
  !g5
  db 48
  !f5
  db 12
  !g5
  !end

.sub3C00
  db 12,$7F
  !g2
  !g2
  !rest
  db 24
  !as2
  db 12
  !as2
  !rest
  !a2
  !tie
  !a2
  !rest
  db 48
  !gs2
  db 12
  !rest
  !g2
  !g2
  !rest
  db 24
  !as2
  db 12
  !as2
  !rest
  !c3
  !end

.sub3C1C
  db 36,$7F
  !d5
  db 48
  !d5
  db 12
  !cs5
  db 36
  !tie
  db 60
  !c5
  db 36
  !d5
  db 48
  !d5
  db 12
  !e5
  !end

.sub3C2E
  db 36,$6F
  !d6
  db 48
  !f6
  db 12
  !e6
  db 36
  !tie
  db 48
  !ds6
  db 6
  !c6
  !cs6
  db 36
  !d6
  db 48
  !f6
  db 12
  !g6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
