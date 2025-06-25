asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr09 = $16
!instr0A = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr09,$FF,$EF,$B8,$03,$C0
  db !instr0A,$FF,$E0,$B8,$01,$AB
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample09,Sample09+1053
  dw Sample0A,Sample0A+981
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample09: incbin "Sample_36b7839e3a806c1f6455029c17daff1b.brr"
  Sample0A: incbin "Sample_e714b461140002beee3a5e195554a563.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD8C4

TrackerD8C4:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern1
  dw .pattern2
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern1
  dw .pattern2
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern5
  dw .pattern4
  dw .pattern6
  dw .pattern2
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, .pattern0_6, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, .pattern1_6, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, .pattern2_6, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern1_2, .pattern3_3, .pattern3_4, 0, .pattern3_6, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern1_2, .pattern4_3, .pattern4_4, 0, .pattern4_6, 0
.pattern5: dw .pattern5_0, 0, 0, 0, 0, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, .pattern6_6, .pattern6_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,16
  !musicVolume,200
  !instr,!instr09
  !volume,200
  db 48
  !rest
  db 4
  !rest
  db 48,$7D
  !e6
  !d6
  !e6
  db 12
  !rest
  !d6
  db 24
  !d7
  !tie
  db 68
  !rest
  !dynamicTempo,60,21
  !end

.pattern0_1
  !instr,!instr09
  !volume,190
  !pan,12
  db 48
  !rest
  db 12
  !rest
  db 12,$7D
  !g6
  !g6
  !g6
  !tie
  !g6
  !g6
  !g6
  !tie
  !g6
  !g6
  !g6
  db 24
  !g6
  !b6
  db 96
  !tie
  !end

.pattern0_2
  !instr,!instr0A
  !volume,160
  !pan,5
  db 48
  !rest
  !loop : dw .subDC8C : db 1
  !f4
  !f4
  !f4
  !end

.pattern0_3
  !instr,!instr09
  !volume,200
  db 48
  !rest
  db 2
  !rest
  db 48,$5D
  !c6
  !b5
  !c6
  !d6
  db 24
  !rest
  db 46
  !b7
  db 24
  !rest
  !end

.pattern0_6
  !instr,!instr09
  !volume,200
  db 48
  !rest
  db 48,$5D
  !g5
  !g5
  !a5
  !b5
  db 24
  !rest
  db 48
  !d7
  db 24
  !rest
  !end

.pattern1_0
  !loop : dw .subDC51 : db 1
  db 36
  !f6
  !f6
  db 24
  !c6
  !d6
  db 24,$7D
  !b5
  !g5
  db 22
  !e5
  !end

.pattern1_1
  !loop : dw .subDC95 : db 1
  db 12
  !rest
  db 48
  !a4
  db 24
  !a5
  db 12
  !f5
  !end

.pattern1_2
  !loop : dw .subDC8C : db 1
  !f4
  !f4
  !f4
  !f4
  !f4
  !f4
  !end

.pattern1_3
  !instr,!instr09
  !volume,190
  !pan,8
  !loop : dw .subDC69 : db 1
  db 12,$5D
  !tie
  db 12,$7D
  !f5
  db 24
  !a5
  db 12,$5D
  !tie
  db 12,$7D
  !g5
  db 24
  !a5
  !fs5
  !d5
  !b5
  !g5
  !end

.pattern1_4
  !instr,!instr09
  !volume,200
  !loop : dw .subDC7B : db 1
  db 96
  !rest
  !end

.pattern1_6
  !loop : dw .subDCA8 : db 1
  db 12
  !rest
  db 24
  !c6
  db 24,$7D
  !a5
  !f5
  db 10
  !d5
  !end

.pattern2_0
  !loop : dw .subDC51 : db 1
  !f6
  !d6
  !f6
  !d6
  db 94
  !rest
  db 1
  !rest
  !end

.pattern2_1
  db 2
  !rest
  db 12,$7D
  !c5
  db 48
  !c5
  db 36
  !e5
  db 24
  !f5
  db 36
  !f5
  db 24
  !e5
  db 12
  !rest
  db 48
  !d5
  db 46
  !g5
  db 12
  !rest
  db 24
  !g5
  db 36
  !g5
  db 24
  !rest
  db 1
  !rest
  !end

.pattern2_2
  db 32,$7D
  !f4
  !f4
  !f4
  !loop : dw .subDC65 : db 3
  db 1
  !rest
  !end

.pattern2_3
  !loop : dw .subDC69 : db 1
  db 12,$5D
  !tie
  db 12,$7D
  !f5
  db 24
  !a5
  db 12,$5D
  !tie
  db 12,$7D
  !f5
  db 24
  !b5
  !c5
  !e5
  db 48
  !c5
  db 1
  !rest
  !end

.pattern2_4
  !loop : dw .subDC7B : db 1
  db 96
  !rest
  db 1
  !rest
  !end

.pattern2_6
  db 25
  !rest
  db 24,$5D
  !b6
  !b6
  !rest
  !rest
  db 24,$5D
  !g6
  db 48
  !g6
  db 12
  !rest
  db 24,$6D
  !e6
  !e6
  !e6
  db 12
  !c6
  db 96
  !c6
  !end

.pattern3_0
  db 2
  !rest
  db 36,$7D
  !a6
  !f6
  db 24
  !c6
  db 36
  !f6
  !d6
  db 24
  !g6
  db 36
  !a6
  !f6
  db 24
  !c7
  db 36
  !c7
  !a6
  db 22
  !rest
  !end

.pattern3_1
  db 48,$5D
  !f5
  !e5
  !d5
  !c5
  !f5
  !e5
  !d5
  !e5
  !end

.pattern3_3
  db 96
  !rest
  !rest
  !rest
  db 12
  !rest
  db 48,$5D
  !fs5
  db 36
  !gs5
  !end

.pattern3_4
  db 48,$4D
  !c6
  !c6
  !a5
  !g5
  !c6
  !c6
  !e6
  !d6
  !end

.pattern3_6
  db 26
  !rest
  db 24,$7D
  !g6
  !g6
  !rest
  !rest
  !e6
  !e6
  !rest
  !rest
  !g6
  !g6
  !rest
  !rest
  !b6
  db 46
  !b6
  !end

.pattern4_0
  db 2
  !rest
  db 36,$7D
  !c7
  !c7
  db 24
  !c7
  db 36
  !d7
  !b6
  db 24
  !e7
  db 36
  !e7
  !c7
  db 24
  !c7
  db 94
  !d7
  !end

.pattern4_1
  db 48,$5D
  !a5
  !gs5
  !g5
  !fs5
  !f5
  !d5
  !g5
  db 24
  !a5
  !b5
  !end

.pattern4_3
  db 12
  !rest
  db 48,$5D
  !c6
  db 36
  !b5
  db 12
  !rest
  db 48
  !c6
  db 36
  !c6
  db 12
  !rest
  db 48
  !a5
  db 36
  !c6
  db 12
  !rest
  db 24,$7D
  !c7
  !a6
  !f6
  db 12
  !d6
  !end

.pattern4_4
  db 48,$4D
  !e6
  !d6
  !f6
  !e6
  !a6
  !fs6
  db 96
  !b6
  !end

.pattern4_6
  db 26
  !rest
  db 24,$7D
  !b6
  !b6
  !rest
  !rest
  !c7
  !c7
  !rest
  !rest
  !d7
  db 36
  !b6
  db 10
  !d7
  db 24
  !d7
  !b6
  !g6
  !e6
  !end

.pattern5_0
  !dynamicTempo,240,16
  !end

.pattern6_0
  !dynamicTempo,200,5
  !loop : dw .subDC51 : db 1
  db 36
  !f6
  !f6
  db 24
  !c6
  !tempo,10
  db 48
  !rest
  !tempo,21
  !rest
  db 24
  !d6
  db 24,$7D
  !b5
  !g5
  db 22
  !e5
  !end

.pattern6_1
  !loop : dw .subDC95 : db 1
  db 96
  !rest
  db 12
  !rest
  db 48
  !a4
  db 24
  !a5
  db 12
  !f5
  !end

.pattern6_2
  db 32,$7D
  !f4
  !f4
  !f4
  db 24
  !f4
  !f4
  !f4
  !f4
  db 18
  !f4
  !f4
  !f4
  !f4
  db 24
  !f4
  !pan,15
  !volume,230
  db 6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  db 12
  !d6
  !d6
  !d6
  !d6
  !pan,5
  !volume,160
  db 32
  !f4
  !f4
  !f4
  !end

.pattern6_3
  !instr,!instr09
  !volume,190
  !pan,8
  !loop : dw .subDC69 : db 1
  db 12,$5D
  !tie
  db 12,$7D
  !f5
  db 24
  !a5
  db 12,$5D
  !tie
  db 12,$7D
  !g5
  db 24
  !a5
  db 96
  !rest
  db 24
  !fs5
  !d5
  !b5
  !g5
  !end

.pattern6_4
  !instr,!instr09
  !volume,200
  !loop : dw .subDC7B : db 1
  db 96
  !rest
  !rest
  !end

.pattern6_6
  !loop : dw .subDCA8 : db 1
  db 96
  !rest
  db 12
  !rest
  db 24
  !c6
  db 24,$7D
  !a5
  !f5
  db 10
  !d5
  !end

.pattern6_7
  db 96
  !rest
  !rest
  !rest
  !pan,3
  !volume,170
  !instr,!instr0A
  db 1
  !rest
  db 6,$7D
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  db 12
  !d6
  !d6
  !d6
  !d6
  !pan,5
  !volume,140
  db 95
  !rest
  !end

.subDC8C
  db 32,$7D
  !f4
  !f4
  !f4
  !f4
  !f4
  !f4
  !end

.subDC51
  db 2
  !rest
  db 36,$5D
  !c7
  db 24
  !c7
  db 12
  !rest
  db 24,$7D
  !g6
  db 36,$5D
  !a6
  !a6
  db 24,$6D
  !c6
  !end

.subDC95
  db 12,$7D
  !c5
  db 48
  !c5
  db 36
  !e5
  db 24
  !f5
  db 36
  !f5
  db 24
  !e5
  db 12
  !rest
  db 48
  !d5
  !e5
  !end

.subDC69
  db 24
  !rest
  db 48,$7D
  !g5
  db 24
  !g5
  db 12,$5D
  !tie
  db 24,$7D
  !c5
  db 36
  !a5
  db 24
  !g5
  !end

.subDC7B
  db 24,$4D
  !e6
  !e6
  db 48
  !rest
  db 24
  !f6
  !f6
  db 48
  !rest
  db 24
  !c6
  !c6
  db 48
  !rest
  !end

.subDCA8
  !instr,!instr09
  !volume,200
  db 26
  !rest
  db 24,$5D
  !b6
  !b6
  !rest
  !rest
  db 24,$5D
  !g6
  db 48
  !g6
  db 24
  !rest
  db 24,$6D
  !e6
  db 48
  !e6
  !end

.subDC65
  !f4
  !f4
  !f4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
