asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr19 = $16
!instr23 = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr23,$FD,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample23,Sample23+396
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"

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
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echo,%00000001,1,1
  !echoParameters,1,1,2
  !musicVolume,255
  !tempo,51
  !echo,%00011111,45,45
  !echoParameters,5,60,0
  !instr,!instr23
  !volume,150
  db 18,$06
  !g5
  db 18,$04
  !ds5
  !g5
  db 18,$06
  !as5
  db 18,$04
  !g5
  !ds5
  db 18,$06
  !g5
  db 18,$04
  !ds5
  !g5
  db 18,$06
  !as5
  db 18,$04
  !g5
  !ds5
  db 18,$06
  !g5
  db 18,$04
  !ds5
  db 18,$66
  !b4
  db 18,$14
  !ds5
  !loop : dw .sub4F60 : db 2
  db 18,$06
  !gs5
  db 18,$04
  !e5
  db 18,$66
  !b4
  db 18,$14
  !e5
  !end

.pattern0_1
  !loop : dw .sub4F6F : db 1

.pattern0_2
  !loop : dw .sub4FA0 : db 1

.pattern0_3
  !loop : dw .sub4FD1 : db 1

.pattern0_4
  !loop : dw .sub5002 : db 1

.pattern1_0
  !instr,!instr23
  !volume,150
  db 18,$06
  !g5
  db 18,$04
  !ds5
  !g5
  db 18,$06
  !as5
  db 18,$04
  !g5
  !ds5
  db 18,$06
  !g5
  db 18,$04
  !ds5
  !g5
  db 18,$06
  !as5
  db 18,$04
  !g5
  !ds5
  db 18,$06
  !g5
  db 18,$04
  !ds5
  db 18,$66
  !b4
  db 18,$14
  !ds5
  !loop : dw .sub4F60 : db 2
  db 18,$06
  !gs5
  db 18,$04
  !e5
  db 18,$66
  !b4
  db 18,$14
  !e5
  !end

.pattern1_1
  !loop : dw .sub4F6F : db 1

.pattern1_2
  !loop : dw .sub4FA0 : db 1

.pattern1_3
  !loop : dw .sub4FD1 : db 1

.pattern1_4
  !loop : dw .sub5002 : db 1

.sub4F60
  db 18,$06
  !gs5
  db 18,$04
  !e5
  !gs5
  db 18,$06
  !c6
  db 18,$04
  !gs5
  !e5
  !end

.sub4F6F
  !subtranspose,60
  !instr,!instr19
  !vibrato,0,20,40
  !pan,8
  !volume,120
  !dynamicVolume,200,255
  db 54,$7A
  !c3
  !tie
  !tie
  db 54,$58
  !tie
  db 36,$0A
  !c3
  db 36,$09
  !c3
  !volume,70
  !dynamicVolume,200,255
  db 54,$7A
  !cs3
  !tie
  !tie
  db 54,$58
  !tie
  db 36,$0A
  !cs3
  db 36,$09
  !cs3
  !end

.sub4FA0
  !subtranspose,60
  !instr,!instr19
  !vibrato,0,20,40
  !pan,8
  !volume,65
  !dynamicVolume,200,155
  db 54,$78
  !e4
  !tie
  !tie
  db 54,$58
  !tie
  db 36,$06
  !e4
  db 36,$43
  !e4
  !volume,65
  !dynamicVolume,200,155
  db 54,$78
  !f4
  !tie
  !tie
  db 54,$58
  !tie
  db 36,$06
  !f4
  db 36,$43
  !f4
  !end

.sub4FD1
  !subtranspose,60
  !instr,!instr19
  !vibrato,0,20,40
  !pan,12
  !volume,65
  !dynamicVolume,200,155
  db 54,$78
  !gs4
  !tie
  !tie
  db 54,$58
  !tie
  db 36,$06
  !gs4
  db 36,$43
  !gs4
  !volume,65
  !dynamicVolume,200,155
  db 54,$78
  !a4
  !tie
  !tie
  db 54,$58
  !tie
  db 36,$06
  !a4
  db 36,$43
  !a4
  !end

.sub5002
  !subtranspose,60
  !instr,!instr19
  !vibrato,0,20,40
  !pan,10
  !volume,65
  !dynamicVolume,200,150
  db 54,$78
  !c5
  !tie
  !tie
  db 54,$58
  !tie
  db 36,$06
  !c5
  db 36,$43
  !c5
  !volume,65
  !dynamicVolume,200,150
  db 54,$78
  !cs5
  !tie
  !tie
  db 54,$58
  !tie
  db 36,$06
  !cs5
  db 36,$43
  !cs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
