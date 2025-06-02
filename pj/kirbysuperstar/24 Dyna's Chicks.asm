asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr26 = $16

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr26,$FF,$E0,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample26,Sample26+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
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

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !pan,0
  !musicVolume,255
  !tempo,51
  !instr,!instr26
  !transpose,16
  !slideOut,3,21,245
  !volume,90
  !dynamicVolume,4,190
  db 8,$70
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 10
  !rest
  !loop : dw .sub56AB : db 2
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 7
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 25
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 22
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !pan,2
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 15
  !rest
  !pan,6
  !volume,90
  !dynamicVolume,4,185
  db 8,$72
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 20
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8,$75
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 7
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 22
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 16
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 4
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 9
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 17
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 12
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 1
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 14
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 10
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 22
  !rest
  !pan,5
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 6
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 11
  !rest
  !pan,4
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 22
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 17
  !rest
  !pan,2
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 12
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 9
  !rest
  !pan,1
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 4
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 22
  !rest
  !pan,0
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 3
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 14
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 9
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 21
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 7
  !rest
  !loop : dw .sub56BA : db 2
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 16
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 1
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 22
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 10
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 14
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 12
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 9
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 22
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 16
  !rest
  !end

.pattern0_1
  db 3
  !rest
  !pan,0
  !instr,!instr26
  !transpose,15
  !slideOut,3,21,245
  !volume,90
  !dynamicVolume,4,190
  db 8,$70
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 7
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 22
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 6
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 17
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 7
  !rest
  !pan,2
  !volume,90
  !dynamicVolume,4,185
  db 8,$72
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 11
  !rest
  !pan,6
  !volume,90
  !dynamicVolume,4,185
  db 8,$75
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 17
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 21
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 4
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 11
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 15
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !loop : dw .sub56E5 : db 1
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 20
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 17
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 18
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 6
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 18
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 7
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 22
  !rest
  !pan,5
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 4
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 9
  !rest
  !pan,4
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 17
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 22
  !rest
  !pan,2
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 10
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 15
  !rest
  !pan,1
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 7
  !rest
  !pan,0
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 20
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 14
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 18
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 11
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 18
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 16
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 11
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 19
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 6
  !rest
  !loop : dw .sub5701 : db 1
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 20
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 15
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 14
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 16
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 8
  !rest
  !volume,90
  !dynamicVolume,4,185
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 22
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie

.pattern0_2
  db 20
  !rest
  !pan,0
  !instr,!instr26
  !transpose,14
  !slideOut,3,21,245
  !volume,90
  !dynamicVolume,4,190
  db 8,$70
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 7
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 6
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 8
  !rest
  !volume,90
  !dynamicVolume,4,190
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 15
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 20
  !rest
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 7
  !rest
  !pan,2
  !volume,90
  !dynamicVolume,4,185
  db 8,$72
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 4
  !rest
  !pan,6
  !volume,90
  !dynamicVolume,4,185
  db 8,$75
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 12
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 8
  !rest
  !volume,90
  !dynamicVolume,4,185
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 8
  !rest
  !volume,90
  !dynamicVolume,4,185
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 9
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 11
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 6
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 4
  !rest
  !loop : dw .sub56E5 : db 1
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 11
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 3
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 2
  !rest
  !loop : dw .sub571E : db 2
  !pan,5
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 16
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 8
  !rest
  !pan,4
  !volume,90
  !dynamicVolume,4,185
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 6
  !rest
  !pan,2
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 2
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 20
  !rest
  !pan,1
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 9
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 14
  !rest
  !pan,0
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 12
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 11
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 4
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 20
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 3
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 19
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 9
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 8
  !rest
  !volume,90
  !dynamicVolume,4,185
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 16
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 6
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 4
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 8
  !rest
  !volume,90
  !dynamicVolume,4,185
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 10
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 11
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 20
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 20
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 6
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 72
  !rest
  db 57
  !rest

.sub56AB
  !volume,90
  !dynamicVolume,4,190
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 10
  !rest
  !end

.sub56BA
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 10
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 3
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 9
  !rest
  !end

.sub56E5
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 8
  !rest
  !volume,90
  !dynamicVolume,4,185
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 1
  !rest
  !end

.sub5701
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 3
  !rest
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 9
  !rest
  !end

.sub571E
  !volume,90
  !dynamicVolume,4,185
  db 8
  !g7
  !dynamicVolume,13,40
  db 13
  !tie
  db 5
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
