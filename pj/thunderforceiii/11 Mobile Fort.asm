asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr04 = $18
!instr07 = $19
!instr12 = $1A
!instr13 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$EB,$B8,$02,$00
  db !instr01,$FF,$F1,$B8,$0C,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1035
  dw Sample01,Sample01+243
  dw Sample04,Sample04+207
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
endspcblock

spcblock !p_songSpecificData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample01: incbin "Sample01.brr"
  Sample04: incbin "Sample04.brr"
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
-
  dw .pattern0
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,33
  db 12,$7E
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
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
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
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
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
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
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
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern0_1
  !volume,240
  !instr,!instr04
  db 12,$7E
  !e3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !a3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !g3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !fs3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !a3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !g3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !fs3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !a3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !g3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !fs3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !a3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !g3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !fs3
  db 12,$6E
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  !end

.pattern0_2
  !volume,255
  !instr,!instr07
  !vibrato,24,30,80
  db 48,$7E
  !c4
  !ds4
  db 36
  !e4
  db 60
  !fs4
  db 48
  !e4
  !fs4
  db 36
  !b4
  db 60
  !a4
  db 48
  !c4
  !ds4
  db 36
  !e4
  db 60
  !fs4
  db 48
  !e4
  !fs4
  db 36
  !b4
  db 60
  !a4
  !end

.pattern0_3
  !volume,145
  !pan,20
  !subtranspose,55
  !instr,!instr07
  db 24
  !rest
  !vibrato,24,30,80
  db 48,$7E
  !c4
  !ds4
  db 36
  !e4
  db 60
  !fs4
  db 48
  !e4
  !fs4
  db 36
  !b4
  db 60
  !a4
  db 48
  !c4
  !ds4
  db 36
  !e4
  db 60
  !fs4
  db 48
  !e4
  !fs4
  db 36
  !b4
  !a4
  !end

.pattern0_4
  !volume,180
  !instr,!instr01
  !dynamicPan,192,0
  db 12,$7E
  !e3
  db 12,$6E
  !e4
  db 12,$7E
  !e3
  db 12,$6E
  !ds4
  db 12,$7E
  !e3
  db 12,$6E
  !c4
  db 12,$7E
  !e3
  db 12,$6E
  !b3
  db 12,$7E
  !e4
  db 12,$6E
  !a4
  db 12,$7E
  !e4
  db 12,$6E
  !g4
  db 12,$7E
  !e4
  db 12,$6E
  !fs4
  db 12,$7E
  !ds4
  db 12,$6E
  !e4
  !dynamicPan,192,20
  db 12,$7E
  !e3
  db 12,$6E
  !e4
  db 12,$7E
  !e3
  db 12,$6E
  !ds4
  db 12,$7E
  !e3
  db 12,$6E
  !c4
  db 12,$7E
  !e3
  db 12,$6E
  !b3
  db 12,$7E
  !e4
  db 12,$6E
  !a4
  db 12,$7E
  !e4
  db 12,$6E
  !g4
  db 12,$7E
  !e4
  db 12,$6E
  !fs4
  db 12,$7E
  !ds4
  db 12,$6E
  !e4
  !dynamicPan,192,0
  db 12,$7E
  !e3
  db 12,$6E
  !e4
  db 12,$7E
  !e3
  db 12,$6E
  !ds4
  db 12,$7E
  !e3
  db 12,$6E
  !c4
  db 12,$7E
  !e3
  db 12,$6E
  !b3
  db 12,$7E
  !e4
  db 12,$6E
  !a4
  db 12,$7E
  !e4
  db 12,$6E
  !g4
  db 12,$7E
  !e4
  db 12,$6E
  !fs4
  db 12,$7E
  !ds4
  db 12,$6E
  !e4
  !dynamicPan,192,10
  db 12,$7E
  !e3
  db 12,$6E
  !e4
  db 12,$7E
  !e3
  db 12,$6E
  !ds4
  db 12,$7E
  !e3
  db 12,$6E
  !c4
  db 12,$7E
  !e3
  db 12,$6E
  !b3
  db 12,$7E
  !e4
  db 12,$6E
  !a4
  db 12,$7E
  !e4
  db 12,$6E
  !g4
  db 12,$7E
  !e4
  db 12,$6E
  !fs4
  db 12,$7E
  !ds4
  db 12,$6E
  !e4
  !end

.pattern0_5
  !volume,220
  !instr,!instr07
  db 96,$7E
  !e2
  !pitchSlide,1,95 : !e3
  !e3
  !pitchSlide,1,95 : !e5
  !e5
  !pitchSlide,1,95 : !e3
  !e3
  !pitchSlide,1,95 : !e2
  !e2
  !pitchSlide,1,95 : !e3
  !e3
  !pitchSlide,1,95 : !e5
  !e5
  !pitchSlide,1,95 : !e3
  !e3
  !pitchSlide,1,95 : !e2
  !end

.pattern1_0
  db 12,$7E
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern1_1
  db 18,$7E
  !d3
  db 18,$6E
  !d3
  db 12,$7E
  !d3
  db 18,$6E
  !d3
  db 18,$7E
  !d3
  db 12,$6E
  !d3
  db 18,$7E
  !c3
  db 18,$6E
  !c3
  db 12,$7E
  !c3
  db 18,$6E
  !c3
  db 18,$7E
  !c3
  db 12,$6E
  !c3
  db 18,$7E
  !b2
  db 18,$6E
  !b2
  db 12,$7E
  !b2
  db 18,$6E
  !b2
  db 18,$7E
  !b2
  db 12,$6E
  !b2
  db 18,$7E
  !a2
  db 18,$6E
  !a2
  db 12,$7E
  !a2
  db 18,$6E
  !a2
  db 18,$7E
  !a2
  db 12,$6E
  !a2
  db 18,$7E
  !d3
  db 18,$6E
  !d3
  db 12,$7E
  !d3
  db 18,$6E
  !d3
  db 18,$7E
  !d3
  db 12,$6E
  !d3
  db 18,$7E
  !c3
  db 18,$6E
  !c3
  db 12,$7E
  !c3
  db 18,$6E
  !c3
  db 18,$7E
  !c3
  db 12,$6E
  !c3
  db 18,$7E
  !b2
  db 18,$6E
  !b2
  db 12,$7E
  !b2
  db 18,$6E
  !b2
  db 18,$7E
  !b2
  db 12,$6E
  !b2
  db 18,$7E
  !a2
  db 18,$6E
  !a2
  db 12,$7E
  !a2
  db 18,$6E
  !a2
  db 18,$7E
  !a2
  db 12,$6E
  !a2
  !end

.pattern1_2
  !instr,!instr07
  db 18,$7E
  !d5
  db 18,$6E
  !e5
  db 12,$7E
  !fs5
  db 18,$6E
  !d5
  db 18,$7E
  !e5
  db 12,$6E
  !fs5
  db 18,$7E
  !c5
  db 18,$6E
  !d5
  db 12,$7E
  !g5
  db 18,$6E
  !c5
  db 18,$7E
  !d5
  db 12,$6E
  !g5
  db 18,$7E
  !b4
  db 18,$6E
  !c5
  db 12,$7E
  !fs5
  db 18,$6E
  !b4
  db 18,$7E
  !c5
  db 12,$6E
  !fs5
  db 18,$7E
  !a4
  db 18,$6E
  !b4
  db 12,$7E
  !a5
  db 18,$6E
  !a4
  db 18,$7E
  !b4
  db 12,$6E
  !a5
  db 18,$7E
  !d5
  db 18,$6E
  !e5
  db 12,$7E
  !fs5
  db 18,$6E
  !d5
  db 18,$7E
  !e5
  db 12,$6E
  !fs5
  db 18,$7E
  !c5
  db 18,$6E
  !d5
  db 12,$7E
  !g5
  db 18,$6E
  !c5
  db 18,$7E
  !d5
  db 12,$6E
  !g5
  db 18,$7E
  !b4
  db 18,$6E
  !c5
  db 12,$7E
  !fs5
  db 18,$6E
  !b4
  db 18,$7E
  !c5
  db 12,$6E
  !fs5
  db 18,$7E
  !a4
  db 18,$6E
  !b4
  db 12,$7E
  !a5
  db 18,$6E
  !a4
  db 18,$7E
  !b4
  db 12,$6E
  !a5
  !end

.pattern1_3
  db 24
  !rest
  !instr,!instr07
  db 18,$7E
  !d5
  db 18,$6E
  !e5
  db 12,$7E
  !fs5
  db 18,$6E
  !d5
  db 18,$7E
  !e5
  db 12,$6E
  !fs5
  db 18,$7E
  !c5
  db 18,$6E
  !d5
  db 12,$7E
  !g5
  db 18,$6E
  !c5
  db 18,$7E
  !d5
  db 12,$6E
  !g5
  db 18,$7E
  !b4
  db 18,$6E
  !c5
  db 12,$7E
  !fs5
  db 18,$6E
  !b4
  db 18,$7E
  !c5
  db 12,$6E
  !fs5
  db 18,$7E
  !a4
  db 18,$6E
  !b4
  db 12,$7E
  !a5
  db 18,$6E
  !a4
  db 18,$7E
  !b4
  db 12,$6E
  !a5
  db 18,$7E
  !d5
  db 18,$6E
  !e5
  db 12,$7E
  !fs5
  db 18,$6E
  !d5
  db 18,$7E
  !e5
  db 12,$6E
  !fs5
  db 18,$7E
  !c5
  db 18,$6E
  !d5
  db 12,$7E
  !g5
  db 18,$6E
  !c5
  db 18,$7E
  !d5
  db 12,$6E
  !g5
  db 18,$7E
  !b4
  db 18,$6E
  !c5
  db 12,$7E
  !fs5
  db 18,$6E
  !b4
  db 18,$7E
  !c5
  db 12,$6E
  !fs5
  db 18,$7E
  !a4
  db 18,$6E
  !b4
  db 12,$7E
  !a5
  db 18,$6E
  !a4
  db 6
  !b4
  !end

.pattern1_4
  !volume,210
  !pan,5
  !instr,!instr00
  db 18,$6E
  !d5
  db 18,$7E
  !fs4
  db 12,$6E
  !a4
  db 18,$7E
  !d5
  db 18,$6E
  !fs4
  db 12,$7E
  !a4
  db 18,$6E
  !c5
  db 18,$7E
  !e4
  db 12,$6E
  !g4
  db 18,$7E
  !c5
  db 18,$6E
  !e4
  db 12,$7E
  !g4
  db 18,$6E
  !b5
  db 18,$7E
  !d4
  db 12,$6E
  !fs4
  db 18,$7E
  !b5
  db 18,$6E
  !d4
  db 12,$7E
  !fs4
  db 18,$6E
  !a5
  db 18,$7E
  !c4
  db 12,$6E
  !e4
  db 18,$7E
  !a5
  db 18,$6E
  !c4
  db 12,$7E
  !e4
  db 18,$6E
  !d5
  db 18,$7E
  !fs4
  db 12,$6E
  !a4
  db 18,$7E
  !d5
  db 18,$6E
  !fs4
  db 12,$7E
  !a4
  db 18,$6E
  !c5
  db 18,$7E
  !e4
  db 12,$6E
  !g4
  db 18,$7E
  !c5
  db 18,$6E
  !e4
  db 12,$7E
  !g4
  db 18,$6E
  !b5
  db 18,$7E
  !d4
  db 12,$6E
  !fs4
  db 18,$7E
  !b5
  db 18,$6E
  !d4
  db 12,$7E
  !fs4
  db 18,$6E
  !a5
  db 18,$7E
  !c4
  db 12,$6E
  !e4
  db 18,$7E
  !a5
  db 18,$6E
  !c4
  db 12,$7E
  !e4
  !end

.pattern1_5
  !volume,220
  db 96,$7E
  !e2
  !pitchSlide,1,95 : !e3
  !e3
  !pitchSlide,1,95 : !e5
  !e3
  !pitchSlide,1,95 : !e6
  !e5
  !pitchSlide,1,95 : !e2
  !e2
  !pitchSlide,1,95 : !e3
  !e3
  !pitchSlide,1,95 : !e5
  !e3
  !pitchSlide,1,95 : !e6
  !e5
  !pitchSlide,1,95 : !e2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
