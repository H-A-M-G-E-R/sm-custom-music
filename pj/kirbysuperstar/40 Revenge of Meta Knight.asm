asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr18 = $16

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr18,$82,$EE,$B8,$03,$C0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample16_17_18_19,Sample16_17_18_19+18
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
-
  dw .pattern1
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,255
  !tempo,51
  !echo,%00011111,45,45
  !echoParameters,5,50,0
  !instr,!instr18
  !pan,9
  !volume,255
  db 60,$76
  !f3
  !tie
  !pitchSlide,39,33 : !d3
  !tie
  !tie
  !pan,10
  !tremolo,0,35,90
  db 60,$79
  !a2
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_1
  !instr,!instr18
  !volume,228
  !pan,11
  db 60,$76
  !f4
  !tie
  !pitchSlide,39,33 : !d4
  !tie
  !tie
  !pan,8
  !tremolo,0,35,90
  !gs4
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_2
  !instr,!instr18
  !volume,217
  !pan,12
  db 60,$76
  !e5
  !tie
  !pitchSlide,39,33 : !cs5
  !tie
  !tie
  !pan,12
  !tremolo,0,35,90
  !c5
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_3
  !vibrato,0,14,60
  !instr,!instr18
  !volume,195
  !pan,8
  db 60,$76
  !a5
  !tie
  !pitchSlide,39,33 : !fs5
  !tie
  !tie
  !pan,9
  !endVibrato
  !tremolo,0,35,100
  !e5
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_4
  !vibrato,0,14,60
  !instr,!instr18
  !volume,190
  !pan,10
  !slideIn,0,20,1
  db 60,$76
  !ds6
  !tie
  !pitchSlide,39,33 : !c6
  !tie
  !tie
  !pan,11
  !endVibrato
  !tremolo,0,35,100
  !endSlide
  !b5
  !tie
  !tie
  !tie
  !tie
  !end

.pattern1_0
  db 72
  !rest
  !rest
  !loop : dw .sub4F5F : db 17
  !end

.sub4F5F
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
