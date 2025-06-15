asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr11 = $16
!instr13 = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr11,$81,$E7,$B8,$03,$90
  db !instr13,$FF,$E0,$B8,$03,$90
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample11_12_13,Sample11_12_13+27
  dw Sample11_12_13,Sample11_12_13+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample11_12_13: incbin "Sample_6c7fe9ffa3b0e176fc82c19308fbb5a4.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
-
  dw .pattern0
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !musicVolume,255
  !tempo,46
  !vibrato,0,1,245
  !instr,!instr13
  !volume,45
  !dynamicVolume,255,180
  !pan,10
  db 72,$79
  !g2
  !tie
  !loop : dw .sub487F : db 36
  !dynamicVolume,255,45
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_1
  !vibrato,0,1,243
  !instr,!instr13
  !volume,45
  !dynamicVolume,255,145
  !pan,20
  db 72,$72
  !g4
  !tie
  !loop : dw .sub487F : db 36
  !dynamicVolume,255,45
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_2
  !pan,0
  !endTremolo
  !vibrato,0,1,243
  !instr,!instr13
  !volume,45
  !dynamicVolume,255,145
  db 72,$72
  !d5
  !tie
  !loop : dw .sub487F : db 36
  !dynamicVolume,255,45
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_3
  !vibrato,0,2,243
  !pan,8
  !instr,!instr11
  !volume,195
  db 72,$72
  !d6
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !b4
  !loop : dw .sub487F : db 5
  !pan,7
  !b4
  !pitchSlide,0,100 : !d6
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !d5
  !tie
  !loop : dw .sub487F : db 6
  !dynamicVolume,144,45
  !tie
  !tie
  !rest
  !rest
  !rest
  !rest
  !vibrato,0,2,243
  !pan,8
  !instr,!instr11
  !volume,195
  !d6
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !b4
  !loop : dw .sub487F : db 6
  !pan,7
  !b4
  !pitchSlide,0,100 : !d6
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !d5
  !tie
  !loop : dw .sub487F : db 6
  !dynamicVolume,144,45
  !tie
  !tie
  !end

.pattern0_4
  !vibrato,0,2,243
  !pan,13
  !instr,!instr11
  !volume,195
  db 72,$72
  !g5
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !f5
  !loop : dw .sub487F : db 5
  !pan,12
  !c5
  !pitchSlide,0,100 : !e6
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !e5
  !tie
  !loop : dw .sub487F : db 6
  !dynamicVolume,144,45
  !tie
  !tie
  !rest
  !rest
  !rest
  !rest
  !vibrato,0,2,243
  !pan,13
  !instr,!instr11
  !volume,195
  !g5
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !f5
  !loop : dw .sub487F : db 6
  !pan,12
  !c5
  !pitchSlide,0,100 : !e6
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !e5
  !tie
  !loop : dw .sub487F : db 6
  !dynamicVolume,144,45
  !tie
  !tie
  !end

.sub487F
  !tie
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
