asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr03 = $19
!instr04 = $1A
!instr06 = $1B
!instr07 = $1C
!instr12 = $1D
!instr13 = $1E
!instr14 = $1F

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$EB,$B8,$02,$00
  db !instr01,$FF,$F1,$B8,$0C,$00
  db !instr02,$FF,$E5,$B8,$0E,$00
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr06,$FF,$E7,$B8,$0D,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1035
  dw Sample01,Sample01+243
  dw Sample02,Sample02+522
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample06,Sample06+324
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock !p_songSpecificData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample01: incbin "Sample01.brr"
  Sample02: incbin "Sample02.brr"
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
  Sample06: incbin "Sample06.brr"
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
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,36
  db 12,$7E
  %percNote(!instr13-!instr12)
  !pan,18
  db 6
  %percNote(!instr14-!instr12)
  !pan,12
  !e5
  !pan,8
  db 12
  !d5
  !pan,10
  %percNote(!instr13-!instr12)
  !pan,18
  db 6
  %percNote(!instr14-!instr12)
  !pan,12
  !b4
  !pan,8
  !g4
  !f4
  !pan,10
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  !pan,12
  db 6
  %percNote(!instr14-!instr12)
  !pan,12
  !a4
  !pan,8
  db 12
  !f4
  !pan,10
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,72,0
  db 6
  %percNote(!instr14-!instr12)
  %percNote(!instr14-!instr12)
  db 12
  !c5
  !c5
  !d5
  !d5
  !e5
  !pan,10
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern0_1
  !volume,220
  !instr,!instr04
  db 36,$7E
  !d2
  db 60
  !a2
  !pitchSlide,18,12 : !e2
  db 12
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  !e2
  db 18,$7E
  !e2
  db 6,$6E
  !e2
  db 12,$7E
  !e2
  !e2
  db 6,$6E
  !e2
  !e2
  db 12,$7E
  !e3
  !e2
  db 6,$6E
  !e2
  !e2
  db 18,$7E
  !e2
  db 6,$6E
  !e2
  db 12,$7E
  !e2
  !e2
  db 6,$6E
  !e2
  !e2
  db 12,$7E
  !e3
  !a2
  db 6,$6E
  !a2
  !c3
  db 18,$7E
  !a2
  db 6,$6E
  !a2
  db 12,$7E
  !a2
  !a2
  db 6,$6E
  !a2
  !a2
  db 12,$7E
  !e3
  !a2
  db 6,$6E
  !a2
  !c3
  db 18,$7E
  !a2
  db 6,$6E
  !a2
  db 12,$7E
  !a2
  !a2
  db 6,$6E
  !a2
  !a2
  db 12,$7E
  !e3
  !a2
  db 6,$6E
  !a2
  !a2
  db 18,$7E
  !a2
  db 6,$6E
  !a2
  db 12,$7E
  !a2
  !a2
  db 6,$6E
  !a2
  !a2
  db 12,$7E
  !e3
  !a2
  db 6,$6E
  !a2
  !a2
  db 18,$7E
  !a2
  db 6,$6E
  !a2
  db 12,$7E
  !c2
  !d2
  db 6,$6E
  !e2
  !a2
  !g2
  !a2
  !end

.pattern0_2
  !instr,!instr01
  !vibrato,48,25,65
  db 36,$7E
  !d3
  !pitchSlide,18,18 : !d2
  db 60
  !a3
  !pitchSlide,30,30 : !a2
  db 96
  !b4
  !pitchSlide,48,48 : !d4
  !instr,!instr01
  db 12
  !a2
  db 24
  !e3
  !pitchSlide,12,12 : !e2
  db 36
  !g3
  !pitchSlide,18,18 : !g2
  db 24
  !a3
  !pitchSlide,12,12 : !a2
  db 12
  !a2
  db 24
  !e3
  !pitchSlide,12,12 : !e2
  db 36
  !g3
  !pitchSlide,18,18 : !g2
  db 24
  !a3
  !pitchSlide,12,12 : !a2
  !instr,!instr07
  db 96,$69
  !a5
  db 48
  !c5
  !d5
  !e5
  !g4
  db 6
  !c4
  !a4
  db 12
  !d5
  !e5
  !g5
  !a5
  !c6
  !d6
  !e6
  !end

.pattern0_3
  !pan,9
  !instr,!instr03
  !vibrato,48,25,65
  db 36,$67
  !d5
  db 60
  !a5
  db 96
  !b6
  !instr,!instr01
  db 12,$7E
  !a2
  db 24
  !e3
  db 36
  !g3
  db 24
  !a3
  db 12
  !a2
  db 24
  !e3
  db 36
  !g3
  db 24
  !a3
  !instr,!instr07
  db 96,$69
  !a4
  db 48
  !c4
  !d4
  !e4
  !g3
  db 6
  !c3
  !a3
  db 12
  !d4
  !e4
  !g4
  !a4
  !c5
  !d5
  !e5
  !end

.pattern0_4
  !volume,150
  !subtranspose,55
  db 24
  !rest
  !pan,5
  !instr,!instr03
  !vibrato,48,25,65
  db 36,$67
  !d5
  db 60
  !a5
  db 96
  !b6
  !instr,!instr01
  db 12,$7E
  !a2
  db 24
  !e3
  db 36
  !g3
  db 24
  !a3
  db 12
  !a2
  db 24
  !e3
  db 36
  !g3
  db 24
  !a3
  !instr,!instr07
  db 96,$69
  !a4
  db 48
  !c4
  !d4
  !e4
  !g3
  db 6
  !c3
  !a3
  db 12
  !d4
  !e4
  !g4
  !a4
  !c5
  !end

.pattern0_5
  !volume,150
  !subtranspose,42
  !pan,14
  db 24
  !rest
  !instr,!instr01
  !vibrato,48,25,65
  db 36,$7E
  !d3
  !pitchSlide,18,18 : !d2
  db 60
  !a3
  !pitchSlide,30,30 : !a2
  db 96
  !b4
  !pitchSlide,48,48 : !d4
  !instr,!instr01
  db 12
  !a2
  db 24
  !e3
  !pitchSlide,12,12 : !e2
  db 36
  !g3
  !pitchSlide,18,18 : !g2
  db 24
  !a3
  !pitchSlide,12,12 : !a2
  db 12
  !a2
  db 24
  !e3
  !pitchSlide,12,12 : !e2
  db 36
  !g3
  !pitchSlide,18,18 : !g2
  db 24
  !a3
  !pitchSlide,12,12 : !a2
  !instr,!instr07
  db 96,$69
  !a5
  db 48
  !c5
  !d5
  !e5
  !g4
  db 6
  !c4
  !a4
  db 12
  !d5
  !e5
  !g5
  !a5
  !c6
  !end

.pattern1_0
  db 24,$7E
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
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
  !end

.pattern1_1
  db 12,$7E
  !a2
  db 6,$6E
  !a2
  !a2
  db 18,$7E
  !a2
  db 6,$6E
  !a2
  db 12,$7E
  !a2
  !a2
  db 6,$6E
  !a2
  !a2
  db 12,$7E
  !e3
  !a2
  db 6,$6E
  !a2
  !a2
  db 18,$7E
  !a2
  db 6,$6E
  !a2
  db 12,$7E
  !a2
  !a2
  db 6,$6E
  !a2
  !a2
  db 12,$7E
  !e3
  !f2
  db 6,$6E
  !f2
  !f2
  db 18,$7E
  !f2
  db 6,$6E
  !f2
  db 12,$7E
  !f2
  !f2
  db 6,$6E
  !f2
  !f2
  db 12,$7E
  !f3
  !f2
  db 6,$6E
  !f2
  !f2
  db 18,$7E
  !f2
  db 6,$6E
  !f2
  db 12,$7E
  !f2
  !f2
  db 6,$6E
  !f2
  !f2
  db 12,$7E
  !f3
  !g2
  db 6,$6E
  !g2
  !g2
  db 18,$7E
  !g2
  db 6,$6E
  !g2
  db 12,$7E
  !g2
  !g2
  db 6,$6E
  !g2
  !d2
  db 12,$7E
  !b2
  !g2
  db 6,$6E
  !g2
  !g2
  db 18,$7E
  !g2
  db 6,$6E
  !g2
  db 12,$7E
  !g2
  !g2
  db 6,$6E
  !g2
  !d2
  db 12,$7E
  !b2
  !e2
  db 6,$6E
  !e2
  !e2
  db 18,$7E
  !e2
  db 6,$6E
  !e2
  db 12,$7E
  !e2
  !e2
  db 6,$6E
  !e2
  !e2
  db 12,$7E
  !e2
  !e2
  db 6,$6E
  !e2
  !e2
  db 18,$7E
  !e2
  db 6,$6E
  !e2
  db 12,$7E
  !e2
  !e2
  db 6,$6E
  !e2
  !e2
  db 12,$7E
  !e2
  !f3
  db 6,$6E
  !f2
  !f2
  db 18,$7E
  !f2
  db 6,$6E
  !f2
  db 12,$7E
  !f2
  !f2
  db 6,$6E
  !f2
  !f2
  db 12,$7E
  !f3
  !f3
  db 6,$6E
  !f2
  !f2
  db 18,$7E
  !f2
  db 6,$6E
  !f2
  db 12,$7E
  !f2
  !f2
  db 6,$6E
  !f2
  !f2
  db 12,$7E
  !f3
  !d3
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 6
  !d3
  !d3
  db 12,$7E
  !d3
  !d3
  db 6,$6E
  !d3
  !d3
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 6
  !d3
  !d3
  db 12,$7E
  !d3
  !e3
  db 6,$6E
  !e3
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 6
  !e3
  !e3
  db 12,$7E
  !e3
  !e3
  db 6,$6E
  !e3
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 6
  !e3
  !e3
  db 12,$7E
  !e3
  !e3
  db 6,$6E
  !e3
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 6
  !e3
  !e3
  db 12,$7E
  !e3
  !end

.pattern1_2
  !volume,240
  !instr,!instr07
  !vibrato,50,22,70
  db 48,$6E
  !c5
  db 12
  !e5
  db 24
  !a5
  db 12
  !d5
  db 24
  !e5
  db 12
  !d5
  !g5
  db 24
  !c5
  db 6
  !e5
  !d5
  db 12
  !a4
  db 96
  !tie
  db 36
  !e4
  !g4
  db 24
  !a4
  db 48
  !g4
  db 12
  !a5
  db 24
  !e5
  db 12
  !c5
  db 48
  !d5
  db 24
  !d5
  db 12
  !a5
  !g4
  db 48
  !e4
  !c5
  db 12
  !f4
  !gs4
  !e4
  !d4
  !c4
  !f4
  !g4
  !a4
  db 48
  !tie
  !f4
  !tie
  db 12
  !d4
  !c4
  !e4
  !a4
  db 24
  !tie
  db 12
  !a4
  !d4
  !c4
  !a4
  db 24
  !c4
  db 36
  !d4
  db 12
  !a4
  db 24
  !a4
  db 12
  !a4
  !c5
  db 96
  !tie
  db 48
  !e5
  db 24
  !b5
  db 12
  !a5
  !e5
  db 96
  !tie
  !end

.pattern1_3
  !volume,180
  !instr,!instr01
  !pan,6
  db 24,$6E
  !e4
  db 12
  !a4
  db 24
  !c4
  db 12
  !d4
  db 24
  !a3
  !e4
  db 12
  !a4
  db 24
  !c4
  db 12
  !d4
  db 24
  !a3
  !f4
  db 12
  !a3
  db 24
  !c4
  db 12
  !f4
  db 24
  !a3
  db 36,$5E
  !e4
  !g4
  db 24
  !a4
  db 24,$6E
  !b3
  db 12
  !g3
  db 24
  !c4
  db 12
  !d4
  db 24
  !b3
  !b3
  db 12
  !g3
  db 24
  !c4
  db 12
  !d4
  db 24
  !b3
  !e4
  db 12
  !gs4
  db 24
  !b3
  db 12
  !d4
  db 24
  !gs3
  !e4
  db 12
  !gs4
  db 24
  !b3
  db 12
  !d4
  db 24
  !gs3
  db 48
  !a4
  !a4
  !tie
  db 12
  !d4
  !c4
  !e4
  !a4
  db 36
  !a4
  !d4
  db 24
  !fs3
  db 36
  !a4
  !d4
  db 24
  !fs3
  !pan,15
  db 36
  !b4
  !a4
  db 24
  !e4
  !pan,5
  db 36
  !b4
  !a4
  db 24
  !e4
  db 36
  !b4
  !gs4
  db 24
  !e4
  !end

.pattern1_4
  !pan,10
  !instr,!instr02
  !subtranspose,0
  !vibrato,48,25,70
  !volume,200
  db 96,$7E
  !e3
  !a3
  !c3
  !f3
  !g3
  !d3
  !b3
  !e3
  !c3
  !f3
  !a3
  !d3
  !e3
  !b3
  db 36
  !b3
  !gs3
  db 24
  !e3
  !end

.pattern1_5
  !pan,20
  !volume,130
  !instr,!instr07
  db 24
  !rest
  !vibrato,50,22,70
  db 48,$6E
  !c5
  db 12
  !e5
  db 24
  !a5
  db 12
  !d5
  db 24
  !e5
  db 12
  !d5
  !g5
  db 24
  !c5
  db 6
  !e5
  !d5
  db 12
  !a4
  db 96
  !tie
  db 36
  !e4
  !g4
  db 24
  !a4
  db 48
  !g4
  db 12
  !a5
  db 24
  !e5
  db 12
  !c5
  db 48
  !d5
  db 24
  !d5
  db 12
  !a5
  !g4
  db 48
  !e4
  !c5
  db 12
  !f4
  !gs4
  !e4
  !d4
  !c4
  !f4
  !g4
  !a4
  db 48
  !tie
  !f4
  !tie
  db 12
  !d4
  !c4
  !e4
  !a4
  db 24
  !tie
  db 12
  !a4
  !d4
  !c4
  !a4
  db 24
  !c4
  db 36
  !d4
  db 12
  !a4
  db 24
  !a4
  db 12
  !a4
  !c5
  db 96
  !tie
  db 48
  !e5
  db 24
  !b5
  db 12
  !a5
  !e5
  db 72
  !tie
  !end

.pattern2_0
  !pan,15
  db 12,$7E
  %percNote(!instr14-!instr12)
  db 6
  %percNote(!instr14-!instr12)
  %percNote(!instr14-!instr12)
  !pan,12
  db 12
  !b4
  db 6
  !b4
  !b4
  !pan,8
  db 12
  !g4
  db 6
  !g4
  !g4
  !pan,10
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern2_1
  db 12,$7E
  !b3
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !gs3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !d3
  db 12,$6E
  !e3
  !end

.pattern2_2
  db 36,$6E
  !gs4
  db 60
  !e5
  !end

.pattern2_3
  !pan,10
  !volume,230
  !instr,!instr03
  db 6,$6E
  !b4
  !g4
  !e4
  !e3
  !b4
  !gs4
  !e4
  !e3
  !e4
  !gs4
  !b4
  !gs4
  !e5
  !b5
  !e6
  !b6
  !end

.pattern2_4
  !pan,5
  !volume,110
  !instr,!instr03
  !subtranspose,40
  db 12
  !rest
  db 6,$6E
  !b4
  !g4
  !e4
  !e3
  !b4
  !gs4
  !e4
  !e3
  !e4
  !gs4
  !b4
  !gs4
  !e5
  !b5
  !end

.pattern2_5
  db 24
  !rest
  db 36,$6E
  !gs4
  !e5
  !end

.pattern3_0
  !pan,20
  !dynamicPan,72,0
  db 6,$7E
  %percNote(!instr14-!instr12)
  !d5
  db 12
  !d5
  !d5
  db 6
  !c5
  !c5
  !b4
  !b4
  !g4
  !g4
  !pan,10
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !end

.pattern3_1
  db 12,$7E
  !b3
  db 12,$6E
  !d3
  db 12,$7E
  !e3
  db 12,$6E
  !b3
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !gs3
  db 12,$6E
  !e3
  !end

.pattern3_2
  db 36,$6E
  !b5
  !e6
  db 24
  !gs6
  !pitchSlide,12,12 : !gs3
  !end

.pattern3_3
  !pan,10
  !volume,230
  !instr,!instr03
  db 6,$6E
  !e3
  !e4
  !gs4
  !b4
  !e3
  !e4
  !gs4
  !b4
  !e6
  !gs6
  !b5
  !gs5
  !e5
  !b4
  !e4
  !b3
  !end

.pattern3_4
  !pan,5
  !volume,110
  !instr,!instr03
  !subtranspose,40
  db 12
  !rest
  db 6,$6E
  !e3
  !e4
  !gs4
  !b4
  !e3
  !e4
  !gs4
  !b4
  !e6
  !gs6
  !b5
  !gs5
  !e5
  !b4
  !end

.pattern3_5
  db 24
  !rest
  db 36,$6E
  !b5
  !e6
  !end

.pattern4_0
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
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
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
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern4_1
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
  !a2
  db 12,$6E
  !a2
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
  !f2
  db 12,$6E
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f2
  db 12,$7E
  !f3
  db 12,$6E
  !f2
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
  !f2
  !f3
  db 12,$7E
  !f2
  db 12,$6E
  !f2
  db 12,$7E
  !f3
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e2
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
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g3
  db 12,$6E
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g3
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g3
  db 12,$6E
  !g2
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
  !e3
  db 12,$7E
  !e2
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
  !e3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !e3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
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
  !d3
  db 12,$6E
  !b2
  !end

.pattern4_2
  db 96,$6E
  !a5
  db 72
  !tie
  db 12
  !a5
  !c5
  db 24
  !d5
  db 12
  !d5
  !b4
  db 24
  !d5
  db 12
  !g5
  !b5
  db 24
  !e5
  db 12
  !d5
  !d5
  db 24
  !g5
  db 12
  !a5
  !b4
  db 96
  !tie
  db 12
  !f4
  !a4
  !b4
  !c5
  !d5
  db 36
  !f5
  db 12
  !tie
  !gs4
  !e5
  !f5
  !d5
  !f5
  db 24
  !b4
  db 12
  !b4
  !gs4
  db 24
  !e4
  db 12
  !e4
  !e4
  !gs4
  db 6
  !d5
  !e5
  db 12
  !g4
  !b4
  !g5
  !f5
  !d5
  !b4
  !a4
  !b4
  db 24
  !b5
  !g5
  !a5
  db 6
  !g5
  !a5
  !f5
  !b5
  db 96
  !tie
  db 36
  !e4
  !gs4
  db 24
  !e5
  db 36
  !b5
  !b5
  db 24
  !b5
  db 36
  !d6
  !d6
  db 24
  !d6
  db 96
  !gs6
  !pitchSlide,72,120 : !gs3
  !tie
  !end

.pattern4_3
  !volume,200
  !instr,!instr06
  !pan,10
  db 96,$6E
  !c4
  db 48
  !c4
  !a3
  db 96
  !g4
  db 48
  !g4
  !e4
  db 96
  !b4
  !f4
  !e4
  db 48
  !gs4
  !b4
  db 96
  !g4
  db 48
  !d4
  !g4
  db 96
  !e4
  db 48
  !e4
  !b3
  db 36
  !d4
  !d4
  db 24
  !d4
  db 36
  !b4
  !b4
  db 24
  !b4
  db 96
  !e5
  !pitchSlide,72,120 : !e3
  !tie
  !end

.pattern4_4
  !volume,100
  !instr,!instr06
  !pan,0
  db 24
  !rest
  !subtranspose,30
  db 96,$6E
  !c4
  db 48
  !c4
  !a3
  db 96
  !g4
  db 48
  !g4
  !e4
  db 96
  !b4
  !f4
  !e4
  db 48
  !gs4
  !b4
  db 96
  !g4
  db 48
  !d4
  !g4
  db 96
  !e4
  db 48
  !e4
  !b3
  db 36
  !d4
  !d4
  db 24
  !d4
  db 36
  !b4
  !b4
  db 24
  !b4
  db 96
  !e5
  !pitchSlide,72,120 : !e3
  db 72
  !tie
  !end

.pattern4_5
  db 24
  !rest
  db 96,$6E
  !a5
  db 72
  !tie
  db 12
  !a5
  !c5
  db 24
  !d5
  db 12
  !d5
  !b4
  db 24
  !d5
  db 12
  !g5
  !b5
  db 24
  !e5
  db 12
  !d5
  !d5
  db 24
  !g5
  db 12
  !a5
  !b4
  db 96
  !tie
  db 12
  !f4
  !a4
  !b4
  !c5
  !d5
  db 36
  !f5
  db 12
  !tie
  !gs4
  !e5
  !f5
  !d5
  !f5
  db 24
  !b4
  db 12
  !b4
  !gs4
  db 24
  !e4
  db 12
  !e4
  !e4
  !gs4
  db 6
  !d5
  !e5
  db 12
  !g4
  !b4
  !g5
  !f5
  !d5
  !b4
  !a4
  !b4
  db 24
  !b5
  !g5
  !a5
  db 6
  !g5
  !a5
  !f5
  !b5
  db 96
  !tie
  db 36
  !e4
  !gs4
  db 24
  !e5
  db 36
  !b5
  !b5
  db 24
  !b5
  db 36
  !d6
  !d6
  db 24
  !d6
  db 96
  !gs6
  !pitchSlide,72,120 : !gs3
  db 72
  !tie
  !end

.pattern5_0
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
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
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  !dynamicPan,36,0
  %percNote(!instr14-!instr12)
  !d5
  !d5
  !pan,10
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,36,0
  %percNote(!instr14-!instr12)
  !e5
  !e5
  !e5
  !c5
  !c5
  !dynamicPan,36,20
  !b4
  !b4
  !g4
  !g4
  !f4
  !f4
  !pan,10
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern5_1
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
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
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
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
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
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !g2
  db 12,$6E
  !g2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 12,$6E
  !e2
  db 12,$7E
  !e2
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
  !e3
  !e3
  !e3
  !e3
  !e3
  !e3
  !e3
  !e3
  !end

.pattern5_2
  !instr,!instr00
  db 96,$6B
  !a5
  db 48
  !a5
  !g5
  db 96
  !b5
  db 48
  !g5
  !d5
  db 96
  !fs5
  db 36
  !d5
  !c5
  db 24
  !a5
  db 96
  !f5
  db 36
  !g5
  !a5
  db 12
  !d6
  !e6
  db 48
  !a5
  !g5
  db 36
  !e5
  !f5
  db 12
  !g5
  !b5
  db 36
  !e6
  !d6
  db 12
  !gs5
  !d6
  db 48
  !gs6
  db 24
  !e6
  !d6
  db 72
  !b5
  db 24
  !gs5
  db 96
  !e5
  !volume,255
  !instr,!instr03
  db 12,$6E
  !d4
  !e3
  !gs3
  !b2
  !gs3
  !b3
  !b2
  !d3
  db 6
  !d2
  !e2
  !f2
  !gs3
  !d3
  !f3
  !b3
  !gs4
  !d4
  !e4
  !b4
  !d5
  !b5
  !gs5
  !b5
  !d6
  !end

.pattern5_3
  !volume,160
  !instr,!instr06
  db 96,$6E
  !a4
  !e4
  !g4
  !b3
  !d4
  !c4
  !f4
  db 36
  !g4
  db 6
  !a4
  !b4
  !c5
  !e5
  !d5
  !f5
  !e5
  !g5
  !b5
  !d5
  db 12
  !d5
  !g4
  !b4
  !d4
  !d5
  !g4
  !b4
  !d4
  !d5
  !g4
  !b4
  !d4
  !d5
  !g4
  !b4
  !d4
  db 18
  !gs4
  !b3
  db 12
  !e4
  db 18
  !gs4
  !b3
  db 12
  !e4
  db 18
  !gs4
  !b3
  db 12
  !e4
  db 18
  !gs4
  !b3
  db 12
  !e4
  !d4
  !e4
  !gs4
  !b3
  !gs4
  !b4
  !b3
  !d5
  !d4
  !e4
  !gs4
  !b3
  !gs4
  !b4
  !b3
  !d5
  !d4
  !e3
  !gs3
  !b2
  !gs3
  !b3
  !b2
  !d3
  db 6
  !d2
  !e2
  !f2
  !gs3
  !d3
  !f3
  !b3
  !gs4
  !d4
  !e4
  !b4
  !d5
  !b5
  !gs5
  !b5
  !d6
  !end

.pattern5_4
  !volume,90
  db 24
  !rest
  !instr,!instr06
  db 96,$6E
  !a4
  !e4
  !g4
  !b3
  !d4
  !c4
  !f4
  db 36
  !g4
  db 6
  !a4
  !b4
  !c5
  !e5
  !d5
  !f5
  !e5
  !g5
  !b5
  !d5
  db 12
  !d5
  !g4
  !b4
  !d4
  !d5
  !g4
  !b4
  !d4
  !d5
  !g4
  !b4
  !d4
  !d5
  !g4
  !b4
  !d4
  db 18
  !gs4
  !b3
  db 12
  !e4
  db 18
  !gs4
  !b3
  db 12
  !e4
  db 18
  !gs4
  !b3
  db 12
  !e4
  db 18
  !gs4
  !b3
  db 12
  !e4
  !d4
  !e4
  !gs4
  !b3
  !gs4
  !b4
  !b3
  !d5
  !d4
  !e4
  !gs4
  !b3
  !gs4
  !b4
  !b3
  !d5
  !d4
  !e3
  !gs3
  !b2
  !gs3
  !b3
  !b2
  !d3
  db 6
  !d2
  !e2
  !f2
  !gs3
  !d3
  !f3
  !b3
  !gs4
  !d4
  !e4
  !b4
  !d5
  !end

.pattern5_5
  db 24
  !rest
  !instr,!instr00
  db 96,$6B
  !a5
  db 48
  !a5
  !g5
  db 96
  !b5
  db 48
  !g5
  !d5
  db 96
  !fs5
  db 36
  !d5
  !c5
  db 24
  !a5
  db 96
  !f5
  db 36
  !g5
  !a5
  db 12
  !d6
  !e6
  db 48
  !a5
  !g5
  db 36
  !e5
  !f5
  db 12
  !g5
  !b5
  db 36
  !e6
  !d6
  db 12
  !gs5
  !d6
  db 48
  !gs6
  db 24
  !e6
  !d6
  db 72
  !b5
  db 24
  !gs5
  db 96
  !e5
  !volume,155
  !instr,!instr03
  db 12,$6E
  !d4
  !e3
  !gs3
  !b2
  !gs3
  !b3
  !b2
  !d3
  db 6
  !d2
  !e2
  !f2
  !gs3
  !d3
  !f3
  !b3
  !gs4
  !d4
  !e4
  !b4
  !d5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
