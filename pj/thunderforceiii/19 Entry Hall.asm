asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr06 = $17
!instr07 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr06,$FF,$E7,$B8,$0D,$00
  db !instr07,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+207
  dw Sample06,Sample06+324
  dw Sample07,Sample07+621
endspcblock

spcblock !p_songSpecificData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"

NoteLengthTable: ; note length table
  db $32,$65,$7F,$98,$B2,$CB,$E5,$FC
  db $32,$4C,$65,$72,$7F,$8C,$98,$A5,$B2,$BF,$CB,$D8,$E5,$F2,$F4,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
-
  dw .pattern0
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !tempo,23
  !volume,240
  !instr,!instr04
  db 12,$7E
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !ds2
  !c3
  !ds2
  !d3
  !ds2
  !f2
  !fs2
  !gs2
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !ds2
  !c3
  !ds2
  !d3
  !ds2
  !f2
  !fs2
  !gs2
  !end

.pattern0_1
  !instr,!instr07
  !vibrato,48,40,80
  !volume,255
  db 96,$7E
  !b4
  db 48
  !tie
  db 36
  !b4
  db 12
  !b4
  db 96
  !c5
  !pitchSlide,96,192 : !c3
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
  !pitchSlide,96,192 : !fs4
  !tie
  !end

.pattern0_2
  !instr,!instr07
  !vibrato,48,40,80
  !volume,130
  !pan,20
  !subtranspose,55
  db 24
  !rest
  db 96,$7E
  !b4
  db 48
  !tie
  db 36
  !b4
  db 12
  !b4
  db 96
  !c5
  !pitchSlide,96,192 : !c3
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
  !pitchSlide,96,192 : !fs4
  db 72
  !tie
  !end

.pattern0_3
  !pan,10
  !volume,200
  !instr,!instr06
  db 12,$7E
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !pan,20
  !dynamicPan,96,0
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !dynamicPan,96,20
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !dynamicPan,96,0
  !ds2
  !c3
  !ds2
  !d3
  !ds2
  !f2
  !fs2
  !gs2
  !dynamicPan,96,20
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !dynamicPan,96,0
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !dynamicPan,96,20
  !ds2
  !f2
  !ds2
  !fs2
  !ds2
  !a2
  !ds2
  !gs2
  !dynamicPan,96,0
  !ds2
  !c3
  !ds2
  !d3
  !ds2
  !f2
  !fs2
  !gs2
  !end

.pattern0_4
  !volume,160
  !instr,!instr07
  !pan,15
  db 96,$7E
  !ds4
  !tie
  !ds4
  !tie
  !fs4
  !tie
  !fs4
  !tie
  !end

.pattern0_5
  !volume,160
  !instr,!instr07
  !pan,5
  db 96,$7E
  !a4
  !tie
  !a4
  !tie
  !c5
  !tie
  !c5
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
