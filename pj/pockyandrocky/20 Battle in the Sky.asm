asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr06 = $17
!instr07 = $18
!instr09 = $19
!instr0C = $1A
!instr0D = $1B
!instr0F = $1C
!instr10 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr06,$8F,$EB,$B8,$03,$00
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr09,$8F,$EF,$B8,$01,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0F,$8F,$E0,$B8,$07,$A0
  db !instr10,$8F,$E0,$B8,$07,$10
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample06,Sample06+450
  dw Sample07,Sample07+1584
  dw Sample09,Sample09+27
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0F,Sample0F+729
  dw Sample10,Sample10+3375
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"
  Sample09: incbin "Sample09.brr"
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
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, 0, .pattern6_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110111,50,50
  !echoParameters,6,72,3
  !tempo,31
  !musicVolume,200;255
  !end

.pattern1_0
  !instr,!instr04
  !volume,180
  !vibrato,12,24,64
  !transpose,12
  db 96,$7F
  !a5
  !f5
  !g5
  !e5
  !a5
  !f5
  db 48
  !g5
  !c6
  db 96
  !e5
  !end

.pattern1_1
  !instr,!instr09
  !volume,180
  !pan,13
  !vibrato,0,24,64
  db 8,$7F
  !f5
  !d5
  !a4
  !e5
  !c5
  !g4
  !c5
  !g4
  !d5
  !a4
  !e5
  !c5
  !loop : dw .sub2934 : db 7
  !end

.pattern1_2
  !instr,!instr07
  !volume,200
  db 16,$7F
  !d3
  db 8
  !rest
  db 16
  !d3
  db 8
  !rest
  db 16
  !c3
  !d3
  !a2
  !d3
  db 8
  !rest
  db 16
  !d3
  db 8
  !rest
  db 16
  !c3
  !d3
  !a2
  !loop : dw .sub2941 : db 2
  !loop : dw .sub294D : db 2
  !loop : dw .sub2941 : db 2
  !end

.pattern1_3
  !volume,255
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2959 : db 7
  !end

.pattern1_4
  !instr,!instr09
  !volume,180
  !pan,7
  !vibrato,0,24,64
  db 8,$7F
  !a5
  !f5
  !d5
  !g5
  !e5
  !c5
  !e5
  !c5
  !f5
  !d5
  !g5
  !e5
  !loop : dw .sub2961 : db 7
  !end

.pattern1_5
  !instr,!instr06
  !volume,100
  !vibrato,12,36,72
  !transpose,12
  db 96,$7F
  !a5
  !f5
  !g5
  !e5
  !a5
  !f5
  db 48
  !g5
  !c6
  db 96
  !e5
  !end

.pattern1_7
  !volume,255
  !loop : dw .sub296E : db 3
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 16,$73
  %percNote(!instr10-!instr0C)
  !loop : dw .sub296E : db 3
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 16,$73
  %percNote(!instr10-!instr0C)
  !end

.pattern2_0
  !loop : dw .sub2993 : db 1
  db 48
  !e5
  !g5
  db 96
  !a5
  !end

.pattern2_1
  db 8,$7F
  !f5
  !d5
  !a4
  !e5
  !c5
  !g4
  !c5
  !g4
  !d5
  !a4
  !e5
  !c5
  !loop : dw .sub2934 : db 6
  !e5
  !cs5
  !a4
  !e5
  !cs5
  !g4
  !cs5
  !a4
  !e5
  !cs5
  !a5
  !e5
  !end

.pattern2_2
  !loop : dw .sub29B2 : db 1
  !loop : dw .sub29CB : db 2
  !loop : dw .sub29D7 : db 2
  !loop : dw .sub29E3 : db 1
  !end

.pattern2_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2959 : db 6
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 8
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern2_4
  db 8,$7F
  !a5
  !f5
  !d5
  !g5
  !e5
  !c5
  !e5
  !c5
  !f5
  !d5
  !g5
  !e5
  !loop : dw .sub2961 : db 6
  !a5
  !e5
  !cs5
  !g5
  !e5
  !cs5
  !e5
  !cs5
  !a5
  !e5
  !cs6
  !a5
  !end

.pattern2_5
  db 16,$7F
  !d5
  !e5
  !f5
  !d6
  !e6
  !f6
  db 96
  !a6
  db 16
  !e5
  !f5
  !e5
  !e6
  !f6
  !e6
  db 96
  !c6
  db 16
  !d5
  !e5
  !f5
  !d6
  !e6
  !f6
  db 96
  !a6
  db 48
  !e5
  !g5
  !a5
  !cs6
  !end

.pattern2_7
  !loop : dw .sub296E : db 3
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 16,$73
  %percNote(!instr10-!instr0C)
  !loop : dw .sub296E : db 3
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 32,$75
  %percNote(!instr0F-!instr0C)
  !end

.pattern3_0
  db 96,$7F
  !a5
  !f5
  !g5
  !e5
  !a5
  !f5
  db 48
  !g5
  !c6
  db 96
  !e5
  !end

.pattern3_1
  db 8,$7F
  !f5
  !d5
  !a4
  !e5
  !c5
  !g4
  !c5
  !g4
  !d5
  !a4
  !e5
  !c5
  !loop : dw .sub2934 : db 7
  !end

.pattern3_2
  db 16,$7F
  !d3
  db 8
  !rest
  db 16
  !d3
  db 8
  !rest
  db 16
  !c3
  !d3
  !c3
  !d3
  db 8
  !rest
  db 16
  !d3
  db 8
  !rest
  db 16
  !c3
  !d3
  !a2
  !loop : dw .sub29FA : db 1
  !as2
  db 8
  !rest
  db 16
  !as2
  db 8
  !rest
  db 16
  !a2
  !as2
  !a2
  !as2
  db 8
  !rest
  db 16
  !as2
  db 8
  !rest
  db 16
  !a2
  !as2
  !d3
  !loop : dw .sub29FA : db 1
  !end

.pattern3_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2959 : db 7
  !end

.pattern3_4
  db 8,$7F
  !a5
  !f5
  !d5
  !g5
  !e5
  !c5
  !e5
  !c5
  !f5
  !d5
  !g5
  !e5
  !loop : dw .sub2961 : db 7
  !end

.pattern3_5
  db 96,$7F
  !a5
  !f5
  !g5
  !e5
  !a5
  !f5
  db 48
  !g5
  !c6
  db 96
  !e5
  !end

.pattern3_7
  !loop : dw .sub296E : db 3
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 16,$73
  %percNote(!instr10-!instr0C)
  !loop : dw .sub296E : db 3
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 16,$73
  %percNote(!instr10-!instr0C)
  !end

.pattern4_0
  !loop : dw .sub2993 : db 1
  db 48
  !e5
  !g5
  db 96
  !a5
  !end

.pattern4_1
  db 8,$7F
  !f5
  !d5
  !a4
  !e5
  !c5
  !g4
  !c5
  !g4
  !d5
  !a4
  !e5
  !c5
  !loop : dw .sub2934 : db 6
  !e5
  !cs5
  !a4
  !e5
  !cs5
  !g4
  !cs5
  !a4
  !e5
  !cs5
  !a5
  !e5
  !end

.pattern4_2
  !loop : dw .sub29B2 : db 1
  !loop : dw .sub29CB : db 2
  !loop : dw .sub29D7 : db 2
  !loop : dw .sub29E3 : db 1
  !end

.pattern4_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2959 : db 6
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 8
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern4_4
  db 8,$7F
  !a5
  !f5
  !d5
  !g5
  !e5
  !c5
  !e5
  !c5
  !f5
  !d5
  !g5
  !e5
  !loop : dw .sub2961 : db 6
  !a5
  !e5
  !cs5
  !g5
  !e5
  !cs5
  !e5
  !cs5
  !a5
  !e5
  !cs6
  !a5
  !end

.pattern4_5
  db 16,$7F
  !d5
  !e5
  !f5
  !d6
  !e6
  !f6
  db 96
  !a6
  db 16
  !e5
  !f5
  !e5
  !e6
  !f6
  !e6
  db 96
  !c6
  db 16
  !d5
  !e5
  !f5
  !d6
  !e6
  !f6
  db 96
  !a6
  db 48
  !e5
  !g5
  !a5
  !cs6
  !end

.pattern4_7
  !loop : dw .sub296E : db 3
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 16,$73
  %percNote(!instr10-!instr0C)
  !loop : dw .sub296E : db 3
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 32,$75
  %percNote(!instr0F-!instr0C)
  !end

.pattern5_0
  !loop : dw .sub2A11 : db 1
  db 48
  !a5
  db 16
  !d5
  !f5
  !g5
  !end

.pattern5_1
  !instr,!instr06
  !volume,150
  !pan,10
  !transpose,12
  db 96,$7F
  !as4
  !f4
  !a4
  !e4
  !g4
  !as4
  !f4
  !a4
  !end

.pattern5_2
  !loop : dw .sub29B2 : db 1
  !loop : dw .sub29CB : db 2
  !loop : dw .sub2A31 : db 2
  !d3
  db 8
  !rest
  db 16
  !d3
  db 8
  !rest
  db 16
  !c3
  !d3
  !c3
  !d3
  db 8
  !rest
  db 16
  !d3
  db 8
  !rest
  db 16
  !c3
  !d3
  !a2
  !end

.pattern5_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 72
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2A3D : db 6
  db 24
  %percNote(!instr0C-!instr0C)
  db 40
  %percNote(!instr0C-!instr0C)
  db 8
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern5_4
  !instr,!instr06
  !volume,150
  !pan,10
  !transpose,12
  db 96,$7F
  !d5
  !as4
  !c5
  !a4
  !as4
  !ds5
  !a4
  !d5
  !end

.pattern5_5
  db 96,$7F
  !d6
  !tie
  !c6
  !tie
  !ds6
  !tie
  !e6
  !tie
  !end

.pattern5_7
  db 8,$73
  %percNote(!instr10-!instr0C)
  db 16
  !rest
  db 8
  %percNote(!instr10-!instr0C)
  db 64
  !rest
  !loop : dw .sub2A42 : db 6
  db 8
  %percNote(!instr10-!instr0C)
  db 16
  !rest
  db 8
  %percNote(!instr10-!instr0C)
  db 40
  !rest
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr10-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  !end

.pattern6_0
  !loop : dw .sub2A11 : db 1
  db 96
  !cs6
  !end

.pattern6_1
  db 96,$7F
  !as4
  !f4
  !a4
  !e4
  !g4
  !as4
  !as4
  db 48
  !cs5
  !instr,!instr09
  !volume,180
  !pan,13
  !transpose,0
  db 8
  !g4
  !a4
  !b4
  !cs5
  !d5
  !e5
  !end

.pattern6_2
  !loop : dw .sub29B2 : db 1
  !loop : dw .sub29CB : db 2
  !loop : dw .sub2A31 : db 2
  !e3
  db 8
  !rest
  db 16
  !e3
  db 8
  !rest
  db 16
  !d3
  !e3
  !as2
  !a2
  db 8
  !rest
  db 16
  !a2
  db 8
  !rest
  db 16
  !a3
  !g3
  !e3
  !end

.pattern6_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2959 : db 6
  db 8
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern6_4
  db 96,$7F
  !d5
  !as4
  !c5
  !a4
  !as4
  !ds5
  !e5
  db 48
  !e5
  !instr,!instr09
  !volume,180
  !pan,7
  !transpose,0
  db 8
  !b4
  !cs5
  !d5
  !e5
  !f5
  !g5
  !end

.pattern6_5
  db 96,$7F
  !d6
  !tie
  !c6
  !tie
  !ds6
  !tie
  !d6
  !cs6
  !end

.pattern6_7
  !loop : dw .sub2A4B : db 7
  db 8,$73
  %percNote(!instr10-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr10-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 16,$73
  %percNote(!instr10-!instr0C)
  !end

.sub2934
  !f5
  !d5
  !a4
  !e5
  !c5
  !g4
  !c5
  !g4
  !d5
  !a4
  !e5
  !c5
  !end

.sub2941
  !c3
  db 8
  !rest
  db 16
  !c3
  db 8
  !rest
  db 16
  !as2
  !c3
  !g2
  !end

.sub294D
  !d3
  db 8
  !rest
  db 16
  !d3
  db 8
  !rest
  db 16
  !c3
  !d3
  !a2
  !end

.sub2959
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  !end

.sub2961
  !a5
  !f5
  !d5
  !g5
  !e5
  !c5
  !e5
  !c5
  !f5
  !d5
  !g5
  !e5
  !end

.sub296E
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  !end

.sub2993
  db 16,$7F
  !d5
  !e5
  !f5
  db 48
  !a5
  !tie
  db 16
  !g5
  !f5
  !d5
  !e5
  !f5
  !e5
  db 48
  !c5
  db 96
  !tie
  db 16
  !d5
  !e5
  !f5
  db 48
  !a5
  !tie
  db 16
  !a5
  !g5
  !d5
  !end

.sub29B2
  db 16,$7F
  !as2
  db 8
  !rest
  db 16
  !as2
  db 8
  !rest
  db 16
  !a2
  !as2
  !f2
  !as2
  db 8
  !rest
  db 16
  !as2
  db 8
  !rest
  db 16
  !a2
  !as2
  !f2
  !end

.sub29CB
  !a2
  db 8
  !rest
  db 16
  !a2
  db 8
  !rest
  db 16
  !g2
  !a2
  !e2
  !end

.sub29D7
  !as2
  db 8
  !rest
  db 16
  !as2
  db 8
  !rest
  db 16
  !a2
  !as2
  !f2
  !end

.sub29E3
  !c3
  db 8
  !rest
  db 16
  !c3
  db 8
  !rest
  db 16
  !as2
  !c3
  !g2
  !cs3
  db 8
  !rest
  db 16
  !cs3
  db 8
  !rest
  db 16
  !cs3
  !e3
  !a3
  !end

.sub29FA
  !c3
  db 8
  !rest
  db 16
  !c3
  db 8
  !rest
  db 16
  !as2
  !c3
  !as2
  !c3
  db 8
  !rest
  db 16
  !c3
  db 8
  !rest
  db 16
  !as2
  !c3
  !g2
  !end

.sub2A11
  db 80,$7F
  !a5
  db 8
  !a5
  !d6
  db 64
  !a6
  db 16
  !g6
  !f6
  db 32
  !g6
  !e6
  !c6
  db 96
  !a5
  db 80
  !g5
  db 8
  !g5
  !c6
  db 64
  !g6
  db 16
  !f6
  !d6
  db 64
  !e6
  db 32
  !d6
  !end

.sub2A31
  !ds3
  db 8
  !rest
  db 16
  !ds3
  db 8
  !rest
  db 16
  !d3
  !ds3
  !as2
  !end

.sub2A3D
  db 24
  %percNote(!instr0C-!instr0C)
  db 72
  %percNote(!instr0C-!instr0C)
  !end

.sub2A42
  db 8
  %percNote(!instr10-!instr0C)
  db 16
  !rest
  db 8
  %percNote(!instr10-!instr0C)
  db 64
  !rest
  !end

.sub2A4B
  db 8,$73
  %percNote(!instr10-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr10-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  db 8,$75
  %percNote(!instr0F-!instr0C)
  db 8,$72
  %percNote(!instr0F-!instr0C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
