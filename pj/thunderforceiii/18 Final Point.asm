asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr04 = $18
!instr07 = $19
!instr12 = $1A
!instr13 = $1B
!instr14 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$F1,$B8,$0C,$00
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+243
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock !p_songSpecificData nspc ; sample data
  Sample01: incbin "Sample01.brr"
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
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,100,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !pan,10
  !tempo,37
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
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
  !c5
  db 12
  !b4
  db 6
  !b4
  !a4
  db 12
  !g4
  !end

.pattern0_1
  !volume,220
  !instr,!instr04
  db 12,$7E
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$4E
  !c4
  db 12,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !b2
  db 6,$6E
  !b3
  db 6,$7E
  !b3
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  db 12
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c4
  !end

.pattern0_2
  !instr,!instr07
  !vibrato,48,25,75
  db 96,$6E
  !b4
  db 48
  !tie
  db 36
  !b4
  db 12
  !b4
  db 96
  !c5
  !tie
  !b4
  db 48
  !tie
  db 36
  !b4
  db 12
  !b4
  db 96
  !c5
  !pitchSlide,96,8 : !c6
  !tie
  !end

.pattern0_3
  !volume,155
  !subtranspose,50
  !pan,20
  db 24
  !rest
  !instr,!instr03
  !vibrato,48,25,75
  db 96,$6E
  !b4
  db 48
  !tie
  db 36
  !b4
  db 12
  !b4
  db 96
  !c5
  !tie
  !b4
  db 48
  !tie
  db 36
  !b4
  db 12
  !b4
  db 96
  !c5
  !pitchSlide,96,8 : !c6
  db 72
  !tie
  !end

.pattern0_4
  !volume,240
  !pan,5
  !instr,!instr01
  db 12,$6E
  !b3
  db 6
  !d4
  !fs4
  db 12
  !b3
  db 6
  !b3
  !b3
  db 12
  !b3
  db 6
  !d4
  !fs4
  db 12
  !b3
  db 6
  !b3
  !b3
  db 12
  !b3
  db 6
  !d4
  !fs4
  db 12
  !b3
  db 6
  !b3
  !b3
  db 12
  !b3
  db 6
  !d4
  !fs4
  db 12
  !b3
  db 6
  !b3
  !b3
  db 12
  !c4
  db 6
  !e4
  !g4
  db 12
  !c4
  db 6
  !c4
  !c4
  db 12
  !c4
  db 6
  !e4
  !g4
  db 12
  !c4
  db 6
  !c4
  !c4
  db 12
  !c4
  db 6
  !e4
  !g4
  db 12
  !c4
  db 6
  !c4
  !c4
  db 12
  !c4
  db 6
  !e4
  !g4
  db 12
  !c4
  db 6
  !c4
  !c4
  db 12
  !b3
  db 6
  !d4
  !fs4
  db 12
  !b3
  db 6
  !b3
  !b3
  db 12
  !b3
  db 6
  !d4
  !fs4
  db 12
  !b3
  db 6
  !b3
  !b3
  db 12
  !b3
  db 6
  !d4
  !fs4
  db 12
  !b3
  db 6
  !b3
  !b3
  db 12
  !b3
  db 6
  !d4
  !fs4
  db 12
  !b3
  db 6
  !b3
  !b3
  db 12
  !c4
  db 6
  !e4
  !g4
  db 12
  !c4
  db 6
  !c4
  !c4
  db 12
  !c4
  db 6
  !e4
  !g4
  db 12
  !c4
  db 6
  !c4
  !c4
  db 12
  !c4
  db 6
  !e4
  !g4
  db 12
  !c4
  db 6
  !c4
  !c4
  db 12
  !c4
  db 6
  !e4
  !g4
  db 12
  !c4
  db 6
  !c4
  !c4
  !end

.pattern0_5
  !volume,230
  !pan,15
  !instr,!instr07
  db 48
  !rest
  db 12,$6E
  !a5
  !g5
  db 24
  !rest
  db 12
  !e5
  !d5
  db 24
  !rest
  db 12
  !a4
  !g4
  db 24
  !rest
  db 48
  !rest
  db 12
  !a5
  !g5
  db 24
  !rest
  db 12
  !e5
  !d5
  db 24
  !rest
  db 12
  !a4
  !g4
  db 24
  !rest
  db 48
  !rest
  db 12
  !a5
  !g5
  db 24
  !rest
  db 12
  !e5
  !d5
  db 24
  !rest
  db 12
  !a4
  !g4
  db 24
  !rest
  db 48
  !rest
  db 12
  !a5
  !g5
  db 24
  !rest
  db 12
  !e5
  !d5
  db 24
  !rest
  db 12
  !a4
  !g4
  db 24
  !rest
  !end

.pattern1_0
  !pan,10
  !tempo,37
  db 12,$7E
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
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,24,0
  db 6
  %percNote(!instr14-!instr12)
  !c5
  db 12
  !b4
  !pan,10
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern1_1
  db 12,$7E
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !as2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  db 12
  !a2
  db 6,$6E
  !a2
  db 6,$7E
  !a2
  !end

.pattern1_2
  db 96,$6E
  !as5
  db 48
  !tie
  db 36
  !as5
  db 12
  !as5
  db 96
  !a5
  db 48
  !tie
  db 24
  !g5
  !a5
  db 96
  !as5
  db 48
  !tie
  db 36
  !as5
  db 12
  !as5
  db 96
  !a5
  db 48
  !tie
  db 24
  !g5
  !a5
  !end

.pattern1_3
  db 24
  !rest
  db 96,$6E
  !as5
  db 48
  !tie
  db 36
  !as5
  db 12
  !as5
  db 96
  !a5
  db 48
  !tie
  db 24
  !g5
  !a5
  db 96
  !as5
  db 48
  !tie
  db 36
  !as5
  db 12
  !as5
  db 96
  !a5
  db 48
  !tie
  db 24
  !g5
  !end

.pattern1_4
  !pan,15
  db 12,$6E
  !as3
  db 6
  !d4
  !f4
  db 12
  !as3
  db 6
  !as3
  !as3
  db 12
  !as3
  db 6
  !d4
  !f4
  db 12
  !as3
  db 6
  !as3
  !as3
  db 12
  !as3
  db 6
  !d4
  !f4
  db 12
  !as3
  db 6
  !as3
  !as3
  db 12
  !as3
  db 6
  !d4
  !f4
  db 12
  !as3
  db 6
  !as3
  !as3
  !pan,5
  db 12
  !a3
  db 6
  !c4
  !e4
  db 12
  !a3
  db 6
  !a3
  !a3
  db 12
  !a3
  db 6
  !c4
  !e4
  db 12
  !a3
  db 6
  !a3
  !a3
  db 12
  !a3
  db 6
  !c4
  !e4
  db 12
  !a3
  db 6
  !a3
  !a3
  db 12
  !a3
  db 6
  !c4
  !e4
  db 12
  !a3
  db 6
  !a3
  !a3
  !pan,15
  db 12
  !as3
  db 6
  !d4
  !f4
  db 12
  !as3
  db 6
  !as3
  !as3
  db 12
  !as3
  db 6
  !d4
  !f4
  db 12
  !as3
  db 6
  !as3
  !as3
  db 12
  !as3
  db 6
  !d4
  !f4
  db 12
  !as3
  db 6
  !as3
  !as3
  db 12
  !as3
  db 6
  !d4
  !f4
  db 12
  !as3
  db 6
  !as3
  !as3
  !pan,5
  db 12
  !a3
  db 6
  !c4
  !e4
  db 12
  !a3
  db 6
  !a3
  !a3
  db 12
  !a3
  db 6
  !c4
  !e4
  db 12
  !a3
  db 6
  !a3
  !a3
  db 12
  !a3
  db 6
  !c4
  !e4
  db 12
  !a3
  db 6
  !a3
  !a3
  db 12
  !a3
  db 6
  !c4
  !e4
  db 12
  !a3
  db 6
  !a3
  !a3
  !end

.pattern1_5
  !volume,230
  !subtranspose,10
  !instr,!instr07
  !pan,5
  db 24
  !rest
  db 24,$6E
  !a5
  db 12
  !a5
  db 24
  !g5
  db 12
  !a5
  !tie
  !a5
  db 24
  !g5
  !a5
  !g5
  !pan,15
  !rest
  !a5
  db 12
  !a5
  db 24
  !g5
  db 12
  !a5
  !tie
  !a5
  db 24
  !g5
  !a5
  !d5
  !pan,5
  !rest
  !a5
  db 12
  !a5
  db 24
  !g5
  db 12
  !a5
  !tie
  !a5
  db 24
  !g5
  !a5
  !g5
  !pan,15
  !rest
  !a5
  db 12
  !a5
  db 24
  !g5
  db 12
  !a5
  !tie
  !a5
  db 24
  !g5
  !a5
  !d5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
