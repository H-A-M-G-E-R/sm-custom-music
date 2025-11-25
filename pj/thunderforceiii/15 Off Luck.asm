asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr03 = $17
!instr04 = $18
!instr12 = $19
!instr13 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$EB,$B8,$02,$00
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1035
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
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
  dw .pattern0
  dw .pattern1
  dw .pattern1
  dw .pattern2
  dw .pattern2
  dw .pattern3
  dw .pattern3
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern0_4, .pattern1_5, 0, 0
.pattern2: dw .pattern1_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern0_4, .pattern2_5, 0, 0
.pattern3: dw .pattern1_0, .pattern2_1, .pattern2_2, .pattern3_3, .pattern0_4, .pattern2_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,36
  !volume,240
  !instr,!instr04
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 24,$7E
  !cs3
  !pitchSlide,12,12 : !cs2
  db 12
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  db 24,$7E
  !d3
  !pitchSlide,12,12 : !d2
  db 12
  !d2
  db 12,$6E
  !d2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  !end

.pattern0_1
  !volume,170
  !instr,!instr03
  !pan,0
  !dynamicPan,96,20
  db 6,$6E
  !cs2
  !e2
  !gs2
  !cs2
  !cs3
  !e3
  !gs3
  !cs3
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !dynamicPan,96,0
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !cs6
  !e6
  !gs6
  !cs6
  !cs7
  !e7
  !gs7
  !cs7
  !dynamicPan,96,20
  !d2
  !fs2
  !a2
  !d2
  !d3
  !fs3
  !a3
  !d3
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !dynamicPan,96,0
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !d6
  !fs6
  !a6
  !d6
  !d7
  !fs7
  !a7
  !d7
  !end

.pattern0_2
  !volume,170
  !subtranspose,50
  !instr,!instr03
  !pan,20
  !dynamicPan,96,0
  db 6,$6E
  !cs2
  !e2
  !gs2
  !cs2
  !cs3
  !e3
  !gs3
  !cs3
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !dynamicPan,96,20
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !cs6
  !e6
  !gs6
  !cs6
  !cs7
  !e7
  !gs7
  !cs7
  !dynamicPan,96,0
  !d2
  !fs2
  !a2
  !d2
  !d3
  !fs3
  !a3
  !d3
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !dynamicPan,96,20
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !d6
  !fs6
  !a6
  !d6
  !d7
  !fs7
  !a7
  !d7
  !end

.pattern0_3
  !pan,20
  !subtranspose,50
  db 24
  !rest
  !vibrato,6,40,70
  !volume,130
  !instr,!instr03
  !dynamicVolume,192,50
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  !volume,160
  !dynamicVolume,192,50
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  !end

.pattern0_4
  db 24,$7E
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern0_5
  !vibrato,6,40,70
  !volume,240
  !instr,!instr03
  !dynamicVolume,192,140
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  !volume,240
  !dynamicVolume,192,140
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  !end

.pattern1_0
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 24,$7E
  !cs3
  !pitchSlide,12,12 : !cs2
  db 12
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !cs2
  db 12,$6E
  !cs2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  db 24,$7E
  !d3
  !pitchSlide,12,12 : !d2
  db 12
  !d2
  db 12,$6E
  !d2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  db 12,$7E
  !d2
  db 12,$6E
  !d2
  !end

.pattern1_1
  !instr,!instr03
  !dynamicPan,96,20
  db 6,$6E
  !cs2
  !e2
  !gs2
  !cs2
  !cs3
  !e3
  !gs3
  !cs3
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !dynamicPan,96,0
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !cs6
  !e6
  !gs6
  !cs6
  !cs7
  !e7
  !gs7
  !cs7
  !dynamicPan,96,20
  !d2
  !fs2
  !a2
  !d2
  !d3
  !fs3
  !a3
  !d3
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !dynamicPan,96,0
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !d6
  !fs6
  !a6
  !d6
  !d7
  !fs7
  !a7
  !d7
  !end

.pattern1_2
  !instr,!instr03
  !dynamicPan,96,0
  db 6,$6E
  !cs2
  !e2
  !gs2
  !cs2
  !cs3
  !e3
  !gs3
  !cs3
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !dynamicPan,96,20
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !cs6
  !e6
  !gs6
  !cs6
  !cs7
  !e7
  !gs7
  !cs7
  !dynamicPan,96,0
  !d2
  !fs2
  !a2
  !d2
  !d3
  !fs3
  !a3
  !d3
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !dynamicPan,96,20
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !d6
  !fs6
  !a6
  !d6
  !d7
  !fs7
  !a7
  !d7
  !end

.pattern1_3
  !instr,!instr00
  !endVibrato
  !vibrato,36,25,70
  !volume,200
  !subtranspose,0
  !pan,10
  db 96,$7E
  !cs7
  db 48
  !tie
  db 24
  !b6
  !cs7
  db 96
  !d7
  db 48
  !e7
  !d7
  !end

.pattern1_5
  !volume,240
  !dynamicVolume,192,140
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  !volume,240
  !dynamicVolume,192,140
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  !e6
  db 12,$7B
  !d6
  db 12,$7E
  !e6
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  !end

.pattern2_1
  !dynamicPan,96,20
  db 6,$6E
  !cs2
  !e2
  !gs2
  !cs2
  !cs3
  !e3
  !gs3
  !cs3
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !dynamicPan,96,0
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !cs6
  !e6
  !gs6
  !cs6
  !cs7
  !e7
  !gs7
  !cs7
  !dynamicPan,96,20
  !d2
  !fs2
  !a2
  !d2
  !d3
  !fs3
  !a3
  !d3
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !dynamicPan,96,0
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !d6
  !fs6
  !a6
  !d6
  !d7
  !fs7
  !a7
  !d7
  !end

.pattern2_2
  !dynamicPan,96,0
  db 6,$6E
  !cs2
  !e2
  !gs2
  !cs2
  !cs3
  !e3
  !gs3
  !cs3
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !dynamicPan,96,20
  !cs4
  !e4
  !gs4
  !cs4
  !cs5
  !e5
  !gs5
  !cs5
  !cs6
  !e6
  !gs6
  !cs6
  !cs7
  !e7
  !gs7
  !cs7
  !dynamicPan,96,0
  !d2
  !fs2
  !a2
  !d2
  !d3
  !fs3
  !a3
  !d3
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !dynamicPan,96,20
  !d4
  !fs4
  !a4
  !d4
  !d5
  !fs5
  !a5
  !d5
  !d6
  !fs6
  !a6
  !d6
  !d7
  !fs7
  !a7
  !d7
  !end

.pattern2_3
  !pan,20
  !subtranspose,50
  db 24
  !rest
  !vibrato,6,40,70
  !volume,160
  !instr,!instr03
  !dynamicVolume,192,50
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  !volume,160
  !dynamicVolume,192,50
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  !end

.pattern2_5
  !volume,240
  !dynamicVolume,192,140
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  db 12,$7E
  !cs6
  db 12,$7B
  !d6
  !volume,240
  !dynamicVolume,192,140
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  db 12,$7E
  !d6
  db 12,$7B
  !e6
  !end

.pattern3_3
  !instr,!instr00
  !volume,200
  !subtranspose,0
  !endVibrato
  !vibrato,36,25,70
  !pan,10
  db 12,$7E
  !cs7
  db 24
  !d7
  db 12
  !cs7
  db 48
  !tie
  db 12
  !cs7
  db 24
  !d7
  db 12
  !e7
  db 48
  !tie
  db 72
  !d7
  db 12
  !e7
  !d7
  db 48
  !cs7
  !b6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
