asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr04 = $18
!instr12 = $19
!instr13 = $1A
!instr14 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$F1,$B8,$0C,$00
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+243
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
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
  dw .pattern5
  dw .pattern4
  dw .pattern5
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,38
  !volume,210
  !instr,!instr04
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 24
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 24
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 24
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 24
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 24,$7E
  !c3
  db 24,$6E
  !c2
  !end

.pattern0_1
  !volume,200
  !instr,!instr03
  !vibrato,40,22,65
  db 12,$6E
  !a5
  !a5
  !a5
  db 24
  !b5
  db 12
  !d6
  !b5
  !g5
  db 48
  !a5
  !c6
  db 12
  !a5
  !a5
  !a5
  db 24
  !g5
  db 12
  !a5
  !b5
  !d6
  !e6
  !a5
  !d6
  !g5
  db 48
  !e5
  db 12
  !c5
  !c5
  !c5
  db 24
  !d5
  db 12
  !d5
  !d5
  !d5
  !e5
  !e5
  !e5
  !e5
  db 24
  !g5
  db 12
  !g5
  !g5
  !a5
  !a5
  !a5
  db 24
  !b5
  db 12
  !b5
  !b5
  !b5
  !a5
  !a5
  !b5
  !b5
  db 48,$7E
  !b6
  !pitchSlide,24,24 : !b5
  !end

.pattern0_2
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern0_3
  !volume,180
  !instr,!instr01
  db 12,$7E
  !e3
  !e3
  !e4
  db 24
  !d3
  db 12
  !d3
  !d4
  !d3
  !e4
  !e3
  !e4
  !e3
  db 24
  !g4
  !pitchSlide,12,12 : !a4
  !g4
  !pitchSlide,12,12 : !a4
  db 12
  !e3
  !e3
  !e4
  db 24
  !d3
  db 12
  !d3
  !d4
  !d3
  !e4
  !e3
  !e4
  !e3
  db 24
  !g4
  !pitchSlide,12,12 : !a4
  !g4
  !pitchSlide,12,12 : !a4
  db 12
  !e3
  !e3
  !e4
  db 24
  !d3
  db 12
  !d3
  !d4
  !d3
  !e4
  !e3
  !e4
  !e3
  db 24
  !g4
  !pitchSlide,12,12 : !a4
  !g4
  !pitchSlide,12,12 : !a4
  db 12
  !e3
  !e3
  !e4
  db 24
  !d3
  db 12
  !d3
  !d4
  !d3
  !e4
  !e3
  !e4
  !e3
  db 48
  !g4
  !pitchSlide,24,24 : !g3
  !end

.pattern0_4
  !volume,110
  !instr,!instr03
  db 24
  !rest
  !subtranspose,40
  !pan,20
  !vibrato,40,22,65
  db 12,$6E
  !a5
  !a5
  !a5
  db 24
  !b5
  db 12
  !d6
  !b5
  !g5
  db 48
  !a5
  !c6
  db 12
  !a5
  !a5
  !a5
  db 24
  !g5
  db 12
  !a5
  !b5
  !d6
  !e6
  !a5
  !d6
  !g5
  db 48
  !e5
  db 12
  !c5
  !c5
  !c5
  db 24
  !d5
  db 12
  !d5
  !d5
  !d5
  !e5
  !e5
  !e5
  !e5
  db 24
  !g5
  db 12
  !g5
  !g5
  !a5
  !a5
  !a5
  db 24
  !b5
  db 12
  !b5
  !b5
  !b5
  !a5
  !a5
  !b5
  !b5
  db 24,$7E
  !b6
  !pitchSlide,12,12 : !b5
  !end

.pattern0_5
  !volume,180
  !instr,!instr01
  db 12,$7E
  !a3
  !a3
  !a4
  db 24
  !g3
  db 12
  !g3
  !g4
  !g3
  !a4
  !a3
  !a4
  !a3
  !c5
  !d5
  db 24
  !c5
  !pitchSlide,12,12 : !d5
  db 12
  !a3
  !a3
  !a4
  db 24
  !g3
  db 12
  !g3
  !g4
  !g3
  !a4
  !a3
  !a4
  !a3
  !c5
  !d5
  db 24
  !c5
  !pitchSlide,12,12 : !d5
  db 12
  !a3
  !a3
  !a4
  db 24
  !g3
  db 12
  !g3
  !g4
  !g3
  !a4
  !a3
  !a4
  !a3
  !c5
  !d5
  db 24
  !c5
  !pitchSlide,12,12 : !d5
  db 12
  !a3
  !a3
  !a4
  db 24
  !g3
  db 12
  !g3
  !g4
  !g3
  !a4
  !a3
  !a4
  !a3
  db 48
  !c5
  !pitchSlide,24,24 : !c4
  !end

.pattern1_0
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 24
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 24
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !d3
  db 24
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 24,$7E
  !e2
  db 24,$6E
  !g2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 24
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 24
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !d3
  db 24
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 24
  !a2
  db 12,$6E
  !c3
  db 12,$7E
  !a2
  db 12,$6E
  !g2
  !end

.pattern1_1
  db 60,$6E
  !e5
  db 24
  !a5
  db 12
  !g5
  db 24
  !e5
  !d5
  db 48
  !c5
  db 24
  !d5
  db 18
  !e5
  !f5
  db 12
  !g5
  db 24
  !a5
  db 12
  !c6
  !b5
  !a5
  !g5
  db 48
  !a5
  db 60
  !e5
  db 24
  !a5
  db 12
  !b5
  db 24
  !c6
  !b5
  db 48
  !g5
  db 24
  !a5
  !d6
  db 12
  !e6
  !d6
  !c6
  !b5
  db 96
  !a5
  !end

.pattern1_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern1_3
  db 24,$6E
  !a4
  db 12
  !a3
  !a3
  !a3
  db 24
  !a4
  db 12
  !a3
  db 24
  !g4
  db 12
  !g3
  !g3
  !g3
  db 24
  !g4
  db 12
  !g3
  db 24
  !a4
  db 12
  !a3
  !a3
  !a3
  db 24
  !a4
  db 12
  !a3
  db 48
  !a4
  db 6
  !e4
  !e4
  !e4
  !e4
  db 12
  !a3
  !a3
  db 24
  !a4
  db 12
  !a3
  !a3
  !a3
  db 24
  !a4
  db 12
  !a3
  db 24
  !g4
  db 12
  !g3
  !g3
  !g3
  db 24
  !g4
  db 12
  !g3
  db 24
  !a4
  db 12
  !a3
  !a3
  !a3
  db 24
  !a4
  db 12
  !a3
  db 48
  !a4
  db 24,$7E
  !e4
  db 24,$6E
  !e3
  !end

.pattern1_4
  db 24
  !rest
  db 60,$6E
  !e5
  db 24
  !a5
  db 12
  !g5
  db 24
  !e5
  !d5
  db 48
  !c5
  db 24
  !d5
  db 18
  !e5
  !f5
  db 12
  !g5
  db 24
  !a5
  db 12
  !c6
  !b5
  !a5
  !g5
  db 48
  !a5
  db 60
  !e5
  db 24
  !a5
  db 12
  !b5
  db 24
  !c6
  !b5
  db 48
  !g5
  db 24
  !a5
  !d6
  db 12
  !e6
  !d6
  !c6
  !b5
  db 72
  !a5
  !end

.pattern1_5
  db 24,$6E
  !e4
  db 12
  !e3
  !e3
  !e3
  db 24
  !e4
  db 12
  !e3
  db 24
  !e4
  db 12
  !e3
  !e3
  !e3
  db 24
  !e4
  db 12
  !e3
  db 24
  !d4
  db 12
  !d3
  !d3
  !d3
  db 24
  !d4
  db 12
  !d3
  db 48
  !e4
  db 6
  !a4
  !a4
  !a4
  !a4
  db 12
  !c3
  !c3
  db 24
  !e4
  db 12
  !e3
  !e3
  !e3
  db 24
  !e4
  db 12
  !e3
  db 24
  !e4
  db 12
  !e3
  !e3
  !e3
  db 24
  !e4
  db 12
  !e3
  db 24
  !d4
  db 12
  !d3
  !d3
  !d3
  db 24
  !d4
  db 12
  !d3
  db 48
  !e4
  db 24,$7E
  !c4
  db 24,$6E
  !c3
  !end

.pattern2_0
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e3
  db 12,$6E
  !e2
  db 12,$7E
  !e3
  db 12,$6E
  !e2
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
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g3
  db 12,$6E
  !g2
  db 12,$7E
  !g3
  db 12,$6E
  !g2
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
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e3
  db 12,$6E
  !e2
  db 12,$7E
  !e3
  db 12,$6E
  !e2
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
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g3
  db 12,$6E
  !g2
  db 12,$7E
  !g3
  db 12,$6E
  !g2
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
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  !end

.pattern2_1
  db 48,$6E
  !e6
  db 12
  !b5
  !c6
  !d6
  !e6
  db 48
  !g6
  !e6
  db 36
  !d6
  !e6
  db 24
  !g6
  db 36
  !b6
  !g6
  db 24
  !d6
  db 96
  !b6
  db 48,$7E
  !e7
  !pitchSlide,24,24 : !e6
  !b6
  !pitchSlide,24,24 : !b5
  db 96,$6E
  !g6
  db 48
  !b6
  !d7
  !end

.pattern2_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern2_3
  db 12,$6E
  !e4
  !g4
  !b4
  !g4
  !e4
  !g4
  !b4
  !g4
  !e4
  !g4
  !b4
  !g4
  !e4
  !g4
  !b4
  !g4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !b4
  !e4
  !g4
  !b4
  !g4
  !e4
  !g4
  !b4
  !g4
  !e4
  !g4
  !b4
  !g4
  !e4
  !g4
  !b4
  !g4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !b4
  !end

.pattern2_4
  db 24
  !rest
  db 48,$6E
  !e6
  db 12
  !b5
  !c6
  !d6
  !e6
  db 48
  !g6
  !e6
  db 36
  !d6
  !e6
  db 24
  !g6
  db 36
  !b6
  !g6
  db 24
  !d6
  db 96
  !b6
  db 48,$7E
  !e7
  !pitchSlide,24,24 : !e6
  !b6
  !pitchSlide,24,24 : !b5
  db 96,$6E
  !g6
  db 48
  !b6
  db 24
  !d7
  !end

.pattern2_5
  db 48,$6E
  !e4
  db 12
  !b3
  !c4
  !d4
  !e4
  db 48
  !g4
  !e4
  db 36
  !d4
  !e4
  db 24
  !g4
  db 36
  !b4
  !g4
  db 24
  !d4
  db 96
  !b4
  db 24,$7E
  !e5
  db 24,$6E
  !e4
  db 24,$7E
  !b4
  db 24,$6E
  !b3
  db 96
  !g4
  db 48
  !b4
  !d5
  !end

.pattern3_0
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a3
  db 12,$6E
  !a2
  db 12,$7E
  !a3
  db 12,$6E
  !a2
  db 12,$7E
  !b2
  db 12,$6E
  !b3
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b3
  db 12,$6E
  !b2
  db 12,$7E
  !b3
  db 12,$6E
  !b2
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 12,$7E
  !ds3
  db 12,$6E
  !ds4
  db 12,$7E
  !ds3
  db 12,$6E
  !ds4
  db 12,$7E
  !ds3
  db 12,$6E
  !ds4
  db 12,$7E
  !ds3
  db 12,$6E
  !ds4
  db 12,$7E
  !e3
  db 12,$6E
  !e4
  db 12,$7E
  !e3
  db 12,$6E
  !e4
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !e4
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !e4
  db 12,$6E
  !e3
  db 12,$7E
  !e4
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e4
  !end

.pattern3_1
  db 48,$6E
  !e5
  db 16
  !c6
  !b5
  !a5
  db 48
  !b5
  db 24
  !c6
  !d6
  db 18
  !e6
  !d6
  db 12
  !c6
  db 18
  !g6
  !fs6
  db 12
  !e6
  db 36
  !fs6
  db 60
  !as6
  db 96
  !b6
  !pitchSlide,146,46 : !b5
  db 96,$78
  !tie
  !end

.pattern3_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
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

.pattern3_3
  db 12,$6E
  !c3
  !c4
  !c3
  !c3
  !c4
  !c3
  !c4
  !c4
  !ds3
  !ds4
  !ds3
  !ds3
  !ds4
  !ds3
  !ds4
  !ds4
  db 84
  !e4
  db 6
  !e4
  !e4
  db 24
  !ds4
  db 6
  !ds4
  !ds4
  !ds4
  !ds4
  db 24
  !fs4
  db 6
  !fs4
  !fs4
  !fs4
  !fs4
  db 96
  !g4
  db 96,$7E
  !g4
  !pitchSlide,48,48 : !g3
  !end

.pattern3_4
  db 24
  !rest
  db 48,$6E
  !e5
  db 16
  !c6
  !b5
  !a5
  db 48
  !b5
  db 24
  !c6
  !d6
  db 18
  !e6
  !d6
  db 12
  !c6
  db 18
  !g6
  !fs6
  db 12
  !e6
  db 36
  !fs6
  db 60
  !as6
  db 96
  !b6
  !pitchSlide,146,36 : !b5
  db 72,$78
  !tie
  !end

.pattern3_5
  db 12,$6E
  !a2
  !a3
  !a2
  !a2
  !a3
  !a2
  !a3
  !a3
  !b2
  !b3
  !b2
  !b2
  !b3
  !b2
  !b3
  !b3
  db 84
  !c4
  db 6
  !c4
  !c4
  db 24
  !as3
  db 6
  !as3
  !as3
  !as3
  !as3
  db 24
  !ds4
  db 6
  !ds4
  !ds4
  !ds4
  !ds4
  db 96
  !e4
  db 96,$7E
  !e4
  !pitchSlide,48,48 : !e3
  !end

.pattern4_0
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
  db 12,$6C
  !c3
  db 12,$7E
  !c4
  db 12,$6E
  !c3
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b3
  db 12,$6E
  !b2
  !end

.pattern4_1
  db 48,$6E
  !c4
  db 12
  !e4
  !c4
  !g4
  !e4
  db 24
  !fs4
  !d4
  db 12
  !b3
  !c4
  !d4
  !fs4
  !end

.pattern4_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !end

.pattern4_3
  db 12,$6E
  !e3
  !e3
  !e3
  db 24
  !e4
  db 12
  !e3
  db 24
  !e4
  db 12
  !d3
  !d3
  !d3
  db 24
  !d4
  db 12
  !d3
  db 24
  !d4
  !end

.pattern4_4
  db 24
  !rest
  db 48,$6E
  !c4
  db 12
  !e4
  !c4
  !g4
  !e4
  db 24
  !fs4
  !d4
  db 12
  !b3
  !c4
  !end

.pattern4_5
  db 12,$6E
  !g3
  !g3
  !g3
  db 24
  !g4
  db 12
  !g3
  db 24
  !g4
  db 12
  !fs3
  !fs3
  !fs3
  db 24
  !fs4
  db 12
  !fs3
  db 24
  !fs4
  !end

.pattern5_0
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a3
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a3
  db 12,$6E
  !a2
  db 12,$7E
  !a3
  db 12,$6E
  !b3
  !end

.pattern5_1
  db 36,$6E
  !e4
  db 12
  !d4
  !c4
  db 24
  !a3
  db 12
  !c4
  db 96
  !e4
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
  %percNote(!instr13-!instr12)
  !end

.pattern5_3
  db 12,$6E
  !c3
  !c3
  !c3
  db 24
  !c4
  db 12
  !c3
  db 24
  !c4
  !c4
  db 12
  !c3
  !c3
  !c4
  !c3
  !c4
  !d4
  !end

.pattern5_4
  db 24
  !rest
  db 36,$6E
  !e4
  db 12
  !d4
  !c4
  db 24
  !a3
  db 12
  !c4
  db 72
  !e4
  !end

.pattern5_5
  db 12,$6E
  !e3
  !e3
  !e3
  db 24
  !e4
  db 12
  !e3
  db 24
  !e4
  !e4
  db 12
  !e3
  !e3
  !e4
  !e3
  !e4
  !fs4
  !end

.pattern6_0
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
  !c4
  db 12,$6E
  !c3
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !d4
  db 12,$6E
  !d3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e4
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !e4
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
  !c4
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c4
  db 12,$6E
  !c3
  db 12,$7E
  !c4
  db 12,$6E
  !c4
  !end

.pattern6_1
  db 48,$6E
  !c4
  db 12
  !e4
  !c4
  !g4
  !e4
  db 24
  !fs4
  !d4
  db 12
  !b3
  !c4
  !d4
  !fs4
  db 96
  !e4
  db 84
  !tie
  db 4
  !e4
  !f4
  !fs4
  db 96
  !g4
  !tie
  !end

.pattern6_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
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
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,72,0
  db 3
  %percNote(!instr14-!instr12)
  !e5
  db 6
  !e5
  !ds5
  !ds5
  !d5
  !c5
  !c5
  !b4
  !b4
  !a4
  !a4
  !g4
  !pan,10
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern6_3
  db 12,$6E
  !e4
  !e4
  !e4
  db 24
  !e5
  db 12
  !e4
  db 24
  !e5
  db 12
  !d4
  !d4
  !d4
  db 24
  !d5
  db 12
  !d4
  db 24
  !d5
  db 96
  !e5
  db 12
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e5
  !e4
  !e4
  !e5
  !e4
  !e4
  !e4
  !e5
  !e4
  !e5
  !e5
  !end

.pattern6_4
  db 24
  !rest
  db 48,$6E
  !c4
  db 12
  !e4
  !c4
  !g4
  !e4
  db 24
  !fs4
  !d4
  db 12
  !b3
  !c4
  !d4
  !fs4
  db 96
  !e4
  db 84
  !tie
  db 4
  !e4
  !f4
  !fs4
  db 96
  !g4
  db 72
  !tie
  !end

.pattern6_5
  db 12,$6E
  !g4
  !g4
  !g4
  db 24
  !g5
  db 12
  !g4
  db 24
  !g5
  db 12
  !fs4
  !fs4
  !fs4
  db 24
  !fs5
  db 12
  !fs4
  db 24
  !fs5
  db 96
  !b4
  db 12
  !b3
  !b3
  !b3
  !b3
  !b3
  !b3
  !b3
  !b3
  !c4
  !c4
  !c4
  !c4
  !c4
  !c5
  !c4
  !c4
  !c5
  !c4
  !c4
  !c4
  !c5
  !c4
  !c5
  !c5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
