asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr0B = $16
!instr0D = $17
!instr13 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr0B,$8F,$2E,$B8,$04,$00
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr13,$FA,$E1,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample0B,Sample0B+27
  dw Sample0D,Sample0D+441
  dw Sample13,Sample13+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample0B: incbin "Sample0B.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample13: incbin "Sample13.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDA48

TrackerDA48:
  dw .pattern0
  dw .pattern1
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, 0, .pattern1_4, 0, 0, 0

.pattern0_0
  !tempo,29
  !musicVolume,210;240
  !volume,200
  !pan,10
  !instr,!instr13
  !echo,%00011111,20,20
  !echoParameters,4,80,0
  !loop : dw .subDF34 : db 2
  db 12
  !rest
  db 12,$37
  !b5
  !rest
  !as5
  !rest
  !gs5
  !rest
  !as5
  db 6,$77
  !gs5
  !as5
  db 12,$37
  !gs5
  !gs5
  !ds5
  db 24,$77
  !f5
  !rest
  !loop : dw .subDF41 : db 2
  db 12
  !rest
  db 12,$3F
  !fs6
  !rest
  !f6
  !rest
  !f6
  !rest
  !ds6
  !rest
  db 6,$7F
  !ds6
  !f6
  db 12,$3F
  !ds6
  !d6
  db 48
  !ds6
  !end

.pattern0_1
  !instr,!instr13
  !volume,200
  !pan,10
  !loop : dw .subDF4E : db 2
  db 12
  !rest
  db 12,$37
  !d5
  !rest
  !d5
  !rest
  !c5
  !rest
  !d5
  !d5
  !c5
  !c5
  !b4
  db 24,$77
  !d5
  !rest
  !loop : dw .subDF5B : db 2
  db 12
  !rest
  db 12,$3F
  !ds6
  !rest
  !d6
  !rest
  !as5
  !rest
  !as5
  !rest
  db 6,$7F
  !b5
  !d6
  db 12,$3F
  !b5
  !as5
  db 48
  !g5
  !end

.pattern0_2
  !instr,!instr13
  !volume,200
  !pan,10
  !loop : dw .subDF68 : db 2
  db 12,$3F
  !as3
  db 12,$37
  !f4
  db 12,$3F
  !as3
  !f3
  !f3
  !f3
  !f3
  db 12,$37
  !f4
  db 12,$3F
  !gs3
  db 12,$37
  !fs4
  db 12,$3F
  !gs3
  db 12,$37
  !fs4
  db 24,$7F
  !as3
  !rest
  !loop : dw .subDF75 : db 2
  db 12,$3F
  !gs3
  db 12,$37
  !f4
  db 12,$3F
  !gs3
  db 12,$37
  !f4
  db 12,$3F
  !as3
  db 12,$37
  !fs4
  db 12,$3F
  !as3
  db 12,$37
  !fs4
  db 12,$3F
  !as3
  db 12,$37
  !gs4
  db 12,$3F
  !as3
  db 12,$37
  !gs4
  db 48,$3F
  !ds3
  !end

.pattern0_3
  !instr,!instr0B
  !volume,200
  !pan,10
  !loop : dw .subDF82 : db 2
  !instr,!instr0D
  db 12
  !rest
  db 12,$3F
  !b5
  !rest
  !as5
  !rest
  !gs5
  !rest
  !as5
  db 6,$7F
  !gs5
  !as5
  db 12,$3F
  !gs5
  !gs5
  !ds5
  db 24,$7F
  !f5
  !rest
  !instr,!instr0B
  !loop : dw .subDF8F : db 2
  !instr,!instr13
  db 12
  !rest
  db 12,$37
  !fs7
  !rest
  !f7
  !rest
  !f7
  !rest
  !ds7
  !rest
  db 6,$77
  !ds7
  !f7
  db 12,$37
  !ds7
  !d7
  db 48
  !ds7
  !end

.pattern0_4
  !volume,200
  !pan,10
  db 96
  !rest
  !rest
  !instr,!instr0D
  db 12
  !rest
  db 12,$3F
  !d5
  !rest
  !d5
  !rest
  !c5
  !rest
  !d5
  !d5
  !c5
  !c5
  !rest
  db 24,$7F
  !d5
  !rest
  !loop : dw .subDF9C : db 4
  !end

.pattern1_0
  db 6,$7B
  !as5
  !c6
  db 60
  !as5
  db 24
  !ds6
  db 96,$5B
  !c6
  db 6,$7B
  !gs5
  !as5
  db 60
  !gs5
  db 24
  !d6
  db 6
  !d6
  !ds6
  db 84,$5B
  !as5
  db 6,$7B
  !g5
  !as5
  db 60
  !g5
  db 24
  !as5
  db 6
  !as5
  !c6
  db 84,$5B
  !gs5
  db 6,$7B
  !d5
  !ds5
  db 60
  !d5
  db 24
  !f5
  db 36
  !gs5
  db 60,$5B
  !g5
  !loop : dw .subDEA8 : db 1
  !end

.pattern1_1
  db 6,$7B
  !g5
  !gs5
  db 60
  !g5
  db 24
  !g5
  db 96,$5B
  !gs5
  db 6,$7B
  !f5
  !g5
  db 60
  !f5
  db 24
  !f5
  db 6
  !f5
  !g5
  db 84,$5B
  !g5
  db 6,$7B
  !d5
  !c5
  db 60
  !as4
  db 24
  !g5
  db 6
  !d5
  !ds5
  db 84,$5B
  !c5
  db 6,$7B
  !as4
  !c5
  db 60
  !as4
  db 24
  !gs4
  db 36
  !b4
  db 60,$5B
  !as4
  db 36,$7B
  !g6
  !gs6
  db 24
  !g6
  db 36
  !as6
  db 60,$5B
  !gs6
  db 36,$7B
  !ds6
  !f6
  db 24
  !g6
  db 36
  !gs6
  db 60,$5B
  !g6
  db 36,$7B
  !ds6
  db 24
  !d6
  db 36
  !d6
  !g6
  !f6
  db 24
  !c6
  db 36
  !gs6
  !as6
  db 24
  !gs6
  db 36
  !f6
  db 60,$5B
  !ds6
  !end

.pattern1_2
  !loop : dw .subDFA1 : db 1
  db 12,$5D
  !as3
  db 24
  !as3
  db 12
  !as3
  !as3
  db 24
  !as3
  db 12
  !as3
  !loop : dw .subDFA1 : db 1
  db 12,$5D
  !gs3
  db 24
  !gs3
  db 12
  !gs3
  !gs3
  db 24
  !gs3
  db 12
  !gs3
  !loop : dw .subDFB8 : db 1
  !ds3
  db 24
  !ds3
  db 12
  !ds3
  !ds3
  db 24
  !ds3
  db 12
  !ds3
  db 12,$5D
  !gs3
  db 24
  !gs3
  db 12
  !gs3
  !gs3
  db 24
  !gs3
  db 12
  !gs3
  !as3
  db 24
  !as3
  db 12
  !as3
  !as3
  db 24
  !as3
  db 12
  !as3
  db 12,$5B
  !ds4
  db 24
  !ds4
  db 12
  !ds4
  !d4
  db 24
  !d4
  db 12
  !d4
  !c4
  db 24
  !c4
  db 12
  !c4
  db 12,$5D
  !as3
  db 24
  !as3
  db 12
  !as3
  !gs3
  db 24
  !gs3
  db 12
  !gs3
  !gs3
  db 24
  !gs3
  db 12
  !gs3
  !loop : dw .subDFB8 : db 1
  !end

.pattern1_4
  db 96
  !rest
  !loop : dw .subDFCF : db 7
  !instr,!instr13
  db 36,$75
  !g7
  !gs7
  db 24
  !g7
  db 36
  !as7
  db 60,$55
  !gs7
  db 36,$75
  !ds7
  !f7
  db 24
  !g7
  db 36
  !gs7
  db 60,$55
  !g7
  db 36,$75
  !ds7
  db 24
  !d7
  db 36
  !d7
  !g7
  !f7
  db 24
  !c7
  db 36
  !gs7
  !as7
  db 24
  !gs7
  db 36
  !f7
  db 60,$55
  !ds7
  !end

.subDF34
  db 12,$3B
  !f5
  !fs5
  !f5
  !fs5
  !ds5
  db 12,$5B
  !ds6
  db 24
  !rest
  !end

.subDF41
  db 12,$3B
  !fs5
  !gs5
  !fs5
  !gs5
  !f5
  db 12,$7B
  !f6
  db 24
  !rest
  !end

.subDF4E
  db 12,$3B
  !d5
  !ds5
  !d5
  !ds5
  !as4
  db 12,$5B
  !fs5
  db 24
  !rest
  !end

.subDF5B
  db 12,$3B
  !ds5
  !f5
  !ds5
  !f5
  !d5
  db 12,$7B
  !d6
  db 24
  !rest
  !end

.subDF68
  db 12,$3B
  !b5
  !as5
  !b5
  !as5
  !fs5
  db 12,$5F
  !ds3
  db 24
  !rest
  !end

.subDF75
  db 12,$3B
  !b5
  !as5
  !b5
  !as5
  !as4
  db 12,$7F
  !as3
  db 24
  !rest
  !end

.subDF82
  db 12,$3B
  !b5
  !as5
  !b5
  !as5
  !fs5
  db 12,$5B
  !ds6
  db 24
  !rest
  !end

.subDF8F
  db 12,$3B
  !b5
  !as5
  !b5
  !as5
  !f5
  db 12,$7B
  !f6
  db 24
  !rest
  !end

.subDF9C
  !rest
  !rest
  !rest
  !rest
  !end

.subDEA8
  db 6,$7B
  !as5
  !c6
  db 48
  !as5
  db 12
  !rest
  db 24
  !ds6
  db 72
  !c6
  db 24
  !rest
  db 6
  !gs5
  !as5
  db 48
  !gs5
  db 12
  !rest
  db 24
  !d6
  db 6
  !d6
  !ds6
  db 48
  !as5
  db 36
  !rest
  db 6
  !g5
  !as5
  db 48
  !g5
  db 12
  !rest
  db 24
  !as5
  db 6
  !as5
  !c6
  db 48
  !gs5
  db 36
  !rest
  db 6
  !d5
  !ds5
  db 48
  !d5
  db 12
  !rest
  db 24
  !f5
  db 36
  !gs5
  db 48
  !g5
  db 12
  !rest
  !end

.subDFA1
  db 12,$5F
  !ds3
  db 24
  !ds3
  db 12
  !ds3
  !ds3
  db 24
  !ds3
  db 12
  !ds3
  !ds3
  db 24
  !ds3
  db 12
  !ds3
  !ds3
  db 24
  !ds3
  db 12
  !ds3
  !end

.subDFB8
  !as3
  db 24
  !as3
  db 12
  !as3
  !as3
  db 24
  !as3
  db 12
  !as3
  db 12,$5F
  !ds3
  db 24
  !ds3
  db 12
  !ds3
  !ds3
  db 24
  !ds3
  db 12
  !ds3
  !end

.subDFCF
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
