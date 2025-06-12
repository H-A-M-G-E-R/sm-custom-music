asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr11 = $16
!instr13 = $17
!instr26 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr11,$81,$E7,$B8,$03,$90
  db !instr13,$FF,$E0,$B8,$03,$90
  db !instr26,$FF,$E0,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample11_12_13,Sample11_12_13+27
  dw Sample11_12_13,Sample11_12_13+27
  dw Sample26,Sample26+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample11_12_13: incbin "Sample_6c7fe9ffa3b0e176fc82c19308fbb5a4.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,255
  !tempo,51
  db 72
  !rest
  !rest
  db 125
  !rest
  !pan,7
  !instr,!instr26
  !transpose,13
  !volume,85
  !vibrato,0,70,243
  db 3,$29
  !g7
  db 4,$39
  !g7
  !slideOut,2,5,246
  db 7,$46
  !b6
  !slideOut,2,4,18
  db 5,$76
  !b6
  db 70
  !rest
  !volume,68
  db 3,$39
  !g7
  db 4
  !g7
  !slideOut,2,6,246
  db 8,$46
  !b6
  !slideOut,2,5,18
  db 6,$76
  !b6
  db 7
  !rest
  !volume,72
  db 3,$29
  !g7
  db 4,$39
  !g7
  !slideOut,2,6,246
  db 8,$46
  !b6
  !slideOut,2,5,18
  db 6,$76
  !b6
  db 25
  !rest
  db 72
  !rest
  !rest
  db 26
  !rest
  !pan,20
  !transpose,12
  !volume,69
  db 3,$39
  !g7
  db 4
  !g7
  !slideOut,2,6,246
  db 8,$46
  !b6
  !slideOut,2,5,18
  db 6,$76
  !b6
  db 7
  !rest
  !volume,79
  db 3,$29
  !g7
  db 4,$39
  !g7
  !slideOut,2,6,246
  db 8,$46
  !b6
  !slideOut,2,5,18
  db 6,$76
  !b6
  db 69
  !rest
  !vibrato,0,70,244
  !pan,20
  !dynamicPan,112,7
  db 3
  !e7
  db 4
  !e7
  db 3
  !rest
  !g7
  db 4
  !g7
  db 2
  !rest
  db 3
  !e7
  db 4
  !e7
  db 3
  !rest
  !g7
  db 4
  !g7
  db 2
  !rest
  db 3
  !e7
  db 4
  !e7
  db 3
  !rest
  !g7
  db 4
  !g7
  db 2
  !rest
  db 3
  !f7
  db 4
  !f7
  db 3
  !rest
  !g7
  db 4
  !g7
  db 2
  !rest
  db 3
  !f7
  db 4
  !f7
  db 3
  !rest
  !g7
  db 4
  !g7
  db 2
  !rest
  db 3
  !f7
  db 4
  !f7
  db 3
  !rest
  !g7
  db 4
  !g7
  db 32
  !rest
  db 72
  !rest
  !rest
  !loop : dw .sub501C : db 11
  !end

.pattern0_1
  !vibrato,0,1,244
  !instr,!instr13
  !volume,40
  !dynamicVolume,255,160
  !pan,20
  db 72,$72
  !g3
  !tie
  !loop : dw .sub501F : db 16
  !dynamicVolume,144,40
  !tie
  !tie
  !end

.pattern0_2
  !pan,0
  !endTremolo
  !vibrato,0,1,244
  !instr,!instr13
  !volume,40
  !dynamicVolume,255,160
  db 72,$72
  !gs3
  !tie
  !loop : dw .sub501F : db 16
  !dynamicVolume,144,40
  !tie
  !tie
  !end

.pattern0_3
  !vibrato,0,2,243
  !pan,8
  !instr,!instr11
  !volume,160
  db 72,$71
  !d6
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !b4
  !loop : dw .sub501F : db 5
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
  !loop : dw .sub501F : db 6
  !dynamicVolume,144,40
  !tie
  !tie
  !end

.pattern0_4
  !vibrato,0,2,243
  !pan,13
  !instr,!instr11
  !volume,160
  db 72,$71
  !g5
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !f5
  !loop : dw .sub501F : db 5
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
  !loop : dw .sub501F : db 6
  !dynamicVolume,144,40
  !tie
  !tie
  !end

.sub501C
  !rest
  !rest
  !end

.sub501F
  !tie
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
