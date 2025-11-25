asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr02 = $17
!instr03 = $18
!instr04 = $19
!instr05 = $1A
!instr07 = $1B
!instr12 = $1C
!instr13 = $1D
!instr14 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$EB,$B8,$02,$00
  db !instr02,$FF,$E5,$B8,$0E,$00
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr05,$FF,$EE,$B8,$05,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1035
  dw Sample02,Sample02+522
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample05,Sample05+351
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample02: incbin "Sample02.brr"
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
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
  dw .pattern0
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw .pattern8
  dw .pattern10
  dw .pattern11
  dw .pattern11
  dw .pattern11
  dw .pattern12
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern3_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, 0
.pattern6: dw .pattern3_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, 0, 0
.pattern7: dw .pattern3_0, .pattern7_1, .pattern7_2, .pattern6_3, .pattern6_4, .pattern7_5, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, 0, 0
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, .pattern9_5, 0, 0
.pattern10: dw .pattern10_0, .pattern10_1, .pattern10_2, .pattern10_3, .pattern10_4, .pattern10_5, 0, 0
.pattern11: dw .pattern11_0, .pattern11_1, .pattern11_2, .pattern11_3, .pattern11_4, .pattern11_5, 0, 0
.pattern12: dw .pattern12_0, .pattern12_1, .pattern12_2, .pattern12_3, .pattern12_4, .pattern12_5, 0, 0

.pattern0_0
  !endEcho
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,43
  !instr,!instr04
  db 12,$7E
  !as2
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !as2
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  !end

.pattern0_1
  !volume,220
  !instr,!instr07
  db 12,$5E
  !g4
  !as4
  !c5
  db 24,$7E
  !ds5
  !c5
  db 12,$5E
  !as4
  !tie
  db 24,$7E
  !c5
  db 12,$6E
  !as4
  db 24,$5E
  !as4
  db 24,$7E
  !c5
  !end

.pattern0_2
  db 12
  !rest
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  !rest
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  !end

.pattern0_3
  !volume,110
  !pan,20
  !instr,!instr07
  !subtranspose,20
  db 24
  !rest
  db 12,$5E
  !g4
  !as4
  !c5
  db 24,$7E
  !ds5
  !c5
  db 12,$5E
  !as4
  !tie
  db 24,$7E
  !c5
  db 12,$5E
  !as4
  db 24,$7E
  !as4
  !end

.pattern0_4
  !volume,230
  !vibrato,12,40,70
  !instr,!instr02
  db 12,$69
  !f3
  db 84
  !g3
  db 96
  !tie
  !end

.pattern0_5
  !volume,230
  !vibrato,12,40,70
  !instr,!instr02
  !pan,5
  !subtranspose,20
  db 24
  !rest
  db 12,$69
  !d3
  db 84
  !ds3
  db 72
  !tie
  !end

.pattern1_0
  db 12,$7E
  !as2
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 48
  !rest
  db 12,$7E
  !ds3
  db 12,$6E
  !d3
  db 12,$7E
  !c3
  db 12,$6E
  !as2
  !end

.pattern1_1
  db 12,$6E
  !g3
  !as3
  !c4
  db 24
  !ds4
  !c4
  db 12
  !as3
  !tie
  db 24
  !c4
  db 12
  !as3
  db 24
  !as3
  !c4
  !end

.pattern1_2
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 84
  !rest
  db 12,$5E
  %percNote(!instr12-!instr12)
  db 12,$6E
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern1_3
  db 24
  !rest
  db 12,$6E
  !g3
  !as3
  !c4
  db 24
  !ds4
  !c4
  db 12
  !as3
  !tie
  db 24
  !c4
  db 12
  !as3
  db 24
  !as3
  !end

.pattern1_4
  !endVibrato
  db 12,$69
  !f4
  db 84
  !g4
  db 48
  !tie
  !ds4
  !pitchSlide,24,24 : !ds3
  !end

.pattern1_5
  !endVibrato
  db 12,$79
  !d4
  db 84
  !ds4
  db 48
  !tie
  !c4
  !pitchSlide,24,24 : !c3
  !end

.pattern2_0
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !d3
  db 12,$7E
  !ds3
  db 12,$6E
  !as2
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !d3
  db 12,$7E
  !ds3
  db 12,$6E
  !as2
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !d3
  db 12,$7E
  !ds3
  db 12,$6E
  !as2
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !g3
  db 12,$6E
  !g3
  db 12,$7E
  !g3
  db 12,$6E
  !g3
  db 12,$7E
  !g3
  db 12,$6E
  !f3
  db 12,$7E
  !ds3
  db 12,$6E
  !as2
  !end

.pattern2_1
  !instr,!instr07
  !volume,240
  !vibrato,48,20,65
  db 96,$6E
  !c4
  !c5
  db 36
  !as4
  !g4
  db 24
  !ds4
  db 96
  !c4
  !c5
  db 48
  !g5
  db 36
  !c5
  db 12
  !as4
  db 96
  !c5
  !f5
  !g5
  !end

.pattern2_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,96,0
  db 6
  %percNote(!instr14-!instr12)
  !g4
  !g4
  !b4
  !b4
  !b4
  !e5
  !e5
  !d5
  !d5
  !c5
  !c5
  !b4
  !b4
  !g4
  !g4
  !end

.pattern2_3
  !instr,!instr05
  !volume,180
  db 12,$6E
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !g3
  !as3
  !c4
  db 24
  !ds4
  !c4
  db 12
  !f4
  db 96
  !tie
  !g4
  !end

.pattern2_4
  !pan,0
  !volume,100
  !subtranspose,20
  !instr,!instr05
  db 24
  !rest
  db 12,$6E
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !g4
  !c4
  !c4
  !g3
  !as3
  !c4
  db 24
  !ds4
  !c4
  db 12
  !f4
  db 96
  !tie
  db 72
  !g4
  !end

.pattern2_5
  !pan,20
  !instr,!instr07
  !volume,120
  db 24
  !rest
  !subtranspose,55
  !vibrato,48,20,65
  db 96,$6E
  !c4
  !c5
  db 36
  !as4
  !g4
  db 24
  !ds4
  db 96
  !c4
  !c5
  db 48
  !g5
  db 36
  !c5
  db 12
  !as4
  db 96
  !c5
  !f5
  db 72
  !g5
  !end

.pattern3_0
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6A
  !c4
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7A
  !c4
  db 12,$6E
  !c3
  db 12,$7A
  !c4
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6A
  !c4
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7A
  !c4
  db 12,$6E
  !c3
  db 12,$7A
  !c4
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  !end

.pattern3_1
  !volume,220
  !instr,!instr03
  db 12,$6E
  !c6
  !c6
  db 72
  !c6
  !tie
  db 24
  !ds6
  !g6
  db 12
  !f6
  db 24
  !ds6
  !c6
  db 12
  !as5
  db 96
  !c6
  !end

.pattern3_2
  !pan,10
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !end

.pattern3_3
  !pan,8
  !volume,160
  db 12,$6E
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !c4
  !c4
  !end

.pattern3_4
  !volume,180
  db 96,$7E
  !ds4
  db 72
  !ds4
  db 24
  !g4
  db 60
  !ds4
  db 24
  !g4
  db 12
  !as3
  db 96
  !c4
  !end

.pattern3_5
  !instr,!instr03
  db 24
  !rest
  db 12,$6E
  !c6
  !c6
  db 72
  !c6
  !tie
  db 24
  !ds6
  !g6
  db 12
  !f6
  db 24
  !ds6
  !c6
  db 12
  !as5
  db 72
  !c6
  !end

.pattern4_1
  db 12,$6E
  !c6
  !d6
  db 72,$7E
  !ds6
  db 96,$6E
  !g6
  db 24
  !as6
  db 12
  !g6
  db 24
  !f6
  !ds6
  db 12
  !d6
  db 96
  !c6
  !end

.pattern4_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern4_3
  !pan,10
  db 12,$6E
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !c4
  !c4
  !end

.pattern4_4
  !pan,0
  !volume,100
  db 24
  !rest
  db 12,$6E
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !c4
  !c4
  !c4
  !c4
  !ds4
  !c4
  !c4
  !gs4
  !end

.pattern4_5
  db 24
  !rest
  db 12,$6E
  !c6
  !d6
  db 72,$7E
  !ds6
  db 96,$6E
  !g6
  db 24
  !as6
  db 12
  !g6
  db 24
  !f6
  !ds6
  db 12
  !d6
  db 72
  !c6
  !end

.pattern5_0
  db 12,$7E
  !as2
  db 12,$6E
  !as2
  db 12,$7E
  !as2
  db 12,$6E
  !as2
  db 12,$7E
  !as2
  db 12,$6A
  !as3
  db 12,$7E
  !as2
  db 12,$6E
  !as2
  db 12,$7E
  !as2
  db 12,$6E
  !as2
  db 12,$7A
  !as3
  db 12,$6E
  !as2
  db 12,$7A
  !as3
  db 12,$6E
  !as2
  db 12,$7E
  !as2
  db 12,$6E
  !as2
  db 12,$7E
  !as2
  db 12,$6E
  !as2
  db 12,$7E
  !as2
  db 12,$6E
  !as2
  db 12,$7E
  !as2
  db 12,$6A
  !as3
  db 12,$7E
  !as2
  db 12,$6E
  !as2
  db 12,$7E
  !as2
  db 12,$6E
  !as2
  db 12,$7A
  !as3
  db 12,$6E
  !as2
  db 12,$7A
  !as3
  db 12,$6E
  !as2
  db 12,$7E
  !as2
  db 12,$6E
  !as2
  !end

.pattern5_1
  db 12,$6E
  !as5
  !as5
  db 72
  !as5
  !tie
  db 24
  !d6
  !f6
  db 12
  !ds6
  db 24
  !d6
  !as5
  db 12
  !g5
  db 96
  !as5
  !end

.pattern5_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  !end

.pattern5_3
  db 12,$6E
  !f3
  !g3
  !as3
  db 24
  !d4
  !as3
  db 12
  !g3
  !tie
  db 24
  !as3
  db 12
  !g3
  db 24
  !g3
  !as3
  db 12
  !f3
  !g3
  !as3
  db 24
  !d4
  !as3
  db 12
  !g3
  !tie
  db 24
  !as3
  db 12
  !g3
  db 24
  !g3
  !as3
  !end

.pattern5_4
  !volume,200
  !instr,!instr03
  db 96,$7E
  !d4
  db 72
  !tie
  db 24
  !f4
  db 60
  !d4
  db 12,$5E
  !f4
  !f4
  db 12,$7E
  !f4
  db 96
  !d4
  !end

.pattern5_5
  db 24
  !rest
  db 12,$6E
  !as5
  !as5
  db 72
  !as5
  !tie
  db 24
  !d6
  !f6
  db 12
  !ds6
  db 24
  !d6
  !as5
  db 12
  !g5
  db 72
  !as5
  !end

.pattern6_1
  db 12,$6E
  !c6
  !as5
  db 72
  !c6
  !tie
  db 24
  !as5
  !c6
  db 36
  !ds6
  db 24
  !c6
  db 12
  !as5
  db 96
  !c6
  !end

.pattern6_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern6_3
  db 12,$6E
  !c5
  !c5
  !ds5
  !c5
  !c5
  !gs5
  !c5
  !c5
  !c5
  !c5
  !ds5
  !c5
  !c5
  !gs5
  !c5
  !c5
  !c5
  !c5
  !ds5
  !c5
  !c5
  !gs5
  !c5
  !c5
  !c5
  !c5
  !ds5
  !c5
  !c5
  !gs5
  !c5
  !c5
  !end

.pattern6_4
  db 24,$6E
  !c4
  !c5
  db 12
  !as4
  db 36
  !c5
  db 24
  !c4
  !c5
  db 12
  !as4
  db 36
  !c5
  db 24
  !c4
  !c5
  db 12
  !as4
  db 36
  !c5
  db 24
  !c4
  !c5
  db 12
  !as4
  db 36
  !c5
  !end

.pattern6_5
  db 24
  !rest
  db 12,$6E
  !c6
  !as5
  db 72
  !c6
  !tie
  db 24
  !as5
  !c6
  db 36
  !ds6
  db 24
  !c6
  db 12
  !as5
  db 72
  !c6
  !end

.pattern7_1
  db 12,$6E
  !g5
  !as5
  db 72
  !c6
  !tie
  db 24
  !ds6
  db 96
  !c6
  !tie
  !end

.pattern7_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !end

.pattern7_5
  db 24
  !rest
  db 12,$6E
  !g5
  !as5
  db 72
  !c6
  !tie
  db 24
  !ds6
  db 96
  !c6
  db 72
  !tie
  !end

.pattern8_0
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7E
  !ds3
  db 12,$6E
  !ds3
  db 12,$7A
  !ds4
  db 12,$6E
  !ds3
  !end

.pattern8_1
  !volume,240
  !instr,!instr00
  db 72,$6E
  !g5
  db 24
  !as5
  db 12
  !f5
  db 84
  !g5
  db 48
  !as5
  !gs5
  !g5
  db 12
  !f5
  db 36
  !ds5
  !end

.pattern8_2
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 6,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 6,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 6,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 6,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !end

.pattern8_3
  db 12,$6E
  !ds5
  !g5
  !as5
  !g5
  !ds5
  !g5
  !as5
  !g5
  !ds5
  !g5
  !as5
  !g5
  !ds5
  !g5
  !as5
  !g5
  !ds5
  !g5
  !as5
  !g5
  !ds5
  !g5
  !as5
  !g5
  !ds5
  !g5
  !as5
  !g5
  !ds5
  !g5
  !as5
  !g5
  !end

.pattern8_4
  db 96,$6E
  !g4
  !g4
  db 12
  !g4
  !g4
  !g4
  !g4
  !g4
  !g4
  db 24
  !g4
  db 12
  !g4
  !g4
  !g4
  !g4
  db 24
  !g4
  db 12
  !g4
  !g4
  !end

.pattern8_5
  !volume,120
  !instr,!instr00
  db 24
  !rest
  db 72,$6E
  !g5
  db 24
  !as5
  db 12
  !f5
  db 84
  !g5
  db 48
  !as5
  !gs5
  !g5
  db 12
  !f5
  !ds5
  !end

.pattern9_0
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  !end

.pattern9_1
  db 72,$6E
  !c5
  db 24
  !a4
  db 12
  !c5
  db 84
  !f5
  db 24
  !c6
  !as5
  !a5
  db 12
  !d6
  !c6
  db 96
  !tie
  !end

.pattern9_2
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 6,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 6,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 6,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18,$6E
  %percNote(!instr12-!instr12)
  db 6,$7E
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern9_3
  db 12,$6E
  !f5
  !a5
  !c6
  !a5
  !f5
  !a5
  !c6
  !a5
  !f5
  !a5
  !c6
  !a5
  !f5
  !a5
  !c6
  !a5
  !f5
  !a5
  !c6
  !a5
  !f5
  !a5
  !c6
  !a5
  !f5
  !a5
  !c6
  !a5
  !f5
  !a5
  !c6
  !a5
  !end

.pattern9_4
  db 96,$6E
  !a4
  !a4
  db 12
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  db 24
  !a4
  db 12
  !a4
  !a4
  !a4
  !a4
  db 24
  !a4
  db 12
  !a4
  !a4
  !end

.pattern9_5
  db 24
  !rest
  db 72,$6E
  !c5
  db 24
  !a4
  db 12
  !c5
  db 84
  !f5
  db 24
  !c6
  !as5
  !a5
  db 12
  !d6
  !c6
  db 72
  !tie
  !end

.pattern10_0
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !f3
  db 12,$6E
  !f3
  db 12,$7E
  !g3
  db 12,$6E
  !g3
  db 12,$7E
  !g3
  db 12,$6E
  !g3
  db 12,$7E
  !g3
  db 12,$6E
  !g3
  db 12,$7E
  !g3
  db 12,$6E
  !g3
  db 12,$7E
  !gs3
  db 12,$6E
  !gs3
  db 12,$7E
  !gs3
  db 12,$6E
  !as3
  db 12,$7E
  !as3
  db 12,$6E
  !as3
  db 12,$7E
  !d3
  db 12,$6A
  !d4
  !end

.pattern10_1
  db 72,$6E
  !c5
  db 24
  !d5
  db 12
  !ds5
  db 60
  !f5
  db 24
  !gs5
  db 96
  !b5
  db 36
  !c6
  !d6
  db 24
  !ds6
  !end

.pattern10_2
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 6,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18,$6E
  %percNote(!instr12-!instr12)
  db 6,$7E
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern10_3
  db 12,$6E
  !f5
  !gs5
  !c6
  !gs5
  !f5
  !gs5
  !c6
  !gs5
  !f5
  !gs5
  !c6
  !gs5
  !f5
  !gs5
  !c6
  !gs5
  !g5
  !b5
  !d6
  !b5
  !g5
  !b5
  !d6
  !b5
  !gs5
  !c6
  !ds6
  !d6
  !as5
  !d6
  !ds6
  !gs6
  !end

.pattern10_4
  db 96,$6E
  !gs4
  !gs4
  db 24
  !b4
  db 12
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  db 24
  !c5
  db 12
  !c5
  db 24
  !d5
  db 12
  !d5
  db 24
  !gs5
  !end

.pattern10_5
  db 24
  !rest
  db 72,$6E
  !c5
  db 24
  !d5
  db 12
  !ds5
  db 60
  !f5
  db 24
  !gs5
  db 96
  !b5
  db 36
  !c6
  !d6
  !end

.pattern11_0
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 24,$6E
  !as2
  db 12,$7E
  !as2
  db 12,$6E
  !as2
  db 12,$7E
  !as2
  !f2
  db 12,$6E
  !f2
  db 12,$7E
  !f2
  db 12,$6E
  !fs2
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !b2
  !end

.pattern11_1
  !instr,!instr03
  db 36,$6E
  !c6
  db 24
  !d6
  db 36
  !as5
  !c6
  db 48
  !as5
  db 12
  !c6
  !end

.pattern11_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !end

.pattern11_3
  db 12,$6E
  !c5
  !c5
  !ds5
  !c5
  !c5
  !g5
  !c5
  !c5
  !c5
  !c5
  !ds5
  !c5
  !c5
  !g5
  !c5
  !c5
  !end

.pattern11_4
  db 36,$7E
  !g5
  db 24
  !d6
  db 36
  !as5
  !c6
  db 60
  !as5
  !end

.pattern11_5
  !instr,!instr03
  db 24
  !rest
  db 36,$6E
  !c6
  db 24
  !d6
  db 36
  !as5
  !c6
  !as5
  !end

.pattern12_0
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 24
  !as2
  db 12
  !as2
  db 12,$6E
  !as2
  db 12,$7E
  !as2
  !f2
  db 12,$6E
  !f2
  db 12,$7E
  !f2
  db 12,$6E
  !f2
  db 12,$7E
  !f2
  db 12,$6E
  !f2
  db 12,$7E
  !f2
  db 12,$6E
  !f2
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g3
  db 12,$6E
  !g2
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6A
  !c4
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6A
  !c4
  db 24,$7E
  !c3
  db 12
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 24
  !as2
  db 12,$6E
  !as2
  db 24,$7E
  !c3
  !end

.pattern12_1
  db 36,$6E
  !c6
  db 24
  !d6
  db 36
  !as5
  db 96
  !c6
  db 72
  !d6
  db 24
  !g6
  db 96,$7E
  !c6
  db 96,$6E
  !c5
  db 12
  !g5
  !as5
  !c6
  db 24
  !ds6
  db 36
  !c6
  !end

.pattern12_2
  db 12,$6E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,96,0
  %percNote(!instr14-!instr12)
  !g5
  !fs5
  !f5
  !e5
  !ds5
  !d5
  !cs5
  !c5
  !b4
  !as4
  !a4
  !gs4
  !g4
  !fs4
  !f4
  !pan,10
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern12_3
  db 12,$6E
  !g4
  !as4
  !c5
  db 24
  !ds5
  !c5
  db 12
  !as4
  db 96
  !c5
  !d5
  db 12
  !g4
  !as4
  !c5
  db 24
  !ds5
  !c5
  db 12
  !as4
  !tie
  db 24
  !c5
  db 12
  !as5
  db 24
  !as5
  !c5
  db 12
  !g4
  !as4
  !c5
  db 24
  !ds5
  db 36
  !c5
  !end

.pattern12_4
  db 36,$7E
  !g5
  db 24
  !d6
  db 36
  !as5
  !c6
  db 60
  !as5
  db 36
  !c6
  db 60
  !as5
  db 36
  !c6
  db 60
  !as5
  db 96
  !g5
  db 12,$6E
  !c5
  !c5
  !c5
  db 36,$7E
  !as4
  db 24
  !c5
  !end

.pattern12_5
  db 24
  !rest
  db 36,$6E
  !c6
  db 24
  !d6
  db 36
  !as5
  db 96
  !c6
  db 72
  !d6
  db 24
  !g6
  db 96,$7E
  !c6
  db 96,$6E
  !c5
  db 12
  !g5
  !as5
  !c6
  db 24
  !ds6
  db 12
  !c6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
