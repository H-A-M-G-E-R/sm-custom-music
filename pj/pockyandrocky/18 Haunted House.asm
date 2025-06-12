asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr06 = $17
!instr07 = $18
!instr0A = $19
!instr0C = $1A
!instr0D = $1B
!instr0F = $1C
!instr10 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr06,$8F,$EB,$B8,$03,$00
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0F,$8F,$E0,$B8,$07,$A0
  db !instr10,$8F,$E0,$B8,$07,$10
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample06,Sample06+450
  dw Sample07,Sample07+1584
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0F,Sample0F+729
  dw Sample10,Sample10+3375
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker28C2

Tracker28C2:
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
  dw .pattern11
  dw .pattern12
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, 0, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, 0, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, 0, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, 0, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, 0, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern6: dw .pattern6_0, 0, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, .pattern6_6, .pattern6_7
.pattern7: dw .pattern7_0, 0, .pattern7_2, .pattern7_3, .pattern7_4, .pattern7_5, .pattern7_6, .pattern7_7
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, .pattern8_6, .pattern8_7
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, .pattern9_5, .pattern9_6, .pattern9_7
.pattern10: dw .pattern10_0, .pattern10_1, .pattern10_2, .pattern10_3, .pattern10_4, .pattern10_5, .pattern10_6, .pattern10_7
.pattern11: dw .pattern11_0, .pattern11_1, .pattern11_2, .pattern11_3, .pattern11_4, .pattern11_5, .pattern11_6, .pattern11_7
.pattern12: dw .pattern12_0, .pattern12_1, .pattern12_2, .pattern12_3, .pattern12_4, .pattern12_5, .pattern12_6, .pattern12_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110111,70,70
  !echoParameters,6,72,3
  !musicVolume,200;255
  !tempo,27
  !end

.pattern1_0
  !instr,!instr04
  !vibrato,12,24,64
  !subtranspose,4
  !loop : dw .sub2EDB : db 1
  !volume,80
  !dynamicVolume,12,200
  db 96
  !a5
  db 48
  !tie
  !volume,80
  !dynamicVolume,12,200
  db 24
  !g5
  !volume,80
  !dynamicVolume,12,200
  !a5
  !end

.pattern1_2
  !instr,!instr07
  !volume,255
  !loop : dw .sub2F06 : db 1
  db 12
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !as2
  db 6,$1F
  !as2
  !as2
  db 12,$7F
  !c3
  db 6
  !c4
  !c3
  db 12
  !f2
  db 6
  !f3
  !f2
  !end

.pattern1_3
  !volume,255
  !loop : dw .sub2F62 : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 23
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern1_4
  !instr,!instr06
  !volume,130
  !vibrato,12,30,72
  !pan,20
  !loop : dw .sub2F74 : db 1
  db 96
  !c7
  !tie
  !end

.pattern1_5
  !instr,!instr06
  !volume,130
  !vibrato,12,30,72
  !pan,0
  !loop : dw .sub2F7C : db 1
  db 96
  !a6
  !tie
  !end

.pattern1_6
  !instr,!instr06
  !volume,130
  !vibrato,12,30,72
  !pan,10
  db 96,$7F
  !d6
  db 72
  !tie
  db 24
  !d6
  db 96
  !f6
  !tie
  !end

.pattern1_7
  !volume,255
  !loop : dw .sub2F84 : db 4
  !end

.pattern2_0
  !loop : dw .sub2EDB : db 1
  !volume,80
  !dynamicVolume,12,200
  db 72
  !c6
  !volume,80
  !dynamicVolume,12,200
  db 24
  !f6
  !volume,80
  !dynamicVolume,12,200
  db 48
  !c6
  !volume,80
  !dynamicVolume,12,200
  !f5
  !end

.pattern2_2
  !loop : dw .sub2F06 : db 1
  db 12
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !as2
  db 6,$1F
  !as2
  !as2
  db 12,$7F
  !c3
  db 6
  !c4
  !c3
  db 12
  !f2
  db 6
  !f3
  !f2
  !end

.pattern2_3
  !loop : dw .sub2F62 : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 23
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern2_4
  db 96,$7F
  !d7
  db 72
  !tie
  db 24
  !d7
  db 96
  !c7
  !tie
  !end

.pattern2_5
  !loop : dw .sub2F74 : db 1
  db 96
  !a6
  !tie
  !end

.pattern2_6
  !loop : dw .sub2F7C : db 1
  db 96
  !f6
  !tie
  !end

.pattern2_7
  !loop : dw .sub2F84 : db 4
  !end

.pattern3_0
  !loop : dw .sub2FA5 : db 1
  !volume,80
  !dynamicVolume,12,200
  !c6
  !volume,80
  !dynamicVolume,12,200
  !as5
  !volume,80
  !dynamicVolume,12,200
  !a5
  !volume,80
  !dynamicVolume,12,200
  !f5
  !end

.pattern3_2
  !loop : dw .sub2F06 : db 1
  db 12
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !as2
  db 6,$1F
  !as2
  !as2
  db 12,$7F
  !c3
  db 6
  !c4
  !c3
  db 12
  !f2
  db 6
  !f3
  !f2
  !end

.pattern3_3
  !loop : dw .sub2F62 : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 23
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern3_4
  !loop : dw .sub2F74 : db 1
  db 96
  !a6
  !tie
  !end

.pattern3_5
  !loop : dw .sub2F7C : db 1
  db 96
  !f6
  !tie
  !end

.pattern3_6
  !loop : dw .sub2FC0 : db 1
  db 96
  !c6
  !tie
  !end

.pattern3_7
  !loop : dw .sub2F84 : db 4
  !end

.pattern4_0
  !loop : dw .sub2FA5 : db 1
  !loop : dw .sub2FC8 : db 1
  !end

.pattern4_2
  !loop : dw .sub2F06 : db 1
  db 12
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !as2
  db 6,$1F
  !as2
  !as2
  db 12,$7F
  !f2
  !f2
  !f2
  !f2
  !end

.pattern4_3
  !loop : dw .sub2F62 : db 1
  %percNote(!instr0C-!instr0C)
  db 23
  %percNote(!instr0C-!instr0C)
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
  db 12
  %percNote(!instr0D-!instr0C)
  !end

.pattern4_4
  !loop : dw .sub2F74 : db 1
  db 96
  !c7
  !f7
  !end

.pattern4_5
  !loop : dw .sub2F7C : db 1
  db 96
  !a6
  !c7
  !end

.pattern4_6
  !loop : dw .sub2FC0 : db 1
  db 96
  !f6
  !a6
  !end

.pattern4_7
  !loop : dw .sub2F84 : db 4
  !end

.pattern5_0
  !instr,!instr04
  !vibrato,12,24,64
  !subtranspose,4
  !loop : dw .sub2EDB : db 1
  !volume,80
  !dynamicVolume,12,200
  db 96
  !a5
  db 48
  !tie
  !volume,80
  !dynamicVolume,12,200
  db 24
  !g5
  !volume,80
  !dynamicVolume,12,200
  !a5
  !end

.pattern5_2
  !instr,!instr07
  !volume,255
  !loop : dw .sub2F06 : db 1
  db 12
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !as2
  db 6,$1F
  !as2
  !as2
  db 12,$7F
  !c3
  db 6
  !c4
  !c3
  db 12
  !f2
  db 6
  !f3
  !f2
  !end

.pattern5_3
  !volume,255
  !loop : dw .sub2F62 : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 23
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern5_4
  !instr,!instr06
  !volume,130
  !vibrato,12,30,72
  !pan,20
  !loop : dw .sub2F74 : db 1
  db 96
  !c7
  !tie
  !end

.pattern5_5
  !instr,!instr06
  !volume,130
  !vibrato,12,30,72
  !pan,0
  !loop : dw .sub2F7C : db 1
  db 96
  !a6
  !tie
  !end

.pattern5_6
  !instr,!instr06
  !volume,130
  !vibrato,12,30,72
  !pan,10
  db 96,$7F
  !d6
  db 72
  !tie
  db 24
  !d6
  db 96
  !f6
  !tie
  !end

.pattern5_7
  !volume,255
  !loop : dw .sub2F84 : db 4
  !end

.pattern6_0
  !loop : dw .sub2EDB : db 1
  !volume,80
  !dynamicVolume,12,200
  db 72
  !c6
  !volume,80
  !dynamicVolume,12,200
  db 24
  !f6
  !volume,80
  !dynamicVolume,12,200
  db 48
  !c6
  !volume,80
  !dynamicVolume,12,200
  !f5
  !end

.pattern6_2
  !loop : dw .sub2F06 : db 1
  db 12
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !as2
  db 6,$1F
  !as2
  !as2
  db 12,$7F
  !c3
  db 6
  !c4
  !c3
  db 12
  !f2
  db 6
  !f3
  !f2
  !end

.pattern6_3
  !loop : dw .sub2F62 : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 23
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern6_4
  db 96,$7F
  !d7
  db 72
  !tie
  db 24
  !d7
  db 96
  !c7
  !tie
  !end

.pattern6_5
  !loop : dw .sub2F74 : db 1
  db 96
  !a6
  !tie
  !end

.pattern6_6
  !loop : dw .sub2F7C : db 1
  db 96
  !f6
  !tie
  !end

.pattern6_7
  !loop : dw .sub2F84 : db 4
  !end

.pattern7_0
  !loop : dw .sub2FA5 : db 1
  !volume,80
  !dynamicVolume,12,200
  !c6
  !volume,80
  !dynamicVolume,12,200
  !as5
  !volume,80
  !dynamicVolume,12,200
  !a5
  !volume,80
  !dynamicVolume,12,200
  !f5
  !end

.pattern7_2
  !loop : dw .sub2F06 : db 1
  db 12
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !as2
  db 6,$1F
  !as2
  !as2
  db 12,$7F
  !c3
  db 6
  !c4
  !c3
  db 12
  !f2
  db 6
  !f3
  !f2
  !end

.pattern7_3
  !loop : dw .sub2F62 : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 23
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern7_4
  !loop : dw .sub2F74 : db 1
  db 96
  !a6
  !tie
  !end

.pattern7_5
  !loop : dw .sub2F7C : db 1
  db 96
  !f6
  !tie
  !end

.pattern7_6
  !loop : dw .sub2FC0 : db 1
  db 96
  !c6
  !tie
  !end

.pattern7_7
  !loop : dw .sub2F84 : db 4
  !end

.pattern8_0
  !loop : dw .sub2FA5 : db 1
  !loop : dw .sub2FC8 : db 1
  !end

.pattern8_1
  db 96
  !rest
  !rest
  !rest
  !instr,!instr0A
  !volume,180
  db 48
  !rest
  db 6,$7F
  !g5
  !d6
  !c6
  !as5
  !c6
  !as5
  !a5
  !f5
  !end

.pattern8_2
  !loop : dw .sub2F06 : db 1
  db 12
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !as2
  db 6,$1F
  !as2
  !as2
  db 6,$7F
  !g2
  !d3
  !c3
  !as2
  !c3
  !as2
  !a2
  !f2
  !end

.pattern8_3
  !loop : dw .sub2F62 : db 1
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  !end

.pattern8_4
  !loop : dw .sub2F74 : db 1
  db 96
  !c7
  !f7
  !end

.pattern8_5
  !loop : dw .sub2F7C : db 1
  db 96
  !a6
  !c7
  !end

.pattern8_6
  !loop : dw .sub2FC0 : db 1
  db 96
  !f6
  db 48
  !a6
  db 6
  !g6
  !d7
  !c7
  !as6
  !c7
  !as6
  !a6
  !f6
  !end

.pattern8_7
  !loop : dw .sub2F84 : db 3
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 12
  %percNote(!instr10-!instr0C)
  !end

.pattern9_0
  !loop : dw .sub2FD6 : db 1
  !volume,80
  !dynamicVolume,12,200
  db 96
  !d6
  db 48
  !tie
  !volume,80
  !dynamicVolume,12,200
  db 24
  !d6
  !volume,80
  !dynamicVolume,12,200
  !ds6
  !end

.pattern9_1
  !instr,!instr0A
  !vibrato,12,30,72
  !volume,100
  db 96,$7F
  !as5
  !g5
  !a5
  db 24
  !d5
  !fs5
  !a5
  !c6
  !end

.pattern9_2
  !loop : dw .sub3005 : db 1
  !loop : dw .sub3027 : db 2
  !end

.pattern9_3
  db 6,$7F
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub3038 : db 3
  !end

.pattern9_4
  !loop : dw .sub3047 : db 1
  !loop : dw .sub306D : db 2
  !end

.pattern9_5
  !instr,!instr0A
  !vibrato,12,30,72
  !volume,120
  !pan,10
  db 96,$7F
  !g5
  !ds5
  !fs5
  db 24
  !a4
  !d5
  !fs5
  !a5
  !end

.pattern9_6
  !pan,0
  !loop : dw .sub3080 : db 1
  !loop : dw .sub30A6 : db 2
  !end

.pattern9_7
  !loop : dw .sub30B9 : db 4
  !end

.pattern10_0
  !volume,80
  !dynamicVolume,12,200
  db 72,$7F
  !f6
  !volume,80
  !dynamicVolume,12,200
  db 12
  !ds6
  !volume,90
  !dynamicVolume,12,200
  !cs6
  !volume,80
  !dynamicVolume,12,200
  db 24
  !c6
  !volume,80
  !dynamicVolume,12,200
  !as5
  !volume,80
  !dynamicVolume,12,200
  !c6
  !volume,80
  !dynamicVolume,12,200
  !cs6
  !volume,80
  !dynamicVolume,12,200
  db 96
  !c6
  !tie
  !end

.pattern10_1
  db 96,$7F
  !f5
  !gs5
  !g5
  !c6
  !end

.pattern10_2
  db 6,$7F
  !cs3
  !cs3
  db 24
  !rest
  db 6
  !cs3
  !cs3
  db 12
  !rest
  db 6
  !cs3
  db 12
  !rest
  db 18
  !cs3
  db 6
  !cs3
  !cs3
  db 24
  !rest
  db 6
  !cs3
  !cs3
  db 12
  !rest
  db 6
  !cs3
  db 12
  !rest
  db 18
  !cs3
  !loop : dw .sub30DA : db 2
  !end

.pattern10_3
  db 6,$7F
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub3038 : db 3
  !end

.pattern10_4
  db 6,$7F
  !f6
  !f6
  db 24
  !rest
  db 6
  !f6
  !f6
  db 12
  !rest
  db 6
  !f6
  db 12
  !rest
  db 6
  !f6
  db 12
  !rest
  db 6
  !f6
  !f6
  db 24
  !rest
  db 6
  !f6
  !f6
  db 12
  !rest
  db 6
  !f6
  db 12
  !rest
  db 6
  !f6
  db 12
  !rest
  !loop : dw .sub30EB : db 2
  !end

.pattern10_5
  db 96,$7F
  !cs5
  !f5
  !e5
  !g5
  !end

.pattern10_6
  db 6,$7F
  !cs6
  !cs6
  db 24
  !rest
  db 6
  !cs6
  !cs6
  db 12
  !rest
  db 6
  !cs6
  db 12
  !rest
  db 6
  !cs6
  db 12
  !rest
  db 6
  !cs6
  !cs6
  db 24
  !rest
  db 6
  !cs6
  !cs6
  db 12
  !rest
  db 6
  !cs6
  db 12
  !rest
  db 6
  !cs6
  db 12
  !rest
  !loop : dw .sub30FE : db 2
  !end

.pattern10_7
  !loop : dw .sub30B9 : db 4
  !end

.pattern11_0
  !loop : dw .sub2FD6 : db 1
  !volume,80
  !dynamicVolume,12,200
  db 72
  !f6
  !volume,80
  !dynamicVolume,12,200
  db 12
  !d6
  !volume,90
  !dynamicVolume,12,200
  !f6
  !volume,80
  !dynamicVolume,12,200
  db 72
  !a6
  !volume,80
  !dynamicVolume,12,200
  db 24
  !a6
  !end

.pattern11_1
  db 96,$7F
  !as5
  !g5
  !a5
  db 24
  !d5
  !f5
  !a5
  !d6
  !end

.pattern11_2
  !loop : dw .sub3005 : db 1
  !loop : dw .sub3027 : db 2
  !end

.pattern11_3
  db 6,$7F
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub3038 : db 3
  !end

.pattern11_4
  !loop : dw .sub3047 : db 1
  !loop : dw .sub3111 : db 2
  !end

.pattern11_5
  db 96,$7F
  !g5
  !ds5
  !f5
  db 24
  !a4
  !d5
  !f5
  !a5
  !end

.pattern11_6
  !loop : dw .sub3080 : db 1
  !loop : dw .sub30A6 : db 2
  !end

.pattern11_7
  !loop : dw .sub30B9 : db 4
  !end

.pattern12_0
  !volume,80
  !dynamicVolume,12,200
  db 18,$7F
  !g6
  !volume,80
  !dynamicVolume,12,200
  !f6
  !volume,90
  !dynamicVolume,12,200
  db 12
  !ds6
  !volume,80
  !dynamicVolume,12,200
  db 18
  !f6
  !volume,80
  !dynamicVolume,12,200
  !ds6
  !volume,90
  !dynamicVolume,12,200
  db 12
  !d6
  !volume,80
  !dynamicVolume,12,200
  db 18
  !ds6
  !volume,80
  !dynamicVolume,12,200
  !d6
  !volume,90
  !dynamicVolume,12,200
  db 12
  !c6
  !volume,80
  !dynamicVolume,12,200
  db 18
  !as5
  !volume,80
  !dynamicVolume,12,200
  !a5
  !volume,90
  !dynamicVolume,12,200
  db 12
  !f5
  !volume,80
  !dynamicVolume,12,200
  db 96
  !g5
  !tie
  !end

.pattern12_1
  db 48,$7F
  !g5
  !a5
  !as5
  !c6
  db 96
  !d6
  !tie
  !end

.pattern12_2
  db 12,$7F
  !c3
  db 6
  !rest
  db 18
  !c3
  db 12
  !c3
  !d3
  db 6
  !rest
  db 18
  !d3
  db 12
  !d3
  !ds3
  db 6
  !rest
  db 18
  !ds3
  db 12
  !ds3
  !f3
  db 6
  !rest
  db 18
  !c3
  db 12
  !f2
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !c3
  db 6,$1F
  !c3
  !c3
  db 12,$7F
  !d3
  !pitchSlide,5,2 : !ds3
  db 6
  !d3
  !c3
  db 12
  !a2
  !f2
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !b2
  db 6,$1F
  !b2
  !b2
  db 6,$7F
  !c3
  !d3
  !ds3
  !f3
  db 24
  !g3
  !pitchSlide,8,16 : !g2
  !end

.pattern12_3
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
  !loop : dw .sub3124 : db 2
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
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern12_4
  db 18,$7F
  !c6
  !c6
  db 12
  !c6
  db 18
  !d6
  !d6
  db 12
  !d6
  db 18
  !ds6
  !ds6
  db 12
  !ds6
  db 18
  !f6
  !f6
  db 12
  !f6
  db 6
  !d7
  !g7
  !d7
  !g6
  db 6,$79
  !d7
  !g7
  !d7
  !g6
  db 6,$73
  !d7
  !g7
  !d7
  !g6
  db 6,$71
  !d7
  !g7
  !d7
  !g6
  db 6,$7F
  !d7
  !g7
  !d7
  !g6
  db 6,$79
  !d7
  !g7
  !d7
  !g6
  db 6,$73
  !d7
  !g7
  !d7
  !g6
  db 6,$71
  !d7
  !g7
  !d7
  !g6
  !end

.pattern12_5
  db 48,$7F
  !ds5
  !f5
  !g5
  !a5
  db 96
  !c6
  !b5
  !end

.pattern12_6
  db 18,$7F
  !g5
  !g5
  db 12
  !g5
  db 18
  !a5
  !a5
  db 12
  !a5
  db 18
  !as5
  !as5
  db 12
  !as5
  db 18
  !c6
  !c6
  db 12
  !c6
  db 1
  !rest
  db 5
  !d7
  db 6
  !g7
  !d7
  !g6
  db 6,$79
  !d7
  !g7
  !d7
  !g6
  db 6,$73
  !d7
  !g7
  !d7
  !g6
  db 6,$71
  !d7
  !g7
  !d7
  !g6
  db 1
  !tie
  db 5,$7F
  !d7
  db 6
  !g7
  !d7
  !g6
  db 6,$79
  !d7
  !g7
  !d7
  !g6
  db 6,$73
  !d7
  !g7
  !d7
  !g6
  db 6,$71
  !d7
  !g7
  !d7
  !g6
  !end

.pattern12_7
  !loop : dw .sub30B9 : db 4
  !end

.sub2EDB
  !volume,80
  !dynamicVolume,12,200
  db 72,$7F
  !as5
  !volume,80
  !dynamicVolume,12,200
  db 24
  !a5
  !volume,80
  !dynamicVolume,12,200
  db 48
  !as5
  !volume,80
  !dynamicVolume,12,200
  db 18
  !d6
  !volume,80
  !dynamicVolume,12,200
  !c6
  !volume,80
  !dynamicVolume,12,200
  db 12
  !as5
  !end

.sub2F06
  db 12,$7F
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !as2
  db 6,$1F
  !as2
  !as2
  db 12,$7F
  !as2
  !pitchSlide,5,2 : !c3
  db 6,$1F
  !c3
  !c3
  db 24,$7F
  !a2
  !pitchSlide,10,4 : !f2
  db 12
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !as2
  db 6,$1F
  !as2
  !as2
  db 12,$7F
  !c3
  db 6,$1F
  !c3
  !c3
  db 12
  !d3
  db 12,$7F
  !f3
  !pitchSlide,5,2 : !g3
  !g2
  db 6,$1F
  !g2
  !g2
  db 12,$7F
  !as2
  db 6,$1F
  !as2
  !as2
  db 12,$7F
  !as2
  !pitchSlide,5,2 : !c3
  db 6,$1F
  !c3
  !c3
  db 24,$7F
  !a2
  !pitchSlide,10,4 : !f2
  !end

.sub2F62
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  !end

.sub2F74
  db 96,$7F
  !as6
  db 72
  !tie
  db 24
  !as6
  !end

.sub2F7C
  db 96,$7F
  !g6
  db 72
  !tie
  db 24
  !g6
  !end

.sub2F84
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub2FA5
  !volume,80
  !dynamicVolume,12,200
  db 48,$7F
  !g5
  !volume,80
  !dynamicVolume,12,200
  !a5
  !volume,80
  !dynamicVolume,12,200
  !as5
  !volume,80
  !dynamicVolume,12,200
  !d6
  !end

.sub2FC0
  db 96,$7F
  !ds6
  db 72
  !tie
  db 24
  !ds6
  !end

.sub2FC8
  !volume,80
  !dynamicVolume,12,200
  db 96
  !c6
  !volume,80
  !dynamicVolume,12,200
  !f6
  !end

.sub2FD6
  !volume,80
  !dynamicVolume,12,200
  db 72,$7F
  !g6
  !volume,80
  !dynamicVolume,12,200
  db 12
  !f6
  !volume,90
  !dynamicVolume,12,200
  !ds6
  !volume,80
  !dynamicVolume,12,200
  db 24
  !d6
  !volume,80
  !dynamicVolume,12,200
  !c6
  !volume,80
  !dynamicVolume,12,200
  !d6
  !volume,80
  !dynamicVolume,12,200
  !ds6
  !end

.sub3005
  db 6,$7F
  !ds3
  !ds3
  db 24
  !rest
  db 6
  !ds3
  !ds3
  db 12
  !rest
  db 6
  !ds3
  db 12
  !rest
  db 18
  !ds3
  db 6
  !ds3
  !ds3
  db 24
  !rest
  db 6
  !ds3
  !ds3
  db 12
  !rest
  db 6
  !ds3
  db 12
  !rest
  db 18
  !ds3
  !end

.sub3027
  db 6
  !d3
  !d3
  db 24
  !rest
  db 6
  !d3
  !d3
  db 12
  !rest
  db 6
  !d3
  db 12
  !rest
  db 18
  !d3
  !end

.sub3038
  db 6
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.sub3047
  db 6,$7F
  !g6
  !g6
  db 24
  !rest
  db 6
  !g6
  !g6
  db 12
  !rest
  db 6
  !g6
  db 12
  !rest
  db 6
  !g6
  db 12
  !rest
  db 6
  !g6
  !g6
  db 24
  !rest
  db 6
  !g6
  !g6
  db 12
  !rest
  db 6
  !g6
  db 12
  !rest
  db 6
  !g6
  db 12
  !rest
  !end

.sub306D
  db 6
  !fs6
  !fs6
  db 24
  !rest
  db 6
  !fs6
  !fs6
  db 12
  !rest
  db 6
  !fs6
  db 12
  !rest
  db 6
  !fs6
  db 12
  !rest
  !end

.sub3080
  db 6,$7F
  !ds6
  !ds6
  db 24
  !rest
  db 6
  !ds6
  !ds6
  db 12
  !rest
  db 6
  !ds6
  db 12
  !rest
  db 6
  !ds6
  db 12
  !rest
  db 6
  !ds6
  !ds6
  db 24
  !rest
  db 6
  !ds6
  !ds6
  db 12
  !rest
  db 6
  !ds6
  db 12
  !rest
  db 6
  !ds6
  db 12
  !rest
  !end

.sub30A6
  db 6
  !d6
  !d6
  db 24
  !rest
  db 6
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  db 12
  !rest
  db 6
  !d6
  db 12
  !rest
  !end

.sub30B9
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
  %percNote(!instr0F-!instr0C)
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
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub30DA
  db 6
  !c3
  !c3
  db 24
  !rest
  db 6
  !c3
  !c3
  db 12
  !rest
  db 6
  !c3
  db 12
  !rest
  db 18
  !c3
  !end

.sub30EB
  db 6
  !e6
  !e6
  db 24
  !rest
  db 6
  !e6
  !e6
  db 12
  !rest
  db 6
  !e6
  db 12
  !rest
  db 6
  !e6
  db 12
  !rest
  !end

.sub30FE
  db 6
  !c6
  !c6
  db 24
  !rest
  db 6
  !c6
  !c6
  db 12
  !rest
  db 6
  !c6
  db 12
  !rest
  db 6
  !c6
  db 12
  !rest
  !end

.sub3111
  db 6
  !f6
  !f6
  db 24
  !rest
  db 6
  !f6
  !f6
  db 12
  !rest
  db 6
  !f6
  db 12
  !rest
  db 6
  !f6
  db 12
  !rest
  !end

.sub3124
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
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
