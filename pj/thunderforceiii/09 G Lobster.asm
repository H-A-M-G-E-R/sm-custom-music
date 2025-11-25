asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr02 = $17
!instr04 = $18
!instr05 = $19
!instr06 = $1A
!instr07 = $1B
!instr12 = $1C
!instr13 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$EB,$B8,$02,$00
  db !instr02,$FF,$E5,$B8,$0E,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr05,$FF,$EE,$B8,$05,$00
  db !instr06,$FF,$E7,$B8,$0D,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1035
  dw Sample02,Sample02+522
  dw Sample04,Sample04+207
  dw Sample05,Sample05+351
  dw Sample06,Sample06+324
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample02: incbin "Sample02.brr"
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"
  Sample12: incbin "Sample12.brr"
  Sample13: incbin "Sample13.brr"

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
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,37
  db 18,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern0_1
  db 48
  !rest
  !end

.pattern0_2
  db 48
  !rest
  !end

.pattern0_3
  db 48
  !rest
  !end

.pattern0_4
  db 48
  !rest
  !end

.pattern0_5
  db 48
  !rest
  !end

.pattern1_0
  !tempo,37
  db 18,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern1_1
  !volume,230
  !instr,!instr04
  db 18,$7E
  !e2
  db 6,$6E
  !e2
  db 12
  !fs2
  db 12,$7E
  !e2
  db 12,$6E
  !g2
  db 12,$7E
  !e2
  db 12,$6E
  !a2
  !e2
  db 18,$7E
  !fs2
  db 6,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !ds2
  db 12,$7E
  !d2
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 18,$7E
  !e2
  db 6,$6E
  !e2
  db 12,$7E
  !fs2
  db 12,$6E
  !e2
  db 12,$7E
  !g2
  db 12,$6E
  !e2
  db 12,$7E
  !a2
  db 12,$6E
  !e2
  db 18,$7E
  !fs2
  db 6,$6E
  !ds2
  db 12,$7E
  !c3
  db 12,$6E
  !ds2
  db 12,$7E
  !ds3
  db 12,$6E
  !ds2
  db 24,$7E
  !a2
  db 18
  !e2
  db 6,$6E
  !e2
  db 12,$7E
  !fs2
  db 12,$6E
  !e2
  db 12,$7E
  !g2
  db 12,$6E
  !e2
  db 12,$7E
  !a2
  db 12,$6E
  !e2
  db 18,$7E
  !fs2
  db 6,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !ds2
  db 12,$7E
  !d2
  db 12,$6E
  !c3
  !c3
  db 12,$7E
  !c3
  db 18
  !e2
  db 6,$6E
  !e2
  db 12,$7E
  !fs2
  db 12,$6E
  !e2
  db 12,$7E
  !g2
  db 12,$6E
  !e2
  db 12,$7E
  !a2
  db 12,$6E
  !e2
  db 18,$7E
  !fs2
  db 6,$6E
  !ds2
  db 12,$7E
  !c3
  db 12,$6E
  !ds2
  db 12,$7E
  !ds3
  db 12,$6E
  !ds2
  db 24,$7E
  !a2
  !end

.pattern1_2
  !volume,240
  !vibrato,40,30,80
  !instr,!instr07
  db 96,$7E
  !a5
  !fs5
  !e5
  !ds5
  !a5
  !fs5
  !e5
  !ds5
  !end

.pattern1_3
  !pan,20
  !subtranspose,45
  !volume,140
  !vibrato,40,30,80
  !instr,!instr07
  db 24
  !rest
  db 96,$7E
  !a5
  !fs5
  !e5
  !ds5
  !a5
  !fs5
  !e5
  db 72
  !ds5
  !end

.pattern1_4
  !volume,220
  !pan,10
  !instr,!instr02
  db 96,$7E
  !a2
  !pitchSlide,1,95 : !a3
  !a3
  !pitchSlide,1,95 : !a4
  !a4
  !pitchSlide,1,95 : !a3
  !a3
  !pitchSlide,1,95 : !a2
  !a2
  !pitchSlide,1,95 : !a3
  !a3
  !pitchSlide,1,95 : !a4
  !a4
  !pitchSlide,1,95 : !a3
  !a3
  !pitchSlide,1,95 : !a2
  !end

.pattern1_5
  !volume,150
  !instr,!instr06
  !pan,5
  db 96,$6E
  !e5
  !ds5
  !e5
  !ds5
  !e5
  !ds5
  !e5
  !ds5
  !end

.pattern2_0
  db 18,$7E
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern2_1
  db 18,$7E
  !b2
  db 6,$6E
  !b2
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b2
  db 24
  !b2
  db 6,$6E
  !d3
  !d3
  db 18,$7E
  !b2
  db 6,$6E
  !b2
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b2
  db 24
  !b2
  db 6,$6E
  !d3
  !d3
  db 18,$7E
  !b2
  db 6,$6E
  !b2
  db 12,$4E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b2
  db 24
  !b2
  db 6,$6E
  !d3
  !d3
  db 18,$7E
  !b2
  db 6,$6E
  !b2
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b2
  db 24
  !b2
  db 6,$6E
  !d3
  !d3
  db 18,$7E
  !b2
  db 6,$6E
  !b2
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b2
  db 24
  !b2
  db 6,$6E
  !d3
  !d3
  db 18,$7E
  !b2
  db 6,$6E
  !b2
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b2
  db 24
  !b2
  db 6,$6E
  !d3
  !d3
  db 18,$7E
  !b2
  db 6,$6E
  !b2
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b2
  db 24
  !b2
  db 12,$6E
  !b2
  db 18,$7E
  !a2
  db 6,$6E
  !a2
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
  !end

.pattern2_2
  !instr,!instr07
  db 18,$6E
  !b4
  db 6
  !c5
  db 24
  !rest
  db 18
  !c5
  db 6
  !d5
  db 24
  !rest
  db 18
  !d5
  db 6
  !e5
  db 24
  !rest
  db 18
  !e5
  db 6
  !fs5
  db 24
  !rest
  db 18
  !b4
  db 6
  !c5
  db 24
  !rest
  db 18
  !c5
  db 6
  !d5
  db 24
  !rest
  db 18
  !d5
  db 6
  !e5
  db 24
  !rest
  db 18
  !e5
  db 6
  !fs5
  db 24
  !rest
  db 18
  !b4
  db 6
  !c5
  db 24
  !rest
  db 18
  !c5
  db 6
  !d5
  db 24
  !rest
  db 18
  !d5
  db 6
  !e5
  db 24
  !rest
  db 18
  !e5
  db 6
  !fs5
  db 24
  !rest
  db 18
  !b4
  db 6
  !c5
  db 24
  !rest
  db 18
  !c5
  db 6
  !d5
  db 24
  !rest
  db 18
  !b4
  db 6
  !c5
  db 24
  !rest
  db 18
  !a4
  db 6
  !b4
  db 24
  !b4
  !pitchSlide,1,23 : !b2
  !end

.pattern2_3
  db 24
  !rest
  !instr,!instr07
  db 18,$6E
  !b4
  db 6
  !c5
  db 24
  !rest
  db 18
  !c5
  db 6
  !d5
  db 24
  !rest
  db 18
  !d5
  db 6
  !e5
  db 24
  !rest
  db 18
  !e5
  db 6
  !fs5
  db 24
  !rest
  db 18
  !b4
  db 6
  !c5
  db 24
  !rest
  db 18
  !c5
  db 6
  !d5
  db 24
  !rest
  db 18
  !d5
  db 6
  !e5
  db 24
  !rest
  db 18
  !e5
  db 6
  !fs5
  db 24
  !rest
  db 18
  !b4
  db 6
  !c5
  db 24
  !rest
  db 18
  !c5
  db 6
  !d5
  db 24
  !rest
  db 18
  !d5
  db 6
  !e5
  db 24
  !rest
  db 18
  !e5
  db 6
  !fs5
  db 24
  !rest
  db 18
  !b4
  db 6
  !c5
  db 24
  !rest
  db 18
  !c5
  db 6
  !d5
  db 24
  !rest
  db 18
  !b4
  db 6
  !c5
  db 24
  !rest
  db 18
  !a4
  db 6
  !b4
  !end

.pattern2_4
  !pan,10
  !instr,!instr05
  !dynamicPan,96,0
  db 6,$6E
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  !dynamicPan,96,20
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  !dynamicPan,96,0
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  !dynamicPan,96,20
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  !dynamicPan,96,0
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  !dynamicPan,96,20
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  !dynamicPan,96,0
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  db 6
  !b3
  !b3
  db 12
  !b4
  !dynamicPan,96,20
  db 6
  !a3
  !a3
  db 12
  !a4
  db 6
  !a3
  !a3
  db 12
  !a4
  db 6
  !a3
  !a3
  db 12
  !a4
  db 6
  !a3
  !a3
  db 12
  !a4
  !end

.pattern2_5
  !pan,10
  !volume,200
  !instr,!instr00
  db 96,$7E
  !fs4
  !tie
  !fs4
  !tie
  !fs4
  !tie
  !fs4
  !e4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
