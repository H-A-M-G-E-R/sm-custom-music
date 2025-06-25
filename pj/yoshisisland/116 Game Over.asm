asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr13 = $16

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr13,$FE,$F3,$B8,$04,$FF
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample13,Sample13+369
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample13: incbin "Sample_4e4eabd94f1d721abc772633931c5756.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker28E6

Tracker28E6:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,29
  !musicVolume,250
  !instr,!instr13
  !pan,9
  !volume,220
  db 50,$53
  !d5
  db 46,$77
  !e5
  db 90
  !rest
  db 6,$7A
  !g4
  db 16,$34
  !tie
  db 16,$64
  !d5
  db 13,$36
  !d5
  db 11,$35
  !d5
  db 10,$48
  !e4
  db 11,$46
  !d5
  db 13,$37
  !e4
  db 6,$68
  !g3
  db 5
  !rest
  db 13,$49
  !c5
  db 12,$28
  !fs4
  db 21,$29
  !f4
  db 15,$2A
  !as3
  db 7,$7A
  !ds3
  db 23
  !rest
  !loop : dw .sub2ADE : db 1
  !end

.pattern0_1
  !instr,!instr13
  !pan,8
  !volume,220
  db 36
  !rest
  db 60,$5A
  !d5
  db 67
  !rest
  db 29,$6B
  !f4
  db 13
  !rest
  db 15,$56
  !e4
  db 14,$38
  !e4
  db 10,$59
  !e4
  db 13,$36
  !d5
  db 7,$53
  !as4
  db 14,$35
  !as4
  db 10,$58
  !d5
  db 4
  !rest
  db 12,$67
  !g3
  db 13,$69
  !g3
  db 14,$49
  !g3
  db 20,$39
  !as3
  db 33,$3A
  !f3
  db 48
  !rest
  db 48,$79
  !d7
  db 70
  !tie
  db 26
  !rest
  !end

.pattern0_2
  !instr,!instr13
  !pan,9
  !volume,220
  db 2
  !rest
  db 20,$54
  !e5
  db 74
  !rest
  db 31
  !rest
  db 59,$5A
  !a4
  db 6,$7A
  !e4
  db 21,$54
  !tie
  db 13,$34
  !e4
  db 13,$59
  !e4
  db 12,$75
  !g3
  db 11,$56
  !d5
  db 5,$78
  !e4
  !rest
  db 10,$56
  !d5
  db 6,$78
  !e4
  db 9
  !rest
  db 14,$39
  !as4
  db 11,$37
  !f4
  db 20,$3A
  !ds4
  db 42
  !g3
  db 46
  !rest
  db 4,$74
  !b6
  db 46
  !rest
  db 24
  !rest
  !rest
  !rest
  !rest
  !end

.pattern0_3
  !instr,!instr13
  !pan,10
  !volume,220
  db 20
  !rest
  db 20,$5A
  !ds5
  db 56
  !rest
  db 48
  !rest
  db 42,$5B
  !g4
  db 6,$7A
  !as4
  db 24
  !tie
  db 4,$69
  !d5
  db 11
  !rest
  db 9,$36
  !d5
  db 15,$38
  !e4
  db 9,$57
  !e4
  db 12,$56
  !d5
  db 9,$59
  !e4
  db 3,$76
  !d5
  db 13,$59
  !tie
  !g4
  db 11,$39
  !ds4
  db 22,$5A
  !g3
  db 37,$3C
  !fs3
  db 46
  !rest
  db 4,$74
  !as6
  db 46
  !rest
  db 24
  !rest
  !rest
  !rest
  !rest
  !end

.pattern0_4
  !instr,!instr13
  !pan,9
  !volume,240
  db 3
  !rest
  db 17,$6F
  !g5
  db 15
  !g5
  db 46,$6D
  !g5
  db 15,$65
  !a5
  db 1,$78
  !tie
  db 17
  !g5
  db 13,$64
  !c5
  db 17,$4A
  !ds5
  db 19,$4C
  !ds5
  db 24
  !ds5
  db 5,$7B
  !d5
  db 96
  !tie
  !rest
  !loop : dw .sub2ADE : db 1
  !end

.pattern0_5
  !instr,!instr13
  !pan,11
  !volume,220
  db 50
  !rest
  db 46,$7F
  !c6
  db 31
  !rest
  db 18,$69
  !f3
  db 18,$6C
  !ds3
  db 24
  !cs3
  db 5,$7C
  !c4
  db 57,$68
  !tie
  db 6
  !c4
  db 10,$6A
  !c4
  db 10,$64
  !c4
  db 10,$5A
  !c4
  db 3,$7A
  !c4
  db 9,$5A
  !tie
  db 14
  !c4
  !c4
  db 10,$57
  !c4
  db 4,$7A
  !c4
  db 45
  !tie
  !loop : dw .sub2ADE : db 1
  !end

.pattern0_6
  !instr,!instr13
  !pan,12
  !volume,240
  db 1
  !rest
  db 18,$77
  !as4
  db 16,$7A
  !a4
  db 14
  !gs4
  db 47,$7B
  !g4
  db 31,$77
  !fs4
  db 18,$49
  !f4
  db 18,$4A
  !ds4
  db 24,$4C
  !cs4
  db 5,$7B
  !c3
  db 69,$69
  !tie
  db 9,$59
  !c3
  db 10,$5A
  !c3
  db 8,$7A
  !c3
  db 16,$69
  !tie
  db 27
  !c3
  db 29,$56
  !c3
  db 24,$76
  !c3
  db 96
  !tie
  db 45
  !tie
  db 51
  !rest
  !end

.pattern0_7
  !instr,!instr13
  !pan,10
  !volume,220
  db 1
  !rest
  db 20,$62
  !ds5
  db 75
  !rest
  db 87
  !rest
  db 9,$52
  !g3
  db 45
  !rest
  db 7
  !as4
  !as4
  db 37,$42
  !as4
  db 96
  !rest
  db 46
  !rest
  db 50,$72
  !e6
  db 43
  !tie
  db 53
  !rest
  !end

.sub2ADE
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
