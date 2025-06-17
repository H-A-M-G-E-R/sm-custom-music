asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr07 = $17
!instr08 = $18
!instr0A = $19
!instr0C = $1A
!instr0D = $1B
!instr0F = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr08,$8F,$E0,$B8,$1D,$F0
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0F,$8F,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+1404
  dw Sample07,Sample07+1584
  dw Sample08,Sample08+288
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0F,Sample0F+729
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0F: incbin "Sample0F.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2424

Tracker2424:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern2_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0

.pattern0_0
  !percBase,!instr0C
  !echo,%11111111,70,70
  !echoParameters,6,72,3
  !tempo,27
  !musicVolume,200
  !end

.pattern1_0
  !instr,!instr08
  !volume,180
  !vibrato,0,24,64
  !transpose,232
  !pan,10
  db 96,$7F
  !b4
  !c5
  !b4
  !c5
  !cs5
  !d5
  !cs5
  !d5
  !end

.pattern1_1
  !instr,!instr08
  !volume,180
  !vibrato,2,24,62
  !transpose,232
  !pan,13
  !loop : dw .sub27AA : db 1
  !gs4
  !loop : dw .sub27AF : db 1
  !as4
  !as4
  !end

.pattern1_2
  !instr,!instr07
  !volume,255
  !pan,10
  db 12,$7F
  !f3
  db 6
  !f2
  !f2
  !f2
  !f2
  !f2
  !f3
  !rest
  db 18
  !f3
  db 6
  !f2
  !f2
  !f2
  !f2
  !loop : dw .sub27B3 : db 3
  !loop : dw .sub27C5 : db 4
  !end

.pattern1_3
  !volume,255
  db 42,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub27D7 : db 2
  db 42
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub27D7 : db 3
  db 42
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  !end

.pattern1_4
  !instr,!instr08
  !volume,180
  !vibrato,4,24,60
  !transpose,232
  !pan,7
  !loop : dw .sub27E0 : db 1
  !f4
  !loop : dw .sub27E5 : db 1
  !g4
  !g4
  !end

.pattern1_7
  !volume,255
  !loop : dw .sub27E9 : db 8
  !end

.pattern2_0
  db 96,$7F
  !b4
  !c5
  !b4
  !c5
  !cs5
  !d5
  !cs5
  !d5
  !end

.pattern2_1
  !loop : dw .sub27AA : db 1
  !gs4
  !loop : dw .sub27AF : db 1
  !as4
  !as4
  !end

.pattern2_2
  db 12,$7F
  !f3
  db 6
  !f2
  !f2
  !f2
  !f2
  !f2
  !f3
  !rest
  db 18
  !f3
  db 6
  !f2
  !f2
  !f2
  !f2
  !loop : dw .sub27B3 : db 3
  !loop : dw .sub27C5 : db 4
  !end

.pattern2_3
  db 42,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub27D7 : db 2
  db 42
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub27D7 : db 3
  db 42
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 6,$77
  %percNote(!instr0D-!instr0C)
  db 6,$7B
  %percNote(!instr0D-!instr0C)
  db 6,$7F
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern2_4
  !loop : dw .sub27E0 : db 1
  !f4
  !loop : dw .sub27E5 : db 1
  !g4
  !g4
  !end

.pattern2_5
  !instr,!instr05
  !volume,120
  !pan,5
  !transpose,0
  db 6,$7F
  !ds5
  !f5
  db 84
  !b5
  db 6
  !ds5
  !f5
  db 84
  !c6
  db 6
  !ds5
  !f5
  db 84
  !b5
  db 6
  !ds5
  !f5
  db 84
  !c6
  !loop : dw .sub280A : db 2
  !end

.pattern2_6
  !instr,!instr05
  !volume,120
  !pan,15
  !subtranspose,72
  !transpose,0
  db 6,$7F
  !ds4
  !f4
  db 84
  !b4
  db 6
  !ds4
  !f4
  db 84
  !c5
  db 6
  !ds4
  !f4
  db 84
  !b4
  db 6
  !ds4
  !f4
  db 84
  !c5
  !loop : dw .sub2815 : db 2
  !end

.pattern2_7
  !loop : dw .sub27E9 : db 8
  !end

.pattern3_0
  !instr,!instr0A
  !volume,200
  !transpose,244
  !pan,10
  !vibrato,12,24,96
  db 48,$7F
  !ds5
  !d5
  db 96
  !c5
  db 48
  !ds5
  !g5
  db 96
  !f5
  db 48
  !ds5
  !d5
  db 96
  !c5
  db 48
  !ds5
  !as5
  !f5
  !gs5
  !end

.pattern3_1
  !instr,!instr0A
  !volume,100
  !transpose,0
  !pan,10
  !vibrato,12,30,72
  db 48
  !rest
  db 24,$7F
  !g6
  !f6
  db 48
  !ds6
  db 24
  !d6
  !as5
  db 96
  !c6
  db 24
  !d6
  !f6
  !gs6
  !c7
  db 48
  !tie
  db 24
  !g6
  !f6
  db 48
  !ds6
  db 24
  !d6
  !as5
  db 96
  !c6
  db 24
  !d6
  !f6
  !gs6
  !c7
  !end

.pattern3_2
  db 48,$7F
  !gs2
  !as2
  !c3
  !as2
  !c3
  !ds3
  !d3
  !cs3
  !gs2
  !as2
  !c3
  !as2
  !c3
  !ds3
  !d3
  !cs3
  !end

.pattern3_3
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 36
  %percNote(!instr0C-!instr0C)
  !loop : dw .sub2820 : db 6
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6,$77
  %percNote(!instr0D-!instr0C)
  db 6,$7B
  %percNote(!instr0D-!instr0C)
  db 6,$7F
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.pattern3_4
  !instr,!instr08
  !volume,120
  !vibrato,0,24,64
  !transpose,232
  !pan,10
  db 96,$7F
  !c5
  !loop : dw .sub2829 : db 7
  !end

.pattern3_5
  !instr,!instr08
  !volume,120
  !vibrato,0,24,64
  !transpose,232
  !pan,20
  db 48,$7F
  !gs4
  !as4
  !g4
  !as4
  !g4
  !as4
  !a4
  !gs4
  !tie
  !as4
  !g4
  !as4
  !g4
  !as4
  !a4
  !gs4
  !end

.pattern3_6
  !instr,!instr08
  !volume,120
  !vibrato,0,24,64
  !transpose,232
  !pan,0
  db 48,$7F
  !ds4
  !f4
  !ds4
  !f4
  !ds4
  !g4
  db 96
  !f4
  db 48
  !ds4
  !f4
  !ds4
  !f4
  !ds4
  !g4
  db 96
  !f4
  !end

.pattern3_7
  db 48,$77
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !loop : dw .sub282B : db 7
  !end

.pattern4_0
  db 48,$7F
  !ds5
  !d5
  db 96
  !c5
  db 48
  !ds5
  !g5
  db 96
  !f5
  db 48
  !ds5
  !d5
  db 96
  !c5
  db 48
  !ds5
  !as5
  !f5
  !gs5
  !end

.pattern4_1
  !instr,!instr0A
  !volume,140
  !vibrato,12,24,96
  !loop : dw .sub282E : db 2
  !end

.pattern4_2
  db 12,$7F
  !gs2
  db 24
  !rest
  db 6
  !gs3
  !gs2
  db 12
  !as2
  db 6
  !as2
  db 30
  !rest
  !loop : dw .sub288F : db 1
  db 12
  !gs2
  db 24
  !rest
  db 6
  !gs3
  !gs2
  db 12
  !as2
  db 6
  !as2
  db 30
  !rest
  !loop : dw .sub288F : db 1
  !end

.pattern4_3
  db 36,$7F
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub28B7 : db 2
  db 36
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub28B7 : db 4
  !end

.pattern4_4
  db 96,$7F
  !c5
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  db 48
  !d5
  !f5
  !end

.pattern4_5
  db 48,$7F
  !gs4
  !as4
  !g4
  !as4
  !g4
  !as4
  !a4
  !gs4
  !tie
  !as4
  !g4
  !as4
  !g4
  !as4
  !a4
  !cs5
  !end

.pattern4_6
  db 48,$7F
  !ds4
  !f4
  !ds4
  !f4
  !ds4
  !g4
  db 96
  !f4
  db 48
  !ds4
  !f4
  !ds4
  !f4
  !ds4
  !g4
  !f4
  !gs4
  !end

.pattern5_0
  !instr,!instr0A
  !volume,150
  !pan,20
  !transpose,244
  db 6,$7F
  !c6
  !cs6
  !f6
  !gs6
  !c7
  !cs7
  db 12
  !rest
  !end

.pattern5_1
  !volume,150
  !pan,0
  db 6,$7F
  !c6
  !cs6
  !f6
  !gs6
  !c7
  !cs7
  db 12
  !rest
  !end

.pattern5_2
  !instr,!instr0A
  !volume,120
  !pan,20
  db 12
  !rest
  db 6,$7F
  !c6
  !cs6
  !f6
  !gs6
  !c7
  !cs7
  !end

.pattern5_3
  db 6,$73
  %percNote(!instr0D-!instr0C)
  db 6,$77
  %percNote(!instr0D-!instr0C)
  db 12,$7B
  %percNote(!instr0D-!instr0C)
  db 6,$7F
  %percNote(!instr0D-!instr0C)
  db 18
  %percNote(!instr0D-!instr0C)
  !end

.pattern5_4
  !instr,!instr0A
  !volume,120
  !pan,0
  !transpose,244
  db 12
  !rest
  db 6,$7F
  !c6
  !cs6
  !f6
  !gs6
  !c7
  !cs7
  !end

.sub27AA
  db 96,$7F
  !gs4
  !gs4
  !end

.sub27AF
  !gs4
  !as4
  !as4
  !end

.sub27B3
  db 12
  !f3
  db 6
  !f2
  !f2
  !f2
  !f2
  !f2
  !f3
  !rest
  db 18
  !f3
  db 6
  !f2
  !f2
  !f2
  !f2
  !end

.sub27C5
  db 12
  !g3
  db 6
  !g2
  !g2
  !g2
  !g2
  !g2
  !g3
  !rest
  db 18
  !g3
  db 6
  !g2
  !g2
  !g2
  !g2
  !end

.sub27D7
  db 42
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 18
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end

.sub27E0
  db 96,$7F
  !f4
  !f4
  !end

.sub27E5
  !f4
  !g4
  !g4
  !end

.sub27E9
  db 6,$77
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$77
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$77
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 6,$77
  %percNote(!instr0F-!instr0C)
  db 6,$72
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub280A
  db 6
  !f5
  !g5
  db 84
  !cs6
  db 6
  !f5
  !g5
  db 84
  !d6
  !end

.sub2815
  db 6
  !f4
  !g4
  db 84
  !cs5
  db 6
  !f4
  !g4
  db 84
  !d5
  !end

.sub2820
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  db 36
  %percNote(!instr0C-!instr0C)
  !end

.sub2829
  !tie
  !end

.sub282B
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub282E
  db 6,$7F
  !gs6
  !c7
  !gs6
  !ds6
  db 6,$77
  !gs6
  !c7
  !gs6
  !ds6
  db 6,$7F
  !f6
  !as6
  !f6
  !d6
  db 6,$77
  !f6
  !as6
  !f6
  !d6
  db 6,$7F
  !g6
  !c7
  !g6
  !ds6
  db 6,$77
  !g6
  !c7
  !g6
  !ds6
  db 6,$7F
  !f6
  !as6
  !f6
  !d6
  db 6,$77
  !f6
  !as6
  !f6
  !d6
  db 6,$7F
  !g6
  !c7
  !g6
  !ds6
  db 6,$77
  !g6
  !c7
  !g6
  !ds6
  db 6,$7F
  !g6
  !as6
  !g6
  !ds6
  db 6,$77
  !g6
  !as6
  !g6
  !ds6
  db 6,$7F
  !a6
  !c7
  !a6
  !f6
  db 6,$77
  !a6
  !c7
  !a6
  !f6
  db 6,$7F
  !gs6
  !c7
  !gs6
  !f6
  db 6,$77
  !gs6
  !c7
  !gs6
  !f6
  !end

.sub288F
  db 12
  !c3
  db 24
  !rest
  db 6
  !c4
  !c3
  db 12
  !as2
  db 6
  !as2
  db 30
  !rest
  db 12
  !c3
  db 24
  !rest
  db 6
  !c4
  !c3
  db 12
  !ds3
  db 6
  !ds3
  db 30
  !rest
  db 12
  !d3
  db 24
  !rest
  db 6
  !d4
  !d3
  db 12
  !cs3
  db 6
  !cs3
  db 30
  !rest
  !end

.sub28B7
  db 36
  %percNote(!instr0C-!instr0C)
  db 6
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
