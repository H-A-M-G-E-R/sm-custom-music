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

spcblock !p_songSpecificData nspc ; sample data
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
-
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,35
  !volume,240
  !instr,!instr04
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !a2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !b2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !c3
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
  !a2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !b2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !c3
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
  !a2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !b2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !c3
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
  !a2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !b2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !c3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !a3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  db 12,$7E
  !b3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  db 12,$7E
  !c4
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !a3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  db 12,$7E
  !b3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  db 12,$7E
  !c4
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !a3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  db 12,$7E
  !b3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  db 12,$7E
  !c4
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !a3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  db 12,$7E
  !b3
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  db 12,$7E
  !c4
  db 12,$6E
  !fs2
  db 12,$7E
  !fs3
  db 12,$6E
  !fs2
  !end

.pattern0_1
  !volume,220
  !instr,!instr00
  db 96,$7E
  !c3
  !pitchSlide,1,191 : !c6
  !tie
  !c3
  !pitchSlide,1,191 : !c6
  !tie
  !c3
  !pitchSlide,1,191 : !c6
  !tie
  !c3
  !pitchSlide,1,191 : !c6
  !tie
  !c6
  !pitchSlide,1,191 : !c4
  !tie
  !c5
  !pitchSlide,1,191 : !c3
  !tie
  !c4
  !pitchSlide,1,191 : !c6
  !tie
  !c6
  !pitchSlide,1,191 : !c4
  !tie
  !end

.pattern0_2
  !pan,10
  db 24,$7E
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
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
  !volume,230
  !instr,!instr07
  !vibrato,48,30,80
  db 36,$7C
  !c4
  db 60
  !c4
  db 36
  !c4
  db 60
  !c4
  db 36
  !c5
  db 60
  !c5
  db 36
  !c5
  db 60
  !c5
  db 36
  !c4
  db 60
  !c4
  db 36
  !c4
  db 60
  !c4
  db 36
  !c5
  db 60
  !c5
  db 36
  !c5
  db 60
  !c5
  !instr,!instr07
  db 96,$7E
  !c4
  !b5
  !c6
  !fs5
  !c4
  !b5
  !c6
  !fs5
  !end

.pattern0_4
  !volume,120
  !subtranspose,45
  !pan,20
  db 24
  !rest
  !vibrato,48,30,80
  !instr,!instr07
  db 36,$7C
  !c4
  db 60
  !c4
  db 36
  !c4
  db 60
  !c4
  db 36
  !c5
  db 60
  !c5
  db 36
  !c5
  db 60
  !c5
  db 36
  !c4
  db 60
  !c4
  db 36
  !c4
  db 60
  !c4
  db 36
  !c5
  db 60
  !c5
  db 36
  !c5
  db 60
  !c5
  !instr,!instr07
  db 96,$7E
  !c4
  !b5
  !c6
  !fs5
  !c4
  !b5
  !c6
  db 72
  !fs5
  !end

.pattern0_5
  !volume,100
  !pan,0
  !subtranspose,40
  db 24
  !rest
  !instr,!instr00
  db 96,$7E
  !c3
  !pitchSlide,1,191 : !c6
  !tie
  !c3
  !pitchSlide,1,191 : !c6
  !tie
  !c3
  !pitchSlide,1,191 : !c6
  !tie
  !c3
  !pitchSlide,1,191 : !c6
  !tie
  !c6
  !pitchSlide,1,191 : !c4
  !tie
  !c5
  !pitchSlide,1,191 : !c3
  !tie
  !c4
  !pitchSlide,1,191 : !c6
  !tie
  !c6
  !pitchSlide,1,191 : !c4
  db 72
  !tie
  !end

.pattern1_0
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !b2
  db 12,$6E
  !b3
  db 12,$7E
  !b2
  db 12,$6E
  !b3
  db 12,$7E
  !b2
  db 12,$6E
  !b3
  db 12,$7E
  !b2
  db 12,$6E
  !b3
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
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !b2
  db 12,$6E
  !b3
  db 12,$7E
  !b2
  db 12,$6E
  !b3
  db 12,$7E
  !b2
  db 12,$6E
  !b3
  db 12,$7E
  !b2
  db 12,$6E
  !b3
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
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !a2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !b2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !cs3
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
  !a2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !a2
  db 12,$7E
  !fs2
  db 12,$6E
  !cs3
  db 12,$7E
  !fs2
  db 12,$6E
  !b2
  db 12,$7E
  !fs2
  db 12,$6E
  !a2
  db 12,$7E
  !fs2
  db 12,$6E
  !b2
  !end

.pattern1_1
  db 96,$6E
  !fs3
  !pitchSlide,1,191 : !fs5
  !tie
  !fs5
  !pitchSlide,1,191 : !fs3
  !tie
  !fs3
  !pitchSlide,1,191 : !fs5
  !tie
  !fs5
  !pitchSlide,1,191 : !fs3
  !tie
  !fs7
  !pitchSlide,1,191 : !fs3
  !tie
  !fs5
  !pitchSlide,1,191 : !fs2
  !tie
  !end

.pattern1_2
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern1_3
  db 24,$6E
  !cs5
  db 36
  !fs5
  db 12
  !b4
  !a4
  !b4
  db 48
  !b5
  !cs6
  db 24
  !cs5
  db 36
  !fs5
  db 12
  !b4
  !a4
  !b4
  db 48
  !b5
  !e6
  db 24
  !cs5
  db 36
  !fs5
  db 12
  !b4
  !a4
  !b4
  db 48
  !b5
  !cs6
  db 24
  !cs5
  db 36
  !fs5
  db 12
  !d6
  !cs6
  !fs5
  db 48
  !b5
  !e5
  !volume,50
  !dynamicVolume,192,230
  db 96
  !fs6
  !cs6
  !b6
  !e6
  !end

.pattern1_4
  db 24
  !rest
  db 24,$6E
  !cs5
  db 36
  !fs5
  db 12
  !b4
  !a4
  !b4
  db 48
  !b5
  !cs6
  db 24
  !cs5
  db 36
  !fs5
  db 12
  !b4
  !a4
  !b4
  db 48
  !b5
  !e6
  db 24
  !cs5
  db 36
  !fs5
  db 12
  !b4
  !a4
  !b4
  db 48
  !b5
  !cs6
  db 24
  !cs5
  db 36
  !fs5
  db 12
  !d6
  !cs6
  !fs5
  db 48
  !b5
  !e5
  !volume,50
  !dynamicVolume,192,120
  db 96
  !fs6
  !cs6
  !b6
  db 72
  !e6
  !end

.pattern1_5
  db 24
  !rest
  db 96,$6E
  !fs3
  !pitchSlide,1,191 : !fs5
  !tie
  !fs5
  !pitchSlide,1,191 : !fs3
  !tie
  !fs3
  !pitchSlide,1,191 : !fs5
  !tie
  !fs5
  !pitchSlide,1,191 : !fs3
  !tie
  !fs7
  !pitchSlide,1,191 : !fs3
  !tie
  !fs5
  !pitchSlide,1,191 : !fs2
  db 72
  !tie
  !end

.pattern2_0
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !a2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !b2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !cs3
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
  !cs3
  db 12,$6E
  !b2
  db 12,$7E
  !a2
  db 12,$6E
  !fs2
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs3
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  db 12,$7E
  !cs3
  db 12,$6E
  !cs4
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !a2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !b2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !cs3
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
  !a2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !a2
  db 12,$7E
  !fs2
  db 12,$6E
  !cs3
  db 12,$7E
  !fs2
  db 12,$6E
  !b2
  db 12,$7E
  !fs2
  db 12,$6E
  !a2
  db 12,$7E
  !fs2
  db 12,$6E
  !b2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !a2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !b2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !cs3
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
  !cs3
  db 12,$6E
  !b2
  db 12,$7E
  !a2
  db 12,$6E
  !b2
  db 12,$7E
  !e3
  db 12,$6E
  !e4
  db 12,$7E
  !d3
  db 12,$6E
  !d4
  db 12,$7E
  !cs3
  db 12,$6E
  !cs4
  db 12,$7E
  !a2
  db 12,$6E
  !a3
  !end

.pattern2_1
  db 96,$7E
  !fs3
  !pitchSlide,1,191 : !fs4
  !tie
  !fs5
  !pitchSlide,1,191 : !fs4
  !tie
  !fs3
  !pitchSlide,1,191 : !fs4
  !tie
  !fs5
  !pitchSlide,1,191 : !fs4
  !tie
  !fs7
  !pitchSlide,1,191 : !fs3
  !tie
  !fs5
  !pitchSlide,1,191 : !fs2
  !fs2
  !end

.pattern2_2
  !pan,10
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,96,0
  db 6
  %percNote(!instr14-!instr12)
  !d5
  db 12
  !d5
  db 6
  !c5
  !c5
  db 12
  !c5
  !b4
  db 6
  !b4
  !b4
  db 12
  !g4
  db 6
  !g4
  !g4
  !end

.pattern2_3
  !volume,50
  !dynamicVolume,192,220
  db 96,$7E
  !fs6
  !cs6
  !b6
  db 24
  !e7
  !d7
  !cs7
  !d7
  db 12
  !fs6
  !e6
  !fs6
  db 6,$6E
  !a6
  !b6
  db 12,$7E
  !cs7
  !b6
  !a6
  db 6,$6E
  !gs6
  !a6
  db 12,$7E
  !b6
  !a6
  !gs6
  !a6
  !b6
  !a6
  db 6,$6E
  !b5
  !b6
  !cs6
  !cs7
  db 12,$7E
  !fs6
  !e6
  !fs6
  db 6,$6E
  !a6
  !b6
  db 12,$7E
  !cs7
  !e7
  !d7
  !cs7
  !b6
  !cs7
  !d7
  !cs7
  !b6
  !cs7
  db 6,$6E
  !b5
  !b6
  !a5
  !a6
  db 12,$7E
  !fs6
  !e6
  !fs6
  db 6,$6E
  !a6
  !b6
  db 12,$7E
  !cs7
  !b6
  !a6
  db 6,$6E
  !gs6
  !a6
  db 12,$7E
  !b6
  !a6
  !gs6
  !a6
  !b6
  !a6
  db 6,$6E
  !b5
  !b6
  !cs6
  !cs7
  db 12,$7E
  !fs6
  !e6
  !fs6
  db 6,$6E
  !a6
  !b6
  db 12,$7E
  !cs7
  !e7
  !d7
  !cs7
  !b6
  !cs7
  !d7
  !cs7
  !b6
  !a6
  db 24
  !e6
  !end

.pattern2_4
  db 24
  !rest
  !volume,50
  !dynamicVolume,192,110
  db 96,$7E
  !fs6
  !cs6
  !b6
  db 24
  !e7
  !d7
  !cs7
  !d7
  db 12
  !fs6
  !e6
  !fs6
  db 6,$6E
  !a6
  !b6
  db 12,$7E
  !cs7
  !b6
  !a6
  db 6,$6E
  !gs6
  !a6
  db 12,$7E
  !b6
  !a6
  !gs6
  !a6
  !b6
  !a6
  db 6,$6E
  !b5
  !b6
  !cs6
  !cs7
  db 12,$7E
  !fs6
  !e6
  !fs6
  db 6,$6E
  !a6
  !b6
  db 12,$7E
  !cs7
  !e7
  !d7
  !cs7
  !b6
  !cs7
  !d7
  !cs7
  !b6
  !cs7
  db 6,$6E
  !b5
  !b6
  !a5
  !a6
  db 12,$7E
  !fs6
  !e6
  !fs6
  db 6,$6E
  !a6
  !b6
  db 12,$7E
  !cs7
  !b6
  !a6
  db 6,$6E
  !gs6
  !a6
  db 12,$7E
  !b6
  !a6
  !gs6
  !a6
  !b6
  !a6
  db 6,$6E
  !b5
  !b6
  !cs6
  !cs7
  db 12,$7E
  !fs6
  !e6
  !fs6
  db 6,$6E
  !a6
  !b6
  db 12,$7E
  !cs7
  !e7
  !d7
  !cs7
  !b6
  !cs7
  !d7
  !cs7
  !b6
  !a6
  !end

.pattern2_5
  db 24
  !rest
  db 96,$7E
  !fs3
  !pitchSlide,1,191 : !fs4
  !tie
  !fs5
  !pitchSlide,1,191 : !fs4
  !tie
  !fs3
  !pitchSlide,1,191 : !fs4
  !tie
  !fs5
  !pitchSlide,1,191 : !fs4
  !tie
  !fs7
  !pitchSlide,1,191 : !fs3
  !tie
  !fs5
  !pitchSlide,1,191 : !fs2
  db 72
  !fs2
  !end

.pattern3_0
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 6,$6E
  !b2
  !cs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 6,$6E
  !cs3
  !a2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 6,$6E
  !b2
  !cs3
  db 12,$7E
  !b2
  db 12,$6E
  !a2
  db 12,$7E
  !gs2
  db 12,$6E
  !e2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 6,$6E
  !b2
  !cs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 6,$6E
  !cs3
  !a2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 6,$6E
  !b2
  !cs3
  db 12,$7E
  !e3
  db 12,$6E
  !d3
  db 12,$7E
  !cs3
  db 12,$6E
  !b2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 6,$6E
  !b2
  !cs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 6,$6E
  !cs3
  !a2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 6,$6E
  !b2
  !cs3
  db 12,$7E
  !b2
  db 12,$6E
  !a2
  db 12,$7E
  !gs2
  db 12,$6E
  !e2
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 6,$6E
  !b2
  !cs3
  db 12,$7E
  !fs2
  db 12,$6E
  !fs2
  db 12,$7E
  !fs2
  db 6,$6E
  !cs3
  !a2
  db 24,$7E
  !cs2
  db 12
  !cs2
  db 12,$6E
  !cs3
  db 12,$7E
  !d2
  db 12,$6E
  !d3
  db 12,$7E
  !e2
  db 12,$6E
  !e3
  !end

.pattern3_1
  db 96,$7E
  !fs2
  !pitchSlide,1,191 : !e4
  !tie
  !d4
  !pitchSlide,1,191 : !cs3
  !tie
  !fs2
  !pitchSlide,1,191 : !e4
  !tie
  !d4
  !pitchSlide,1,191 : !c3
  !tie
  !end

.pattern3_2
  !pan,10
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,48,0
  db 6
  %percNote(!instr14-!instr12)
  %percNote(!instr14-!instr12)
  !c5
  !c5
  !a4
  !a4
  !f4
  !f4
  !end

.pattern3_3
  db 96,$7E
  !fs3
  !e3
  !fs3
  !g3
  !fs4
  !e4
  !a4
  !instr,!instr03
  db 96,$7C
  !b7
  !pitchSlide,12,95 : !b4
  !end

.pattern3_4
  db 24
  !rest
  db 96,$7E
  !fs3
  !e3
  !fs3
  !g3
  !fs4
  !e4
  !a4
  !instr,!instr03
  db 72,$7C
  !b7
  !pitchSlide,12,95 : !b4
  !end

.pattern3_5
  db 24
  !rest
  db 96,$7E
  !fs2
  !pitchSlide,1,191 : !e4
  !tie
  !d4
  !pitchSlide,1,191 : !cs3
  !tie
  !fs2
  !pitchSlide,1,191 : !e4
  !tie
  !d4
  !pitchSlide,1,191 : !c3
  db 72
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
