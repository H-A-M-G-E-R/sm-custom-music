asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr03 = $16
!instr10 = $17
!instr13 = $18
!instr2E = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FC,$E0,$B8,$03,$80
  db !instr10,$FF,$E0,$B8,$02,$00
  db !instr13,$FF,$E0,$B8,$03,$90
  db !instr2E,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+27
  dw Sample10,Sample10+27
  dw Sample11_12_13,Sample11_12_13+27
  dw Sample2E,Sample2E+2151
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample_55d7dd5330b8a8ef8525169d9eaa7cd3.brr"
  Sample10: incbin "Sample_ea8770757e0789379fe5b938b6423e22.brr"
  Sample11_12_13: incbin "Sample_6c7fe9ffa3b0e176fc82c19308fbb5a4.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"

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
  !echo,%00011111,60,60
  !echoParameters,5,157,0
  !pan,0
  !instr,!instr13
  !volume,50
  !dynamicVolume,200,110
  db 82,$76
  !c4
  db 72
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  db 50
  !tie
  !pitchSlide,0,72 : !c3
  !dynamicVolume,22,220
  db 22
  !tie
  db 72
  !tie
  !tie
  !loop : dw .sub4FC1 : db 143
  !end

.pattern0_1
  !pan,20
  !instr,!instr13
  !volume,50
  !dynamicVolume,200,110
  db 82,$76
  !b3
  db 72
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  db 50
  !tie
  !pitchSlide,0,72 : !b2
  !dynamicVolume,22,200
  db 22
  !tie
  db 72
  !tie
  !tie
  !loop : dw .sub4FC1 : db 143
  !end

.pattern0_2
  !instr,!instr03
  !volume,60
  !dynamicVolume,200,110
  db 82,$74
  !e5
  !pitchSlide,72,216 : !b5
  db 72
  !tie
  !tie
  !tie
  !loop : dw .sub4FC4 : db 1
  !dynamicVolume,144,140
  !tie
  !tie
  !loop : dw .sub4FCD : db 1
  !tie
  !tie
  !loop : dw .sub4FDC : db 1
  !loop : dw .sub4FEF : db 15
  !end

.pattern0_3
  !loop : dw .sub5012 : db 1
  !rest
  !rest
  !rest
  !rest
  !rest
  db 50
  !rest
  !instr,!instr2E
  !volume,40
  !dynamicVolume,7,255
  db 22,$7F
  !c3
  db 72
  !tie
  !tie
  db 42
  !tie
  !pan,20
  !volume,50
  !dynamicVolume,144,150
  !subtranspose,50
  !instr,!instr03
  db 72,$71
  !b5
  !tie
  !tie
  !pitchSlide,0,255 : !e5
  !tie
  !tie
  !tie
  !loop : dw .sub4FDC : db 1
  !loop : dw .sub4FEF : db 14
  !tie
  !tie
  !loop : dw .sub4FCD : db 1
  !tie
  !tie
  !loop : dw .sub5019 : db 1
  !tie
  !pitchSlide,0,255 : !f6
  !tie
  !tie
  db 30
  !tie
  !end

.pattern0_4
  !loop : dw .sub5012 : db 1
  !rest
  !rest
  !rest
  !rest
  db 90
  !rest
  !volume,50
  !dynamicVolume,54,230
  !instr,!instr10
  db 54,$7B
  !g6
  !pitchSlide,0,32 : !c3
  !dynamicVolume,72,40
  db 72
  !tie
  !rest
  db 120
  !tie
  !volume,50
  !dynamicVolume,144,150
  !pan,0
  !subtranspose,100
  !instr,!instr03
  db 72,$71
  !b5
  !tie
  !pitchSlide,0,255 : !e5
  !tie
  !tie
  !tie
  !loop : dw .sub4FDC : db 1
  !loop : dw .sub4FEF : db 14
  !tie
  !tie
  !loop : dw .sub4FCD : db 1
  !tie
  !tie
  !loop : dw .sub5019 : db 1
  !tie
  !pitchSlide,0,255 : !f6
  !tie
  !tie
  db 24
  !tie
  !end

.sub4FC1
  !tie
  !tie
  !end

.sub4FC4
  !tie
  !pitchSlide,0,255 : !f6
  !tie
  !tie
  !tie
  !end

.sub4FCD
  !tie
  !pitchSlide,72,216 : !b5
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !e5
  !tie
  !end

.sub4FDC
  !tie
  !tie
  !tie
  !pitchSlide,72,216 : !b5
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !f6
  !tie
  !tie
  !tie
  !end

.sub4FEF
  !tie
  !tie
  !tie
  !pitchSlide,72,216 : !b5
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !e5
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,72,216 : !b5
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !f6
  !tie
  !tie
  !tie
  !end

.sub5012
  db 82
  !rest
  db 72
  !rest
  !rest
  !rest
  !end

.sub5019
  !tie
  !pitchSlide,72,216 : !b5
  !tie
  !tie
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
