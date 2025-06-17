asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr06 = $16
!instr07 = $17
!instr09 = $18
!instr0A = $19
!instr0C = $1A
!instr0D = $1B
!instr0F = $1C
!instr10 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr06,$8F,$EB,$B8,$03,$00
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr09,$8F,$EF,$B8,$01,$00
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0F,$8F,$E0,$B8,$07,$A0
  db !instr10,$8F,$E0,$B8,$07,$10
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample06,Sample06+450
  dw Sample07,Sample07+1584
  dw Sample09,Sample09+27
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0F,Sample0F+729
  dw Sample10,Sample10+3375
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample06: incbin "Sample06.brr"
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
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $0083,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern2_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01111011,50,50
  !echoParameters,6,72,3
  !tempo,26
  !musicVolume,200
  !end

.pattern1_0
  !instr,!instr09
  !volume,240
  !vibrato,12,24,64
  !transpose,0
  !loop : dw .sub2B57 : db 1
  db 24
  !a5
  !c6
  !f6
  !ds6
  db 48
  !e6
  db 12
  !rest
  db 6
  !e6
  !rest
  !fs6
  db 18
  !g6
  db 48
  !fs6
  db 12
  !rest
  db 6
  !fs6
  !rest
  !g6
  db 18
  !a6
  db 48
  !g6
  db 12
  !rest
  db 6
  !g6
  !rest
  !a6
  db 18
  !b6
  db 24
  !a6
  !c7
  !f7
  !ds7
  db 96
  !e7
  !end

.pattern1_1
  !instr,!instr07
  !volume,255
  !transpose,244
  db 12,$6F
  !e3
  db 6,$0F
  !e3
  !e3
  db 6,$7F
  !d4
  db 6,$6F
  !e4
  !e3
  !e3
  db 12
  !rest
  !e3
  db 6
  !g3
  db 18
  !e3
  !loop : dw .sub2B77 : db 2
  db 12
  !f3
  db 6,$0F
  !f3
  !f3
  db 6,$7F
  !ds4
  db 6,$6F
  !f4
  !f3
  !f3
  !rest
  !f3
  !f4
  !f3
  db 12
  !ds3
  db 6
  !ds4
  !ds3
  !loop : dw .sub2B77 : db 3
  db 12
  !f3
  db 6,$0F
  !f3
  !f3
  db 6,$7F
  !ds4
  db 6,$6F
  !f4
  !f3
  !f3
  !rest
  !f3
  !f4
  !f3
  db 12
  !ds3
  db 6
  !ds4
  !ds3
  db 24
  !e3
  !g3
  !c4
  !f3
  !end

.pattern1_2
  !volume,255
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
  db 6
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2B8D : db 2
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
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2B8D : db 3
  db 6
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern1_3
  !instr,!instr06
  !volume,150
  !vibrato,12,24,48
  !pan,10
  !dynamicPan,72,0
  db 6,$1F
  !e6
  !e6
  !e7
  !e6
  !e6
  !e7
  !e6
  !e6
  !e7
  !e6
  !e7
  !e6
  !e7
  !e7
  !e6
  !e7
  !dynamicPan,72,10
  !loop : dw .sub2B9E : db 1
  !loop : dw .sub2BB2 : db 1
  !f6
  !f6
  !f7
  !f6
  !f6
  !f7
  !f6
  !f6
  !f7
  !f6
  !f7
  !f6
  !f7
  !f7
  !f6
  !f7
  !dynamicPan,72,0
  !loop : dw .sub2BB2 : db 1
  !loop : dw .sub2B9E : db 1
  !loop : dw .sub2BB2 : db 1
  !f6
  !f6
  !f7
  !f6
  !f6
  !f7
  !f6
  !f6
  !f7
  !f6
  !f7
  !f6
  !f7
  !f7
  !f6
  !f7
  !volume,200
  db 6,$4F
  !e6
  !g5
  !b5
  !e6
  !g6
  !b5
  !d6
  !g6
  !c7
  !e6
  !g6
  !c7
  !f7
  !a6
  !c7
  !f7
  !end

.pattern1_4
  !instr,!instr0A
  !volume,120
  !vibrato,12,24,48
  db 96,$7F
  !e5
  !fs5
  !g5
  !a5
  !e5
  !fs5
  !g5
  !a5
  !volume,180
  db 24,$4F
  !e5
  !g5
  !c6
  !f6
  !end

.pattern1_5
  !instr,!instr0A
  !volume,120
  !vibrato,12,24,48
  db 96,$7F
  !b4
  !d5
  !e5
  !f5
  !b4
  !d5
  !e5
  !f5
  !volume,180
  db 24,$4F
  !b4
  !d5
  !g5
  !c6
  !end

.pattern1_6
  !instr,!instr0A
  !volume,120
  !vibrato,12,24,48
  !pan,10
  !subtranspose,0
  db 96,$7F
  !g4
  !a4
  !b4
  !c5
  !g4
  !a4
  !b4
  !c5
  !volume,180
  db 24,$4F
  !g4
  !b4
  !e5
  !a5
  !end

.pattern1_7
  !volume,255
  !loop : dw .sub2BC6 : db 8
  db 6,$75
  %percNote(!instr10-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr10-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr10-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr10-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  !end

.pattern2_0
  db 24
  !rest
  db 12,$6F
  !e5
  db 6
  !g5
  !rest
  db 18
  !b5
  !a5
  db 12
  !g5
  !a5
  !g5
  !fs5
  db 6
  !a5
  db 54
  !d5
  db 24
  !rest
  db 12
  !e5
  db 6
  !g5
  !rest
  db 18
  !b5
  !a5
  db 12
  !g5
  db 72
  !a5
  db 12
  !g5
  !a5
  !end

.pattern2_1
  db 6,$6F
  !e3
  !e3
  !e3
  !e3
  db 12
  !rest
  db 6,$2F
  !e3
  db 12,$6F
  !e3
  db 6
  !e3
  !g3
  !g3
  !fs3
  !fs3
  !e3
  !e3
  !d3
  !d3
  !d3
  !d3
  db 12
  !rest
  db 6,$2F
  !d3
  db 12,$6F
  !d3
  db 6
  !d3
  !fs3
  !fs3
  !e3
  !e3
  !d3
  !d3
  !e3
  !e3
  !e3
  !e3
  db 12
  !rest
  db 6,$2F
  !e3
  db 12,$6F
  !e3
  db 6
  !e3
  !g3
  !g3
  !fs3
  !fs3
  !e3
  !e3
  !d3
  !d3
  !d3
  !d3
  db 12
  !rest
  db 6,$2F
  !d3
  db 12,$6F
  !d3
  db 6
  !d3
  !fs3
  !fs3
  !e3
  !e3
  !d3
  !d3
  !end

.pattern2_2
  db 6,$7F
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2BF3 : db 3
  !end

.pattern2_3
  !instr,!instr09
  !volume,220
  db 24
  !rest
  db 12,$6D
  !b4
  db 6
  !e5
  !rest
  db 18
  !g5
  !fs5
  db 12
  !e5
  !fs5
  !e5
  !d5
  db 6
  !fs5
  db 54
  !a4
  db 24
  !rest
  db 12
  !b4
  db 6
  !e5
  !rest
  db 18
  !g5
  !fs5
  db 12
  !e5
  db 72
  !fs5
  db 12
  !e5
  !fs5
  !end

.pattern2_4
  !volume,180
  db 96,$0F
  !e5
  !fs5
  !e5
  !fs5
  !end

.pattern2_5
  !volume,180
  db 96,$0F
  !b4
  !d5
  !b4
  !d5
  !end

.pattern2_6
  !volume,180
  db 96,$0F
  !g4
  !a4
  !g4
  !a4
  !end

.pattern2_7
  !loop : dw .sub2C01 : db 4
  !end

.pattern3_0
  db 24,$6F
  !b5
  db 6
  !a5
  !b5
  !rest
  db 18
  !d6
  db 12
  !b5
  !a5
  !fs5
  db 24
  !g5
  db 6
  !a5
  !g5
  !rest
  db 30
  !fs5
  db 12
  !d5
  !e5
  db 24
  !f5
  db 6
  !g5
  !a5
  !rest
  db 18
  !g5
  db 12
  !f5
  !e5
  !c5
  db 96
  !d5
  !end

.pattern3_1
  db 12,$6F
  !a3
  db 6
  !a3
  !rest
  !g3
  db 6,$2F
  !a3
  !rest
  db 12,$6F
  !b3
  db 6
  !b3
  !b3
  !rest
  !a3
  db 18
  !b3
  db 12
  !g3
  db 6
  !g3
  !rest
  !fs3
  db 6,$2F
  !g3
  !rest
  db 12,$6F
  !d3
  db 6
  !d3
  !d4
  !rest
  !c4
  !d4
  db 12
  !d3
  !as3
  db 6
  !as3
  !rest
  !a3
  db 6,$2F
  !b3
  !rest
  db 12,$6F
  !c4
  db 6
  !c4
  !c4
  !rest
  !as3
  db 18
  !c4
  db 12
  !d3
  db 6
  !d4
  !rest
  !c4
  db 6,$2F
  !d4
  !rest
  db 12,$6F
  !d3
  db 6
  !d3
  !d4
  !rest
  !c4
  !d4
  !c4
  !d4
  !end

.pattern3_2
  db 6,$7F
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2BF3 : db 2
  db 6
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern3_3
  !volume,180
  !instr,!instr09
  db 24,$6D
  !g5
  db 6
  !g5
  !g5
  !rest
  db 18
  !fs5
  db 12
  !fs5
  !fs5
  !d5
  db 24
  !e5
  db 6
  !fs5
  !e5
  !rest
  db 30
  !d5
  db 12
  !a4
  !c5
  db 24
  !d5
  db 6
  !e5
  !f5
  !rest
  db 18
  !e5
  db 12
  !d5
  !c5
  !g4
  db 6,$3D
  !a6
  !d6
  !g6
  !d6
  !a6
  !d6
  !g6
  !fs6
  !rest
  !d6
  !a6
  !d6
  !fs6
  !d6
  !a6
  !d7
  !end

.pattern3_4
  !volume,120
  db 42,$7F
  !e5
  db 54
  !fs5
  db 42
  !e5
  db 54
  !d5
  db 42
  !d5
  db 54
  !e5
  db 42
  !g5
  db 54
  !fs5
  !end

.pattern3_5
  !volume,120
  db 42,$7F
  !c5
  db 54
  !d5
  db 42
  !c5
  db 54
  !a4
  db 42
  !as4
  db 54
  !c5
  db 42
  !d5
  db 54
  !d5
  !end

.pattern3_6
  !volume,120
  db 42,$7F
  !a4
  db 54
  !b4
  db 42
  !g4
  db 54
  !fs4
  db 42
  !f4
  db 54
  !g4
  db 42
  !a4
  db 54
  !a4
  !end

.pattern4_0
  db 24,$6F
  !c5
  !d5
  !e5
  !g5
  db 18
  !fs5
  db 6
  !d5
  db 12
  !rest
  db 24
  !a4
  db 6
  !d5
  !rest
  !e5
  db 18
  !fs5
  db 96
  !e5
  !rest
  db 24
  !c5
  !d5
  !e5
  !g5
  db 18
  !fs5
  db 6
  !d5
  db 12
  !rest
  db 24
  !a5
  db 6
  !g5
  !rest
  !fs5
  db 18
  !a5
  db 42
  !b5
  db 54
  !c6
  db 42
  !d6
  db 54
  !fs6
  !end

.pattern4_1
  db 12,$6D
  !c4
  db 6
  !c4
  !rest
  !b3
  db 12
  !c4
  !c4
  db 6
  !c3
  !c4
  !rest
  !b3
  db 18
  !c4
  db 12
  !d3
  db 6
  !d4
  !rest
  !c4
  db 12
  !d4
  !d3
  db 6
  !d3
  !d4
  !rest
  !c4
  db 18
  !d4
  db 12
  !e3
  db 6
  !e4
  !rest
  !d4
  db 12
  !e4
  !e3
  db 6
  !e3
  !e4
  !rest
  !d4
  db 18
  !e4
  db 12
  !e3
  db 6
  !e4
  !rest
  !d4
  db 12
  !e4
  !e3
  db 6
  !b3
  !a3
  !e3
  !a3
  !g3
  !e3
  !d3
  !loop : dw .sub2C32 : db 2
  !end

.pattern4_2
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
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2C53 : db 2
  db 24
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2C53 : db 3
  db 24
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern4_3
  !instr,!instr06
  !volume,180
  !pan,0
  db 12
  !rest
  db 6,$3D
  !b4
  !rest
  !c5
  db 12
  !rest
  db 6
  !b4
  !b4
  !c5
  !rest
  !c5
  !rest
  !b4
  !rest
  !c5
  db 12
  !rest
  db 6
  !c5
  !rest
  !d5
  db 12
  !rest
  db 6
  !c5
  !c5
  !d5
  !rest
  !d5
  !rest
  !c5
  !rest
  !d5
  !loop : dw .sub2C60 : db 2
  !instr,!instr06
  !volume,150
  !loop : dw .sub2C73 : db 1
  db 12
  !rest
  db 6
  !d5
  !rest
  !e5
  db 12
  !rest
  db 6
  !d5
  !d5
  !e5
  !rest
  !e5
  !rest
  !d5
  !rest
  !e5
  db 12
  !rest
  db 6
  !e5
  !rest
  !fs5
  db 12
  !rest
  db 6
  !e5
  !e5
  !fs5
  !rest
  !fs5
  !rest
  !e5
  !rest
  !fs5
  !end

.pattern4_4
  db 42,$7F
  !e5
  db 54
  !g5
  db 42
  !fs5
  db 54
  !a5
  !loop : dw .sub2C98 : db 2
  db 42
  !e5
  db 54
  !g5
  db 42
  !fs5
  db 54
  !a5
  db 42
  !e5
  db 54
  !g5
  db 42
  !fs5
  db 54
  !a5
  !end

.pattern4_5
  db 42,$7F
  !c5
  db 54
  !e5
  db 42
  !d5
  db 54
  !fs5
  !loop : dw .sub2C9F : db 2
  db 42
  !c5
  db 54
  !e5
  db 42
  !d5
  db 54
  !fs5
  db 42
  !c5
  db 54
  !e5
  db 42
  !d5
  db 54
  !fs5
  !end

.pattern4_6
  !instr,!instr06
  !volume,180
  !pan,20
  db 12
  !rest
  db 6,$3D
  !g4
  !rest
  !g4
  db 12
  !rest
  db 6
  !g4
  !g4
  !g4
  !rest
  !g4
  !rest
  !g4
  !rest
  !g4
  db 12
  !rest
  db 6
  !a4
  !rest
  !a4
  db 12
  !rest
  db 6
  !a4
  !a4
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !loop : dw .sub2CA6 : db 2
  db 12
  !rest
  db 6
  !g4
  !rest
  !g4
  db 12
  !rest
  db 6
  !g4
  !g4
  !g4
  !rest
  !g4
  !rest
  !g4
  !rest
  !g4
  db 12
  !rest
  db 6
  !a4
  !rest
  !a4
  db 12
  !rest
  db 6
  !a4
  !a4
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !loop : dw .sub2C73 : db 1
  !end

.pattern4_7
  !loop : dw .sub2CB9 : db 7
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
  %percNote(!instr10-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr10-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  db 6,$75
  %percNote(!instr10-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  !end

.pattern5_0
  !loop : dw .sub2B57 : db 1
  db 48
  !a5
  db 12
  !rest
  db 6
  !a5
  !rest
  !b5
  db 18
  !c6
  !e5
  !fs5
  db 12
  !g5
  db 18
  !e5
  !fs5
  db 12
  !g5
  db 18
  !e5
  !fs5
  db 12
  !g5
  db 18
  !a5
  !c6
  db 12
  !d6
  db 18
  !e6
  !fs6
  db 12
  !g6
  db 18
  !e6
  !fs6
  db 12
  !g6
  db 18
  !e6
  !fs6
  db 12
  !g6
  db 18
  !a6
  !c7
  db 12
  !ds7
  !end

.pattern5_1
  db 12,$7F
  !e3
  db 6,$0F
  !e3
  !e3
  db 6,$7F
  !d4
  !e4
  !e3
  !e3
  db 12
  !rest
  !e3
  db 6
  !g3
  db 18
  !e3
  db 12,$6F
  !e3
  db 6,$0F
  !e3
  !e3
  db 6,$7F
  !d4
  !e4
  !e3
  !e3
  db 12
  !rest
  !e3
  db 6
  !g3
  db 18
  !e3
  db 12
  !e3
  db 6,$0F
  !e3
  !e3
  db 6,$7F
  !d4
  !e4
  !e3
  !e3
  db 12
  !rest
  !e3
  db 6
  !g3
  db 18
  !e3
  db 12
  !f3
  db 6,$0F
  !f3
  !f3
  db 6,$7F
  !ds4
  !f4
  !f3
  !f3
  !rest
  !f3
  !f4
  !f3
  db 12
  !f3
  db 6
  !f4
  !f3
  db 12
  !e3
  db 6
  !rest
  !e4
  !rest
  !b3
  !g3
  !e3
  db 12
  !d3
  db 6
  !rest
  !d4
  !rest
  !a3
  !fs3
  !d3
  db 12
  !c4
  db 6
  !rest
  !c5
  !rest
  !g4
  !e4
  !c4
  db 12
  !d3
  db 12,$3F
  !d4
  db 12,$7F
  !d3
  db 12,$3F
  !d4
  db 12,$7F
  !e3
  db 6
  !rest
  !e4
  !rest
  !b3
  !g3
  !e3
  db 12
  !d3
  db 6
  !rest
  !d4
  !rest
  !a3
  !fs3
  !d3
  db 12
  !g3
  db 6
  !rest
  !g4
  !rest
  !d4
  !b3
  !g3
  db 12
  !f3
  db 12,$3F
  !f4
  db 12,$7F
  !f3
  db 12,$3F
  !f4
  !end

.pattern5_2
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
  db 6
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2B8D : db 2
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
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2CE6 : db 3
  db 6
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  !end

.pattern5_3
  !instr,!instr09
  !volume,120
  !pan,0
  !loop : dw .sub2CF4 : db 1
  !end

.pattern5_4
  db 96,$7F
  !e5
  !fs5
  !g5
  !a5
  db 48
  !e5
  !fs5
  !e5
  !fs5
  !e5
  !fs5
  !g5
  !a5
  !end

.pattern5_5
  db 96,$7F
  !b4
  !d5
  !e5
  !f5
  db 48
  !b4
  !d5
  !c5
  !d5
  !b4
  !d5
  !d5
  !f5
  !end

.pattern5_6
  !instr,!instr09
  !volume,120
  !pan,20
  !subtranspose,24
  !loop : dw .sub2CF4 : db 1
  !end

.pattern5_7
  !loop : dw .sub2BC6 : db 8
  !end

.sub2B57
  db 48,$7F
  !e5
  db 12
  !rest
  db 6
  !e5
  !rest
  !fs5
  db 18
  !g5
  db 48
  !fs5
  db 12
  !rest
  db 6
  !fs5
  !rest
  !g5
  db 18
  !a5
  db 48
  !g5
  db 12
  !rest
  db 6
  !g5
  !rest
  !a5
  db 18
  !b5
  !end

.sub2B77
  db 12
  !e3
  db 6,$0F
  !e3
  !e3
  db 6,$7F
  !d4
  db 6,$6F
  !e4
  !e3
  !e3
  db 12
  !rest
  !e3
  db 6
  !g3
  db 18
  !e3
  !end

.sub2B8D
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
  db 6
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  !end

.sub2B9E
  !e6
  !e6
  !e7
  !e6
  !e6
  !e7
  !e6
  !e6
  !e7
  !e6
  !e7
  !e6
  !e7
  !e7
  !e6
  !e7
  !dynamicPan,72,20
  !end

.sub2BB2
  !e6
  !e6
  !e7
  !e6
  !e6
  !e7
  !e6
  !e6
  !e7
  !e6
  !e7
  !e6
  !e7
  !e7
  !e6
  !e7
  !dynamicPan,72,10
  !end

.sub2BC6
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
  !end

.sub2BF3
  db 6
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !end

.sub2C01
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
  !end

.sub2C32
  db 12
  !c4
  db 6
  !c4
  !rest
  !b3
  db 12
  !c4
  !c4
  db 6
  !c3
  !c4
  !rest
  !b3
  db 18
  !c4
  db 12
  !d3
  db 6
  !d4
  !rest
  !c4
  db 12
  !d4
  !d3
  db 6
  !d3
  !d4
  !rest
  !c4
  db 18
  !d4
  !end

.sub2C53
  db 24
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
  %percNote(!instr0C-!instr0C)
  !end

.sub2C60
  db 12
  !rest
  db 6
  !d5
  !rest
  !e5
  db 12
  !rest
  db 6
  !d5
  !d5
  !e5
  !rest
  !e5
  !rest
  !d5
  !rest
  !e5
  !end

.sub2C73
  db 12
  !rest
  db 6
  !b4
  !rest
  !c5
  db 12
  !rest
  db 6
  !b4
  !b4
  !c5
  !rest
  !c5
  !rest
  !b4
  !rest
  !c5
  db 12
  !rest
  db 6
  !c5
  !rest
  !d5
  db 12
  !rest
  db 6
  !c5
  !c5
  !d5
  !rest
  !d5
  !rest
  !c5
  !rest
  !d5
  !end

.sub2C98
  db 24
  !a5
  db 18
  !a5
  db 54
  !b5
  !end

.sub2C9F
  db 24
  !g5
  db 18
  !g5
  db 54
  !g5
  !end

.sub2CA6
  db 12
  !rest
  db 6
  !b4
  !rest
  !b4
  db 12
  !rest
  db 6
  !b4
  !b4
  !b4
  !rest
  !b4
  !rest
  !b4
  !rest
  !b4
  !end

.sub2CB9
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
  %percNote(!instr10-!instr0C)
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
  !end

.sub2CE6
  db 6
  %percNote(!instr0C-!instr0C)
  db 18
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
  !end

.sub2CF4
  db 6,$3F
  !b6
  !g6
  !a6
  !e6
  !b6
  !g6
  !a6
  !e6
  !b6
  !g6
  !a6
  !e6
  !b6
  !g6
  !a6
  !e6
  !a6
  !e6
  !fs6
  !d6
  !a6
  !e6
  !fs6
  !d6
  !a6
  !e6
  !fs6
  !d6
  !a6
  !e6
  !fs6
  !d6
  !b6
  !g6
  !a6
  !e6
  !b6
  !g6
  !a6
  !e6
  !b6
  !g6
  !a6
  !e6
  !b6
  !g6
  !a6
  !e6
  !f6
  !a5
  !c6
  !f6
  !a6
  !c6
  !f6
  !a6
  !c7
  !f6
  !a6
  !c7
  !f7
  !a6
  !c7
  !f7
  !instr,!instr0A
  !volume,100
  db 18,$7F
  !e5
  !fs5
  db 12
  !g5
  db 18
  !e5
  !fs5
  db 12
  !g5
  db 18
  !e5
  !fs5
  db 12
  !g5
  db 6
  !fs5
  !e5
  !d5
  !c5
  !d5
  !c5
  !a4
  !fs4
  db 18
  !e5
  !fs5
  db 12
  !g5
  db 18
  !a5
  !c6
  db 12
  !d6
  db 18
  !b5
  !d6
  db 12
  !e6
  db 6
  !c5
  !f5
  !a5
  !c6
  !f6
  !a6
  !c7
  !f7
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
