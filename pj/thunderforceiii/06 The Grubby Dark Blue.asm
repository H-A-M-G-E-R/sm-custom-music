asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr03 = $17
!instr04 = $18
!instr06 = $19
!instr12 = $1A
!instr13 = $1B
!instr14 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$EB,$B8,$02,$00
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr06,$FF,$E7,$B8,$0D,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1035
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample06,Sample06+324
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock !p_songSpecificData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
  Sample06: incbin "Sample06.brr"
  Sample12: incbin "Sample12.brr"
  Sample13: incbin "Sample13.brr"
  Sample14: incbin "Sample14.brr"

NoteLengthTable: ; note length table
  db $32,$65,$7F,$98,$B2,$CB,$E5,$FC
  db $32,$4C,$65,$72,$7F,$8C,$98,$A5,$B2,$BF,$CB,$D8,$E5,$F2,$F4,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern3
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern2_3, .pattern5_4, .pattern5_5, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, .pattern7_5, 0, 0

.pattern0_0
  !endEcho
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,35
  !instr,!instr04
  db 96
  !rest
  db 24,$6E
  !a2
  !a2
  db 24,$7E
  !a2
  !a2
  !end

.pattern0_1
  !instr,!instr06
  db 96,$7E
  !a2
  !pitchSlide,42,130 : !a4
  !tie
  !end

.pattern0_2
  !instr,!instr00
  db 96,$7E
  !e2
  !pitchSlide,42,120 : !e5
  !tie
  !end

.pattern0_3
  db 96
  !rest
  db 24,$7E
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern0_4
  !instr,!instr00
  db 96,$7E
  !e2
  !pitchSlide,42,120 : !e5
  !tie
  !end

.pattern0_5
  !instr,!instr06
  db 24
  !rest
  !subtranspose,20
  !pan,20
  !volume,155
  db 96,$7E
  !a2
  !pitchSlide,42,130 : !a4
  db 72
  !tie
  !end

.pattern1_0
  !volume,230
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  !end

.pattern1_1
  !volume,210
  !instr,!instr03
  !vibrato,56,25,65
  db 96,$7E
  !a5
  db 48
  !tie
  db 12,$6E
  !a5
  db 24,$4E
  !b5
  db 12,$6E
  !c6
  db 96,$78
  !tie
  db 48
  !tie
  db 12,$6E
  !c6
  db 24,$4E
  !d6
  db 12,$6E
  !e6
  db 96,$78
  !tie
  db 36,$6E
  !e6
  db 48
  !f6
  db 12
  !g6
  db 84,$7E
  !tie
  db 12,$6E
  !a6
  db 96,$78
  !tie
  !end

.pattern1_2
  !pan,15
  !volume,130
  !instr,!instr06
  db 12,$6E
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !a4
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !a4
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !a4
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !a4
  !end

.pattern1_3
  !pan,10
  db 12,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern1_4
  !pan,5
  !volume,130
  !instr,!instr06
  db 12,$6E
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !e5
  !c5
  !f5
  !a5
  !c5
  !f5
  !a5
  !c5
  !f5
  !a5
  !c5
  !f5
  !a5
  !c5
  !f5
  !a5
  !f5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !e5
  !c5
  !f5
  !a5
  !c5
  !f5
  !a5
  !c5
  !f5
  !a5
  !c5
  !f5
  !a5
  !c5
  !f5
  !a5
  !f5
  !end

.pattern1_5
  !volume,100
  !instr,!instr03
  !vibrato,56,25,65
  db 24
  !rest
  db 96,$7E
  !a5
  db 48
  !tie
  db 12,$6E
  !a5
  db 24,$4E
  !b5
  db 12,$6E
  !c6
  db 96,$78
  !tie
  db 48
  !tie
  db 12,$6E
  !c6
  db 24,$4E
  !d6
  db 12,$6E
  !e6
  db 96,$78
  !tie
  db 36,$6E
  !e6
  db 48
  !f6
  db 12
  !g6
  db 84,$7E
  !tie
  db 12,$6E
  !a6
  db 72,$78
  !tie
  !end

.pattern2_0
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  !end

.pattern2_1
  db 12,$6E
  !e5
  !e5
  !d5
  db 24
  !d5
  db 12
  !d5
  !d5
  !d5
  !e5
  !e5
  !d5
  !d5
  db 24
  !c5
  !d5
  db 12
  !e5
  !e5
  !d5
  db 24
  !d5
  db 12
  !d5
  !d5
  !d5
  !e5
  !e5
  !d5
  !d5
  db 24
  !c5
  !d5
  !end

.pattern2_2
  db 12,$6E
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !a4
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !e4
  !a4
  !c5
  !a4
  !end

.pattern2_3
  db 12,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,48,0
  db 6
  %percNote(!instr14-!instr12)
  !f5
  !e5
  !d5
  !c5
  !b4
  !a4
  !g4
  !end

.pattern2_4
  db 12,$6E
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !e5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !c5
  !e5
  !a5
  !e5
  !end

.pattern2_5
  db 24
  !rest
  db 12,$6E
  !e5
  !e5
  !d5
  db 24
  !d5
  db 12
  !d5
  !d5
  !d5
  !e5
  !e5
  !d5
  !d5
  db 24
  !c5
  !d5
  db 12
  !e5
  !e5
  !d5
  db 24
  !d5
  db 12
  !d5
  !d5
  !d5
  !e5
  !e5
  !d5
  !d5
  db 24
  !c5
  !end

.pattern3_0
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  !end

.pattern3_1
  db 36,$6E
  !e5
  !a5
  db 24
  !g5
  db 12
  !e5
  !c5
  !d5
  db 60
  !e5
  db 72
  !f5
  db 12
  !e5
  !c6
  db 24
  !tie
  !b5
  db 12
  !a5
  !f5
  !gs5
  !e5
  !end

.pattern3_2
  !volume,150
  !instr,!instr00
  !pan,20
  db 36,$7E
  !e5
  !a5
  db 24
  !g5
  !pan,0
  db 36
  !e5
  !a5
  db 24
  !g5
  !pan,20
  db 36
  !f5
  !pan,0
  !f5
  db 24
  !f5
  !pan,5
  db 48
  !f5
  db 12
  !e5
  !f5
  !gs5
  !e5
  !end

.pattern3_3
  !pan,10
  db 12,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !end

.pattern3_4
  !pan,10
  db 12,$6E
  !e5
  !c5
  !a4
  !e4
  !e5
  !c5
  !a4
  !e4
  !e5
  !c5
  !a4
  !e4
  !e5
  !c5
  !a4
  !e4
  !f5
  !c5
  !a4
  !f4
  !f5
  !c5
  !a4
  !f4
  !f5
  !c5
  !a4
  !f4
  !f5
  !c5
  !a4
  !f4
  !end

.pattern3_5
  db 24
  !rest
  db 36,$6E
  !e5
  !a5
  db 24
  !g5
  db 12
  !e5
  !c5
  !d5
  db 60
  !e5
  db 72
  !f5
  db 12
  !e5
  !c6
  db 24
  !tie
  !b5
  db 12
  !a5
  !f5
  !end

.pattern4_0
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !gs2
  db 12,$6E
  !gs3
  !end

.pattern4_1
  db 36,$6E
  !f5
  !g5
  db 24
  !a5
  db 36
  !f5
  !g5
  db 24
  !a5
  db 84
  !c6
  db 12
  !b5
  db 96
  !tie
  !end

.pattern4_2
  !pan,5
  db 36,$7E
  !d5
  !c5
  db 24
  !d5
  !pan,15
  db 36
  !d5
  !c5
  db 24
  !d5
  !pan,10
  db 96
  !e5
  !e5
  !pitchSlide,48,48 : !gs5
  !end

.pattern4_3
  db 12,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern4_4
  db 12,$6E
  !f5
  !d5
  !a4
  !f4
  !f5
  !d5
  !a4
  !f4
  !f5
  !d5
  !a4
  !f4
  !f5
  !d5
  !a4
  !f4
  !gs5
  !e5
  !d5
  !b4
  !gs5
  !e5
  !d5
  !b4
  !gs5
  !e5
  !d5
  !b4
  !gs4
  !a4
  !b4
  !d5
  !end

.pattern4_5
  db 24
  !rest
  db 36,$6E
  !f5
  !g5
  db 24
  !a5
  db 36
  !f5
  !g5
  db 24
  !a5
  db 84
  !c6
  db 12
  !b5
  db 72
  !tie
  !end

.pattern5_0
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  !end

.pattern5_1
  db 36,$6E
  !d5
  !e5
  db 24
  !f5
  db 18
  !e5
  !f5
  db 12
  !gs5
  db 48
  !b5
  db 96
  !a5
  !tie
  !end

.pattern5_2
  !instr,!instr03
  !pan,0
  db 36,$7E
  !d5
  db 12
  !f5
  !pan,15
  db 36
  !d5
  db 12
  !a5
  !pan,5
  db 36
  !e5
  db 12
  !gs5
  !pan,15
  db 36
  !e5
  db 12
  !b5
  !pan,10
  db 96
  !a5
  !pitchSlide,84,56 : !a6
  !tie
  !end

.pattern5_4
  db 12,$6E
  !f5
  !d5
  !a4
  !f4
  !f5
  !d5
  !a4
  !f4
  !gs5
  !e5
  !d5
  !b4
  !gs5
  !e5
  !d5
  !b4
  !a5
  !e5
  !c5
  !a4
  !a5
  !e5
  !c5
  !a4
  !a5
  !e5
  !c5
  !a4
  !a5
  !e5
  !c5
  !a4
  !end

.pattern5_5
  db 24
  !rest
  db 36,$6E
  !d5
  !e5
  db 24
  !f5
  db 18
  !e5
  !f5
  db 12
  !gs5
  db 48
  !b5
  db 96
  !a5
  db 72
  !tie
  !end

.pattern6_0
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  !end

.pattern6_1
  !instr,!instr06
  db 96,$6E
  !g4
  db 36
  !f4
  db 24
  !e4
  db 36
  !d4
  db 72
  !c4
  db 24
  !a4
  !gs4
  !f4
  db 48
  !e4
  db 72
  !d4
  db 24
  !f4
  db 48
  !g4
  !b4
  !c5
  db 12
  !c5
  !a4
  !b4
  !a4
  db 24
  !b4
  db 12
  !c5
  db 24
  !d5
  db 36
  !e5
  db 72
  !c5
  db 24
  !a4
  db 48
  !d5
  db 24
  !g5
  !f5
  db 96
  !e5
  !tie
  !end

.pattern6_2
  !instr,!instr03
  !pan,20
  !dynamicPan,192,0
  db 12,$6E
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !dynamicPan,192,20
  !c5
  !f5
  !a5
  !c5
  !c5
  !f5
  !a5
  !c5
  !b4
  !e5
  !gs5
  !e5
  !b4
  !e5
  !gs5
  !e5
  !dynamicPan,192,0
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !dynamicPan,192,20
  !c5
  !f5
  !a5
  !c5
  !c5
  !f5
  !a5
  !c5
  !b4
  !e5
  !gs5
  !e5
  !b4
  !e5
  !gs5
  !e5
  !dynamicPan,192,0
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !pan,10
  !e5
  !a5
  !c6
  !a5
  !e5
  !a5
  !c6
  !a5
  !e5
  !gs5
  !b5
  !gs5
  !e5
  !gs5
  !b5
  !gs5
  !end

.pattern6_3
  !pan,10
  db 12,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern6_4
  !pan,10
  !instr,!instr03
  !subtranspose,20
  db 12,$6E
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !c5
  !f5
  !a5
  !c5
  !c5
  !f5
  !a5
  !c5
  !b4
  !e5
  !gs5
  !e5
  !b4
  !e5
  !gs5
  !e5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !c5
  !f5
  !a5
  !c5
  !c5
  !f5
  !a5
  !c5
  !b4
  !e5
  !gs5
  !e5
  !b4
  !e5
  !gs5
  !e5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !d5
  !g5
  !b5
  !g5
  !e5
  !a5
  !c6
  !a5
  !e5
  !a5
  !c6
  !a5
  !e5
  !gs5
  !b5
  !gs5
  !e5
  !gs5
  !b5
  !gs5
  !end

.pattern6_5
  !instr,!instr06
  db 24
  !rest
  db 96,$6E
  !g4
  db 36
  !f4
  db 24
  !e4
  db 36
  !d4
  db 72
  !c4
  db 24
  !a4
  !gs4
  !f4
  db 48
  !e4
  db 72
  !d4
  db 24
  !f4
  db 48
  !g4
  !b4
  !c5
  db 12
  !c5
  !a4
  !b4
  !a4
  db 24
  !b4
  db 12
  !c5
  db 24
  !d5
  db 36
  !e5
  db 72
  !c5
  db 24
  !a4
  db 48
  !d5
  db 24
  !g5
  !f5
  db 96
  !e5
  db 72
  !tie
  !end

.pattern7_0
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  !end

.pattern7_1
  !instr,!instr03
  db 12,$6E
  !a6
  db 24
  !c7
  db 12
  !a6
  db 36
  !g6
  db 12
  !e6
  !f6
  !e6
  !d6
  !c6
  db 24
  !d6
  !e6
  db 12
  !a6
  db 24
  !c7
  db 12
  !a6
  db 36
  !g6
  db 12
  !e6
  !f6
  db 60
  !e6
  db 24
  !gs6
  db 96
  !a6
  !tie
  !end

.pattern7_2
  !instr,!instr06
  !dynamicPan,192,20
  db 8,$7E
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  !g5
  !f5
  !e5
  !d5
  !c5
  !b4
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  !g4
  !a4
  !b4
  !c5
  !d5
  !e5
  !dynamicPan,192,0
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  !g5
  !f5
  !e5
  !d5
  !c5
  !b4
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  !g4
  !a4
  !b4
  !c5
  !d5
  !e5
  !dynamicPan,96,20
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  !g5
  !a5
  !b5
  !c5
  !d5
  !e5
  !f5
  !e5
  !d5
  !c5
  !b5
  !a5
  !g5
  !f5
  !e5
  !d5
  !c5
  !b4
  !end

.pattern7_3
  db 12,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,48,0
  db 6
  %percNote(!instr14-!instr12)
  !f5
  !e5
  !d5
  !c5
  !b4
  !a4
  !g4
  !end

.pattern7_4
  !subtranspose,20
  !instr,!instr06
  !dynamicPan,96,0
  db 8,$7E
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  !g5
  !f5
  !e5
  !d5
  !c5
  !b4
  !dynamicPan,96,20
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  !g4
  !a4
  !b4
  !c5
  !d5
  !e5
  !dynamicPan,96,0
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  !g5
  !f5
  !e5
  !d5
  !c5
  !b4
  !dynamicPan,96,20
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  !g4
  !a4
  !b4
  !c5
  !d5
  !e5
  !dynamicPan,96,0
  !a4
  !b4
  !c5
  !d5
  !e5
  !f5
  !g5
  !a5
  !b5
  !c5
  !d5
  !e5
  !pan,10
  !f5
  !e5
  !d5
  !c5
  !b5
  !a5
  !g5
  !f5
  !e5
  !d5
  !c5
  !b4
  !end

.pattern7_5
  !instr,!instr03
  db 24
  !rest
  db 12,$6E
  !a6
  db 24
  !c7
  db 12
  !a6
  db 36
  !g6
  db 12
  !e6
  !f6
  !e6
  !d6
  !c6
  db 24
  !d6
  !e6
  db 12
  !a6
  db 24
  !c7
  db 12
  !a6
  db 36
  !g6
  db 12
  !e6
  !f6
  db 60
  !e6
  db 24
  !gs6
  db 96
  !a6
  db 72
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
