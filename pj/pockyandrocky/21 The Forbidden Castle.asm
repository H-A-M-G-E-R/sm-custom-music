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

spcblock $B210-($6E00-!p_sampleData) nspc ; sample data
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
  dw Tracker2422

Tracker2422:
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
  dw .pattern9
  dw .pattern10
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, 0, .pattern6_7
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, .pattern7_5, .pattern7_6, .pattern7_7
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, .pattern8_6, .pattern8_7
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, .pattern9_5, .pattern9_6, .pattern9_7
.pattern10: dw .pattern10_0, .pattern10_1, .pattern10_2, .pattern10_3, .pattern10_4, .pattern10_5, .pattern10_6, .pattern10_7

.pattern0_0
  !percBase,!instr0C
  !echo,%00110111,50,50
  !echoParameters,6,32,3
  !musicVolume,200;255
  !tempo,29
  !end

.pattern1_0
  !instr,!instr04
  !volume,80
  !dynamicVolume,24,180
  !vibrato,12,30,96
  db 96,$7F
  !e6
  !tie
  !tie
  !tie
  !end

.pattern1_1
  !instr,!instr09
  !volume,150
  !vibrato,12,36,96
  !transpose,24
  !subtranspose,2
  !pan,0
  !loop : dw .sub2ADC : db 1
  !c6
  !fs5
  !a5
  !e5
  !d6
  !b5
  !c6
  !a5

.pattern1_2
  !instr,!instr07
  !volume,225
  !loop : dw .sub2AF7 : db 1
  db 12
  !e2
  !rest
  !g2
  !rest
  !a2
  !a2
  !g2
  !e2
  db 12,$2F
  !fs2
  db 12,$7F
  !fs2
  !a2
  !c3
  !b2
  db 12,$1F
  !b3
  db 12,$7F
  !d3
  db 12,$1F
  !d4

.pattern1_3
  !volume,255
  !loop : dw .sub2B0E : db 1
  !loop : dw .sub2B20 : db 1

.pattern1_4
  !instr,!instr0A
  !volume,120
  !vibrato,12,30,96
  !pan,7
  !loop : dw .sub2B30 : db 1
  !c6
  db 12
  !d6
  db 12,$79
  !d6
  db 24,$7F
  !c6

.pattern1_5
  !instr,!instr0A
  !volume,120
  !vibrato,12,30,64
  !pan,13
  !loop : dw .sub2B41 : db 1
  !a5
  db 12
  !b5
  db 12,$79
  !b5
  db 24,$7F
  !a5

.pattern1_6
  !instr,!instr09
  !volume,150
  !vibrato,12,36,96
  !transpose,12
  !subtranspose,4
  !pan,20
  !loop : dw .sub2ADC : db 1
  !c6
  !fs5
  !a5
  !e5
  !d6
  !b5
  !c6
  !a5

.pattern1_7
  !volume,255
  !loop : dw .sub2B52 : db 1

.pattern2_0
  !volume,80
  !dynamicVolume,24,180
  db 96,$7F
  !e7
  !tie
  !tie
  db 12
  !fs7
  db 36
  !rest
  db 12
  !fs7
  !rest
  db 24
  !fs7
  !end

.pattern2_1
  !loop : dw .sub2ADC : db 1
  !cs6
  !fs5
  !a5
  !e6
  db 6,$1F
  !d6
  !fs6
  !a6
  !d7
  db 6,$19
  !d6
  !fs6
  !a6
  !d7

.pattern2_2
  !loop : dw .sub2AF7 : db 1
  db 12
  !e2
  !rest
  !g2
  !rest
  !a2
  !a2
  !g2
  !e2
  !fs2
  db 36
  !rest
  db 12
  !d3
  !rest
  db 24
  !d3

.pattern2_3
  !loop : dw .sub2B0E : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 47
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern2_4
  !loop : dw .sub2B30 : db 1
  db 12
  !cs6
  db 12,$79
  !cs6
  db 24
  !rest
  db 12,$7F
  !fs6
  db 12,$79
  !fs6
  db 12,$7F
  !fs6
  db 12,$79
  !fs6

.pattern2_5
  !loop : dw .sub2B41 : db 1
  db 12
  !a5
  db 12,$79
  !a5
  db 24
  !rest
  db 12,$7F
  !d6
  db 12,$79
  !d6
  db 12,$7F
  !d6
  db 12,$79
  !d6

.pattern2_6
  !loop : dw .sub2ADC : db 1
  !cs6
  !fs5
  !a5
  !e5
  db 6,$1F
  !d6
  !fs6
  !a6
  !d7
  db 6,$15
  !d6
  !fs6
  !a6
  !d7

.pattern2_7
  !loop : dw .sub2B75 : db 1
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  db 96
  %percNote(!instr0F-!instr0C)

.pattern3_0
  !instr,!instr09
  !volume,180
  !vibrato,12,24,64
  db 48,$6F
  !b6
  !a6
  !g6
  db 24
  !fs6
  !d6
  db 36
  !e6
  db 60
  !b6
  db 48
  !tie
  db 24
  !a6
  !c7
  !end

.pattern3_1
  !instr,!instr09
  !volume,165
  !vibrato,12,24,64
  !transpose,0
  !pan,10
  !subtranspose,4
  db 48,$6F
  !b6
  !a6
  !g6
  db 24
  !fs6
  !d6
  db 36
  !e6
  db 60
  !b6
  db 48
  !tie
  db 24
  !a6
  !c7

.pattern3_2
  !loop : dw .sub2B88 : db 1
  !loop : dw .sub2AF7 : db 1

.pattern3_3
  !loop : dw .sub2B0E : db 1
  !loop : dw .sub2B20 : db 1

.pattern3_4
  !instr,!instr0A
  !volume,132
  !pan,0
  !loop : dw .sub2BA5 : db 3
  db 12,$3F
  !a6
  db 12,$3B
  !a6
  db 12,$37
  !a6
  db 12,$33
  !a6
  db 12,$31
  !a6
  db 36
  !rest

.pattern3_5
  !instr,!instr0A
  !volume,132
  !pan,20
  !loop : dw .sub2BB7 : db 3
  db 12,$3F
  !fs6
  db 12,$3B
  !fs6
  db 12,$37
  !fs6
  db 12,$33
  !fs6
  db 12,$31
  !fs6
  db 36
  !rest

.pattern3_6
  !transpose,0
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub2BC9 : db 3

.pattern3_7
  !loop : dw .sub2B52 : db 1

.pattern4_0
  db 48,$6F
  !b6
  !a6
  !g6
  db 24
  !a6
  !d7
  db 96
  !b6
  db 48
  !tie
  db 12
  !a6
  !g6
  !fs6
  !d6
  !end

.pattern4_1
  db 48,$6F
  !b6
  !a6
  !g6
  db 24
  !a6
  !d7
  db 96
  !b6
  db 48
  !tie
  db 12
  !a5
  !g5
  !fs5
  !d5

.pattern4_2
  !loop : dw .sub2B88 : db 1
  !loop : dw .sub2AF7 : db 1

.pattern4_3
  !loop : dw .sub2B0E : db 1
  !loop : dw .sub2B20 : db 1

.pattern4_4
  !loop : dw .sub2BA5 : db 3
  db 12,$3F
  !a6
  db 12,$3B
  !a6
  db 12,$37
  !a6
  db 12,$33
  !a6
  db 12,$31
  !a6
  db 36
  !rest

.pattern4_5
  !loop : dw .sub2BB7 : db 3
  db 12,$3F
  !fs6
  db 12,$3B
  !fs6
  db 12,$37
  !fs6
  db 12,$33
  !fs6
  db 12,$31
  !fs6
  db 36
  !rest

.pattern4_7
  !loop : dw .sub2B52 : db 1

.pattern5_0
  db 36,$6F
  !e6
  db 60
  !b6
  db 36
  !e6
  db 60
  !a6
  db 36
  !e6
  !b6
  db 12
  !a6
  !g6
  db 24
  !a6
  !c7
  !b6
  !d7
  !end

.pattern5_1
  db 36,$6F
  !e5
  db 60
  !g6
  db 36
  !e5
  db 60
  !fs6
  db 36
  !e5
  !g6
  db 12
  !fs6
  !e6
  db 24
  !fs6
  !a6
  !g6
  !fs6

.pattern5_2
  !loop : dw .sub2B88 : db 1
  !loop : dw .sub2AF7 : db 1

.pattern5_3
  !loop : dw .sub2B0E : db 1
  !loop : dw .sub2B20 : db 1

.pattern5_4
  !loop : dw .sub2BA5 : db 3
  db 12,$3F
  !a6
  db 12,$3B
  !a6
  db 12,$37
  !a6
  db 12,$33
  !a6
  db 12,$31
  !a6
  db 36
  !rest

.pattern5_5
  !loop : dw .sub2BB7 : db 3
  db 12,$3F
  !fs6
  db 12,$3B
  !fs6
  db 12,$37
  !fs6
  db 12,$33
  !fs6
  db 12,$31
  !fs6
  db 36
  !rest

.pattern5_7
  !loop : dw .sub2B52 : db 1

.pattern6_0
  db 72,$6F
  !e7
  db 24
  !fs7
  db 48
  !g7
  db 12
  !a7
  !g7
  !e7
  !fs7
  db 24
  !fs7
  db 12
  !g7
  db 60
  !e7
  db 48,$7F
  !tie
  db 12
  !d7
  !b6
  !a6
  !g6
  !end

.pattern6_1
  db 72,$6F
  !e6
  db 24
  !fs6
  db 48
  !g6
  db 12
  !a6
  !g6
  !e6
  !fs6
  db 24
  !e7
  db 12
  !d7
  db 60
  !b6
  db 48,$78
  !tie
  !rest

.pattern6_2
  !loop : dw .sub2B88 : db 1
  !loop : dw .sub2AF7 : db 1

.pattern6_3
  !loop : dw .sub2B0E : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 11
  %percNote(!instr0D-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 11
  %percNote(!instr0D-!instr0C)

.pattern6_4
  !loop : dw .sub2BA5 : db 3
  db 12,$3F
  !a6
  db 12,$3B
  !a6
  db 12,$37
  !a6
  db 12,$33
  !a6
  db 12,$31
  !a6
  db 36
  !rest

.pattern6_5
  !loop : dw .sub2BB7 : db 3
  db 12,$3F
  !fs6
  db 12,$3B
  !fs6
  db 12,$37
  !fs6
  db 12,$33
  !fs6
  db 12,$31
  !fs6
  db 36
  !rest

.pattern6_7
  !loop : dw .sub2B52 : db 1

.pattern7_0
  db 72,$7F
  !a6
  db 24
  !c7
  db 72
  !b6
  db 24
  !e7
  db 48
  !d7
  !e7
  db 24
  !fs7
  !g7
  db 12
  !e7
  !d7
  !c7
  !b6
  !end

.pattern7_1
  !transpose,12
  !volume,200
  !pan,10
  db 12,$0F
  !a5
  !c6
  !e6
  !g6
  !a5
  !c6
  !e6
  !g6
  !b5
  !e6
  !fs6
  !gs6
  !b5
  !e6
  !fs6
  !gs6
  !g5
  !b5
  !d6
  !g6
  !g5
  !c6
  !e6
  !g6
  !a5
  !b5
  !ds6
  !fs6
  !g6
  !e6
  !d6
  !b5

.pattern7_2
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !gs2
  db 12,$2F
  !gs3
  db 12,$7F
  !gs2
  db 12,$2F
  !gs3
  db 12,$7F
  !gs2
  db 12,$2F
  !gs3
  db 12,$7F
  !gs2
  db 12,$2F
  !gs3
  db 12,$7F
  !g2
  db 12,$2F
  !g3
  db 12,$7F
  !g2
  db 12,$2F
  !g3
  db 12,$7F
  !c3
  db 12,$2F
  !c4
  db 12,$7F
  !c3
  db 12,$2F
  !c4
  db 12,$7F
  !b2
  db 12,$2F
  !b3
  db 12,$7F
  !b2
  db 12,$2F
  !b3
  db 12,$7F
  !e2
  db 12,$2F
  !e3
  db 12,$7F
  !g2
  db 12,$2F
  !g3

.pattern7_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2BCE : db 3

.pattern7_4
  !instr,!instr0A
  !pan,8
  !vibrato,0,30,96
  !volume,132
  !dynamicVolume,96,30
  db 96,$7F
  !e6
  !volume,132
  !dynamicVolume,96,30
  !e6
  !volume,132
  !dynamicVolume,96,30
  db 48
  !d6
  !volume,132
  !dynamicVolume,96,30
  !e6
  !volume,132
  !dynamicVolume,96,30
  !fs6
  !volume,132
  !dynamicVolume,96,30
  !e6

.pattern7_5
  !instr,!instr0A
  !pan,12
  !vibrato,0,30,96
  !volume,132
  !dynamicVolume,96,30
  db 96,$7F
  !c6
  !volume,132
  !dynamicVolume,96,30
  !b5
  !volume,132
  !dynamicVolume,96,30
  db 48
  !b5
  !volume,132
  !dynamicVolume,96,30
  !c6
  !volume,132
  !dynamicVolume,96,30
  !ds6
  !volume,132
  !dynamicVolume,96,30
  !b5

.pattern7_6
  !instr,!instr0A
  !pan,10
  !vibrato,0,30,96
  !volume,132
  !dynamicVolume,96,30
  db 96,$7F
  !g5
  !volume,132
  !dynamicVolume,96,30
  !fs5
  !volume,132
  !dynamicVolume,96,30
  db 48
  !g5
  !volume,132
  !dynamicVolume,96,30
  !g5
  !volume,132
  !dynamicVolume,96,30
  !a5
  !volume,132
  !dynamicVolume,96,30
  !g5

.pattern7_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  !loop : dw .sub2BD3 : db 3

.pattern8_0
  db 72,$7F
  !a6
  db 24
  !c7
  db 48
  !b6
  !a6
  db 96
  !b6
  !tie
  !end

.pattern8_1
  !loop : dw .sub2BDC : db 1
  !e5
  !a5
  !b5
  !e6
  !e5
  !a5
  !b5
  !e6
  !e5
  !gs5
  !b5
  !e6
  !e5
  !gs5
  !b5
  !e6

.pattern8_2
  !loop : dw .sub2BEF : db 1
  !loop : dw .sub2C20 : db 2

.pattern8_3
  !loop : dw .sub2C39 : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern8_4
  !volume,132
  !dynamicVolume,96,30
  db 96,$7F
  !fs6
  !volume,132
  !dynamicVolume,96,30
  !fs6
  !volume,132
  !dynamicVolume,96,30
  db 48
  !e6
  !volume,132
  !dynamicVolume,96,30
  !fs6
  !volume,132
  !dynamicVolume,96,30
  db 24
  !e6
  !volume,132
  !dynamicVolume,96,30
  !fs6
  !volume,123
  !dynamicVolume,96,30
  !g6
  !volume,132
  !dynamicVolume,96,30
  !gs6

.pattern8_5
  !loop : dw .sub2C48 : db 1
  !volume,132
  !dynamicVolume,96,30
  db 48
  !b5
  !volume,132
  !dynamicVolume,96,30
  !d6
  !volume,132
  !dynamicVolume,96,30
  db 24
  !b5
  !volume,132
  !dynamicVolume,96,30
  !d6
  !volume,132
  !dynamicVolume,96,30
  !e6
  !volume,132
  !dynamicVolume,96,30
  !e6

.pattern8_6
  !loop : dw .sub2C57 : db 1
  !volume,132
  !dynamicVolume,96,30
  db 48
  !g5
  !volume,132
  !dynamicVolume,96,30
  !a5
  !volume,132
  !dynamicVolume,96,30
  db 24
  !g5
  !volume,132
  !dynamicVolume,96,30
  !a5
  !volume,132
  !dynamicVolume,96,30
  !b5
  !volume,132
  !dynamicVolume,96,30
  !b5

.pattern8_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  !loop : dw .sub2BD3 : db 2
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 36
  %percNote(!instr10-!instr0C)

.pattern9_0
  db 72,$7F
  !a6
  db 24
  !c7
  db 72
  !b6
  db 24
  !e7
  db 48
  !d7
  !e7
  db 24
  !fs7
  !g7
  db 12
  !e7
  !d7
  !c7
  !b6
  !end

.pattern9_1
  !transpose,12
  !volume,200
  !pan,10
  db 12,$0F
  !a5
  !c6
  !e6
  !g6
  !a5
  !c6
  !e6
  !g6
  !b5
  !e6
  !fs6
  !gs6
  !b5
  !e6
  !fs6
  !gs6
  !g5
  !b5
  !d6
  !g6
  !g5
  !c6
  !e6
  !g6
  !a5
  !b5
  !ds6
  !fs6
  !g6
  !e6
  !d6
  !b5

.pattern9_2
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !gs2
  db 12,$2F
  !gs3
  db 12,$7F
  !gs2
  db 12,$2F
  !gs3
  db 12,$7F
  !gs2
  db 12,$2F
  !gs3
  db 12,$7F
  !gs2
  db 12,$2F
  !gs3
  db 12,$7F
  !g2
  db 12,$2F
  !g3
  db 12,$7F
  !g2
  db 12,$2F
  !g3
  db 12,$7F
  !c3
  db 12,$2F
  !c4
  db 12,$7F
  !c3
  db 12,$2F
  !c4
  db 12,$7F
  !b2
  db 12,$2F
  !b3
  db 12,$7F
  !b2
  db 12,$2F
  !b3
  db 12,$7F
  !e2
  db 12,$2F
  !e3
  db 12,$7F
  !g2
  db 12,$2F
  !g3

.pattern9_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2BCE : db 3

.pattern9_4
  !instr,!instr0A
  !pan,8
  !vibrato,0,30,96
  !volume,132
  !dynamicVolume,96,30
  db 96,$7F
  !e6
  !volume,132
  !dynamicVolume,96,30
  !e6
  !volume,132
  !dynamicVolume,96,30
  db 48
  !d6
  !volume,132
  !dynamicVolume,96,30
  !e6
  !volume,132
  !dynamicVolume,96,30
  !fs6
  !volume,132
  !dynamicVolume,96,30
  !e6

.pattern9_5
  !instr,!instr0A
  !pan,12
  !vibrato,0,30,96
  !volume,132
  !dynamicVolume,96,30
  db 96,$7F
  !c6
  !volume,132
  !dynamicVolume,96,30
  !b5
  !volume,132
  !dynamicVolume,96,30
  db 48
  !b5
  !volume,132
  !dynamicVolume,96,30
  !c6
  !volume,132
  !dynamicVolume,96,30
  !ds6
  !volume,132
  !dynamicVolume,96,30
  !b5

.pattern9_6
  !instr,!instr0A
  !pan,10
  !vibrato,0,30,96
  !volume,132
  !dynamicVolume,96,30
  db 96,$7F
  !g5
  !volume,132
  !dynamicVolume,96,30
  !fs5
  !volume,132
  !dynamicVolume,96,30
  db 48
  !g5
  !volume,132
  !dynamicVolume,96,30
  !g5
  !volume,132
  !dynamicVolume,96,30
  !a5
  !volume,132
  !dynamicVolume,96,30
  !g5

.pattern9_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  !loop : dw .sub2BD3 : db 3

.pattern10_0
  db 72,$6F
  !a6
  db 24
  !c7
  db 36
  !b6
  !a6
  db 24
  !b6
  db 48
  !c7
  db 24
  !d7
  !e7
  db 36
  !d7
  db 60
  !fs7
  !end

.pattern10_1
  !loop : dw .sub2BDC : db 1
  !a5
  !c6
  !e6
  !g6
  !a5
  !c6
  !e6
  !g6
  !a5
  !d6
  !fs6
  !a6
  !a5
  !d6
  !fs6
  !a6

.pattern10_2
  !loop : dw .sub2BEF : db 1
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !d2
  db 12,$2F
  !d3
  db 12,$7F
  !d2
  db 12,$2F
  !d3
  db 12,$7F
  !d2
  db 12,$2F
  !d3
  db 12,$7F
  !d2
  db 12,$2F
  !d3

.pattern10_3
  !loop : dw .sub2C39 : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 11
  %percNote(!instr0D-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 11
  %percNote(!instr0D-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 11
  %percNote(!instr0D-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 11
  %percNote(!instr0D-!instr0C)

.pattern10_4
  !volume,132
  !dynamicVolume,96,30
  db 96,$7F
  !e6
  !volume,132
  !dynamicVolume,96,30
  !fs6
  !volume,132
  !dynamicVolume,96,30
  !e6
  !volume,132
  !dynamicVolume,96,30
  !fs6

.pattern10_5
  !loop : dw .sub2C48 : db 1
  !volume,132
  !dynamicVolume,96,30
  !c6
  !volume,132
  !dynamicVolume,96,30
  !d6

.pattern10_6
  !loop : dw .sub2C57 : db 1
  !volume,132
  !dynamicVolume,96,30
  !g5
  !volume,132
  !dynamicVolume,96,30
  !a5

.pattern10_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  !loop : dw .sub2BD3 : db 3

.sub2ADC
  db 12,$0F
  !b5
  !fs5
  !g5
  !e5
  !c6
  !g5
  !a5
  !e5
  !c6
  !fs5
  !a5
  !e5
  !d6
  !b5
  !c6
  !a5
  !b5
  !fs5
  !g5
  !e5
  !c6
  !g5
  !a5
  !e5
  !end

.sub2AF7
  db 12,$7F
  !e2
  !rest
  !g2
  !rest
  !a2
  !a2
  !g2
  !e2
  db 12,$2F
  !fs2
  db 12,$7F
  !fs2
  !a2
  !c3
  !b2
  !rest
  db 24
  !d2
  !end

.sub2B0E
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.sub2B20
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.sub2B30
  db 48,$7F
  !b5
  !c6
  !c6
  db 12
  !d6
  db 12,$79
  !d6
  db 24,$7F
  !c6
  db 48
  !b5
  !c6
  !end

.sub2B41
  db 48,$7F
  !g5
  !a5
  !a5
  db 12
  !b5
  db 12,$79
  !b5
  db 24,$7F
  !a5
  db 48
  !g5
  !a5
  !end

.sub2B52
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
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
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub2B75
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub2B88
  db 12,$7F
  !e2
  !rest
  !g2
  !rest
  !a2
  !a2
  !fs2
  !d2
  db 12,$2F
  !e2
  db 12,$7F
  !e2
  !g2
  !b2
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !d2
  db 12,$2F
  !d3
  !end

.sub2BA5
  db 12,$3F
  !b6
  db 12,$3B
  !b6
  db 12,$37
  !b6
  db 12,$33
  !b6
  db 12,$31
  !b6
  db 36
  !rest
  !end

.sub2BB7
  db 12,$3F
  !g6
  db 12,$3B
  !g6
  db 12,$37
  !g6
  db 12,$33
  !g6
  db 12,$31
  !g6
  db 36
  !rest
  !end

.sub2BC9
  !rest
  !rest
  !rest
  !rest
  !end

.sub2BCE
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.sub2BD3
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  !end

.sub2BDC
  db 12,$0F
  !a5
  !c6
  !e6
  !fs6
  !a5
  !c6
  !e6
  !fs6
  !a5
  !b5
  !ds6
  !fs6
  !a5
  !b5
  !ds6
  !fs6
  !end

.sub2BEF
  db 12,$7F
  !fs2
  db 12,$2F
  !fs3
  db 12,$7F
  !fs2
  db 12,$2F
  !fs3
  db 12,$7F
  !fs2
  db 12,$2F
  !fs3
  db 12,$7F
  !fs2
  db 12,$2F
  !fs3
  db 12,$7F
  !b2
  db 12,$2F
  !b3
  db 12,$7F
  !b2
  db 12,$2F
  !b3
  db 12,$7F
  !b2
  db 12,$2F
  !b3
  db 12,$7F
  !b2
  db 12,$2F
  !b3
  !end

.sub2C20
  db 12,$7F
  !e2
  db 12,$2F
  !e3
  db 12,$7F
  !e2
  db 12,$2F
  !e3
  db 12,$7F
  !e2
  db 12,$2F
  !e3
  db 12,$7F
  !e2
  db 12,$2F
  !e3
  !end

.sub2C39
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.sub2C48
  !volume,132
  !dynamicVolume,96,30
  db 96,$7F
  !c6
  !volume,132
  !dynamicVolume,96,30
  !ds6
  !end

.sub2C57
  !volume,132
  !dynamicVolume,96,30
  db 96,$7F
  !a5
  !volume,132
  !dynamicVolume,96,30
  !a5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
