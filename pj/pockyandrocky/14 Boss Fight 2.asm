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
  dw TrackerC53E

TrackerC53E:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw $008C,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110111,50,50
  !echoParameters,6,72,3
  !musicVolume,200;255
  !tempo,30
  db 48
  !rest
  !end

.pattern0_1
  !instr,!instr0A
  !volume,210
  !vibrato,12,24,128
  db 18,$4F
  !g3
  !fs3
  db 12,$7F
  !f3
  !end

.pattern0_2
  !instr,!instr07
  !volume,255
  db 18,$7F
  !g2
  !fs2
  db 12
  !f2
  !end

.pattern0_3
  !volume,255
  db 18,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  !end

.pattern0_4
  !instr,!instr0A
  !vibrato,12,24,96
  !pan,7
  !volume,180
  db 18,$4F
  !g5
  !as5
  db 12,$7F
  !a5
  !end

.pattern0_5
  !instr,!instr0A
  !vibrato,12,24,96
  !pan,13
  !volume,180
  db 18,$4F
  !g4
  !as4
  db 12,$7F
  !a4
  !end

.pattern0_6
  !instr,!instr0A
  !vibrato,12,24,96
  !volume,180
  db 18,$4F
  !d5
  !cs5
  db 12,$7F
  !c5
  !end

.pattern0_7
  !volume,255
  db 18,$75
  %percNote(!instr10-!instr0C)
  %percNote(!instr10-!instr0C)
  db 12
  %percNote(!instr10-!instr0C)
  !end

.pattern1_0
  !instr,!instr04
  !volume,210
  !vibrato,12,24,96
  db 96,$6F
  !e6
  db 36
  !g6
  !fs6
  db 24
  !e6
  db 96
  !d6
  db 48
  !b5
  !d6
  !end

.pattern1_1
  !instr,!instr09
  !subtranspose,8
  !transpose,12
  !pan,10
  !dynamicPan,192,0
  !volume,180
  !dynamicVolume,192,30
  !loop : dw .subC8C4 : db 1
  !pan,10
  !dynamicPan,192,20
  !volume,180
  !dynamicVolume,192,30
  !loop : dw .subC8E7 : db 2
  !end

.pattern1_2
  !loop : dw .subC8F8 : db 2
  !loop : dw .subC901 : db 2
  !end

.pattern1_3
  db 72,$7F
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .subC90A : db 3
  !end

.pattern1_4
  !volume,100
  !dynamicVolume,96,200
  db 96,$7F
  !b4
  !dynamicVolume,96,100
  !tie
  !dynamicVolume,96,200
  !b4
  !dynamicVolume,96,100
  !tie
  !end

.pattern1_5
  !volume,100
  !dynamicVolume,96,200
  db 96,$7F
  !e4
  !dynamicVolume,96,100
  !tie
  !dynamicVolume,96,200
  !d4
  !dynamicVolume,96,100
  !tie
  !end

.pattern1_6
  !volume,200
  db 96,$7F
  !e3
  !tie
  !g3
  !tie
  !end

.pattern1_7
  db 12,$77
  %percNote(!instr10-!instr0C)
  db 6,$73
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
  !loop : dw .subC90F : db 3
  !end

.pattern2_0
  db 96,$6F
  !a5
  db 36
  !c6
  !e6
  db 24
  !fs6
  db 84
  !g6
  db 6
  !fs6
  !g6
  db 96
  !fs6
  !end

.pattern2_1
  !pan,10
  !dynamicPan,96,0
  !volume,180
  !dynamicVolume,192,30
  db 6,$2F
  !a6
  !d6
  !e6
  !a5
  !a6
  !d6
  !e6
  !a5
  !a6
  !d6
  !e6
  !a5
  !a6
  !d6
  !e6
  !a5
  !a6
  !d6
  !e6
  !a5
  !a6
  !d6
  !e6
  !a5
  !a6
  !d6
  !e6
  !a5
  !a6
  !d6
  !e6
  !a5
  !pan,10
  !dynamicPan,96,20
  !volume,180
  !dynamicVolume,192,30
  !d7
  !g6
  !a6
  !d6
  !d7
  !g6
  !a6
  !d6
  !d7
  !g6
  !a6
  !d6
  !d7
  !g6
  !a6
  !d6
  !d7
  !g6
  !a6
  !d6
  !d7
  !g6
  !a6
  !d6
  !a6
  !g6
  !a6
  !d6
  !d7
  !g6
  !a6
  !d6
  !end

.pattern2_2
  !loop : dw .subC930 : db 2
  db 12,$7F
  !d3
  db 12,$77
  !d3
  db 72
  !rest
  db 12,$7F
  !d3
  db 12,$77
  !d3
  db 36
  !rest
  db 12,$7F
  !a3
  !fs3
  !d3
  !end

.pattern2_3
  !loop : dw .subC939 : db 1
  db 72
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 60
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !end

.pattern2_4
  !dynamicVolume,96,200
  db 96,$7F
  !a4
  !dynamicVolume,96,100
  !tie
  !dynamicVolume,96,200
  !a4
  !dynamicVolume,96,100
  !tie
  !end

.pattern2_5
  !dynamicVolume,96,200
  db 96,$7F
  !e4
  !dynamicVolume,96,100
  !tie
  !dynamicVolume,96,200
  !d4
  !dynamicVolume,96,100
  !tie
  !end

.pattern2_6
  db 96,$7F
  !a3
  !tie
  !d3
  !tie
  !end

.pattern2_7
  !loop : dw .subC90F : db 4
  !end

.pattern3_0
  db 96,$6F
  !e6
  db 36
  !e6
  !g6
  db 24
  !a6
  db 96
  !b6
  db 24
  !b6
  !a6
  !g6
  !d6
  !end

.pattern3_1
  !pan,10
  !dynamicPan,192,0
  !volume,180
  !dynamicVolume,192,30
  !loop : dw .subC8C4 : db 1
  !pan,10
  !dynamicPan,192,20
  !volume,180
  !dynamicVolume,192,30
  !loop : dw .subC8E7 : db 2
  !end

.pattern3_2
  !loop : dw .subC8F8 : db 2
  !loop : dw .subC901 : db 2
  !end

.pattern3_3
  !loop : dw .subC939 : db 1
  db 72
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 72
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.pattern3_4
  !dynamicVolume,96,200
  db 96,$7F
  !b4
  !dynamicVolume,96,100
  !tie
  !dynamicVolume,96,200
  !b4
  !dynamicVolume,96,100
  !tie
  !end

.pattern3_5
  !dynamicVolume,96,200
  db 96,$7F
  !g4
  !dynamicVolume,96,100
  !tie
  !dynamicVolume,96,200
  !g4
  !dynamicVolume,96,100
  !tie
  !end

.pattern3_6
  db 96,$7F
  !e3
  !tie
  !g3
  !tie
  !end

.pattern3_7
  !loop : dw .subC90F : db 4
  !end

.pattern4_0
  db 36,$6F
  !a5
  !c6
  db 24
  !e6
  db 36
  !b5
  !d6
  db 24
  !fs6
  db 36
  !c6
  !e6
  db 24
  !g6
  db 96
  !a6
  !end

.pattern4_1
  !pan,10
  !dynamicPan,96,0
  !volume,180
  !dynamicVolume,96,70
  db 6,$2F
  !a6
  !d6
  !e6
  !a5
  !a6
  !d6
  !e6
  !a5
  !a6
  !d6
  !e6
  !a5
  !a6
  !d6
  !e6
  !a5
  !pan,10
  !dynamicPan,96,20
  !volume,180
  !dynamicVolume,96,70
  !b6
  !e6
  !fs6
  !b5
  !b6
  !e6
  !fs6
  !b5
  !b6
  !e6
  !fs6
  !b5
  !b6
  !e6
  !fs6
  !b5
  !pan,10
  !dynamicPan,96,0
  !volume,180
  !dynamicVolume,96,70
  !c7
  !e6
  !g6
  !c6
  !c7
  !e6
  !g6
  !c6
  !c7
  !e6
  !g6
  !c6
  !c7
  !e6
  !g6
  !c6
  !pan,10
  !dynamicPan,96,0
  !volume,180
  !dynamicVolume,96,70
  !d7
  !g6
  !a6
  !d6
  !d7
  !g6
  !a6
  !d6
  !d7
  !g6
  !a6
  !d6
  !d7
  !g6
  !a6
  !d6
  !end

.pattern4_2
  db 12,$7F
  !a2
  db 12,$77
  !a2
  db 72
  !rest
  db 12,$7F
  !b2
  db 12,$77
  !b2
  db 72
  !rest
  db 12,$7F
  !c3
  db 12,$77
  !c3
  db 72
  !rest
  db 12,$7F
  !d3
  db 12,$77
  !d3
  db 36
  !rest
  db 6,$7F
  !g2
  !g3
  !fs2
  !fs3
  !f2
  !f3
  !end

.pattern4_3
  db 60,$7F
  %percNote(!instr0C-!instr0C)
  db 11
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .subC943 : db 2
  db 60
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern4_4
  !dynamicVolume,64,200
  db 96,$7F
  !a4
  !volume,100
  !dynamicVolume,64,200
  !b4
  !volume,100
  !dynamicVolume,64,200
  !c5
  !volume,100
  !dynamicVolume,64,200
  !d5
  !end

.pattern4_5
  !dynamicVolume,64,200
  db 96,$7F
  !e4
  !volume,100
  !dynamicVolume,64,200
  !fs4
  !volume,100
  !dynamicVolume,64,200
  !g4
  !volume,100
  !dynamicVolume,64,200
  !a4
  !end

.pattern4_6
  db 96,$7F
  !a2
  !b2
  !c3
  !d3
  !end

.pattern4_7
  !loop : dw .subC90F : db 4
  !end

.subC8C4
  db 6,$2F
  !e6
  !a5
  !b5
  !e5
  !e6
  !a5
  !b5
  !e5
  !e6
  !a5
  !b5
  !e5
  !e6
  !a5
  !b5
  !e5
  !e6
  !a5
  !b5
  !e5
  !e6
  !a5
  !b5
  !e5
  !e6
  !a5
  !b5
  !e5
  !e6
  !a5
  !b5
  !e5
  !end

.subC8E7
  !g6
  !c6
  !d6
  !g5
  !g6
  !c6
  !d6
  !g5
  !g6
  !c6
  !d6
  !g5
  !g6
  !c6
  !d6
  !g5
  !end

.subC8F8
  db 12,$7F
  !e2
  db 12,$77
  !e2
  db 72
  !rest
  !end

.subC901
  db 12,$7F
  !g2
  db 12,$77
  !g2
  db 72
  !rest
  !end

.subC90A
  db 72
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.subC90F
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

.subC930
  db 12,$7F
  !a2
  db 12,$77
  !a2
  db 72
  !rest
  !end

.subC939
  db 72,$7F
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 72
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.subC943
  db 60
  %percNote(!instr0C-!instr0C)
  db 11
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
