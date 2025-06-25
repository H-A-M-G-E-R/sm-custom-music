asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr12 = $16
!instr18 = $17
!instr1B = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr12,$8B,$E0,$B8,$03,$00
  db !instr18,$FF,$F6,$B8,$01,$81
  db !instr1B,$FF,$E0,$B8,$05,$3D
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample12,Sample12+27
  dw Sample18,Sample18+648
  dw Sample1B,Sample1B+1773
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample12: incbin "Sample_abbecaee7661b5cc7135b099e2035f4d.brr"
  Sample18: incbin "Sample_f24de839c3d095cdfd620345acb249fc.brr"
  Sample1B: incbin "Sample_f023e6c660ff8249116ec94187ed7b11.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
  dw .pattern1
  dw .pattern2
-
  dw .pattern3
  dw .pattern4
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, 0, 0, 0, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, .pattern4_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,220
  !tempo,27
  !echo,%11111111,0,0
  !echoParameters,2,30,2
  !dynamicEcho,90,40,40
  !instr,!instr12
  !volume,60
  !vibrato,14,28,30
  !pan,14
  db 96,$7D
  !c6
  !dynamicVolume,80,160
  !tie
  !dynamicTempo,70,31
  !tie
  !dynamicTempo,30,25
  db 84
  !tie
  db 12
  !rest
  !end

.pattern0_1
  !instr,!instr1B
  !volume,60
  !dynamicVolume,200,160
  !vibrato,14,28,30
  !pan,16
  db 96,$7D
  !c6
  !tie
  !tie
  db 84
  !tie
  db 12
  !rest
  !end

.pattern0_2
  !instr,!instr1B
  !volume,100
  !vibrato,14,28,30
  !pan,10
  db 96
  !rest
  !dynamicVolume,200,200
  !rest
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7B
  !g5
  db 12,$49
  !c6
  db 12,$47
  !e6
  db 12,$45
  !g6
  !end

.pattern0_3
  !instr,!instr1B
  !volume,100
  !vibrato,14,32,32
  !pan,12
  db 96
  !rest
  !dynamicVolume,200,180
  !rest
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7B
  !e5
  db 12,$49
  !g5
  db 12,$47
  !c6
  db 12,$45
  !e6
  !end

.pattern0_7
  !instr,!instr1B
  !volume,60
  !vibrato,12,26,30
  !pan,4
  db 96
  !rest
  !dynamicVolume,200,120
  !rest
  db 6
  !rest
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7B
  !g5
  db 12,$49
  !c6
  db 12,$47
  !e6
  db 6,$45
  !g6
  !end

.pattern1_0
  !volume,80
  !dynamicVolume,180,160
  !dynamicTempo,70,31
  db 96,$7D
  !as5
  !dynamicTempo,30,25
  db 84
  !tie
  db 12
  !rest
  !volume,80
  !dynamicVolume,180,160
  !dynamicTempo,60,31
  db 96
  !a5
  !dynamicTempo,30,25
  db 84
  !tie
  db 12
  !rest
  !end

.pattern1_1
  !volume,80
  !dynamicVolume,180,160
  db 96,$7D
  !as5
  db 84
  !tie
  db 12
  !rest
  !volume,80
  !dynamicVolume,180,160
  db 96
  !a5
  db 84
  !tie
  db 12
  !rest
  !end

.pattern1_2
  !loop : dw .subD49F : db 2
  !end

.pattern1_3
  !loop : dw .subD4D5 : db 2
  !end

.pattern1_7
  !volume,60
  !dynamicVolume,200,120
  db 6
  !rest
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !c6
  db 12,$49
  !e6
  db 12,$77
  !g6
  !volume,60
  !dynamicVolume,200,120
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !c6
  db 12,$49
  !e6
  db 6,$47
  !g6
  !end

.pattern2_0
  !volume,160
  !dynamicVolume,180,160
  !dynamicTempo,80,16
  db 96,$7D
  !gs5
  !pan,14
  !tempo,25
  !c3
  !c3
  !c3
  !c3
  !end

.pattern2_1
  !volume,100
  !dynamicVolume,200,200
  db 96,$7D
  !gs5
  !pan,4
  db 12
  !c4
  db 12,$4D
  !c4
  db 12,$7D
  !c4
  db 12,$4D
  !c4
  db 12,$7D
  !c4
  db 12,$4D
  !c4
  db 12,$7D
  !c4
  db 12,$4D
  !c4
  !loop : dw .subD50B : db 3
  !end

.pattern2_2
  !volume,100
  !dynamicVolume,200,200
  db 12,$7D
  !g6
  db 12,$4B
  !f6
  db 12,$7D
  !c6
  db 12,$4B
  !gs5
  db 12,$7D
  !g5
  db 12,$4B
  !f5
  db 12,$7D
  !c5
  db 12,$4B
  !f5
  db 96,$7D
  !e5
  !f5
  db 48
  !g5
  !a5
  !as5
  !c6
  !end

.pattern2_3
  !volume,100
  !dynamicVolume,200,200
  db 12,$7D
  !d6
  db 12,$4B
  !c6
  db 12,$7D
  !gs5
  db 12,$4B
  !f5
  db 12,$7D
  !d5
  db 12,$4B
  !c5
  db 12,$7D
  !gs4
  db 12,$4B
  !c5
  db 96,$7D
  !g4
  !a4
  db 48
  !as4
  !c5
  !d5
  !e5
  !end

.pattern2_4
  !instr,!instr18
  !pan,16
  !volume,130
  db 96
  !rest
  !rest
  !rest
  !rest
  db 8,$7D
  !g7
  db 8,$7B
  !e7
  !c7
  db 8,$79
  !a6
  db 8,$7D
  !e7
  db 8,$7B
  !c7
  !a6
  db 8,$79
  !f6
  db 8,$7D
  !c7
  db 8,$7B
  !a6
  !f6
  db 8,$79
  !d6
  !end

.pattern2_5
  !instr,!instr18
  !pan,18
  !volume,130
  db 96
  !rest
  !rest
  !rest
  !rest
  db 4
  !rest
  db 8,$7D
  !f7
  db 8,$7B
  !d7
  !as6
  db 8,$79
  !g6
  db 8,$7D
  !d7
  db 8,$7B
  !as6
  !g6
  db 8,$79
  !e6
  db 8,$7D
  !as6
  db 8,$7B
  !g6
  !e6
  db 4,$79
  !c6
  !end

.pattern2_7
  !volume,60
  !dynamicVolume,200,120
  db 6
  !rest
  db 12,$7D
  !g6
  db 12,$4B
  !f6
  db 12,$7D
  !c6
  db 12,$4B
  !gs5
  db 12,$7D
  !g5
  db 12,$4B
  !f5
  db 12,$7D
  !c5
  db 12,$4B
  !f5
  db 96,$7D
  !e5
  !f5
  db 48
  !g5
  !a5
  !as5
  db 42
  !c6
  !end

.pattern3_0
  !tempo,29
  !instr,!instr1B
  db 96,$7D
  !f3
  !f3
  !d3
  !d3
  !end

.pattern3_1
  db 12
  !rest
  db 12,$77
  !f4
  !f4
  !f4
  db 12,$79
  !f4
  !f4
  !f4
  !f4
  !rest
  db 12,$7B
  !f4
  !f4
  !f4
  db 12,$7D
  !f4
  !f4
  !f4
  !f4
  !rest
  db 12,$77
  !d4
  !d4
  !d4
  db 12,$79
  !d4
  !d4
  !d4
  !d4
  !rest
  db 12,$7B
  !d4
  !d4
  !d4
  db 12,$7D
  !d4
  !d4
  !d4
  !d4
  !end

.pattern3_2
  !volume,180
  !loop : dw .subD524 : db 1
  !rest
  !c5
  !c5
  !c5
  db 12,$79
  !e5
  !e5
  !e5
  !e5
  !rest
  !g5
  !g5
  !g5
  !b5
  !b5
  db 12,$77
  !b5
  !b5
  !end

.pattern3_3
  !volume,180
  db 12
  !rest
  db 12,$77
  !a4
  !a4
  !a4
  db 12,$79
  !c5
  !c5
  !c5
  !c5
  !rest
  !e5
  !e5
  !e5
  !g5
  !g5
  db 12,$77
  !g5
  !g5
  !rest
  !a4
  !a4
  !a4
  db 12,$79
  !c5
  !c5
  !c5
  !c5
  !rest
  !e5
  !e5
  !e5
  !g5
  !g5
  db 12,$77
  !g5
  !g5
  !end

.pattern3_4
  !instr,!instr1B
  !pan,8
  !volume,180
  !vibrato,12,28,28
  db 12
  !rest
  db 12,$77
  !f4
  !f4
  !f4
  db 12,$79
  !a4
  !a4
  !a4
  !a4
  !rest
  !c5
  !c5
  !c5
  !e5
  !e5
  db 12,$77
  !e5
  !e5
  !rest
  !f4
  !f4
  !f4
  db 12,$79
  !a4
  !a4
  !a4
  !a4
  !rest
  !c5
  !c5
  !c5
  !e5
  !e5
  db 12,$77
  !e5
  !e5
  !end

.pattern3_7
  !loop : dw .subD53C : db 1
  !rest
  !c5
  !c5
  !c5
  db 12,$79
  !e5
  !e5
  !e5
  !e5
  !rest
  !g5
  !g5
  !g5
  !b5
  !b5
  db 12,$77
  !b5
  db 6
  !b5
  !end

.pattern4_0
  db 96,$7D
  !g3
  !g3
  !c3
  !c3
  !end

.pattern4_1
  db 12
  !rest
  db 12,$77
  !g4
  !g4
  !g4
  db 12,$79
  !g4
  !g4
  !g4
  !g4
  !rest
  db 12,$7B
  !g4
  !g4
  !g4
  db 12,$7D
  !g4
  !g4
  !g4
  !g4
  !rest
  db 12,$77
  !c4
  !c4
  !c4
  db 12,$79
  !c4
  !c4
  !c4
  !c4
  !rest
  db 12,$7B
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !end

.pattern4_2
  !loop : dw .subD524 : db 1
  !rest
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !end

.pattern4_3
  db 12
  !rest
  db 12,$77
  !a4
  !a4
  !a4
  db 12,$79
  !b4
  !b4
  !b4
  !b4
  !rest
  !d5
  !d5
  !d5
  !f5
  !f5
  db 12,$77
  !f5
  !f5
  !rest
  !b4
  !b4
  !b4
  db 12,$79
  !a4
  !a4
  !a4
  !a4
  !c5
  !c5
  !c5
  !b4
  db 12,$7B
  !b4
  !b4
  !b4
  !b4
  !end

.pattern4_4
  db 12
  !rest
  db 12,$77
  !f4
  !f4
  !f4
  db 12,$79
  !a4
  !a4
  !a4
  !a4
  !rest
  !b4
  !b4
  !b4
  !d5
  !d5
  db 12,$77
  !d5
  !d5
  !rest
  !g4
  !g4
  !g4
  db 12,$79
  !f4
  !f4
  !f4
  !f4
  !a4
  !a4
  !a4
  !g4
  !g4
  !g4
  db 12,$77
  !g4
  !g4
  !end

.pattern4_7
  !loop : dw .subD53C : db 1
  !rest
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  db 6
  !e5
  !end

.subD49F
  !volume,100
  !dynamicVolume,200,200
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !a5
  db 12,$7D
  !g5
  db 12,$4B
  !c6
  db 12,$49
  !e6
  db 12,$47
  !g6
  !end

.subD4D5
  !volume,100
  !dynamicVolume,200,180
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7D
  !e5
  db 12,$4B
  !f5
  db 12,$7D
  !e5
  db 12,$4B
  !g5
  db 12,$49
  !c6
  db 12,$47
  !e6
  !end

.subD50B
  db 12,$7D
  !c4
  db 12,$4D
  !c4
  db 12,$7D
  !c4
  db 12,$4D
  !c4
  db 12,$7D
  !c4
  db 12,$4D
  !c4
  db 12,$7D
  !c4
  db 12,$4D
  !c4
  !end

.subD524
  db 12
  !rest
  db 12,$77
  !c5
  !c5
  !c5
  db 12,$79
  !e5
  !e5
  !e5
  !e5
  !rest
  !g5
  !g5
  !g5
  !b5
  !b5
  db 12,$77
  !b5
  !b5
  !end

.subD53C
  db 18
  !rest
  db 12,$77
  !c5
  !c5
  !c5
  db 12,$79
  !e5
  !e5
  !e5
  !e5
  !rest
  !g5
  !g5
  !g5
  !b5
  !b5
  db 12,$77
  !b5
  !b5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
