asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr23 = $16
!instr33 = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr33,$FF,$F1,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample23,Sample23+396
  dw Sample33,Sample33+387
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample33: incbin "Sample_e42d834c4fd0df619c1d2a53c82c3c1d.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
-
  dw .pattern0
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !pan,10
  !echoParameters,5,70,0
  !echo,%00011111,51,51
  !musicVolume,255
  !tempo,51
  !instr,!instr33
  !volume,128
  db 36,$77
  !e6
  !volume,97
  !dynamicVolume,198,128
  db 36,$74
  !a5
  !e6
  !a5
  !loop : dw .sub50AF : db 1
  !d6
  !g5
  db 36,$77
  !c6
  !d6
  !volume,97
  !dynamicVolume,216,128
  db 36,$74
  !a5
  !a5
  !e6
  !a5
  !loop : dw .sub50AF : db 1
  !d6
  !g5
  db 36,$77
  !ds6
  db 36,$76
  !f6
  !volume,88
  !dynamicVolume,216,128
  db 36,$74
  !c6
  !c6
  !g6
  !c6
  !g6
  !c6
  db 36,$34
  !f6
  db 36,$35
  !ds6
  !volume,88
  !dynamicVolume,216,128
  db 36,$74
  !as5
  !as5
  !f6
  !as5
  !f6
  !as5
  db 36,$77
  !ds6
  !f6
  !volume,88
  !dynamicVolume,216,128
  db 36,$74
  !c6
  !c6
  !g6
  !c6
  !g6
  !c6
  db 72,$72
  !c7
  !dynamicVolume,255,110
  db 36,$74
  !g6
  !b5
  db 37
  !g6
  db 38
  !b5
  db 40
  !f6
  db 42
  !b5
  db 50
  !f6
  db 53
  !b5
  !end

.pattern0_1
  !pan,9
  !instr,!instr33
  !volume,141
  db 18,$73
  !c5
  !a4
  !c5
  !f5
  !a5
  !a4
  !c5
  !f5
  !loop : dw .sub50C1 : db 1
  !g5
  !g4
  !b4
  !d5
  !g5
  !e5
  !b5
  !b5
  !volume,88
  !dynamicVolume,216,141
  !c5
  !a4
  !c5
  !f5
  !a5
  !a4
  !c5
  !f5
  !loop : dw .sub50C1 : db 1
  !g5
  !g4
  !b4
  !d5
  !c6
  !ds5
  !d6
  !ds6
  !volume,88
  !dynamicVolume,216,141
  !gs5
  !c5
  !ds5
  !gs5
  !c6
  !c5
  !ds5
  !gs5
  !c6
  !c5
  !ds5
  !gs5
  !c6
  !gs5
  !c6
  !c6
  !volume,88
  !dynamicVolume,216,141
  !g5
  !d5
  !g5
  !as5
  !d6
  !d5
  !g5
  !as5
  !d6
  !d5
  !g5
  !as5
  !as5
  !g5
  !as5
  !d6
  !volume,88
  !dynamicVolume,216,141
  !gs5
  !c5
  !ds5
  !gs5
  !c6
  !c5
  !ds5
  !gs5
  !c6
  !c5
  !ds5
  !gs5
  !c6
  !c5
  !ds5
  !gs5
  !dynamicVolume,255,106
  !b5
  !d5
  !g5
  !b5
  db 19
  !d6
  db 18
  !d5
  db 19
  !g5
  !b5
  db 20,$76
  !d6
  !d5
  db 21
  !g5
  !b5
  db 25
  !d6
  !d5
  db 26
  !g5
  db 27
  !b5
  !end

.pattern0_2
  db 18
  !rest
  !pan,10
  !instr,!instr33
  !volume,97
  !dynamicVolume,198,128
  db 36,$74
  !f5
  !c6
  !f5
  !c6
  !loop : dw .sub50D7 : db 1
  !e5
  !b5
  db 36,$72
  !g5
  db 36,$77
  !e6
  !volume,97
  !dynamicVolume,216,128
  db 36,$74
  !f5
  !c6
  !f5
  !c6
  !loop : dw .sub50D7 : db 1
  !e5
  !b5
  db 36,$72
  !g5
  db 36,$75
  !g6
  !volume,88
  !dynamicVolume,216,128
  db 36,$74
  !gs5
  !ds6
  !gs5
  !ds6
  !gs5
  !ds6
  db 36,$72
  !c6
  db 36,$34
  !f6
  !volume,88
  !dynamicVolume,216,128
  db 36,$74
  !g5
  !d6
  !g5
  !d6
  !g5
  !d6
  db 36,$72
  !as5
  db 36,$77
  !g6
  !volume,88
  !dynamicVolume,216,128
  db 36,$74
  !gs5
  !ds6
  !gs5
  !ds6
  !gs5
  db 18
  !ds6
  !g6
  !gs5
  !c6
  !ds6
  !rest
  !pan,0
  !dynamicVolume,255,110
  db 36
  !g5
  !d6
  db 37
  !g5
  db 39
  !d6
  db 41
  !g5
  db 46
  !d6
  db 50
  !g5
  db 29
  !d6
  !end

.pattern0_3
  !instr,!instr33
  !volume,172
  !vibrato,0,20,30
  !pan,10
  !loop : dw .sub50EB : db 2
  db 18,$58
  !gs3
  db 126,$76
  !gs3
  db 72
  !tie
  !rest
  db 18,$58
  !g3
  db 126,$76
  !g3
  db 72
  !tie
  !rest
  db 18,$58
  !gs3
  db 126,$76
  !gs3
  db 72
  !tie
  !rest
  db 18,$58
  !g3
  db 126,$76
  !g3
  db 3
  !tie
  db 82
  !tie
  db 103
  !rest
  !end

.pattern0_4
  !pan,11
  !vibrato,0,9,30
  !instr,!instr23
  !volume,141
  db 72,$76
  !f3
  !c4
  db 72,$75
  !f4
  db 72,$76
  !f3
  !e3
  !b3
  db 72,$75
  !fs4
  !g4
  db 72,$76
  !f3
  !c4
  db 72,$75
  !f4
  db 72,$76
  !f3
  !e3
  !b3
  db 72,$75
  !fs4
  !rest
  !loop : dw .sub50FE : db 1
  !g3
  !d4
  db 72,$75
  !a4
  !as4
  !loop : dw .sub50FE : db 1
  !g3
  db 75
  !d4
  db 82,$75
  !g4
  db 103,$74
  !g3
  !end

.sub50AF
  !e6
  !a5
  db 36,$77
  !d6
  !c6
  !volume,97
  !dynamicVolume,216,128
  db 36,$74
  !g5
  !g5
  !d6
  !g5
  !end

.sub50C1
  !a5
  !a4
  !c5
  !f5
  !a5
  !c5
  !a5
  !a5
  !volume,88
  !dynamicVolume,216,141
  !b4
  !g4
  !b4
  !d5
  !g5
  !g4
  !b4
  !d5
  !end

.sub50D7
  !f5
  !c6
  db 36,$72
  !f5
  db 36,$77
  !d6
  !volume,97
  !dynamicVolume,216,128
  db 36,$74
  !e5
  !b5
  !e5
  !b5
  !end

.sub50EB
  db 18,$58
  !f3
  db 126,$76
  !f3
  db 72
  !tie
  !rest
  db 18,$58
  !e3
  db 126,$76
  !e3
  db 72
  !tie
  !rest
  !end

.sub50FE
  db 72,$76
  !gs3
  !ds4
  db 72,$74
  !c5
  db 72,$76
  !gs4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
