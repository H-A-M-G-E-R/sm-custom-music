asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr03 = $17
!instr04 = $18
!instr07 = $19
!instr12 = $1A
!instr13 = $1B
!instr14 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$EB,$B8,$02,$00
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1035
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
  Sample07: incbin "Sample07.brr"
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
  dw .pattern1
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern4
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern7
  dw .pattern9
  dw .pattern10
  dw .pattern11
  dw .pattern10
  dw .pattern12
  dw .pattern13
  dw .pattern14
  dw .pattern13
  dw .pattern15
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern4_3, .pattern5_4, .pattern5_5, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern5_2, .pattern4_3, .pattern5_4, .pattern6_5, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, .pattern7_5, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, 0, 0
.pattern9: dw .pattern6_0, .pattern9_1, .pattern9_2, .pattern8_3, .pattern9_4, .pattern8_5, 0, 0
.pattern10: dw .pattern4_0, .pattern10_1, .pattern10_2, .pattern7_3, .pattern10_4, .pattern10_5, 0, 0
.pattern11: dw .pattern11_0, .pattern11_1, .pattern11_2, .pattern8_3, .pattern11_4, .pattern11_5, 0, 0
.pattern12: dw .pattern6_0, .pattern12_1, .pattern12_2, .pattern8_3, .pattern11_4, .pattern12_5, 0, 0
.pattern13: dw .pattern7_0, .pattern13_1, .pattern13_2, .pattern8_3, .pattern13_4, .pattern13_5, 0, 0
.pattern14: dw .pattern5_0, .pattern14_1, .pattern14_2, .pattern8_3, .pattern14_4, .pattern14_5, 0, 0
.pattern15: dw .pattern15_0, .pattern15_1, .pattern15_2, .pattern15_3, .pattern15_4, .pattern15_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,100,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !echoParameters,2,100,0
  !tempo,37
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !pan,15
  !dynamicPan,36,5
  db 12
  %percNote(!instr14-!instr12)
  !c5
  db 6
  !b4
  !g4
  !pan,10
  db 12
  %percNote(!instr13-!instr12)
  !end

.pattern0_1
  !volume,230
  !instr,!instr03
  db 48,$7E
  !fs5
  !gs5
  !end

.pattern0_2
  !volume,150
  !pan,20
  !subtranspose,50
  db 24
  !rest
  !instr,!instr03
  db 48,$7E
  !fs5
  db 24
  !gs5
  !end

.pattern0_3
  !volume,200
  !instr,!instr04
  db 96
  !rest
  !end

.pattern0_4
  db 96
  !rest
  !end

.pattern0_5
  !volume,230
  !instr,!instr03
  db 48,$7E
  !d5
  !e5
  !end

.pattern1_0
  !pan,10
  db 12,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  !pan,15
  !dynamicPan,48,5
  db 6
  %percNote(!instr14-!instr12)
  !e5
  db 12
  !c5
  db 6
  !d5
  !d5
  !c5
  !c5
  !end

.pattern1_1
  !volume,220
  !instr,!instr03
  !vibrato,48,25,65
  db 24,$7E
  !cs5
  !fs5
  db 12
  !cs5
  !gs5
  !cs5
  !a5
  !tie
  !cs5
  !gs5
  !cs5
  !fs5
  !cs5
  db 24
  !e5
  !cs5
  !fs5
  db 12
  !cs5
  !gs5
  !cs5
  !a5
  !tie
  !cs5
  !b5
  !cs5
  !a5
  !cs5
  db 24
  !gs5
  !end

.pattern1_2
  !volume,120
  !instr,!instr03
  !vibrato,48,25,65
  db 24
  !rest
  db 24,$7E
  !cs5
  !fs5
  db 12
  !cs5
  !gs5
  !cs5
  !a5
  !tie
  !cs5
  !gs5
  !cs5
  !fs5
  !cs5
  db 24
  !e5
  !cs5
  !fs5
  db 12
  !cs5
  !gs5
  !cs5
  !a5
  !tie
  !cs5
  !b5
  !cs5
  !a5
  !cs5
  !end

.pattern1_3
  !volume,220
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  !end

.pattern1_4
  !volume,160
  !instr,!instr07
  !subtranspose,30
  !pan,5
  !vibrato,36,20,65
  db 96,$7E
  !a5
  !tie
  !cs5
  db 48
  !tie
  db 24
  !fs5
  !gs5
  !end

.pattern1_5
  !volume,180
  !instr,!instr00
  !vibrato,40,30,70
  !pan,15
  db 96,$7E
  !fs5
  db 36
  !gs5
  !fs5
  db 24
  !e5
  db 96
  !cs5
  !gs4
  !end

.pattern2_0
  !pan,10
  db 12,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  !pan,15
  !dynamicPan,48,5
  db 6
  %percNote(!instr14-!instr12)
  !f5
  db 12
  !e5
  db 6
  !b4
  !b4
  !g4
  !g4
  !end

.pattern2_1
  db 24,$7E
  !cs5
  !fs5
  db 12,$6E
  !cs5
  !gs5
  !cs5
  !a5
  !tie
  !cs5
  !gs5
  !cs5
  !fs5
  !cs5
  db 24,$7E
  !e5
  !cs5
  !fs5
  db 12,$6E
  !cs5
  !gs5
  !cs5
  !cs6
  !tie
  !cs5
  !b5
  !cs5
  !a5
  !cs5
  db 24,$7E
  !gs5
  !end

.pattern2_2
  db 24
  !rest
  db 24,$7E
  !cs5
  !fs5
  db 12,$6E
  !cs5
  !gs5
  !cs5
  !a5
  !tie
  !cs5
  !gs5
  !cs5
  !fs5
  !cs5
  db 24,$7E
  !e5
  !cs5
  !fs5
  db 12,$6E
  !cs5
  !gs5
  !cs5
  !cs6
  !tie
  !cs5
  !b5
  !cs5
  !a5
  !cs5
  !end

.pattern2_3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs3
  db 6,$6E
  !cs4
  !cs4
  db 12,$7E
  !b2
  db 6,$6E
  !b3
  !b3
  db 12,$7E
  !a2
  db 6,$6E
  !a3
  !a3
  db 12,$7E
  !gs3
  !e3
  !end

.pattern2_4
  db 96,$7E
  !a5
  db 36
  !gs5
  !a5
  db 24
  !b5
  db 96
  !cs6
  db 48
  !b5
  !gs5
  !end

.pattern2_5
  db 96,$7E
  !fs5
  db 36
  !gs5
  db 60
  !fs5
  db 36
  !cs5
  !gs5
  db 24
  !fs5
  !a5
  !gs5
  !fs5
  !e5
  !end

.pattern3_0
  !pan,10
  db 12,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !pan,15
  !dynamicPan,48,5
  db 3
  %percNote(!instr14-!instr12)
  !f5
  !f5
  !e5
  db 6
  !e5
  !d5
  !d5
  !c5
  !c5
  !b4
  !end

.pattern3_4
  db 96,$7E
  !a5
  db 36
  !gs5
  !a5
  db 24
  !b5
  db 96
  !cs6
  !b5
  !end

.pattern3_5
  db 96,$7E
  !fs5
  db 36
  !gs5
  !fs5
  db 24
  !e5
  db 36
  !cs5
  !fs5
  db 24
  !gs5
  db 48
  !a5
  db 24
  !gs5
  !e5
  !end

.pattern4_0
  !pan,10
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  !end

.pattern4_1
  db 12,$6E
  !a5
  !gs5
  db 36,$7E
  !a5
  db 12,$6E
  !b5
  !a5
  !gs5
  db 60,$7E
  !e5
  db 12,$6E
  !e5
  !fs5
  !gs5
  db 24,$7E
  !a5
  db 12,$6E
  !gs5
  db 24,$7E
  !a5
  db 36
  !b5
  db 24
  !cs6
  db 12,$6E
  !b5
  db 36,$7E
  !a5
  db 24
  !gs5
  !end

.pattern4_2
  db 24
  !rest
  db 12,$6E
  !a5
  !gs5
  db 36,$7E
  !a5
  db 12,$6E
  !b5
  !a5
  !gs5
  db 60,$7E
  !e5
  db 12,$6E
  !e5
  !fs5
  !gs5
  db 24,$7E
  !a5
  db 12,$6E
  !gs5
  db 24,$7E
  !a5
  db 36
  !b5
  db 24
  !cs6
  db 12,$6E
  !b5
  db 36,$7E
  !a5
  !end

.pattern4_3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !e2
  db 6,$6E
  !e3
  !e3
  db 12,$7E
  !e2
  db 6,$6E
  !e3
  !e3
  db 12,$7E
  !e2
  db 6,$6E
  !e3
  !e3
  db 12,$7E
  !e2
  db 6,$6E
  !e3
  !e3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  db 12,$7E
  !cs2
  db 6,$6E
  !cs3
  !cs3
  !end

.pattern4_4
  db 24,$7E
  !a6
  db 12
  !a5
  !a6
  db 48
  !tie
  db 72
  !tie
  db 24
  !a4
  !pitchSlide,12,12 : !a3
  !cs6
  db 12
  !cs5
  !cs6
  db 48
  !tie
  db 96
  !tie
  !end

.pattern4_5
  db 96,$7E
  !a5
  !gs5
  !e5
  !cs5
  !end

.pattern5_0
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern5_1
  db 12,$6E
  !a5
  !gs5
  db 36,$7E
  !a5
  db 12,$6E
  !b5
  !a5
  !gs5
  !e5
  db 48,$7E
  !tie
  db 12,$6E
  !e5
  !fs5
  !gs5
  db 24,$7E
  !cs6
  !b5
  !a5
  !gs5
  !a5
  db 12,$6E
  !gs5
  db 36,$7E
  !fs5
  db 24
  !gs5
  !end

.pattern5_2
  db 24
  !rest
  db 12,$6E
  !a5
  !gs5
  db 36,$7E
  !a5
  db 12,$6E
  !b5
  !a5
  !gs5
  !e5
  db 48,$7E
  !tie
  db 12,$6E
  !e5
  !fs5
  !gs5
  db 24,$7E
  !cs6
  !b5
  !a5
  !gs5
  !a5
  db 12,$6E
  !gs5
  db 36,$7E
  !fs5
  !end

.pattern5_4
  db 24,$7E
  !a6
  db 12
  !a5
  !a6
  db 48
  !tie
  db 12
  !tie
  !e6
  !fs6
  !gs6
  !a6
  !gs6
  !a6
  !b6
  db 24
  !cs7
  db 12
  !cs6
  !cs7
  db 48
  !tie
  !b6
  !gs6
  !end

.pattern5_5
  db 96,$7E
  !a5
  db 48
  !gs5
  !e5
  db 96
  !cs6
  db 48
  !b5
  !gs5
  !end

.pattern6_0
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern6_1
  db 12,$6E
  !a5
  !gs5
  db 36,$7E
  !a5
  db 12,$6E
  !b5
  !a5
  !gs5
  !e5
  db 48,$7E
  !tie
  db 12,$6E
  !e5
  !fs5
  !gs5
  db 24,$7E
  !cs6
  !b5
  !a5
  !gs5
  !a5
  db 12,$6E
  !gs5
  db 36,$7E
  !fs5
  db 24
  !e5
  !end

.pattern6_5
  db 96,$7E
  !a5
  db 48
  !gs5
  !e5
  db 96
  !cs6
  db 48
  !b5
  db 24
  !gs5
  !e5
  !end

.pattern7_0
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  !end

.pattern7_1
  db 36,$7E
  !fs5
  !a5
  db 24
  !cs6
  db 36
  !e6
  !d6
  db 24
  !b5
  db 96
  !cs6
  db 48
  !b5
  !gs5
  !end

.pattern7_2
  db 24
  !rest
  db 36,$7E
  !fs5
  !a5
  db 24
  !cs6
  db 36
  !e6
  !d6
  db 24
  !b5
  db 96
  !cs6
  db 48
  !b5
  db 24
  !gs5
  !end

.pattern7_3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  !d3
  !end

.pattern7_4
  db 12,$7E
  !d6
  db 36
  !fs6
  db 24
  !gs6
  !a6
  db 12
  !d6
  db 36
  !fs6
  db 24
  !gs6
  !a6
  db 12
  !d6
  db 36
  !fs6
  db 24
  !gs6
  !a6
  !cs7
  !b6
  db 36
  !a6
  db 12
  !gs6
  !end

.pattern7_5
  db 96,$7E
  !fs5
  !e6
  !cs6
  db 48
  !b5
  !gs5
  !end

.pattern8_0
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  !end

.pattern8_1
  db 12,$6E
  !a5
  db 24,$7E
  !gs5
  !fs5
  db 36
  !gs5
  !a5
  db 12,$6E
  !b5
  db 48,$78
  !tie
  db 12,$6E
  !a5
  db 24,$7E
  !gs5
  !fs5
  db 36
  !e5
  !d5
  db 12,$6E
  !cs5
  db 48,$78
  !tie
  !end

.pattern8_2
  db 24
  !rest
  db 12,$6E
  !a5
  db 24,$7E
  !gs5
  !fs5
  db 36
  !gs5
  !a5
  db 12,$6E
  !b5
  db 48,$78
  !tie
  db 12,$6E
  !a5
  db 24,$7E
  !gs5
  !fs5
  db 36
  !e5
  !d5
  db 12,$6E
  !cs5
  db 24,$78
  !tie
  !end

.pattern8_3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  !end

.pattern8_4
  db 24,$7E
  !a6
  db 12
  !a5
  !a6
  db 48
  !tie
  db 96
  !tie
  db 24
  !a6
  db 12
  !a5
  !a6
  db 48
  !tie
  db 96
  !tie
  !end

.pattern8_5
  db 96,$7E
  !a5
  db 48
  !tie
  !b5
  db 96
  !a5
  db 48
  !d5
  !cs5
  !end

.pattern9_1
  db 12,$6E
  !a5
  db 24,$7E
  !gs5
  !fs5
  db 36
  !gs5
  !a5
  db 12,$6E
  !b5
  db 48,$78
  !tie
  db 12,$6E
  !a5
  db 24,$7E
  !gs5
  !fs5
  db 36
  !e5
  !d6
  db 12,$6E
  !cs6
  db 48,$78
  !tie
  !end

.pattern9_2
  db 24
  !rest
  db 12,$6E
  !a5
  db 24,$7E
  !gs5
  !fs5
  db 36
  !gs5
  !a5
  db 12,$6E
  !b5
  db 48,$78
  !tie
  db 12,$6E
  !a5
  db 24,$7E
  !gs5
  !fs5
  db 36
  !e5
  !d6
  db 12,$6E
  !cs6
  db 24,$78
  !tie
  !end

.pattern9_4
  db 24,$7E
  !a6
  db 12
  !a5
  !a6
  db 48
  !tie
  db 96
  !tie
  db 24
  !cs7
  db 12
  !cs6
  !cs7
  db 48
  !tie
  db 24
  !cs7
  db 12
  !cs6
  !cs7
  db 48
  !tie
  !end

.pattern10_1
  db 96,$7E
  !d6
  db 12,$6E
  !tie
  !d6
  !e6
  !d6
  !cs6
  !b5
  !a5
  !gs5
  db 36,$7E
  !b5
  db 12,$6E
  !cs6
  db 48,$78
  !tie
  db 96
  !tie
  !end

.pattern10_2
  db 24
  !rest
  db 96,$7E
  !d6
  db 12,$6E
  !tie
  !d6
  !e6
  !d6
  !cs6
  !b5
  !a5
  !gs5
  db 36,$7E
  !b5
  db 12,$6E
  !cs6
  db 48,$78
  !tie
  db 72
  !tie
  !end

.pattern10_4
  db 36,$7E
  !d6
  !cs6
  db 24
  !b5
  db 36
  !d6
  !cs6
  db 24
  !b5
  db 36
  !d6
  !cs6
  db 24
  !b5
  db 48
  !d6
  !cs6
  !end

.pattern10_5
  db 96,$7E
  !d6
  !tie
  db 36
  !b5
  !cs6
  db 24
  !d6
  db 36
  !b5
  db 12,$6E
  !cs6
  db 48,$78
  !tie
  !end

.pattern11_0
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !pan,15
  !dynamicPan,48,5
  db 6
  %percNote(!instr14-!instr12)
  !e5
  !c5
  !b4
  !f5
  !e5
  !c5
  !b4
  !end

.pattern11_1
  db 96,$7E
  !b5
  db 12,$6E
  !tie
  !b5
  !cs6
  !d6
  !cs6
  db 24,$7E
  !b5
  db 12,$6E
  !a5
  db 36,$7E
  !b5
  db 12,$6E
  !a5
  db 48,$78
  !tie
  db 96
  !tie
  !end

.pattern11_2
  db 24
  !rest
  db 96,$7E
  !b5
  db 12,$6E
  !tie
  !b5
  !cs6
  !d6
  !cs6
  db 24,$7E
  !b5
  db 12,$6E
  !a5
  db 36,$7E
  !b5
  db 12,$6E
  !a5
  db 48,$78
  !tie
  db 72
  !tie
  !end

.pattern11_4
  db 36,$7E
  !b5
  !cs6
  db 24
  !d6
  db 36
  !b5
  !cs6
  db 24
  !d6
  db 36
  !b5
  !cs6
  db 24
  !d6
  db 48
  !b5
  !a5
  !end

.pattern11_5
  db 96,$7E
  !b5
  !b5
  !a5
  db 36
  !b5
  db 12
  !a5
  db 48
  !tie
  !end

.pattern12_1
  db 96,$7E
  !b5
  db 12,$6E
  !tie
  !b5
  !cs6
  !d6
  !cs6
  db 24,$7E
  !b5
  db 12,$6E
  !a5
  db 36,$7E
  !b5
  db 12,$6E
  !a5
  db 48,$78
  !tie
  db 36,$7E
  !gs5
  db 12,$6E
  !fs5
  db 48,$78
  !tie
  !end

.pattern12_2
  db 24
  !rest
  db 96,$7E
  !b5
  db 12,$6E
  !tie
  !b5
  !cs6
  !d6
  !cs6
  db 24,$7E
  !b5
  db 12,$6E
  !a5
  db 36,$7E
  !b5
  db 12,$6E
  !a5
  db 48,$78
  !tie
  db 36,$7E
  !gs5
  db 12,$6E
  !fs5
  db 24,$78
  !tie
  !end

.pattern12_5
  db 96,$7E
  !b5
  !b5
  !a5
  db 36
  !gs5
  db 12
  !a5
  db 1
  !tie
  db 47
  !a2
  !end

.pattern13_1
  db 12,$6E
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  db 12,$6E
  !a4
  db 24,$7E
  !b4
  db 12,$6E
  !cs5
  !b4
  db 24,$7E
  !a4
  db 12,$6E
  !gs4
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  !a4
  !b4
  !end

.pattern13_2
  db 24
  !rest
  db 12,$6E
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  db 12,$6E
  !a4
  db 24,$7E
  !b4
  db 12,$6E
  !cs5
  !b4
  db 24,$7E
  !a4
  db 12,$6E
  !gs4
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  !a4
  db 24
  !b4
  !end

.pattern13_4
  db 36,$7E
  !fs5
  db 12
  !gs5
  db 48
  !tie
  db 36
  !cs6
  !b5
  db 24
  !gs5
  db 36
  !a5
  db 12
  !gs5
  db 48
  !tie
  db 36
  !a5
  db 12
  !b5
  db 48
  !tie
  !end

.pattern13_5
  db 96,$7E
  !fs4
  !gs4
  !a4
  !b4
  !end

.pattern14_1
  db 12,$6E
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  db 12,$6E
  !a4
  db 24,$7E
  !b4
  db 12,$6E
  !cs5
  !b4
  db 24,$7E
  !a4
  db 12,$6E
  !gs4
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  db 36
  !a4
  !b4
  db 24
  !cs5
  !end

.pattern14_2
  db 24
  !rest
  db 12,$6E
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  db 12,$6E
  !a4
  db 24,$7E
  !b4
  db 12,$6E
  !cs5
  !b4
  db 24,$7E
  !a4
  db 12,$6E
  !gs4
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  db 36
  !a4
  !b4
  !end

.pattern14_4
  db 36,$7E
  !fs5
  db 12
  !gs5
  db 48
  !tie
  db 36
  !cs6
  !b5
  db 24
  !gs5
  db 36
  !a5
  db 12
  !gs5
  db 48
  !tie
  db 36
  !a5
  !b5
  db 24
  !cs6
  !end

.pattern14_5
  db 96,$7E
  !fs4
  !gs4
  db 48
  !a4
  !cs5
  !b4
  !gs4
  !end

.pattern15_0
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  !end

.pattern15_1
  db 12,$6E
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  db 12,$6E
  !a4
  db 24,$7E
  !b4
  db 12,$6E
  !cs5
  !b4
  db 24,$7E
  !a4
  db 12,$6E
  !gs4
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  db 36
  !fs4
  !gs4
  db 24
  !a4
  !end

.pattern15_2
  db 24
  !rest
  db 12,$6E
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  db 12,$6E
  !a4
  db 24,$7E
  !b4
  db 12,$6E
  !cs5
  !b4
  db 24,$7E
  !a4
  db 12,$6E
  !gs4
  !fs4
  db 24,$7E
  !e4
  db 12,$6E
  !fs4
  db 48,$7E
  !gs4
  db 36
  !fs4
  !gs4
  !end

.pattern15_3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !e2
  db 6,$6E
  !e3
  !e3
  db 12,$7E
  !fs2
  db 6,$6E
  !fs3
  !fs3
  db 12,$7E
  !gs2
  db 6
  !gs3
  !gs3
  db 12
  !a2
  db 6
  !a3
  !a3
  !end

.pattern15_4
  db 36,$7E
  !fs5
  db 12
  !gs5
  db 48
  !tie
  db 36
  !cs6
  !b5
  db 24
  !gs5
  db 36
  !a5
  db 12
  !gs5
  db 48
  !tie
  db 12
  !fs4
  !fs4
  !fs5
  !gs4
  !gs4
  !gs5
  !a4
  !a5
  !end

.pattern15_5
  db 96,$7E
  !fs4
  !gs4
  !a4
  db 36
  !fs4
  !gs4
  db 24
  !a4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
