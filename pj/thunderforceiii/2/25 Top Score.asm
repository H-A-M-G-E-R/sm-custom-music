asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr07 = $19
!instr08 = $1A
!instr09 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$ED,$B8,$15,$00
  db !instr01,$FF,$E0,$B8,$03,$0C
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr07,$FF,$E0,$B8,$03,$D4
  db !instr08,$FF,$E0,$B8,$05,$59
  db !instr09,$FF,$E0,$B8,$04,$95
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+333
  dw Sample01,Sample01+36
  dw Sample02,Sample02+0
  dw Sample07,Sample07+0
  dw Sample08,Sample08+0
  dw Sample09,Sample09+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample01: incbin "Sample01.brr"
  Sample02: incbin "Sample02.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample09: incbin "Sample09.brr"

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
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr07
  !echo,%00111111,20,20
  !echoParameters,2,157,0
  !musicVolume,220
  !tempo,37
  !volume,255
  db 24,$7E
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  !pan,20
  !dynamicPan,54,0
  %percNote(!instr09-!instr07)
  !e5
  !d5
  !c5
  db 6
  !b4
  !pan,10
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  !end

.pattern0_1
  !volume,185
  !instr,!instr00
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  !c4
  db 12,$5E
  !d3
  db 12,$7E
  !d4
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  !d3
  db 12,$7E
  !d4
  db 12,$5E
  !d3
  !d3
  db 12,$7E
  !d4
  db 12,$5E
  !c3
  db 12,$7E
  !c4
  db 12,$5E
  !c3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  !c4
  db 12,$5E
  !d3
  db 12,$7E
  !d4
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  db 12,$5E
  !d3
  db 12,$7E
  !d3
  !d3
  db 24,$7C
  !a3
  !pitchSlide,18,6 : !d3
  db 12,$7E
  !c3
  !d3
  !g3
  !a3
  !end

.pattern0_2
  !volume,200
  !instr,!instr02
  db 96
  !rest
  db 60
  !rest
  db 24,$7E
  !c5
  db 12
  !d5
  !tie
  db 84
  !rest
  db 12
  !rest
  db 24
  !d5
  db 12
  !rest
  db 24
  !d5
  !c5
  db 96
  !rest
  db 60
  !rest
  db 24
  !c5
  db 12
  !d5
  !tie
  db 84
  !rest
  db 72
  !rest
  db 24
  !a5
  !end

.pattern0_3
  !volume,90
  !pan,20
  !subtranspose,50
  !instr,!instr02
  db 12
  !rest
  !instr,!instr02
  db 96
  !rest
  db 60
  !rest
  db 24,$7E
  !c5
  db 12
  !d5
  !tie
  db 84
  !rest
  db 12
  !rest
  db 24
  !d5
  db 12
  !rest
  db 24
  !d5
  !c5
  db 96
  !rest
  db 60
  !rest
  db 24
  !c5
  db 12
  !d5
  !tie
  db 84
  !rest
  db 72
  !rest
  db 12
  !a5
  !end

.pattern0_4
  db 12
  !rest
  !subtranspose,50
  !pan,0
  !volume,100
  !instr,!instr02
  db 96
  !rest
  db 60
  !rest
  db 24,$7E
  !c4
  db 12
  !d4
  !tie
  db 84
  !rest
  db 12
  !rest
  db 24
  !d4
  db 12
  !rest
  db 24
  !d4
  !c4
  db 96
  !rest
  db 60
  !rest
  db 24
  !c4
  db 12
  !d4
  !tie
  db 84
  !rest
  db 72
  !rest
  db 12
  !a4
  !end

.pattern0_5
  !volume,210
  !instr,!instr02
  db 96
  !rest
  db 60
  !rest
  db 24,$7E
  !c4
  db 12
  !d4
  !tie
  db 84
  !rest
  db 12
  !rest
  db 24
  !d4
  db 12
  !rest
  db 24
  !d4
  !c4
  db 96
  !rest
  db 60
  !rest
  db 24
  !c4
  db 12
  !d4
  !tie
  db 84
  !rest
  db 72
  !rest
  db 24
  !a4
  !end

.pattern1_0
  db 12,$7F
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  !pan,20
  !dynamicPan,12,0
  db 6
  %percNote(!instr09-!instr07)
  %percNote(!instr09-!instr07)
  !pan,10
  db 12
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  !pan,20
  %percNote(!instr09-!instr07)
  !pan,10
  db 6
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  !pan,15
  db 12
  %percNote(!instr09-!instr07)
  !pan,10
  db 6
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  !pan,8
  db 12
  %percNote(!instr09-!instr07)
  !pan,10
  db 6
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  !pan,5
  db 12
  %percNote(!instr09-!instr07)
  !pan,10
  db 6
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  !pan,20
  %percNote(!instr09-!instr07)
  !pan,10
  %percNote(!instr07-!instr07)
  !pan,16
  %percNote(!instr09-!instr07)
  !pan,10
  %percNote(!instr07-!instr07)
  !pan,12
  %percNote(!instr09-!instr07)
  !pan,10
  %percNote(!instr07-!instr07)
  !pan,8
  %percNote(!instr09-!instr07)
  !pan,10
  %percNote(!instr07-!instr07)
  !pan,6
  %percNote(!instr09-!instr07)
  !pan,10
  %percNote(!instr07-!instr07)
  !pan,0
  %percNote(!instr09-!instr07)
  %percNote(!instr07-!instr07)
  !pan,10
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  !end

.pattern1_1
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12
  !d3
  !d3
  db 12,$5F
  !d3
  db 12,$6F
  !d3
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12,$5F
  !d3
  db 12,$6F
  !c4
  db 12,$5F
  !d3
  db 12,$6F
  !d4
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12
  !d3
  !d3
  db 12,$5F
  !d3
  db 12,$6F
  !d3
  db 12,$7F
  !d3
  db 12,$5F
  !d4
  db 18,$7F
  !d3
  db 6
  !d3
  db 12,$6F
  !d4
  db 12,$5F
  !c3
  db 12,$6F
  !c4
  db 12,$5F
  !c3
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12
  !d3
  !d3
  db 12,$5F
  !d3
  db 12,$6F
  !d3
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12,$5F
  !d3
  db 12,$6F
  !c4
  db 12,$5F
  !d3
  db 12,$6F
  !d4
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12
  !d3
  !d3
  db 12,$5F
  !d3
  db 12,$6F
  !d3
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !a3
  db 6
  !d3
  db 12,$6F
  !c3
  !d3
  !g3
  !a3
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12
  !d3
  !d3
  db 12,$5F
  !d3
  db 12,$6F
  !d3
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12,$5F
  !d3
  db 12,$6F
  !c4
  db 12,$5F
  !d3
  db 12,$6F
  !d4
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12
  !d3
  !d3
  db 12,$5F
  !d3
  db 12,$6F
  !d3
  db 12,$7F
  !d3
  db 12,$5F
  !d4
  db 18,$7F
  !d3
  db 6
  !d3
  db 12,$6F
  !d4
  db 12,$5F
  !c3
  db 12,$6F
  !c4
  db 12,$5F
  !c3
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12
  !d3
  !d3
  db 12,$5F
  !d3
  db 12,$6F
  !d3
  db 12,$7F
  !d3
  db 12,$5F
  !d3
  db 18,$7F
  !d3
  db 6
  !d3
  db 12,$5F
  !d3
  db 12,$6F
  !c4
  db 12,$7F
  !d3
  db 12,$4F
  !c4
  db 12,$7F
  !d3
  db 12,$3F
  !c4
  db 12,$7F
  !d3
  db 12,$4F
  !c4
  db 12,$7F
  !d3
  db 12,$5F
  !c4
  db 12,$7F
  !d3
  db 12,$6F
  !c4
  db 12,$7F
  !c3
  !c3
  db 24,$7D
  !g3
  !pitchSlide,18,6 : !g2
  db 12,$7F
  !c3
  db 12,$6F
  !g3
  db 12,$5F
  !g3
  db 12,$7F
  !d3
  !end

.pattern1_2
  !instr,!instr02
  db 96
  !rest
  db 60
  !rest
  db 24,$7E
  !c5
  db 12
  !d5
  !tie
  db 84
  !rest
  db 12
  !rest
  db 24
  !d5
  db 12
  !rest
  db 24
  !d5
  !c5
  db 96
  !rest
  db 60
  !rest
  db 24
  !c5
  db 12
  !d5
  !tie
  db 84
  !rest
  db 72
  !rest
  db 12
  !g5
  db 24
  !a5
  db 84
  !rest
  db 60
  !rest
  db 24
  !c5
  db 12
  !d5
  !tie
  db 84
  !rest
  db 12
  !rest
  db 24
  !d5
  db 12
  !rest
  db 24
  !d5
  !c5
  db 96
  !rest
  !rest
  !rest
  db 72
  !rest
  db 24
  !g5
  !end

.pattern1_3
  !volume,100
  !pan,20
  !subtranspose,50
  !instr,!instr02
  db 12
  !rest
  !instr,!instr02
  db 96
  !rest
  db 60
  !rest
  db 24,$7E
  !c5
  db 12
  !d5
  !tie
  db 84
  !rest
  db 12
  !rest
  db 24
  !d5
  db 12
  !rest
  db 24
  !d5
  !c5
  db 96
  !rest
  db 60
  !rest
  db 24
  !c5
  db 12
  !d5
  !tie
  db 84
  !rest
  db 72
  !rest
  db 12
  !g5
  db 24
  !a5
  db 84
  !rest
  db 60
  !rest
  db 24
  !c5
  db 12
  !d5
  !tie
  db 84
  !rest
  db 12
  !rest
  db 24
  !d5
  db 12
  !rest
  db 24
  !d5
  !c5
  db 96
  !rest
  !rest
  !rest
  db 72
  !rest
  db 12
  !g5
  !end

.pattern1_4
  !endVibrato
  !subtranspose,0
  !pan,10
  !volume,180
  !instr,!instr01
  db 96,$7E
  !a4
  !g4
  !a4
  !tie
  !a4
  !g4
  !a4
  db 24
  !d4
  !f4
  !a4
  !d5
  db 96
  !a5
  !g5
  db 48
  !a5
  !d5
  db 96
  !a5
  !a5
  !g5
  !e5
  db 48
  !tie
  db 12
  !rest
  !e5
  !rest
  !e5
  !end

.pattern1_5
  !instr,!instr02
  db 96
  !rest
  db 60
  !rest
  db 24,$7E
  !c4
  db 12
  !d4
  !tie
  db 84
  !rest
  db 12
  !rest
  db 24
  !d4
  db 12
  !rest
  db 24
  !d4
  !c4
  db 96
  !rest
  db 60
  !rest
  db 24
  !c4
  db 12
  !d4
  !tie
  db 84
  !rest
  db 72
  !rest
  db 12
  !g4
  db 24
  !a4
  db 84
  !rest
  db 60
  !rest
  db 24
  !c4
  db 12
  !d4
  !tie
  db 84
  !rest
  db 12
  !rest
  db 24
  !d4
  db 12
  !rest
  db 24
  !d4
  !c4
  db 96
  !rest
  !rest
  !rest
  db 72
  !rest
  db 24
  !g4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
