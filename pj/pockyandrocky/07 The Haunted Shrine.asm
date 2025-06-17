asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr06 = $18
!instr07 = $19
!instr08 = $1A
!instr09 = $1B
!instr0C = $1C
!instr0D = $1D
!instr0E = $1E
!instr0F = $1F

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$8F,$EB,$B8,$03,$00
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr08,$8F,$E0,$B8,$1D,$F0
  db !instr09,$8F,$EF,$B8,$01,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0E,$FF,$E0,$B8,$05,$80
  db !instr0F,$8F,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample05,Sample05+1404
  dw Sample06,Sample06+450
  dw Sample07,Sample07+1584
  dw Sample08,Sample08+288
  dw Sample09,Sample09+27
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0E,Sample0E+2979
  dw Sample0F,Sample0F+729
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample09: incbin "Sample09.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0E: incbin "Sample0E.brr"
  Sample0F: incbin "Sample0F.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker241E

Tracker241E:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern5
  dw .pattern7
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern5_2, .pattern6_3, .pattern6_4, .pattern6_5, .pattern6_6, .pattern5_7
.pattern7: dw .pattern6_0, .pattern7_1, .pattern7_2, .pattern6_3, .pattern7_4, .pattern7_5, .pattern7_6, .pattern5_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01111011,50,50
  !echoParameters,6,72,3
  !musicVolume,200
  !tempo,26
  db 36
  !rest
  !end

.pattern1_0
  !instr,!instr04
  !volume,220
  !vibrato,12,24,96
  db 12,$7F
  !a5
  !g5
  !a5
  !b5
  !c6
  !d6
  !e6
  !g6
  db 48,$5F
  !a6
  db 24
  !a6
  !dynamicVolume,96,80
  db 24,$7F
  !a6
  db 96
  !tie
  !end

.pattern1_1
  !instr,!instr07
  !volume,220
  !loop : dw .sub2B99 : db 1
  db 96
  !tie
  !end

.pattern1_2
  !instr,!instr07
  !volume,200
  !subtranspose,4
  !loop : dw .sub2B99 : db 1
  !tie
  !volume,255
  !subtranspose,0
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  !end

.pattern1_3
  !instr,!instr05
  !volume,180
  db 12,$7F
  !a4
  !g4
  !a4
  !b4
  !c5
  !d5
  !e5
  !g5
  db 48
  !a5
  db 15
  !a5
  db 3
  !d5
  !e5
  !g5
  db 15
  !a5
  db 3,$79
  !d5
  !e5
  !g5
  db 15
  !a5
  db 3,$75
  !d5
  !e5
  !g5
  db 15
  !a5
  db 3,$72
  !d5
  !e5
  !g5
  db 15
  !a5
  db 3,$70
  !d5
  !e5
  !g5
  db 15
  !a5
  db 9
  !rest
  !end

.pattern1_4
  !instr,!instr06
  !volume,180
  !vibrato,0,32,96
  db 24,$7F
  !a5
  !g5
  !f5
  !g5
  db 48
  !a5
  db 24
  !a5
  !dynamicVolume,96,80
  !a5
  db 96
  !tie
  !end

.pattern1_5
  !instr,!instr06
  !volume,180
  !vibrato,0,32,96
  db 24,$7F
  !e5
  !d5
  !c5
  !e5
  db 48
  !f5
  db 24
  !f5
  !dynamicVolume,96,80
  !e5
  db 96
  !tie
  !end

.pattern1_6
  !instr,!instr06
  !volume,180
  !vibrato,0,32,96
  db 24,$7F
  !c5
  !b4
  !a4
  !b4
  db 48
  !c5
  db 24
  !c5
  !dynamicVolume,96,80
  !b4
  db 96
  !tie
  !end

.pattern2_0
  !instr,!instr04
  !volume,220
  !vibrato,18,24,96
  !transpose,244
  !loop : dw .sub2AA4 : db 1
  db 12
  !d6
  db 6
  !e6
  !d6
  db 12
  !c6
  !d6
  db 48,$5F
  !c6
  db 12,$6F
  !d6
  db 6
  !e6
  !d6
  db 12
  !c6
  !d6
  db 48,$5F
  !c6
  !end

.pattern2_1
  !instr,!instr07
  !volume,225
  !transpose,0
  !loop : dw .sub2ABA : db 1
  !a2
  db 6
  !rest
  !a3
  db 12
  !g3
  !e3
  !g2
  !g2
  !b2
  !d3
  !f2
  db 6
  !rest
  !f3
  db 12
  !c3
  !a2
  !g2
  !g2
  !b2
  !d3
  !end

.pattern2_2
  !volume,255
  db 18,$7F
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2AD3 : db 3
  !end

.pattern2_3
  !instr,!instr05
  !volume,180
  !loop : dw .sub2ADF : db 1
  !loop : dw .sub2AF3 : db 2
  !end

.pattern2_4
  !instr,!instr09
  !volume,180
  !transpose,0
  !endVibrato
  !loop : dw .sub2AFE : db 1
  !rest
  !a5
  !rest
  !a5
  !rest
  !g5
  !rest
  !g5
  !rest
  !f5
  !rest
  !f5
  !rest
  !g5
  !rest
  !g5
  !end

.pattern2_5
  !instr,!instr09
  !volume,180
  !transpose,0
  !endVibrato
  db 12
  !rest
  db 12,$2F
  !e5
  !rest
  !e5
  !rest
  !d5
  !rest
  !d5
  !rest
  !c5
  !rest
  !c5
  !rest
  !d5
  !rest
  !d5
  !rest
  !e5
  !rest
  !e5
  !rest
  !d5
  !rest
  !d5
  !rest
  !c5
  !rest
  !c5
  !rest
  !d5
  !rest
  !d5
  !end

.pattern2_6
  !instr,!instr09
  !volume,180
  !transpose,0
  !endVibrato
  !loop : dw .sub2B12 : db 1
  !rest
  !c5
  !rest
  !c5
  !rest
  !b4
  !rest
  !b4
  !rest
  !a4
  !rest
  !a4
  !rest
  !b4
  !rest
  !b4
  !end

.pattern2_7
  !volume,255
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub2B26 : db 3
  !end

.pattern3_0
  !loop : dw .sub2AA4 : db 1
  db 12
  !d6
  db 6
  !e6
  !d6
  db 12
  !c6
  !d6
  db 24
  !e6
  !g6
  db 96,$5F
  !a6
  !end

.pattern3_1
  db 12,$7F
  !a2
  db 6
  !rest
  !a3
  db 12
  !g3
  !e3
  !g2
  !g2
  !b2
  !d3
  !f2
  db 6
  !rest
  !f3
  db 12
  !c3
  !a2
  !g2
  !g3
  !e3
  !e4
  !d3
  db 6
  !rest
  !d4
  db 12
  !d3
  !f3
  !e3
  !d3
  !b2
  !g2
  !a2
  db 6
  !rest
  !c3
  db 12
  !e3
  !g3
  !a2
  !a2
  !a2
  !rest
  !end

.pattern3_2
  db 18,$7F
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2AD3 : db 2
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.pattern3_3
  !loop : dw .sub2ADF : db 1
  db 12
  !d6
  db 6
  !e6
  !d6
  db 12
  !c6
  !d6
  db 24
  !e6
  !g6
  db 48
  !a6
  !volume,255
  db 12
  %percNote(!instr0E-!instr0C)
  %percNote(!instr0E-!instr0C)
  db 24
  %percNote(!instr0E-!instr0C)
  !end

.pattern3_4
  !loop : dw .sub2AFE : db 1
  !rest
  !f5
  !rest
  !f5
  !rest
  !g5
  !rest
  !g5
  !rest
  !a5
  !rest
  !a5
  !a5
  !a5
  !a5
  !rest
  !end

.pattern3_5
  db 12
  !rest
  db 12,$2F
  !e5
  !rest
  !e5
  !rest
  !d5
  !rest
  !d5
  !rest
  !c5
  !rest
  !c5
  !rest
  !e5
  !rest
  !e5
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
  !e5
  !e5
  !e5
  !rest
  !end

.pattern3_6
  !loop : dw .sub2B12 : db 1
  !rest
  !a4
  !rest
  !a4
  !rest
  !b4
  !rest
  !b4
  !rest
  !c5
  !rest
  !c5
  !c5
  !c5
  !c5
  !rest
  !end

.pattern3_7
  !volume,255
  !loop : dw .sub2B74 : db 3
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$72
  %percNote(!instr0F-!instr0C)
  db 48
  !rest
  !end

.pattern4_0
  !echo,%11111011,50,50
  db 12,$5F
  !a6
  !a6
  !a6
  !g6
  !a6
  !rest
  !g6
  !e6
  !g6
  !a6
  !a6
  !g6
  !a6
  db 24
  !rest
  db 12
  !c7
  !d7
  !d7
  !d7
  !c7
  !d7
  !rest
  !c7
  !g6
  !g6
  !a6
  !a6
  !g6
  !a6
  db 36
  !rest
  db 12
  !a6
  !a6
  !a6
  !g6
  !a6
  !rest
  !g6
  !e6
  !g6
  !a6
  !a6
  !g6
  !a6
  db 24
  !rest
  db 12
  !c7
  !d7
  !d7
  !d7
  !c7
  !d7
  !rest
  !c7
  !d7
  !e7
  !e7
  !e7
  !d7
  !e7
  !rest
  db 24
  !g7
  !end

.pattern4_1
  db 12,$7F
  !f2
  !f2
  !f3
  !e2
  !f2
  db 36
  !rest
  db 12
  !e2
  !e2
  !e3
  !d2
  !e2
  db 36
  !rest
  db 12
  !d2
  !d2
  !d3
  !a2
  !g2
  db 36
  !rest
  db 12
  !a2
  !a2
  !a3
  !g2
  !a2
  !b2
  !c3
  !e3
  !f2
  !f2
  !f3
  !e2
  !f2
  db 36
  !rest
  db 12
  !e2
  !e2
  !e3
  !d2
  !e2
  db 36
  !rest
  db 12
  !d2
  !d2
  !d3
  !a2
  !d2
  db 36
  !rest
  db 12
  !e2
  !e2
  !e3
  !d3
  !e3
  !d3
  !b2
  !g2
  !end

.pattern4_2
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 48
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2B6D : db 6
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern4_3
  !instr,!instr05
  !volume,160
  !transpose,0
  db 12,$7F
  !a5
  !d6
  !a6
  !d6
  !a5
  !d6
  !a6
  !d6
  !g5
  !d6
  !g6
  !d6
  !g5
  !d6
  !g6
  !d6
  !a5
  !d6
  !a6
  !d6
  !b5
  !d6
  !b6
  !d6
  !a5
  !e6
  !a6
  !e6
  !a5
  !e6
  !a6
  !b6
  !a5
  !d6
  !a6
  !d6
  !a5
  !d6
  !a6
  !d6
  !g5
  !d6
  !g6
  !d6
  !g5
  !d6
  !g6
  !d6
  !a5
  !d6
  !a6
  !d6
  !a5
  !d6
  !a6
  !d6
  !b5
  !e6
  !b6
  !e6
  !b5
  !e6
  !b6
  !e6
  !end

.pattern4_4
  !instr,!instr08
  !transpose,232
  !volume,32
  !vibrato,0,24,72
  !dynamicVolume,48,192
  db 48,$7F
  !f5
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !e5
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !f5
  !volume,32
  !dynamicVolume,48,192
  !g5
  !volume,32
  !dynamicVolume,48,192
  !e5
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !f5
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !e5
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !d5
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !e5
  db 12
  !e5
  !rest
  db 24
  !g5
  !end

.pattern4_5
  !instr,!instr08
  !transpose,232
  !volume,32
  !vibrato,0,24,72
  !dynamicVolume,48,192
  db 48,$7F
  !c5
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !b4
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !d5
  !volume,32
  !dynamicVolume,48,192
  !d5
  !volume,32
  !dynamicVolume,48,192
  !c5
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !c5
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !b4
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !a4
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !b4
  db 12
  !b4
  !rest
  db 24
  !e5
  !end

.pattern4_6
  !instr,!instr08
  !transpose,232
  !volume,32
  !vibrato,0,24,72
  !dynamicVolume,48,192
  db 48,$7F
  !a4
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !g4
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !a4
  !volume,32
  !dynamicVolume,48,192
  !b4
  !volume,32
  !dynamicVolume,48,192
  !a4
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !a4
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !g4
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !f4
  !dynamicVolume,48,32
  !tie
  !dynamicVolume,48,192
  !g4
  db 12
  !g4
  !rest
  db 24
  !b4
  !end

.pattern4_7
  db 96
  !rest
  db 71
  !rest
  db 1,$7F
  %percNote(!instr0E-!instr0C)
  db 24
  %percNote(!instr0E-!instr0C)
  db 96
  !rest
  db 71
  !rest
  db 1
  %percNote(!instr0E-!instr0C)
  db 24
  %percNote(!instr0E-!instr0C)
  db 96
  !rest
  db 71
  !rest
  db 1
  %percNote(!instr0E-!instr0C)
  db 24
  %percNote(!instr0E-!instr0C)
  db 96
  !rest
  db 48
  !rest
  db 24
  %percNote(!instr0E-!instr0C)
  %percNote(!instr0E-!instr0C)
  !end

.pattern5_0
  !echo,%01111011,50,50
  !loop : dw .sub2B2F : db 1
  db 96,$5F
  !e6
  !end

.pattern5_1
  !loop : dw .sub2ABA : db 1
  !f2
  db 6
  !rest
  !f3
  db 12
  !c3
  !a2
  !g2
  !g2
  !b2
  !d3
  !a2
  db 6
  !rest
  !a3
  db 12
  !g3
  !e3
  !d3
  !e3
  db 24
  !g3
  !end

.pattern5_2
  db 18,$7F
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2AD3 : db 3
  !end

.pattern5_3
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

.pattern5_4
  !instr,!instr06
  !transpose,0
  !volume,160
  !loop : dw .sub2B45 : db 1
  db 48
  !e5
  db 24
  !e5
  !d5
  !end

.pattern5_5
  !instr,!instr06
  !transpose,0
  !volume,160
  !loop : dw .sub2B54 : db 1
  db 24
  !f5
  !a5
  !g5
  !d5
  db 48
  !c5
  db 24
  !c5
  !b4
  !end

.pattern5_6
  !instr,!instr06
  !transpose,0
  !volume,160
  !loop : dw .sub2B5E : db 1
  db 48
  !a4
  db 24
  !a4
  !g4
  !end

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
  !loop : dw .sub2B26 : db 3
  !end

.pattern6_0
  !loop : dw .sub2B2F : db 1
  db 96,$5F
  !a6
  !end

.pattern6_1
  !loop : dw .sub2ABA : db 1
  !f2
  db 6
  !rest
  !f3
  db 12
  !c3
  !a2
  !g2
  !g2
  !b2
  !d3
  !a2
  db 6
  !rest
  !a3
  db 12
  !e3
  !c3
  !a2
  !c3
  !g2
  !e2
  !end

.pattern6_3
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

.pattern6_4
  !loop : dw .sub2B45 : db 1
  db 48
  !a5
  db 24
  !a5
  !b5
  !end

.pattern6_5
  !loop : dw .sub2B54 : db 1
  db 24
  !f5
  !a5
  !g5
  !d5
  db 48
  !e5
  db 24
  !e5
  !g5
  !end

.pattern6_6
  !loop : dw .sub2B5E : db 1
  db 48
  !c5
  db 24
  !c5
  !d5
  !end

.pattern7_1
  db 12,$7F
  !f2
  db 6
  !rest
  !f3
  db 12
  !d3
  !c3
  !e2
  !g2
  !b2
  !e3
  !loop : dw .sub2B8D : db 2
  !f2
  db 6
  !rest
  !f3
  db 12
  !c3
  !a3
  !g2
  !b2
  !d3
  !g3
  !end

.pattern7_2
  db 18,$7F
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub2AD3 : db 2
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern7_4
  !loop : dw .sub2B45 : db 1
  db 48
  !a5
  db 12
  !g5
  !b5
  !d6
  !g6
  !end

.pattern7_5
  !loop : dw .sub2B54 : db 1
  db 24
  !f5
  !a5
  !g5
  !e5
  db 48
  !f5
  db 12
  !d5
  !g5
  !b5
  !d6
  !end

.pattern7_6
  db 48,$7F
  !a4
  !b4
  db 24
  !d5
  !f5
  db 48
  !e5
  db 24
  !d5
  !f5
  !e5
  !b4
  db 48
  !c5
  db 12
  !b4
  !d5
  !g5
  !b5
  !end

.sub2B99
  db 24,$4F
  !a2
  !g2
  !f2
  !e2
  db 48,$6F
  !d2
  db 48,$7F
  !d2
  !pitchSlide,16,8 : !e3
  !end

.sub2AA4
  db 12
  !rest
  db 12,$6F
  !a5
  !g5
  !a5
  !c6
  !d6
  !e6
  !g6
  db 36,$5F
  !a6
  db 6,$6F
  !c7
  !a6
  db 24
  !g6
  !e6
  !end

.sub2ABA
  db 12,$7F
  !a2
  db 6
  !rest
  !a3
  db 12
  !g3
  !e3
  !g2
  !g2
  !b2
  !d3
  !f2
  db 6
  !rest
  !f3
  db 12
  !c3
  !a2
  !g2
  !g2
  !b2
  !d3
  !end

.sub2AD3
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.sub2ADF
  db 12
  !rest
  db 12,$7F
  !a5
  !g5
  !a5
  !c6
  !d6
  !e6
  !g6
  db 36
  !a6
  db 6
  !c7
  !a6
  db 24
  !g6
  !e6
  !end

.sub2AF3
  db 12
  !d6
  db 6
  !e6
  !d6
  db 12
  !c6
  !d6
  db 48
  !c6
  !end

.sub2AFE
  db 12
  !rest
  db 12,$2F
  !a5
  !rest
  !a5
  !rest
  !g5
  !rest
  !g5
  !rest
  !f5
  !rest
  !f5
  !rest
  !g5
  !rest
  !g5
  !end

.sub2B12
  db 12
  !rest
  db 12,$2F
  !c5
  !rest
  !c5
  !rest
  !b4
  !rest
  !b4
  !rest
  !a4
  !rest
  !a4
  !rest
  !b4
  !rest
  !b4
  !end

.sub2B26
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub2B74
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

.sub2B6D
  db 36
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 48
  %percNote(!instr0C-!instr0C)
  !end

.sub2B2F
  db 48,$5F
  !e6
  db 24,$6F
  !g6
  db 12
  !e6
  !g6
  db 24
  !a6
  !c7
  db 48,$5F
  !b6
  db 24,$6F
  !a6
  !c7
  !b6
  !g6
  !end

.sub2B45
  db 48,$7F
  !e5
  !g5
  db 24
  !a5
  !c6
  db 48
  !b5
  db 24
  !a5
  !c6
  !b5
  !g5
  !end

.sub2B54
  db 48,$7F
  !c5
  !d5
  db 24
  !f5
  !a5
  db 48
  !g5
  !end

.sub2B5E
  db 48,$7F
  !a4
  !b4
  db 24
  !c5
  !f5
  db 48
  !e5
  db 24
  !c5
  !f5
  !d5
  !b4
  !end

.sub2B8D
  !d3
  db 6
  !rest
  !d4
  db 12
  !a3
  !f3
  !e3
  !b2
  !g2
  !e2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
