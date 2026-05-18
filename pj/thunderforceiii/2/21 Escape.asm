asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$03,$0C
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+36
endspcblock

spcblock !p_songSpecificData nspc ; sample data
  Sample01: incbin "Sample01.brr"

NoteLengthTable: ; note length table
  db $32,$65,$7F,$98,$B2,$CB,$E5,$FC
  db $32,$4C,$65,$72,$7F,$8C,$98,$A5,$B2,$BF,$CB,$D8,$E5,$F2,$F4,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !echo,%00111111,30,30
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !echo,%00111111,30,30
  !echoParameters,2,157,0
  !musicVolume,255
  !tempo,25
  !pan,0
  !instr,!instr01
  !tremolo,0,100,100
  !dynamicVolume,255,100
  db 96,$7C
  !g3
  !tie
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_1
  !subtranspose,10
  !pan,20
  !instr,!instr01
  !tremolo,0,100,100
  !dynamicVolume,255,100
  db 96,$7C
  !g3
  !tie
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_2
  !pan,10
  !instr,!instr01
  !tremolo,0,98,100
  !dynamicVolume,255,150
  db 96,$7F
  !c3
  !tie
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_3
  !pan,0
  !instr,!instr01
  !vibrato,0,150,100
  !tremolo,0,100,50
  !dynamicVolume,255,0
  db 96,$78
  !a2
  !tie
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_4
  !pan,20
  !subtranspose,50
  !instr,!instr01
  !vibrato,0,150,100
  !tremolo,0,100,50
  !dynamicVolume,255,0
  db 96,$78
  !a2
  !tie
  !tie
  !tie
  !tie
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
