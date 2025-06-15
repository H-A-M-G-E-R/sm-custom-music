asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr10 = $16
!instr1B = $17
!instr1C = $18
!instr24 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr10,$FF,$E0,$B8,$03,$B0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr24,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample10,Sample10+27
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample24,Sample24+1161
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample10: incbin "Sample_00909a2c7ac12f30a998285388a5259c.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
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
  dw .pattern1
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !pan,12
  !instr,!instr24
  !volume,140
  !musicVolume,255
  !tempo,46
  !echo,%00011100,26,26
  !echoParameters,4,206,0
  !loop : dw .sub4AA3 : db 8
  !end

.pattern0_1
  !instr,!instr1B
  !volume,135
  !pan,10
  db 59,$17
  !f4
  db 49
  !a5
  db 23,$57
  !c5
  db 13
  !f5
  db 36
  !rest
  db 36,$07
  !a5
  db 23,$57
  !f5
  db 13
  !e5
  db 23
  !f5
  db 13
  !f4
  db 59,$17
  !c5
  db 49
  !g5
  db 23,$57
  !e5
  db 13
  !rest
  db 22
  !rest
  db 37,$17
  !f4
  db 36
  !a5
  db 13,$57
  !g5
  db 23
  !f5
  db 13
  !c5
  db 59,$17
  !f4
  db 49
  !a5
  db 23,$57
  !c5
  db 13
  !f5
  db 36
  !rest
  db 36,$07
  !a5
  db 23,$57
  !f5
  db 13
  !e5
  db 23
  !f5
  db 13
  !c5
  db 23
  !rest
  db 13
  !e5
  db 23
  !d5
  db 13
  !c5
  db 36,$17
  !c6
  !c5
  db 23
  !f5
  db 13,$57
  !c5
  db 23,$17
  !a5
  db 13,$57
  !c5
  db 36,$17
  !f5
  db 36,$37
  !f4
  !end

.pattern0_2
  !instr,!instr1C
  !volume,165
  !tremolo,3,17,70
  !pan,10
  db 23,$37
  !a6
  db 13,$47
  !g6
  db 23,$37
  !f6
  db 13,$47
  !c6
  db 23,$37
  !a6
  db 13,$47
  !g6
  db 23,$37
  !f6
  db 13,$47
  !c6
  db 36,$07
  !a6
  !c7
  db 36,$57
  !a6
  !rest
  db 23,$37
  !g6
  db 13,$47
  !f6
  db 23,$37
  !e6
  db 13,$47
  !c6
  db 23,$37
  !as5
  db 13,$47
  !b5
  db 23,$37
  !c6
  db 13,$47
  !g6
  db 23,$37
  !f6
  db 13,$47
  !c6
  db 23,$37
  !f6
  db 13,$47
  !g6
  db 36,$57
  !a6
  !rest
  db 23,$37
  !a6
  db 13,$47
  !g6
  db 23,$37
  !f6
  db 13,$47
  !c6
  db 23,$37
  !a6
  db 13,$47
  !g6
  db 23,$37
  !f6
  db 13,$47
  !c6
  db 36,$07
  !a6
  !c7
  !a6
  db 36,$37
  !f6
  db 59,$57
  !g6
  db 13
  !g6
  db 36,$07
  !a6
  !g6
  !f6
  !c6
  !f6
  db 12,$57
  !f6
  !a6
  !c7
  !end

.pattern0_3
  db 36
  !rest
  !instr,!instr10
  !volume,120
  !pan,13
  db 10,$37
  !c7
  db 26
  !rest
  !pan,7
  db 10
  !c7
  db 13
  !rest
  !pan,13
  db 10
  !c7
  db 39
  !rest
  db 23
  !rest
  !pan,7
  db 10
  !c7
  db 3
  !rest
  !pan,13
  db 10
  !c7
  db 26
  !rest
  !pan,7
  db 10
  !c7
  db 13
  !rest
  !pan,13
  db 10
  !c7
  db 39
  !rest
  db 36
  !rest
  !pan,7
  db 10
  !as6
  db 26
  !rest
  !pan,13
  db 10
  !g6
  db 13
  !rest
  !pan,7
  db 10
  !as6
  db 39
  !rest
  db 23
  !rest
  !pan,13
  db 10
  !c7
  db 3
  !rest
  !pan,7
  db 10
  !c7
  db 26
  !rest
  !pan,13
  db 10
  !a6
  db 13
  !rest
  !pan,7
  db 10
  !c7
  db 39
  !rest
  db 36
  !rest
  !pan,13
  db 10
  !c7
  db 26
  !rest
  !pan,7
  db 10
  !c7
  db 13
  !rest
  !pan,13
  db 10
  !c7
  db 39
  !rest
  db 23
  !rest
  !pan,7
  db 10
  !c7
  db 3
  !rest
  !pan,13
  db 10
  !c7
  db 26
  !rest
  !pan,7
  db 10
  !a6
  db 13
  !rest
  !pan,13
  db 10
  !c7
  db 26
  !rest
  !pan,7
  db 10
  !a6
  db 3
  !rest
  !pan,13
  db 10
  !as6
  db 49
  !rest
  !pan,7
  db 10
  !as6
  db 3
  !rest
  !pan,13
  db 10
  !c7
  db 26
  !rest
  !pan,7
  db 10
  !as6
  db 26
  !rest
  !pan,13
  db 10
  !a6
  db 26
  !rest
  !pan,7
  db 10
  !f6
  db 26
  !rest
  !pan,13
  db 10
  !a6
  db 26
  !rest
  !instr,!instr1C
  !volume,135
  !pan,8
  !tremolo,3,13,70
  db 12,$57
  !c6
  !f6
  !a6
  !end

.pattern1_0
  !loop : dw .sub4AA3 : db 7
  db 23,$39
  !g4
  db 13,$43
  !f4
  db 23,$36
  !g4
  db 13,$43
  !f4
  db 23,$38
  !g4
  db 13,$43
  !f4
  db 36,$48
  !g4
  !end

.pattern1_1
  db 23,$37
  !as4
  db 13
  !as5
  db 23
  !a5
  db 13
  !as5
  db 23
  !f5
  db 13
  !as5
  db 23
  !as4
  db 13
  !f5
  db 23
  !a4
  db 13
  !a5
  db 23
  !g5
  db 13
  !a5
  db 23
  !e5
  db 13
  !a5
  db 23
  !c5
  db 13
  !e5
  db 23
  !g4
  db 13
  !g5
  db 23
  !f5
  db 13
  !g5
  db 23
  !d5
  db 13
  !f5
  db 23
  !as4
  db 13
  !g5
  db 23
  !f4
  db 13
  !a5
  db 23
  !g5
  db 13
  !f5
  db 23
  !a5
  db 13
  !g5
  db 23
  !f5
  db 13
  !c5
  db 23
  !g4
  db 13
  !g5
  db 23,$33
  !d5
  db 13,$37
  !g5
  db 23
  !as4
  db 13
  !g5
  db 23,$33
  !d5
  db 13,$37
  !g5
  db 23
  !a4
  db 13
  !a5
  db 23,$33
  !c5
  db 13,$37
  !a5
  db 36,$77
  !d5
  !rest
  db 23,$37
  !as4
  db 13
  !as5
  db 23,$32
  !f5
  db 13,$37
  !as5
  db 36,$07
  !c5
  db 23,$37
  !c6
  db 13
  !g5
  db 23
  !f4
  db 13
  !f5
  db 23,$34
  !a4
  db 13,$37
  !f5
  db 36,$77
  !f4
  !rest
  !end

.pattern1_2
  db 59,$57
  !d7
  db 13,$47
  !d7
  db 36,$07
  !as6
  !as6
  !a6
  !e6
  db 36,$77
  !a6
  !rest
  db 36,$07
  !g6
  db 23,$47
  !g6
  db 13
  !a6
  db 36,$07
  !as6
  !c7
  db 59,$57
  !a6
  db 13,$47
  !f6
  db 72,$27
  !a6
  db 23,$37
  !as6
  db 13,$47
  !a6
  db 23,$37
  !as6
  db 13,$47
  !c7
  db 23,$37
  !d7
  db 13,$47
  !c7
  db 23,$37
  !d7
  db 13,$47
  !e7
  db 36,$07
  !e7
  !e7
  db 72,$27
  !d7
  db 23,$17
  !d7
  db 13,$57
  !c7
  db 23,$47
  !d7
  db 13
  !e7
  db 36,$07
  !as6
  !as6
  !a6
  !a6
  db 36,$77
  !a6
  !rest
  !end

.pattern1_3
  db 59,$57
  !f7
  db 13,$47
  !f7
  db 36,$07
  !e7
  !d7
  !c7
  !a6
  db 36,$77
  !c7
  !rest
  db 36,$07
  !as6
  db 23,$47
  !as6
  db 13
  !c7
  db 36,$07
  !d7
  !e7
  db 59,$57
  !c7
  db 13,$47
  !a6
  db 72,$27
  !c7
  db 23,$37
  !d7
  db 13,$47
  !c7
  db 23,$37
  !d7
  db 13,$47
  !e7
  db 23,$37
  !f7
  db 13,$47
  !e7
  db 23,$37
  !f7
  db 13,$47
  !g7
  db 36,$07
  !a7
  !g7
  db 72,$27
  !f7
  db 23,$17
  !f7
  db 13,$57
  !e7
  db 23,$47
  !f7
  db 13
  !g7
  db 36,$07
  !f7
  !e7
  !f7
  !c7
  db 36,$77
  !f7
  !rest
  !end

.pattern1_4
  db 72
  !rest
  !rest
  !loop : dw .sub4ABC : db 6
  db 95
  !rest
  !instr,!instr10
  !volume,120
  !pan,13
  db 10,$37
  !c7
  db 3
  !rest
  !pan,7
  db 10
  !c7
  db 26
  !rest
  !end

.sub4AA3
  db 23,$39
  !g4
  db 13,$43
  !f4
  db 23,$36
  !g4
  db 13,$43
  !f4
  db 23,$38
  !g4
  db 13,$43
  !f4
  db 23,$36
  !g4
  db 13,$43
  !f4
  !end

.sub4ABC
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
