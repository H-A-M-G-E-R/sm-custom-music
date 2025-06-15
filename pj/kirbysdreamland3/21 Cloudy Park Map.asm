asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr03 = $16
!instr10 = $17
!instr1C = $18
!instr24 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr10,$FF,$E0,$B8,$03,$B0
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr24,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+2556
  dw Sample10,Sample10+27
  dw Sample1C,Sample1C+27
  dw Sample24,Sample24+1161
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample10: incbin "Sample_00909a2c7ac12f30a998285388a5259c.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"

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
  !musicVolume,255
  !tempo,46
  !volume,150
  !echo,%00011110,26,26
  !echoParameters,4,60,0
  !instr,!instr24
  !pan,12
  db 18,$78
  !ds4
  !pan,10
  db 18,$73
  !ds4
  !pan,8
  db 18,$76
  !ds4
  !pan,12
  db 18,$73
  !ds4
  !pan,10
  db 18,$78
  !ds4
  !pan,8
  db 18,$73
  !ds4
  !pan,12
  db 18,$76
  !ds4
  !pan,10
  db 18,$73
  !ds4
  !loop : dw .sub493F : db 5
  !end

.pattern0_1
  !instr,!instr10
  !volume,110
  !loop : dw .sub49B8 : db 1
  !g4
  !g4
  db 36,$06
  !c5
  db 36,$08
  !c4
  !loop : dw .sub49B8 : db 1
  db 36,$08
  !c4
  db 36,$06
  !c5
  db 36,$07
  !f4
  !f4
  db 36,$05
  !d5
  !d5
  db 36,$06
  !c5
  !c5
  db 36,$07
  !as4
  !as4
  !a4
  !f4
  !g4
  !g4
  !f4
  !f4
  !g4
  !g4
  !f4
  db 18,$37
  !ds4
  !f4
  db 36,$06
  !as4
  !as4
  db 36,$07
  !a4
  !a4
  !g4
  !g4
  !f4
  !f4
  db 36,$06
  !as4
  !as4
  db 36,$07
  !f4
  !f4
  db 36,$18
  !c4
  db 36,$17
  !g4
  db 36,$07
  !c5
  !rest
  !end

.pattern0_2
  !pan,12
  !instr,!instr03
  !volume,125
  !loop : dw .sub49CF : db 1
  db 18
  !f5
  !f5
  !f5
  db 18,$74
  !f5
  db 36,$77
  !f5
  !f5
  !g5
  !g5
  !e5
  db 18
  !g5
  db 18,$74
  !e5
  !loop : dw .sub49CF : db 1
  db 18
  !f5
  !f5
  !f5
  !as5
  db 36
  !f5
  !a5
  !g5
  !e5
  db 18
  !f5
  !c5
  !a5
  !c6
  db 72
  !f6
  !e6
  !d6
  !c6
  !d6
  !c6
  db 36
  !as5
  !g5
  db 18
  !c6
  !a5
  !c6
  !f6
  db 36
  !f6
  db 36,$74
  !d6
  db 36,$77
  !e6
  db 36,$74
  !c6
  db 36,$77
  !d6
  db 36,$74
  !as5
  db 36,$77
  !c6
  db 36,$74
  !a5
  db 36,$77
  !d6
  db 36,$74
  !d6
  db 36,$77
  !c6
  db 36,$74
  !c6
  db 36,$77
  !c6
  !g5
  db 18
  !g5
  !e5
  !g5
  !c6
  !end

.pattern0_3
  db 1
  !rest
  !pan,8
  !instr,!instr03
  !volume,125
  db 36,$77
  !a5
  !c6
  !f6
  !d6
  !e6
  !c6
  db 18
  !a5
  db 18,$74
  !c6
  db 36,$77
  !a5
  db 18
  !as5
  !a5
  !as5
  db 18,$74
  !c6
  db 36,$77
  !a5
  !a5
  !as5
  !as5
  !c6
  db 18
  !as5
  db 18,$74
  !c6
  db 36,$77
  !a5
  !c6
  !f6
  !d6
  !e6
  !c6
  db 18
  !a5
  db 18,$74
  !c6
  db 36,$77
  !a5
  db 18
  !as5
  !a5
  !as5
  !c6
  db 36
  !a5
  !c6
  !as5
  !c6
  db 18
  !a5
  !f5
  !c6
  !f6
  db 72
  !as6
  !a6
  !g6
  !f6
  !g6
  !f6
  db 36
  !e6
  !c6
  db 18
  !f6
  !c6
  !f6
  !a6
  db 36
  !as6
  db 36,$74
  !f6
  db 36,$77
  !a6
  db 36,$74
  !e6
  db 36,$77
  !g6
  db 36,$74
  !d6
  db 36,$77
  !f6
  db 36,$74
  !c6
  db 36,$77
  !f6
  db 36,$74
  !f6
  db 36,$77
  !a6
  db 36,$74
  !f6
  db 36,$77
  !e6
  !as5
  db 18
  !c6
  !g5
  !as5
  db 17
  !c6
  !end

.pattern0_4
  !instr,!instr1C
  !volume,170
  db 18,$57
  !f6
  !c6
  !f6
  !g6
  !a6
  !c7
  !as6
  !a6
  !g6
  !as6
  !a6
  !g6
  db 36,$17
  !f6
  !c6
  db 18,$57
  !d6
  !c6
  !d6
  !e6
  db 36,$17
  !f6
  !c6
  db 18,$57
  !d6
  !c6
  !d6
  !a6
  !g6
  !c6
  !d6
  !e6
  !f6
  !c6
  !f6
  !g6
  !a6
  !c7
  !as6
  !a6
  !g6
  !as6
  !a6
  !g6
  db 36,$17
  !f6
  !c6
  db 18,$57
  !d6
  !c6
  !d6
  !e6
  !f6
  !a6
  !g6
  !f6
  !e6
  !f6
  !g6
  !e6
  !f6
  !c6
  !a6
  !c7
  !loop : dw .sub49E0 : db 1
  db 18,$57
  !as6
  !a6
  !g6
  !c7
  !a6
  !f6
  !a6
  !c7
  !loop : dw .sub49E0 : db 1
  db 18,$57
  !g6
  !f6
  !e6
  !d6
  !c6
  !c6
  !d6
  !e6
  !end

.sub493F
  !pan,8
  db 18,$78
  !ds4
  !pan,12
  db 18,$73
  !ds4
  !pan,10
  db 18,$76
  !ds4
  !pan,8
  db 18,$73
  !ds4
  !pan,12
  db 18,$78
  !ds4
  !pan,10
  db 18,$73
  !ds4
  !pan,8
  db 18,$76
  !ds4
  !pan,12
  db 18,$73
  !ds4
  !pan,10
  db 18,$78
  !ds4
  !pan,8
  db 18,$73
  !ds4
  !pan,12
  db 18,$76
  !ds4
  !pan,10
  db 18,$73
  !ds4
  !pan,8
  db 18,$78
  !ds4
  !pan,12
  db 18,$73
  !ds4
  !pan,10
  db 18,$76
  !ds4
  !pan,8
  db 18,$73
  !ds4
  !pan,12
  db 18,$78
  !ds4
  !pan,10
  db 18,$73
  !ds4
  !pan,8
  db 18,$76
  !ds4
  !pan,12
  db 18,$73
  !ds4
  !pan,10
  db 18,$78
  !ds4
  !pan,8
  db 18,$73
  !ds4
  !pan,12
  db 18,$76
  !ds4
  !pan,10
  db 18,$73
  !ds4
  !end

.sub49B8
  db 36,$07
  !f4
  !f4
  !g4
  !g4
  db 36,$08
  !c4
  !c4
  db 36,$07
  !f4
  !f4
  db 36,$06
  !as4
  !as4
  db 36,$07
  !f4
  !f4
  !end

.sub49CF
  db 36,$77
  !f5
  !a5
  !d6
  !as5
  !c6
  !g5
  db 18
  !f5
  db 18,$74
  !a5
  db 36,$77
  !f5
  !end

.sub49E0
  !f7
  !e7
  !d7
  !f7
  !e7
  !d7
  !c7
  !e7
  !d7
  !c7
  !as6
  !d7
  db 36,$17
  !c7
  !a6
  db 18,$57
  !as6
  !a6
  !as6
  !d7
  db 36,$17
  !c7
  !a6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
