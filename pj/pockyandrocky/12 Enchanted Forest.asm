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
!instr0F = $1D
!instr10 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
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
  dw Sample05,Sample05+1404
  dw Sample06,Sample06+450
  dw Sample07,Sample07+1584
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0F,Sample0F+729
  dw Sample10,Sample10+3375
endspcblock

spcblock $B210-($6E00-!p_sampleData) nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"
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
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, 0, .pattern1_5, 0, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, .pattern6_6, .pattern6_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110111,50,50
  !echoParameters,6,72,3
  !tempo,27
  !musicVolume,200;255
  !end

.pattern1_0
  !instr,!instr04
  !volume,220
  !vibrato,12,24,64
  db 24,$7F
  !c6
  !end

.pattern1_1
  !instr,!instr06
  !volume,180
  !pan,7
  db 24,$7F
  !g5

.pattern1_2
  !instr,!instr07
  !volume,255
  db 24,$7F
  !c3

.pattern1_3
  !volume,255
  db 24,$7F
  %percNote(!instr0C-!instr0C)

.pattern1_5
  !instr,!instr06
  !volume,180
  !pan,13
  db 24,$7F
  !e5

.pattern1_7
  !volume,255
  db 24,$75
  %percNote(!instr10-!instr0C)

.pattern2_0
  db 24,$7F
  !d6
  !f6
  !g6
  !c7
  !a6
  db 12
  !g6
  db 6
  !a6
  !g6
  db 24
  !f6
  !c6
  !d6
  !f6
  db 12
  !g6
  db 6
  !a6
  !g6
  db 12
  !f6
  !c7
  db 60
  !a6
  db 12
  !rest
  db 24
  !c7
  !end

.pattern2_1
  !loop : dw .sub28F3 : db 2
  db 12,$7F
  !f5
  db 12,$2F
  !f5
  !f6
  !f5
  db 12,$7F
  !g5
  db 12,$2F
  !g5
  !g6
  !g5
  db 12,$7F
  !a5
  db 12,$2F
  !a5
  !a6
  !a5
  db 12,$7F
  !a5
  db 12,$2F
  !a6
  db 12,$6F
  !g5
  db 12,$2F
  !g6

.pattern2_2
  !loop : dw .sub2904 : db 2
  db 12,$7F
  !as2
  db 12,$2F
  !as2
  !as2
  !as2
  db 12,$7F
  !c3
  db 12,$2F
  !c3
  !c3
  !c3
  db 12,$7F
  !d3
  db 12,$2F
  !d3
  !d3
  !d3
  db 12,$7F
  !d3
  db 12,$2F
  !d4
  db 12,$7F
  !c3
  db 12,$2F
  !c4

.pattern2_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2915 : db 3

.pattern2_4
  !instr,!instr0A
  !volume,150
  !pan,10
  !vibrato,12,24,64
  db 48,$7F
  !f5
  !e5
  !f5
  !c5
  !d5
  !e5
  db 72
  !f5
  db 24
  !e5

.pattern2_5
  !loop : dw .sub291A : db 2
  db 12,$7F
  !d5
  db 12,$2F
  !d5
  !d6
  !d5
  db 12,$7F
  !e5
  db 12,$2F
  !e5
  !e6
  !e5
  db 12,$7F
  !f5
  db 12,$2F
  !f5
  !f6
  !f5
  db 12,$7F
  !f5
  db 12,$2F
  !f6
  db 12,$6F
  !e5
  db 12,$2F
  !e6

.pattern2_6
  !instr,!instr0A
  !volume,150
  !pan,10
  !vibrato,12,24,64
  db 48,$7F
  !d5
  !c5
  !d5
  !g4
  !as4
  !c5
  db 72
  !d5
  db 24
  !c5

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
  !loop : dw .sub292B : db 2
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)

.pattern3_0
  !loop : dw .sub2934 : db 1
  !d6
  !f6
  !g6
  !c7
  db 48
  !a6
  db 12
  !g6
  !rest
  db 24
  !c6
  !end

.pattern3_1
  !loop : dw .sub2948 : db 1
  db 12,$7F
  !f5
  db 12,$2F
  !f5
  !f6
  !f5
  db 12,$7F
  !f5
  db 12,$2F
  !f5
  !f6
  !f5
  db 12,$7F
  !g5
  db 12,$2F
  !g5
  !g6
  !g5
  db 12,$7F
  !g5
  db 12,$2F
  !g5
  !g6
  !g5

.pattern3_2
  !loop : dw .sub2969 : db 1
  db 12,$7F
  !as2
  db 12,$2F
  !as2
  !as2
  !as2
  db 12,$7F
  !as2
  db 12,$2F
  !as2
  !as2
  !as2
  db 12,$7F
  !c3
  db 12,$2F
  !c3
  !c3
  !c3
  db 12,$7F
  !c3
  !g3
  !e3
  !c3

.pattern3_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2915 : db 3

.pattern3_4
  db 48,$7F
  !d5
  !e5
  !f5
  !c5
  db 96
  !d5
  !e5

.pattern3_5
  !loop : dw .sub298A : db 1
  db 12,$7F
  !d5
  db 12,$2F
  !d5
  !d6
  !d5
  db 12,$7F
  !d5
  db 12,$2F
  !d5
  !d6
  !d5
  db 12,$7F
  !e5
  db 12,$2F
  !e5
  !e6
  !e5
  db 12,$7F
  !e5
  db 12,$2F
  !e5
  !e6
  !e5

.pattern3_6
  db 48,$7F
  !as4
  !c5
  !d5
  !a4
  db 96
  !as4
  !c5

.pattern3_7
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub292B : db 3

.pattern4_0
  db 24,$7F
  !d6
  !f6
  !g6
  !c7
  !a6
  db 12
  !g6
  db 6
  !a6
  !g6
  db 24
  !f6
  !c6
  !d6
  !f6
  db 12
  !g6
  db 6
  !a6
  !g6
  db 12
  !f6
  !c7
  db 60
  !a6
  db 12
  !rest
  db 24
  !c7
  !end

.pattern4_1
  !loop : dw .sub28F3 : db 2
  db 12,$7F
  !f5
  db 12,$2F
  !f5
  !f6
  !f5
  db 12,$7F
  !g5
  db 12,$2F
  !g5
  !g6
  !g5
  db 12,$7F
  !a5
  db 12,$2F
  !a5
  !a6
  !a5
  db 12,$7F
  !a5
  db 12,$2F
  !a6
  db 12,$6F
  !g5
  db 12,$2F
  !g6

.pattern4_2
  !loop : dw .sub2904 : db 2
  db 12,$7F
  !as2
  db 12,$2F
  !as2
  !as2
  !as2
  db 12,$7F
  !c3
  db 12,$2F
  !c3
  !c3
  !c3
  db 12,$7F
  !d3
  db 12,$2F
  !d3
  !d3
  !d3
  db 12,$7F
  !d3
  db 12,$2F
  !d4
  db 12,$7F
  !c3
  db 12,$2F
  !c4

.pattern4_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2915 : db 3

.pattern4_4
  !instr,!instr0A
  !volume,150
  !pan,10
  !vibrato,12,24,64
  db 48,$7F
  !f5
  !e5
  !f5
  !c5
  !d5
  !e5
  db 72
  !f5
  db 24
  !e5

.pattern4_5
  !loop : dw .sub291A : db 2
  db 12,$7F
  !d5
  db 12,$2F
  !d5
  !d6
  !d5
  db 12,$7F
  !e5
  db 12,$2F
  !e5
  !e6
  !e5
  db 12,$7F
  !f5
  db 12,$2F
  !f5
  !f6
  !f5
  db 12,$7F
  !f5
  db 12,$2F
  !f6
  db 12,$6F
  !e5
  db 12,$2F
  !e6

.pattern4_6
  !instr,!instr0A
  !volume,150
  !pan,10
  !vibrato,12,24,64
  db 48,$7F
  !d5
  !c5
  !d5
  !g4
  !as4
  !c5
  db 72
  !d5
  db 24
  !c5

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
  !loop : dw .sub292B : db 2
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)

.pattern5_0
  !loop : dw .sub2934 : db 1
  !d6
  !f6
  db 12
  !g6
  db 6
  !a6
  !g6
  db 12
  !f6
  !g6
  db 72
  !f6
  db 24
  !rest
  !end

.pattern5_1
  !loop : dw .sub2948 : db 1
  db 12,$7F
  !f5
  db 12,$2F
  !f5
  !f6
  !f5
  db 12,$7F
  !g5
  db 12,$2F
  !g5
  !g6
  !g5
  db 12,$7F
  !f5
  db 12,$2F
  !f5
  !f5
  !f5
  db 12,$7F
  !f6
  db 12,$2F
  !g6
  db 12,$7F
  !a6
  db 12,$2F
  !c7

.pattern5_2
  !loop : dw .sub2969 : db 1
  db 12,$7F
  !as2
  db 12,$2F
  !as2
  !as2
  !as2
  db 12,$7F
  !c3
  db 12,$2F
  !c3
  !c3
  !c3
  db 12,$7F
  !f2
  db 12,$2F
  !f3
  db 12,$7F
  !a2
  db 12,$2F
  !a3
  db 12,$7F
  !c3
  db 12,$2F
  !c4
  db 12,$7F
  !e3
  db 12,$2F
  !e4

.pattern5_3
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
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)

.pattern5_4
  db 48,$7F
  !d5
  !e5
  !f5
  !c5
  !d5
  !e5
  db 24
  !a4
  !c5
  !f5
  !g5

.pattern5_5
  !loop : dw .sub298A : db 1
  db 12,$7F
  !d5
  db 12,$2F
  !d5
  !d6
  !d5
  db 12,$7F
  !e5
  db 12,$2F
  !e5
  !e6
  !e5
  db 12,$7F
  !c5
  db 12,$2F
  !c5
  !c6
  !c5
  db 12,$7F
  !c6
  db 12,$2F
  !d6
  db 12,$7F
  !f6
  db 12,$2F
  !g6

.pattern5_6
  db 48,$7F
  !as4
  !c5
  !d5
  !a4
  !f4
  !g4
  db 24
  !f4
  !a4
  !c5
  !e5

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
  !loop : dw .sub292B : db 3

.pattern6_0
  db 36,$7F
  !f6
  db 12
  !g6
  !a6
  !rest
  !g6
  !f6
  !g6
  !a6
  !g6
  !f6
  db 48
  !g6
  db 36
  !f6
  db 12
  !g6
  !a6
  !rest
  !g6
  !f6
  !g6
  !a6
  !g6
  !f6
  !d6
  !rest
  !d6
  !f6
  db 24
  !g6
  !a6
  !f6
  !g6
  !a6
  !c7
  !a6
  db 12
  !g6
  !f6
  !loop : dw .sub29AB : db 2
  db 12
  !c7
  db 60
  !rest
  db 24
  !c6
  !end

.pattern6_1
  !instr,!instr05
  !pan,20
  !loop : dw .sub29B3 : db 1
  db 96
  !rest
  !rest
  !instr,!instr04
  !transpose,0
  !volume,150
  !pan,0
  db 24
  !rest
  db 6
  !g7
  !a7
  !g7
  !f7
  db 6,$48
  !g7
  !a7
  !g7
  !f7
  db 6,$12
  !g7
  !a7
  !g7
  !f7
  !pan,20
  db 24
  !rest
  db 6,$7F
  !g7
  !a7
  !g7
  !f7
  db 6,$78
  !g7
  !a7
  !g7
  !f7
  db 6,$72
  !g7
  !a7
  !g7
  !f7
  !instr,!instr06
  !pan,7
  db 12,$4F
  !c6
  db 12,$2F
  !c6
  !g5
  !e5
  !c5
  !rest
  db 24,$7F
  !g5

.pattern6_2
  db 48,$7F
  !d3
  db 12
  !rest
  !d3
  !a2
  !d3
  db 48
  !cs3
  db 12
  !rest
  !cs3
  !a2
  !cs3
  db 48
  !c3
  db 12
  !rest
  !c3
  !g2
  !c3
  db 48
  !b2
  db 12
  !rest
  !b2
  !g2
  !b2
  !as2
  db 12,$2F
  !as2
  !as2
  !as2
  db 12,$7F
  !c3
  db 12,$2F
  !c3
  !c3
  !c3
  db 12,$7F
  !cs3
  db 12,$2F
  !cs3
  !cs3
  !cs3
  db 12,$7F
  !d3
  db 12,$2F
  !d3
  !d3
  !d3
  db 12,$7F
  !as2
  db 12,$2F
  !as2
  !as2
  !as2
  db 12,$7F
  !as2
  db 12,$2F
  !as2
  !as2
  !as2
  db 12,$7F
  !c3
  db 12,$2F
  !c3
  !c3
  !c3
  db 12,$7F
  !c3
  db 12,$2F
  !c3
  !c3
  !c3
  !c3
  !c4
  !g3
  !e3
  !c3
  !rest
  db 24,$7F
  !c3

.pattern6_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub29D6 : db 2
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2915 : db 3
  db 72
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)

.pattern6_4
  db 96,$7F
  !f5
  !e5
  !f5
  !f5
  !pan,15
  db 12,$4F
  !f5
  !d5
  !a4
  !d5
  !g5
  !e5
  !as4
  !e5
  !g5
  !e5
  !as4
  !e5
  !a5
  !f5
  !c5
  !f5
  !f5
  !d5
  !a4
  !d5
  !f5
  !d5
  !a4
  !d5
  !g5
  !e5
  !as4
  !e5
  !g5
  !e5
  !as4
  !e5
  !c6
  db 12,$2F
  !c7
  !g6
  !e6
  !c6
  db 36
  !rest

.pattern6_5
  !instr,!instr05
  !transpose,244
  !pan,0
  !loop : dw .sub29B3 : db 1
  !instr,!instr0A
  !transpose,0
  !pan,10
  !volume,100
  !subtranspose,32
  db 48
  !d5
  !e5
  !e5
  !f5
  db 96
  !f5
  !g5
  !instr,!instr06
  !pan,13
  !volume,150
  !subtranspose,0
  db 12,$4F
  !c5
  db 12,$2F
  !g6
  !e6
  !c6
  !g5
  !rest
  db 24,$7F
  !e5

.pattern6_6
  db 96,$7F
  !a4
  !a4
  !a4
  !a4
  !pan,5
  db 12,$4F
  !d5
  !as4
  !f4
  !a4
  !e5
  !c5
  !g4
  !c5
  !e5
  !cs5
  !g4
  !cs5
  !f5
  !d5
  !a4
  !d5
  !d5
  !as4
  !f4
  !a4
  !d5
  !as4
  !f4
  !a4
  !e5
  !c5
  !g4
  !c5
  !e5
  !c5
  !g4
  !c5
  !pan,5
  !g5
  !g6
  !e6
  !c6
  !g5
  db 36
  !rest

.pattern6_7
  db 12,$75
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 24
  %percNote(!instr10-!instr0C)
  db 12
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub29DE : db 3
  db 12,$73
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub292B : db 2
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 60
  !rest
  db 24
  %percNote(!instr10-!instr0C)

.sub28F3
  db 12,$7F
  !a5
  db 12,$2F
  !a5
  !a6
  !a5
  db 12,$7F
  !g5
  db 12,$2F
  !g5
  !g6
  !g5
  !end

.sub2904
  db 12,$7F
  !d3
  db 12,$2F
  !d3
  !d3
  !d3
  db 12,$7F
  !c3
  db 12,$2F
  !c3
  !c3
  !c3
  !end

.sub2915
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.sub291A
  db 12,$7F
  !f5
  db 12,$2F
  !f5
  !f6
  !f5
  db 12,$7F
  !e5
  db 12,$2F
  !e5
  !e6
  !e5
  !end

.sub292B
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub2934
  db 24,$7F
  !d7
  !f7
  db 12
  !e7
  !c7
  !g6
  !c7
  db 24
  !a6
  db 12
  !g6
  db 6
  !a6
  !g6
  db 24
  !f6
  !c6
  !end

.sub2948
  db 12,$7F
  !f5
  db 12,$2F
  !f5
  !f6
  !f5
  db 12,$7F
  !e5
  db 12,$2F
  !e5
  !e6
  !e5
  db 12,$7F
  !d5
  db 12,$2F
  !d5
  !d6
  !d5
  db 12,$7F
  !f5
  db 12,$2F
  !f5
  !f6
  !f5
  !end

.sub2969
  db 12,$7F
  !as2
  db 12,$2F
  !as2
  !as2
  !as2
  db 12,$7F
  !a2
  db 12,$2F
  !a2
  !a2
  !a2
  db 12,$7F
  !g2
  db 12,$2F
  !g2
  !g2
  !g2
  db 12,$7F
  !f2
  db 12,$2F
  !f2
  !f2
  !f2
  !end

.sub298A
  db 12,$7F
  !d5
  db 12,$2F
  !d5
  !d6
  !d5
  db 12,$7F
  !c5
  db 12,$2F
  !c5
  !c6
  !c5
  db 12,$7F
  !as4
  db 12,$2F
  !as4
  !as5
  !as4
  db 12,$7F
  !c5
  db 12,$2F
  !c5
  !c6
  !c5
  !end

.sub29AB
  db 6
  !g6
  !a6
  !g6
  !f6
  db 72
  !g6
  !end

.sub29B3
  db 12,$7F
  !f5
  !d5
  !a4
  !f5
  !d5
  !a4
  !f5
  !d5
  !g5
  !e5
  !a4
  !g5
  !e5
  !a4
  !g5
  !e5
  !f5
  !d5
  !a4
  !f5
  !d5
  !a4
  !f5
  !d5
  !g5
  !d5
  !a4
  !g5
  !d5
  !a4
  !g5
  !d5
  !end

.sub29D6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.sub29DE
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 24
  %percNote(!instr10-!instr0C)
  db 12
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
