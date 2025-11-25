asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr03 = $18
!instr04 = $19
!instr07 = $1A
!instr12 = $1B
!instr13 = $1C
!instr14 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$F1,$B8,$0C,$00
  db !instr02,$FF,$E5,$B8,$0E,$00
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+243
  dw Sample02,Sample02+522
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample02: incbin "Sample02.brr"
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
-
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,35
  !pan,10
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 4
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern0_1
  !volume,220
  !instr,!instr04
  db 8,$7E
  !b2
  db 8,$6E
  !e2
  db 8,$7E
  !e3
  db 8,$6E
  !b2
  db 8,$7E
  !e2
  db 8,$6E
  !e3
  db 8,$7E
  !b2
  db 8,$6E
  !e2
  db 8,$7E
  !e3
  db 8,$6E
  !b2
  db 8,$7E
  !e2
  db 8,$6E
  !e3
  db 8,$7E
  !b2
  db 8,$6E
  !e2
  db 8,$7E
  !e3
  db 8,$6E
  !b2
  db 8,$7E
  !e2
  db 8,$6E
  !e3
  db 8,$7E
  !b2
  db 8,$6E
  !e2
  db 8,$7E
  !e3
  db 8,$6E
  !b2
  db 8,$7E
  !e2
  db 8,$6E
  !e3
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !c3
  db 8,$7E
  !d3
  db 8,$6E
  !e3
  db 8,$7E
  !g3
  db 8,$6E
  !b3
  !end

.pattern0_2
  !volume,240
  !instr,!instr01
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !e5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !d5
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !c5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !b4
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !e5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !d5
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !c5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !b4
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !e5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !d5
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !c5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !b4
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !e5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !d5
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !c5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !b4
  !end

.pattern0_3
  !pan,20
  !subtranspose,1
  db 24
  !rest
  !volume,130
  !instr,!instr01
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !e5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !d5
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !c5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !b4
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !e5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !d5
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !c5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !b4
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !e5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !d5
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !c5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !b4
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !e5
  db 8,$6F
  !b3
  db 8,$7F
  !e4
  db 8,$6F
  !d5
  db 8,$7F
  !b3
  db 8,$6F
  !e4
  db 8,$7F
  !c5
  !end

.pattern0_4
  !endVibrato
  !volume,230
  !instr,!instr02
  db 96,$7E
  !b2
  !pitchSlide,1,191 : !b4
  !tie
  !b3
  !pitchSlide,1,191 : !b5
  !tie
  !end

.pattern0_5
  !volume,230
  !pan,10
  !instr,!instr02
  !subtranspose,20
  db 96,$7E
  !e2
  !pitchSlide,1,191 : !e4
  !tie
  !e3
  !pitchSlide,1,191 : !e5
  !tie
  !end

.pattern1_0
  db 16,$7E
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  !end

.pattern1_1
  !volume,225
  db 16,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 16
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 16
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 16
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 16
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 16
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 16
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 16
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$6E
  !c3
  !end

.pattern1_2
  !volume,230
  !instr,!instr03
  !vibrato,30,25,65
  db 48,$6E
  !e5
  !a5
  db 8
  !b5
  !g5
  !a5
  !d5
  !b5
  !g5
  db 16
  !g5
  db 8
  !g5
  !b5
  !d6
  !e6
  db 48
  !e6
  !fs6
  !g6
  !a5
  !pitchSlide,1,18 : !a6
  !g6
  db 16
  !g6
  !fs6
  !g6
  db 48
  !a6
  db 8
  !e6
  !rest
  !e6
  !d6
  !c6
  !b5
  !end

.pattern1_3
  !volume,120
  !subtranspose,40
  !instr,!instr03
  db 24
  !rest
  !vibrato,30,25,65
  db 48,$6E
  !e5
  !a5
  db 8
  !b5
  !g5
  !a5
  !d5
  !b5
  !g5
  db 16
  !g5
  db 8
  !g5
  !b5
  !d6
  !e6
  db 48
  !e6
  !fs6
  !g6
  !a5
  !pitchSlide,1,18 : !a6
  !g6
  db 16
  !g6
  !fs6
  !g6
  db 48
  !a6
  db 8
  !e6
  !rest
  db 8,$5E
  !e6
  !end

.pattern1_4
  !volume,230
  !vibrato,48,25,70
  !instr,!instr02
  db 96,$7E
  !b3
  !tie
  !a3
  !tie
  !g3
  !tie
  !end

.pattern1_5
  !subtranspose,0
  !volume,150
  !instr,!instr03
  !dynamicPan,96,20
  db 8,$6E
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !dynamicPan,96,0
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !dynamicPan,96,20
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !dynamicPan,96,0
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !dynamicPan,96,20
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !dynamicPan,96,0
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !end

.pattern2_0
  db 16,$7E
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern2_1
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !c3
  db 8,$7E
  !d3
  db 8,$6E
  !b2
  db 8,$7E
  !fs3
  db 8,$6E
  !b2
  !end

.pattern2_2
  db 48,$6E
  !b5
  !fs5
  db 8
  !b5
  !d5
  !fs5
  !b5
  !d5
  !fs5
  !b5
  !d5
  !fs5
  !b5
  !d5
  !fs5
  !end

.pattern2_3
  db 24
  !rest
  db 48,$6E
  !b5
  !fs5
  db 8
  !b5
  !d5
  !fs5
  !b5
  !d5
  !fs5
  !b5
  !d5
  !fs5
  !end

.pattern2_4
  db 96,$7E
  !fs3
  !tie
  !end

.pattern2_5
  !dynamicPan,96,20
  db 8,$6E
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !dynamicPan,96,0
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !end

.pattern3_0
  db 16,$7E
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8,$7F
  %percNote(!instr12-!instr12)
  db 8,$7E
  %percNote(!instr12-!instr12)
  db 8,$7F
  %percNote(!instr12-!instr12)
  db 16,$7E
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,48,0
  db 4
  %percNote(!instr14-!instr12)
  %percNote(!instr14-!instr12)
  db 8
  !d5
  !d5
  !b4
  !b4
  !g4
  !end

.pattern3_1
  db 16,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 16
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 16
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 16
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 16
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 16
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 16
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 16
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !c3
  db 8,$7E
  !d3
  db 8,$6E
  !b2
  db 8,$7E
  !fs3
  db 8,$6E
  !b2
  !end

.pattern3_2
  !instr,!instr03
  !vibrato,30,25,65
  db 48,$6E
  !e5
  !a5
  db 8
  !b5
  !g5
  !a5
  !d5
  !b5
  !g5
  db 16
  !g5
  db 8
  !g5
  !b5
  !d6
  !e6
  db 48
  !e6
  !fs6
  !g6
  db 48,$7E
  !a5
  !pitchSlide,1,18 : !a6
  db 96
  !b6
  !pitchSlide,72,24 : !b4
  !d7
  !pitchSlide,72,24 : !d5
  db 48,$6E
  !fs6
  !b6
  db 8
  !b5
  !d5
  !fs5
  !d6
  !fs5
  !a5
  !b5
  !d6
  !fs6
  !g6
  !a6
  !b6
  !end

.pattern3_3
  !subtranspose,40
  !instr,!instr03
  db 24
  !rest
  !vibrato,30,25,65
  db 48,$6E
  !e5
  !a5
  db 8
  !b5
  !g5
  !a5
  !d5
  !b5
  !g5
  db 16
  !g5
  db 8
  !g5
  !b5
  !d6
  !e6
  db 48
  !e6
  !fs6
  !g6
  db 48,$7E
  !a5
  !pitchSlide,1,18 : !a6
  db 96
  !b6
  !pitchSlide,72,24 : !b4
  !d7
  !pitchSlide,72,24 : !d5
  db 48,$6E
  !fs6
  !b6
  db 8
  !b5
  !d5
  !fs5
  !d6
  !fs5
  !a5
  !b5
  !d6
  !fs6
  !end

.pattern3_4
  db 96,$7E
  !b3
  !tie
  !a3
  !tie
  !g3
  !tie
  !fs3
  !tie
  !end

.pattern3_5
  !subtranspose,0
  !volume,150
  !instr,!instr03
  !dynamicPan,96,20
  db 8,$6E
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !dynamicPan,96,0
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !e6
  !g6
  !b6
  !dynamicPan,96,20
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !dynamicPan,96,0
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !d6
  !fs6
  !e6
  !dynamicPan,96,20
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !dynamicPan,96,0
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !c6
  !e6
  !g6
  !dynamicPan,96,20
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !dynamicPan,96,0
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !b6
  !d6
  !fs5
  !end

.pattern4_0
  !pan,10
  db 16,$7E
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,8,0
  db 4
  %percNote(!instr14-!instr12)
  !c5
  !pan,10
  db 8
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,8,0
  db 4
  %percNote(!instr14-!instr12)
  !c5
  !pan,10
  db 8
  !f5
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern4_1
  db 16,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 16
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 8,$6E
  !d3
  db 8,$7E
  !d3
  db 16
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 8,$6E
  !e3
  db 8,$7E
  !e3
  db 16
  !fs3
  db 8,$6E
  !fs3
  db 8,$7E
  !fs3
  db 8,$6E
  !fs3
  db 8,$7E
  !fs3
  db 16
  !a3
  db 8,$6E
  !a3
  db 8,$7E
  !a3
  db 8,$6E
  !a3
  db 8,$7E
  !a3
  db 16
  !a3
  db 8,$6E
  !a3
  db 8,$7E
  !a3
  db 8,$6E
  !a3
  db 8,$7E
  !a3
  db 16
  !g3
  db 8,$6E
  !g3
  db 8,$7E
  !g3
  db 8,$6E
  !g3
  db 8,$7E
  !g3
  db 16
  !g3
  db 8,$6E
  !g3
  db 8,$7E
  !g3
  db 8,$6E
  !g3
  db 8,$7E
  !g3
  db 16
  !fs3
  db 8,$6E
  !fs3
  db 8,$7E
  !fs3
  db 8,$6E
  !fs3
  db 8,$7E
  !fs3
  db 16
  !fs3
  db 8,$6E
  !fs3
  db 8,$7E
  !fs3
  db 8,$6E
  !fs3
  db 8,$7E
  !fs3
  db 16
  !fs3
  db 8,$6E
  !fs3
  db 8,$7E
  !fs3
  db 8,$6E
  !fs3
  db 8,$7E
  !fs3
  db 16
  !fs3
  db 8,$6E
  !fs3
  db 8,$7E
  !fs3
  db 8,$6E
  !fs3
  db 8,$7E
  !fs3
  !end

.pattern4_2
  !volume,255
  !instr,!instr07
  db 96,$6E
  !b5
  db 8
  !g5
  !a5
  !g5
  !b5
  !e5
  !g5
  !d5
  !b4
  !fs4
  !g4
  !d4
  !b4
  db 96,$7E
  !a4
  !pitchSlide,48,48 : !a3
  db 48,$6E
  !b4
  db 8
  !a4
  !g4
  !fs4
  !e4
  !g4
  !b4
  !c5
  !e5
  !a5
  !e5
  !d5
  !b4
  !c5
  !e5
  !a5
  !e5
  !d5
  !b4
  !b4
  !d5
  !g5
  !d5
  !c5
  !a4
  !b4
  !d5
  !g5
  !d5
  !c5
  !a4
  !fs4
  !a4
  !cs5
  !e5
  !d5
  !cs5
  !fs4
  !a4
  !cs5
  !e5
  !d5
  !cs5
  !instr,!instr02
  db 96
  !cs2
  !pitchSlide,48,48 : !cs5
  !end

.pattern4_3
  db 24
  !rest
  !volume,140
  !instr,!instr07
  db 96,$6E
  !b5
  db 8
  !g5
  !a5
  !g5
  !b5
  !e5
  !g5
  !d5
  !b4
  !fs4
  !g4
  !d4
  !b4
  db 96,$7E
  !a4
  !pitchSlide,48,48 : !a3
  db 48,$6E
  !b4
  db 8
  !a4
  !g4
  !fs4
  !e4
  !g4
  !b4
  !c5
  !e5
  !a5
  !e5
  !d5
  !b4
  !c5
  !e5
  !a5
  !e5
  !d5
  !b4
  !b4
  !d5
  !g5
  !d5
  !c5
  !a4
  !b4
  !d5
  !g5
  !d5
  !c5
  !a4
  !fs4
  !a4
  !cs5
  !e5
  !d5
  !cs5
  !fs4
  !a4
  !cs5
  !e5
  !d5
  !cs5
  !instr,!instr02
  db 72
  !cs2
  !pitchSlide,48,48 : !cs5
  !end

.pattern4_4
  !instr,!instr07
  db 96,$7E
  !b3
  !tie
  !a3
  db 48
  !b3
  !fs3
  db 96
  !e3
  !d3
  !fs3
  !tie
  !end

.pattern4_5
  !dynamicPan,96,20
  db 8,$6E
  !e5
  !g5
  !b5
  !e5
  !g5
  !b5
  !e5
  !g5
  !b5
  !e5
  !g5
  !b5
  !dynamicPan,96,0
  !e5
  !g5
  !b5
  !e5
  !g5
  !b5
  !e5
  !g5
  !b5
  !e5
  !g5
  !b5
  !dynamicPan,96,20
  !d5
  !fs5
  !a5
  !d5
  !fs5
  !a5
  !d5
  !fs5
  !a5
  !d5
  !fs5
  !a5
  !dynamicPan,96,0
  !e5
  !g5
  !b5
  !e5
  !g5
  !b5
  !fs5
  !a5
  !c6
  !fs5
  !a5
  !c6
  !dynamicPan,96,20
  !a5
  !c6
  !e6
  !a5
  !c6
  !e6
  !a5
  !c6
  !e6
  !a5
  !c6
  !e6
  !dynamicPan,96,0
  !g5
  !b5
  !d6
  !g5
  !b5
  !d6
  !g5
  !b5
  !d6
  !g5
  !b5
  !d6
  !dynamicPan,96,20
  !fs5
  !a5
  !cs6
  !fs5
  !a5
  !cs6
  !fs5
  !a5
  !cs6
  !fs5
  !a5
  !cs6
  !dynamicPan,96,0
  !fs5
  !a5
  !cs6
  !fs5
  !a5
  !cs6
  !fs5
  !a5
  !cs6
  !fs5
  !a5
  !cs6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
