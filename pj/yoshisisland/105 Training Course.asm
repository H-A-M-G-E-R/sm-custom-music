asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr18 = $17
!instr1B = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr18,$FF,$F6,$B8,$01,$81
  db !instr1B,$FF,$E0,$B8,$05,$3D
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample18,Sample18+648
  dw Sample1B,Sample1B+1773
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample18: incbin "Sample_f24de839c3d095cdfd620345acb249fc.brr"
  Sample1B: incbin "Sample_f023e6c660ff8249116ec94187ed7b11.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD554

TrackerD554:
-
  dw .pattern0
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, .pattern1_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,120
  !dynamicMusicVolume,96,180
  !tempo,37
  !echo,%11111111,0,0
  !echoParameters,2,30,2
  !dynamicEcho,40,20,20
  !instr,!instr1B
  !volume,230
  !vibrato,24,28,24
  !pan,14
  !loop : dw .subD6EF : db 3
  !dynamicMusicVolume,96,120
  db 12,$6F
  !d5
  db 12,$5D
  !d5
  !d5
  db 12,$6F
  !d5
  db 12,$5D
  !d5
  !d5
  db 12,$6F
  !d5
  db 12,$5D
  !d5
  !end

.pattern0_1
  !instr,!instr1B
  !volume,230
  !vibrato,18,28,24
  !pan,13
  !loop : dw .subD704 : db 4
  !end

.pattern0_2
  !instr,!instr1B
  !volume,230
  !vibrato,20,28,20
  !pan,11
  !loop : dw .subD719 : db 4
  !end

.pattern0_3
  !instr,!instr18
  !volume,230
  !vibrato,20,10,20
  !pan,4
  db 36,$7F
  !g3
  !d4
  db 24
  !g4
  !tie
  !g3
  !d4
  !g4
  db 36
  !g3
  !d4
  db 24
  !g4
  !tie
  !g3
  !d4
  !g4
  !end

.pattern0_4
  !instr,!instr1B
  !volume,160
  !vibrato,22,22,22
  !pan,18
  db 4
  !rest
  db 12,$6F
  !d5
  db 12,$5D
  !d5
  !d5
  db 12,$6F
  !d5
  db 12,$5D
  !d5
  !d5
  db 12,$6F
  !d5
  db 12,$5D
  !d5
  !loop : dw .subD6EF : db 2
  db 12,$6F
  !d5
  db 12,$5D
  !d5
  !d5
  db 12,$6F
  !d5
  db 12,$5D
  !d5
  !d5
  db 12,$6F
  !d5
  db 8,$5D
  !d5
  !end

.pattern0_5
  !instr,!instr18
  !volume,180
  !vibrato,20,10,20
  !pan,2
  db 2
  !rest
  db 36,$7F
  !g3
  !d4
  db 24
  !g4
  !tie
  !g3
  !d4
  !g4
  db 36
  !g3
  !d4
  db 24
  !g4
  !tie
  !g3
  !d4
  db 22
  !g4
  !end

.pattern0_7
  !instr,!instr02
  !volume,240
  !pan,12
  !slideOut,0,8,253
  !loop : dw .subD72E : db 1
  !end

.pattern1_0
  !dynamicMusicVolume,96,120
  !loop : dw .subD76F : db 3
  !dynamicMusicVolume,96,180
  db 12,$6F
  !f5
  db 12,$5D
  !f5
  !f5
  db 12,$6F
  !f5
  db 12,$5D
  !f5
  !f5
  db 12,$6F
  !f5
  db 12,$5D
  !f5
  !end

.pattern1_1
  !loop : dw .subD784 : db 4
  !end

.pattern1_2
  !loop : dw .subD799 : db 4
  !end

.pattern1_3
  !instr,!instr18
  !volume,230
  !vibrato,20,10,20
  !pan,4
  db 36,$7F
  !as3
  !f4
  db 24
  !as4
  !tie
  !as3
  !f4
  !as4
  db 36
  !as3
  !f4
  db 24
  !as4
  !tie
  !as3
  !f4
  !as4
  !end

.pattern1_4
  db 4
  !rest
  db 12,$6F
  !f5
  db 12,$5D
  !f5
  !f5
  db 12,$6F
  !f5
  db 12,$5D
  !f5
  !f5
  db 12,$6F
  !f5
  db 12,$5D
  !f5
  !loop : dw .subD76F : db 2
  db 12,$6F
  !f5
  db 12,$5D
  !f5
  !f5
  db 12,$6F
  !f5
  db 12,$5D
  !f5
  !f5
  db 12,$6F
  !f5
  db 8,$5D
  !f5
  !end

.pattern1_5
  !instr,!instr18
  !volume,180
  !vibrato,10,20,20
  !pan,2
  db 2
  !rest
  db 36,$7F
  !as3
  !f4
  db 24
  !as4
  !tie
  !as3
  !f4
  !as4
  db 36
  !as3
  !f4
  db 24
  !as4
  !tie
  !as3
  !f4
  db 22
  !as4
  !end

.pattern1_7
  !loop : dw .subD72E : db 1
  !end

.subD6EF
  db 12,$6F
  !d5
  db 12,$5D
  !d5
  !d5
  db 12,$6F
  !d5
  db 12,$5D
  !d5
  !d5
  db 12,$6F
  !d5
  db 12,$5D
  !d5
  !end

.subD704
  db 12,$5F
  !b4
  db 12,$4D
  !b4
  !b4
  db 12,$5F
  !b4
  db 12,$4D
  !b4
  !b4
  db 12,$5F
  !b4
  db 12,$4D
  !b4
  !end

.subD719
  db 12,$5F
  !a4
  db 12,$4D
  !a4
  !a4
  db 12,$5F
  !a4
  db 12,$4D
  !a4
  !a4
  db 12,$5F
  !a4
  db 12,$4D
  !a4
  !end

.subD72E
  db 24,$7F
  !g3
  db 12,$3B
  !g5
  db 24,$7F
  !g3
  db 12,$3B
  !g5
  db 24,$7F
  !g3
  db 12
  !rest
  db 12,$37
  !g5
  db 12,$3F
  !g3
  db 12,$37
  !g5
  db 24,$7F
  !g3
  db 24,$3B
  !g5
  db 24,$7F
  !g3
  db 12,$3B
  !g5
  db 24,$7F
  !g3
  db 12,$3B
  !g5
  db 24,$7F
  !g3
  db 12
  !rest
  db 12,$37
  !g5
  db 12,$7F
  !g3
  db 12,$37
  !g5
  db 24,$7F
  !g3
  db 24,$3B
  !g5
  !end

.subD76F
  db 12,$6F
  !f5
  db 12,$5D
  !f5
  !f5
  db 12,$6F
  !f5
  db 12,$5D
  !f5
  !f5
  db 12,$6F
  !f5
  db 12,$5D
  !f5
  !end

.subD784
  db 12,$5F
  !d5
  db 12,$4D
  !d5
  !d5
  db 12,$5F
  !d5
  db 12,$4D
  !d5
  !d5
  db 12,$5F
  !d5
  db 12,$4D
  !d5
  !end

.subD799
  db 12,$5F
  !c5
  db 12,$4D
  !c5
  !c5
  db 12,$5F
  !c5
  db 12,$4D
  !c5
  !c5
  db 12,$5F
  !c5
  db 12,$4D
  !c5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
