asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr06 = $16
!instr08 = $17
!instr09 = $18
!instr0A = $19
!instr0C = $1A
!instr0D = $1B
!instr0F = $1C
!instr10 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr06,$8F,$EB,$B8,$03,$00
  db !instr08,$8F,$E0,$B8,$1D,$F0
  db !instr09,$8F,$EF,$B8,$01,$00
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0F,$8F,$E0,$B8,$07,$A0
  db !instr10,$8F,$E0,$B8,$07,$10
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample06,Sample06+450
  dw Sample08,Sample08+288
  dw Sample09,Sample09+27
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0F,Sample0F+729
  dw Sample10,Sample10+3375
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample06: incbin "Sample06.brr"
  Sample08: incbin "Sample08.brr"
  Sample09: incbin "Sample09.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker295C

Tracker295C:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern1
  dw .pattern3
-
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern6
  dw .pattern8
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, 0, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, 0, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern2_1, .pattern2_2, 0, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, 0, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern6: dw .pattern6_0, .pattern1_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, .pattern6_6, .pattern6_7
.pattern7: dw .pattern2_0, .pattern2_1, .pattern6_2, .pattern6_3, .pattern2_0, 0, .pattern7_6, .pattern7_7
.pattern8: dw .pattern3_0, .pattern2_1, .pattern6_2, .pattern6_3, .pattern3_0, 0, .pattern8_6, .pattern8_7

.pattern0_0
  !percBase,!instr0C
  !echo,%01110111,50,50
  !echoParameters,6,72,3
  !musicVolume,200
  !tempo,18
  !end

.pattern1_0
  !instr,!instr08
  !transpose,244
  !vibrato,12,42,128
  !pan,7
  !subtranspose,2
  !loop : dw .sub2D45 : db 1
  !end

.pattern1_1
  !loop : dw .sub2D62 : db 1
  !end

.pattern1_2
  !instr,!instr0A
  !volume,255
  !vibrato,12,24,96
  db 96,$7F
  !a2
  !g2
  !end

.pattern1_4
  !instr,!instr08
  !transpose,244
  !vibrato,12,42,128
  !pan,13
  !subtranspose,10
  !loop : dw .sub2D45 : db 1
  !end

.pattern1_5
  !instr,!instr06
  !volume,255
  !vibrato,12,30,96
  db 96,$7F
  !a2
  !g2
  !end

.pattern2_0
  !loop : dw .sub2D8F : db 1
  !end

.pattern2_1
  !loop : dw .sub2D9C : db 1
  !end

.pattern2_2
  db 96,$7F
  !a2
  !g2
  !end

.pattern2_4
  !loop : dw .sub2D8F : db 1
  !end

.pattern2_5
  db 96,$7F
  !a2
  !g2
  !end

.pattern3_0
  !loop : dw .sub2DC3 : db 1
  !end

.pattern3_4
  !loop : dw .sub2DC3 : db 1
  !end

.pattern3_5
  db 96,$7F
  !a2
  !g2
  !end

.pattern4_0
  !loop : dw .sub2DD8 : db 1
  !end

.pattern4_1
  !instr,!instr06
  !volume,180
  !pan,10
  db 8,$7F
  !f3
  !f3
  !f5
  db 8,$75
  !f5
  db 8,$7F
  !f5
  db 8,$75
  !f5
  db 8,$7F
  !f3
  db 16
  !f3
  db 8
  !f5
  db 8,$75
  !f5
  db 8,$7F
  !f5
  db 96
  !rest
  db 8
  !f3
  !f3
  !f5
  db 8,$75
  !f5
  db 8,$7F
  !f5
  db 8,$75
  !f5
  db 8,$7F
  !f3
  db 16
  !f3
  db 8
  !f5
  db 8,$75
  !f5
  db 8,$7F
  !f5
  db 96
  !rest
  !end

.pattern4_2
  !instr,!instr06
  db 16,$7F
  !f2
  db 16,$2F
  !f3
  !f2
  db 8,$7F
  !f2
  db 16
  !f2
  db 16,$2F
  !f3
  db 8,$7F
  !f2
  db 16
  !e2
  db 8
  !e3
  !e2
  !d3
  !e3
  !e2
  db 16
  !e2
  db 8
  !e3
  !e2
  !d3
  db 16
  !f2
  db 16,$2F
  !f3
  !f2
  db 8,$7F
  !f2
  db 16
  !f2
  db 16,$2F
  !f3
  db 8,$7F
  !f2
  db 16
  !e2
  db 8
  !e3
  !e2
  !d3
  !e3
  !e2
  db 16
  !e2
  db 8
  !f2
  !fs2
  !g2
  !end

.pattern4_3
  !loop : dw .sub2DFA : db 1
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 8
  %percNote(!instr0C-!instr0C)
  db 15
  %percNote(!instr0C-!instr0C)
  db 1
  %percNote(!instr0D-!instr0C)
  db 8
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern4_4
  !loop : dw .sub2DD8 : db 1
  !end

.pattern4_5
  !instr,!instr0A
  !volume,180
  !transpose,0
  !loop : dw .sub2E22 : db 2
  !end

.pattern4_6
  !instr,!instr0A
  !volume,180
  !transpose,0
  !loop : dw .sub2E5E : db 2
  !end

.pattern4_7
  !volume,255
  !loop : dw .sub2E9A : db 4
  !end

.pattern5_0
  !loop : dw .sub2EBF : db 1
  !end

.pattern5_2
  !instr,!instr06
  db 16,$7F
  !gs2
  db 16,$2F
  !gs3
  !gs2
  db 8,$7F
  !gs2
  db 16
  !gs2
  db 16,$2F
  !gs3
  db 8,$7F
  !gs2
  db 16
  !g2
  db 8
  !g3
  !g2
  !f3
  !g3
  !g2
  db 16
  !g2
  db 8
  !g3
  !g2
  !f3
  db 16
  !gs2
  db 16,$2F
  !gs3
  !gs2
  db 8,$7F
  !gs2
  db 16
  !gs2
  db 16,$2F
  !gs3
  db 8,$7F
  !gs2
  db 12
  !as2
  !rest
  !as2
  !rest
  !as2
  !rest
  db 8
  !as3
  !as3
  !as3
  !end

.pattern5_3
  !loop : dw .sub2DFA : db 1
  %percNote(!instr0D-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  db 8
  %percNote(!instr0D-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  db 8
  %percNote(!instr0D-!instr0C)
  db 8,$71
  %percNote(!instr0D-!instr0C)
  db 8,$73
  %percNote(!instr0D-!instr0C)
  db 8,$77
  %percNote(!instr0D-!instr0C)
  db 8,$7B
  %percNote(!instr0D-!instr0C)
  db 8,$7F
  %percNote(!instr0D-!instr0C)
  !end

.pattern5_4
  !loop : dw .sub2EBF : db 1
  !end

.pattern5_5
  !instr,!instr0A
  !volume,180
  !transpose,0
  db 8,$7F
  !gs3
  !gs3
  !gs5
  db 8,$75
  !gs5
  db 8,$7F
  !gs5
  db 8,$75
  !gs5
  db 8,$7F
  !gs3
  db 16
  !gs3
  db 8
  !gs5
  db 8,$75
  !gs5
  db 8,$7F
  !gs5
  db 8,$4F
  !d6
  db 8,$4B
  !d6
  db 8,$47
  !d6
  db 8,$43
  !d6
  db 8,$41
  !d6
  !rest
  db 8,$4F
  !g6
  db 8,$4B
  !g6
  db 8,$47
  !g6
  db 8,$43
  !g6
  db 8,$41
  !g6
  !rest
  db 8,$7F
  !gs3
  !gs3
  !gs5
  db 8,$75
  !gs5
  db 8,$7F
  !gs5
  db 8,$75
  !gs5
  db 8,$7F
  !gs3
  db 16
  !gs3
  db 8
  !gs5
  db 8,$75
  !gs5
  db 8,$7F
  !gs5
  db 8,$4F
  !as5
  db 8,$4B
  !as5
  db 8,$47
  !as5
  db 8,$4F
  !as5
  db 8,$4B
  !as5
  db 8,$47
  !as5
  db 8,$4F
  !as5
  db 8,$4B
  !as5
  db 8,$47
  !as5
  db 8,$4F
  !as5
  !as5
  !as5
  !end

.pattern5_6
  !instr,!instr0A
  !volume,180
  !transpose,0
  db 8,$7F
  !ds3
  !ds3
  !ds5
  db 8,$75
  !ds5
  db 8,$7F
  !ds5
  db 8,$75
  !ds5
  db 8,$7F
  !ds3
  db 16
  !ds3
  db 8
  !ds5
  db 8,$75
  !ds5
  db 8,$7F
  !ds5
  db 8,$4F
  !as5
  db 8,$4B
  !as5
  db 8,$47
  !as5
  db 8,$43
  !as5
  db 8,$41
  !as5
  !rest
  db 8,$4F
  !d6
  db 8,$4B
  !d6
  db 8,$47
  !d6
  db 8,$43
  !d6
  db 8,$41
  !d6
  !rest
  db 8,$7F
  !ds3
  !ds3
  !ds5
  db 8,$75
  !ds5
  db 8,$7F
  !ds5
  db 8,$75
  !ds5
  db 8,$7F
  !ds3
  db 16
  !ds3
  db 8
  !ds5
  db 8,$75
  !ds5
  db 8,$7F
  !ds5
  db 8,$4F
  !f5
  db 8,$4B
  !f5
  db 8,$47
  !f5
  db 8,$4F
  !f5
  db 8,$4B
  !f5
  db 8,$47
  !f5
  db 8,$4F
  !f5
  db 8,$4B
  !f5
  db 8,$47
  !f5
  db 8,$4F
  !f5
  !f5
  !f5
  !end

.pattern5_7
  !volume,255
  !loop : dw .sub2E9A : db 3
  db 8,$75
  %percNote(!instr10-!instr0C)
  db 16
  !rest
  db 8
  %percNote(!instr10-!instr0C)
  db 16
  !rest
  db 8
  %percNote(!instr10-!instr0C)
  db 16
  !rest
  db 8,$77
  %percNote(!instr0D-!instr0C)
  db 8,$7B
  %percNote(!instr0D-!instr0C)
  db 8,$7F
  %percNote(!instr0D-!instr0C)
  !end

.pattern6_0
  !loop : dw .sub2D45 : db 1
  !end

.pattern6_2
  !loop : dw .sub2EDC : db 1
  !end

.pattern6_3
  !loop : dw .sub2EE5 : db 1
  !end

.pattern6_4
  !loop : dw .sub2D45 : db 1
  !end

.pattern6_6
  db 96,$7F
  !a3
  !g3
  !end

.pattern6_7
  !volume,255
  !loop : dw .sub2E9A : db 2
  !end

.pattern7_6
  db 96,$7F
  !a3
  !g3
  !end

.pattern7_7
  !loop : dw .sub2E9A : db 2
  !end

.pattern8_6
  db 96,$7F
  !a3
  !g3
  !end

.pattern8_7
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 16,$75
  %percNote(!instr10-!instr0C)
  !end

.sub2D45
  !volume,64
  !dynamicVolume,12,160
  db 48,$7F
  !a3
  !volume,64
  !dynamicVolume,12,160
  !c4
  !volume,64
  !dynamicVolume,12,160
  db 24
  !as3
  !volume,64
  !dynamicVolume,12,160
  db 72
  !d3
  !end

.sub2D62
  !instr,!instr09
  !volume,120
  !pan,0
  !dynamicPan,48,20
  db 8,$0F
  !a7
  !as7
  !a7
  !g7
  !a7
  !as7
  !dynamicPan,48,0
  !a7
  !g7
  !a7
  !as7
  !a7
  !g7
  !dynamicPan,48,20
  !a7
  !as7
  !a7
  !g7
  !a7
  !as7
  !dynamicPan,48,0
  !a7
  !g7
  !a7
  !as7
  !a7
  !g7
  !end

.sub2D8F
  !volume,64
  !dynamicVolume,12,160
  db 96,$7F
  !e3
  !dynamicVolume,96,64
  !tie
  !end

.sub2D9C
  !dynamicPan,48,20
  db 8,$0F
  !a7
  !as7
  !a7
  !g7
  !a7
  !as7
  !dynamicPan,48,0
  !a7
  !g7
  !a7
  !as7
  !a7
  !g7
  !dynamicPan,48,20
  !a7
  !as7
  !a7
  !g7
  !a7
  !as7
  !dynamicPan,48,0
  !a7
  !g7
  !a7
  !as7
  !a7
  !g7
  !end

.sub2DC3
  !volume,64
  !dynamicVolume,12,160
  db 96,$7F
  !e4
  !dynamicVolume,96,64
  db 80
  !tie
  !volume,64
  !dynamicVolume,12,160
  db 16
  !e4
  !end

.sub2DD8
  !tempo,22
  !volume,64
  !dynamicVolume,12,128
  db 96,$7F
  !f4
  !volume,64
  !dynamicVolume,12,128
  !e4
  !volume,64
  !dynamicVolume,12,128
  !f4
  !volume,64
  !dynamicVolume,12,128
  db 72
  !e4
  db 8
  !f4
  !fs4
  !g4
  !end

.sub2DFA
  !volume,255
  db 8,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 16
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 8
  %percNote(!instr0C-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 8
  %percNote(!instr0D-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 8
  %percNote(!instr0C-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 8
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 16
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 8
  %percNote(!instr0C-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 8
  %percNote(!instr0D-!instr0C)
  !end

.sub2E22
  db 8,$7F
  !f3
  !f3
  !f5
  db 8,$75
  !f5
  db 8,$7F
  !f5
  db 8,$75
  !f5
  db 8,$7F
  !f3
  db 16
  !f3
  db 8
  !f5
  db 8,$75
  !f5
  db 8,$7F
  !f5
  db 8,$4F
  !b5
  db 8,$4B
  !b5
  db 8,$47
  !b5
  db 8,$43
  !b5
  db 8,$41
  !b5
  !rest
  db 8,$4F
  !e6
  db 8,$4B
  !e6
  db 8,$47
  !e6
  db 8,$43
  !e6
  db 8,$41
  !e6
  !rest
  !end

.sub2E5E
  db 8,$7F
  !c3
  !c3
  !c5
  db 8,$75
  !c5
  db 8,$7F
  !c5
  db 8,$75
  !c5
  db 8,$7F
  !c3
  db 16
  !c3
  db 8
  !c5
  db 8,$75
  !c5
  db 8,$7F
  !c5
  db 8,$4F
  !g5
  db 8,$4B
  !g5
  db 8,$47
  !g5
  db 8,$43
  !g5
  db 8,$41
  !g5
  !rest
  db 8,$4F
  !b5
  db 8,$4B
  !b5
  db 8,$47
  !b5
  db 8,$43
  !b5
  db 8,$41
  !b5
  !rest
  !end

.sub2E9A
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  db 8,$77
  %percNote(!instr0F-!instr0C)
  db 8,$73
  %percNote(!instr0F-!instr0C)
  !end

.sub2EBF
  !tempo,22
  !volume,64
  !dynamicVolume,12,128
  db 96,$7F
  !gs4
  !volume,64
  !dynamicVolume,12,128
  !g4
  !volume,64
  !dynamicVolume,12,128
  !gs4
  !volume,64
  !dynamicVolume,12,128
  !as4
  !end

.sub2EDC
  db 32,$7F
  !a2
  !a2
  !a2
  !g2
  !g2
  !g2
  !end

.sub2EE5
  db 32,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  db 32
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 16
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
