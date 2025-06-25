asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr04 = $17
!instr06 = $18
!instr0A = $19
!instr13 = $1A
!instr18 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr04,$FF,$EC,$B8,$0A,$02
  db !instr06,$FF,$E0,$B8,$03,$00
  db !instr0A,$FF,$E0,$B8,$03,$74
  db !instr13,$FE,$F3,$B8,$04,$FF
  db !instr18,$FF,$E0,$B8,$07,$A8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample04,Sample04+288
  dw Sample06,Sample06+72
  dw Sample0A,Sample0A+882
  dw Sample13,Sample13+369
  dw Sample18,Sample18+837
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample04: incbin "Sample_6b2d9404e8f16fdc424cf2f60f24fe8e.brr"
  Sample06: incbin "Sample_28e4237a3347ac666b56d280839f22cf.brr"
  Sample0A: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample13: incbin "Sample_4e4eabd94f1d721abc772633931c5756.brr"
  Sample18: incbin "Sample_84ecbfd5a3396d1864db1a473ec3479e.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDEDB

TrackerDEDB:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern2
  dw .pattern3
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern2_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern2_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern2_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern2_5, .pattern4_6, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern2_5, .pattern5_6, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,31
  !musicVolume,200
  !instr,!instr06
  !pan,10
  !volume,240
  db 32,$7D
  !b5
  db 30
  !as5
  db 28
  !a5
  db 24
  !gs5
  db 20
  !g5
  db 16
  !fs5
  db 36
  !f5
  db 96
  !tie
  db 48,$38
  !tie
  !end

.pattern0_1
  !instr,!instr02
  !pan,14
  !volume,250
  db 90
  !rest
  db 96
  !rest
  db 6,$5E
  !a4
  db 6,$23
  !b5
  db 6,$7A
  !b3
  db 6,$3D
  !a4
  db 6,$07
  !b5
  db 6,$7F
  !b3
  db 6,$23
  !a4
  db 6,$3A
  !b5
  db 6,$7F
  !b3
  db 6,$3D
  !a4
  db 6,$3A
  !b5
  db 6,$77
  !b3
  !b5
  !b5
  db 12
  !rest
  db 48
  !rest
  !end

.pattern0_2
  !instr,!instr06
  !pan,8
  !volume,180
  db 4
  !rest
  db 32,$7D
  !b5
  db 30
  !as5
  db 28
  !a5
  db 24
  !gs5
  db 20
  !g5
  db 16
  !fs5
  db 36
  !f5
  db 96
  !tie
  db 42,$38
  !tie
  db 2
  !rest
  !end

.pattern0_3
  !instr,!instr06
  !pan,6
  !volume,240
  db 32,$7D
  !fs4
  db 30
  !f4
  db 28
  !e4
  db 24
  !ds4
  db 20
  !d4
  db 16
  !cs4
  db 36
  !c4
  db 96
  !tie
  db 48,$38
  !tie
  !end

.pattern0_4
  !instr,!instr06
  !pan,12
  !volume,240
  db 32,$7D
  !f5
  db 30
  !e5
  db 28
  !ds5
  db 24
  !d5
  db 20
  !cs5
  db 16
  !c5
  db 36
  !b4
  db 96
  !tie
  db 48,$38
  !tie
  !end

.pattern0_5
  !instr,!instr06
  !pan,8
  !volume,240
  db 32,$7D
  !c5
  db 30
  !b4
  db 28
  !as4
  db 24
  !a4
  db 20
  !gs4
  db 16
  !g4
  db 36
  !fs4
  db 96
  !tie
  db 48,$38
  !tie
  !end

.pattern1_0
  !musicVolume,200
  !instr,!instr02
  !pan,14
  !volume,250
  !loop : dw .subE416 : db 1
  !end

.pattern1_1
  !instr,!instr13
  !pan,7
  !volume,240
  !loop : dw .subE5E7 : db 2
  !end

.pattern1_2
  !instr,!instr04
  !pan,10
  !volume,220
  !loop : dw .subE4CF : db 2
  !end

.pattern1_3
  !instr,!instr13
  !pan,9
  !volume,240
  !loop : dw .subE4F6 : db 2
  !end

.pattern1_4
  !instr,!instr13
  !pan,8
  !volume,240
  !loop : dw .subE51B : db 2
  !end

.pattern1_5
  !instr,!instr18
  !pan,4
  !volume,150
  !loop : dw .subE53A : db 2
  !end

.pattern2_0
  !loop : dw .subE416 : db 1
  !end

.pattern2_1
  !instr,!instr06
  !pan,7
  !volume,180
  !endVibrato
  !loop : dw .subE4A1 : db 1
  !rest
  db 12,$6D
  !g5
  db 12,$1B
  !g5
  db 12,$6F
  !a5
  db 12,$1B
  !g5
  db 12,$5D
  !e5
  db 11,$3B
  !c5
  db 1,$7B
  !cs5
  db 2,$6D
  !tie
  db 34
  !d5
  db 12,$6B
  !a4
  db 4
  !rest
  db 6,$69
  !a4
  db 2
  !rest
  db 6
  !a4
  db 2
  !rest
  db 6
  !a4
  db 2
  !rest
  db 6
  !a4
  db 10
  !rest
  !end

.pattern2_2
  !loop : dw .subE4CF : db 2
  !end

.pattern2_3
  !instr,!instr13
  !pan,9
  !volume,240
  !endVibrato
  !loop : dw .subE4F6 : db 2
  !end

.pattern2_4
  !instr,!instr13
  !pan,8
  !volume,240
  !endVibrato
  !loop : dw .subE51B : db 2
  !end

.pattern2_5
  !loop : dw .subE53A : db 2
  !end

.pattern2_6
  !instr,!instr06
  !pan,11
  !volume,200
  !loop : dw .subE595 : db 1
  db 20
  !rest
  db 4,$6D
  !ds5
  db 12,$6B
  !e5
  db 12,$2D
  !e5
  db 12,$6D
  !e5
  db 36
  !rest
  !a4
  db 12,$6B
  !f4
  db 6
  !f4
  db 2
  !rest
  db 6
  !f4
  db 2
  !rest
  db 6
  !f4
  db 2
  !rest
  db 6
  !f4
  db 2
  !rest
  db 6
  !f4
  db 10
  !rest
  !end

.pattern2_7
  !instr,!instr06
  !pan,12
  !volume,220
  !loop : dw .subE5B9 : db 1
  !rest
  db 12,$6D
  !g5
  db 12,$1B
  !g5
  db 12,$6F
  !a5
  db 12,$1B
  !g5
  db 12,$5D
  !e5
  db 11,$3B
  !c5
  db 1,$7B
  !cs5
  db 2,$6D
  !tie
  db 34
  !d5
  db 12,$6B
  !a4
  db 4
  !rest
  db 6,$69
  !a4
  db 2
  !rest
  db 6
  !a4
  db 2
  !rest
  db 6
  !a4
  db 2
  !rest
  db 6
  !a4
  db 14
  !rest
  !end

.pattern3_1
  !loop : dw .subE4A1 : db 1
  !rest
  db 12,$6D
  !e5
  db 12,$1B
  !e5
  db 12,$6F
  !d5
  db 12,$1B
  !c5
  db 12,$5D
  !b4
  db 12,$3B
  !c5
  db 48,$68
  !tie
  db 44
  !rest
  !end

.pattern3_2
  !loop : dw .subE4CF : db 1
  db 12,$3A
  !c3
  !c3
  db 12,$5A
  !ds3
  db 12,$39
  !e3
  db 12,$3A
  !f3
  !f3
  db 12,$5A
  !gs3
  db 12,$2A
  !a3
  db 12,$3A
  !c3
  !c3
  db 12,$5A
  !ds3
  db 12,$39
  !e3
  db 12,$3A
  !g3
  !g3
  db 12,$5A
  !ds3
  db 12,$2A
  !e3
  !end

.pattern3_3
  !loop : dw .subE4F6 : db 1
  db 12
  !rest
  db 6,$3B
  !c5
  !c5
  db 12
  !c5
  db 12,$2A
  !g4
  db 12,$29
  !a4
  db 36,$4B
  !c5
  db 12
  !rest
  db 6,$3B
  !c5
  !c5
  db 12
  !c5
  db 12,$2A
  !g4
  db 12,$29
  !as4
  db 36,$4B
  !c5
  !end

.pattern3_4
  !loop : dw .subE51B : db 1
  db 12
  !rest
  db 6,$1A
  !e4
  !e4
  db 12
  !e4
  !e4
  !f4
  db 36
  !f4
  db 12
  !rest
  db 6
  !e4
  !e4
  db 12
  !e4
  !e4
  !e4
  db 36,$4A
  !e4
  !end

.pattern3_6
  !loop : dw .subE595 : db 1
  db 24
  !rest
  db 12,$6D
  !c5
  db 12,$6B
  !c5
  db 12,$2D
  !b4
  db 12,$6D
  !a4
  !f4
  !e4
  db 36
  !tie
  db 2,$79
  !b4
  !a4
  !g4
  !f4
  !e4
  !d4
  !c4
  db 46
  !rest
  !end

.pattern3_7
  !loop : dw .subE5B9 : db 1
  !rest
  db 12,$6D
  !e5
  db 12,$1B
  !e5
  db 12,$6F
  !d5
  db 12,$1B
  !c5
  db 12,$5D
  !b4
  db 12,$3B
  !c5
  db 48,$68
  !tie
  !rest
  !end

.pattern4_1
  !instr,!instr0A
  !pan,12
  !volume,240
  !subtranspose,3
  !vibrato,22,30,32
  !loop : dw .subE60C : db 1
  db 39
  !rest
  db 4,$79
  !e5
  db 6,$7C
  !d5
  db 12,$1C
  !c5
  db 13,$1B
  !b4
  db 11
  !c5
  db 11,$1C
  !d5
  db 1
  !rest
  db 35
  !e5
  db 60,$6D
  !a4
  !end

.pattern4_2
  db 12,$4A
  !a3
  db 12,$39
  !a3
  db 12,$4A
  !a3
  db 12,$39
  !a3
  db 12,$4A
  !a3
  db 12,$39
  !a3
  db 12,$4A
  !a3
  db 12,$39
  !a3
  db 12,$4A
  !gs3
  db 12,$39
  !gs3
  db 12,$4A
  !gs3
  db 12,$39
  !gs3
  db 12,$4A
  !gs3
  db 12,$39
  !gs3
  db 6,$4A
  !gs3
  db 6,$3A
  !gs4
  db 12,$39
  !gs3
  db 12,$4A
  !g3
  db 12,$39
  !g3
  db 12,$4A
  !g3
  db 12,$39
  !g3
  db 12,$4A
  !g3
  db 12,$39
  !g3
  db 12,$4A
  !g3
  db 12,$39
  !g3
  db 12,$4A
  !fs3
  db 12,$39
  !fs3
  db 12,$4A
  !fs3
  db 12,$39
  !fs3
  db 12,$4A
  !fs3
  db 12,$39
  !fs3
  db 6,$4A
  !fs3
  db 6,$39
  !fs4
  db 12,$3A
  !fs3
  !end

.pattern4_3
  !instr,!instr0A
  !pan,8
  !volume,240
  !vibrato,20,28,30
  db 35
  !rest
  db 4,$7C
  !c6
  db 6,$7B
  !b5
  db 12,$1C
  !a5
  !b5
  db 13
  !c6
  db 12,$1B
  !d6
  db 2,$7D
  !e6
  !loop : dw .subE627 : db 1
  db 1
  !rest
  db 35
  !e6
  db 60,$6D
  !a5
  !end

.pattern4_4
  !instr,!instr0A
  !pan,10
  !volume,200
  !subtranspose,1
  !vibrato,20,24,26
  !loop : dw .subE641 : db 1
  db 95
  !rest
  db 1,$7A
  !a5
  db 35,$0A
  !tie
  db 61,$5A
  !e5
  !end

.pattern4_6
  !instr,!instr0A
  !pan,13
  !volume,180
  !vibrato,22,28,30
  db 39
  !rest
  db 4,$7C
  !c6
  db 6,$7B
  !b5
  db 12,$1C
  !a5
  !b5
  db 13
  !c6
  db 12,$1B
  !d6
  db 2,$7D
  !e6
  !loop : dw .subE627 : db 1
  db 1
  !rest
  db 35
  !e6
  db 54,$6D
  !a5
  db 2
  !rest
  !end

.pattern5_0
  db 5,$32
  !a4
  db 12,$3F
  !a4
  db 6,$23
  !b5
  db 12,$0F
  !b5
  db 12,$7B
  !b3
  db 12,$3F
  !a4
  db 13,$3A
  !a4
  db 11,$0F
  !b5
  db 6,$33
  !b5
  db 5,$3A
  !a4
  db 2,$74
  !b5
  !loop : dw .subE64D : db 1
  db 5,$1E
  !tie
  db 6,$3E
  !a4
  db 6,$23
  !b5
  db 6,$26
  !b5
  db 12,$0F
  !b5
  db 6,$7A
  !b3
  !b5
  !b5
  db 6,$3D
  !a4
  db 6,$3A
  !a4
  db 7,$01
  !b5
  db 6,$1F
  !b5
  db 5
  !b5
  db 6,$22
  !b5
  db 7,$3A
  !a4
  !end

.pattern5_1
  !loop : dw .subE60C : db 1
  db 24
  !c6
  db 12,$5D
  !a5
  db 24,$5B
  !e5
  db 12,$6F
  !c5
  db 12,$6B
  !b4
  db 12,$5B
  !a4
  !b4
  !a4
  !gs4
  db 60,$6D
  !g4
  !end

.pattern5_2
  db 12,$4A
  !a3
  db 12,$39
  !a3
  db 12,$4A
  !a3
  db 12,$39
  !a3
  db 12,$4A
  !a3
  db 12,$39
  !a3
  db 12,$4A
  !a3
  db 12,$39
  !a3
  db 12,$4A
  !gs3
  db 12,$39
  !gs3
  db 12,$4A
  !gs3
  db 12,$39
  !gs3
  db 12,$4A
  !gs3
  db 12,$39
  !gs3
  db 6,$4A
  !gs3
  db 6,$49
  !gs4
  db 12,$39
  !gs3
  db 12,$4A
  !g3
  db 12,$39
  !g3
  db 12,$4A
  !g3
  db 12,$39
  !g3
  db 12,$4A
  !f3
  db 12,$39
  !f3
  db 12,$4A
  !f3
  db 12,$39
  !f3
  db 12,$5A
  !g3
  db 12,$49
  !a3
  db 12,$5A
  !as3
  db 60,$49
  !b3
  !end

.pattern5_3
  db 35
  !rest
  db 4,$7C
  !c6
  db 6,$7B
  !b5
  db 12,$1C
  !a5
  !b5
  db 13
  !c6
  db 12,$1B
  !d6
  db 2,$7D
  !e6
  !loop : dw .subE693 : db 1
  !b5
  !a5
  !gs5
  db 60,$6D
  !g5
  !end

.pattern5_4
  !loop : dw .subE641 : db 1
  db 24,$6F
  !e6
  db 12,$5D
  !e6
  db 24,$5B
  !c6
  db 12,$6F
  !a5
  db 12,$6B
  !f5
  db 12,$5B
  !f5
  !e5
  !f5
  !fs5
  db 60,$6D
  !g5
  !end

.pattern5_6
  db 39
  !rest
  db 4,$7C
  !c6
  db 6,$7B
  !b5
  db 12,$1C
  !a5
  !b5
  db 13
  !c6
  db 12,$1B
  !d6
  db 2,$7D
  !e6
  !loop : dw .subE693 : db 1
  !b5
  !a5
  !gs5
  db 56,$6D
  !g5
  !end

.subE416
  db 5,$32
  !a4
  db 12,$3F
  !a4
  db 6,$23
  !b5
  db 12,$0F
  !b5
  db 12,$7B
  !b3
  db 12,$3F
  !a4
  db 13,$3A
  !a4
  db 11,$0F
  !b5
  db 6,$33
  !b5
  db 5,$3A
  !a4
  db 2,$74
  !b5
  db 5,$1E
  !tie
  db 6,$3E
  !a4
  db 6,$23
  !b5
  db 6,$26
  !b5
  db 12,$0F
  !b5
  db 12,$7A
  !b3
  db 12,$3D
  !a4
  db 6,$3A
  !a4
  db 7,$01
  !b5
  db 11,$1F
  !b5
  db 6,$22
  !b5
  db 7,$3A
  !a4
  db 5,$32
  !a4
  db 12,$3F
  !a4
  db 6,$23
  !b5
  db 12,$0F
  !b5
  db 12,$7B
  !b3
  db 12,$3F
  !a4
  db 13,$3A
  !a4
  db 11,$0F
  !b5
  db 6,$33
  !b5
  db 5,$3A
  !a4
  db 2,$74
  !b5
  db 5,$1E
  !tie
  db 6,$3E
  !a4
  db 6,$23
  !b5
  db 6,$26
  !b5
  db 12,$0F
  !b5
  db 12,$7A
  !b3
  db 12,$3D
  !a4
  db 6,$3A
  !a4
  db 7,$01
  !b5
  db 11,$1F
  !b5
  db 6,$22
  !b5
  db 7,$3A
  !a4
  !end

.subE5E7
  db 12
  !rest
  db 6,$1A
  !g4
  !g4
  db 12
  !g4
  db 12,$19
  !g4
  db 12,$1A
  !g4
  db 36,$4B
  !g4
  db 12
  !rest
  db 6,$19
  !c5
  !c5
  db 12
  !c5
  db 12,$17
  !a4
  db 12,$1A
  !c5
  db 32,$7A
  !c5
  db 4
  !rest
  !end

.subE4CF
  db 12,$3A
  !c3
  !c3
  db 12,$5A
  !ds3
  db 12,$39
  !e3
  db 12,$3A
  !g3
  !g3
  db 12,$5A
  !ds3
  db 12,$2A
  !e3
  db 12,$3A
  !f3
  !f3
  db 12,$5A
  !gs3
  db 12,$3A
  !a3
  !c4
  !c4
  db 12,$5A
  !gs3
  db 12,$2A
  !a3
  !end

.subE4F6
  db 12
  !rest
  db 6,$3B
  !c5
  !c5
  db 12
  !c5
  db 12,$2A
  !g4
  db 12,$29
  !as4
  db 36,$4B
  !c5
  db 12
  !rest
  db 6,$3B
  !f5
  !f5
  db 12
  !f5
  db 12,$2A
  !c5
  db 12,$29
  !ds5
  db 31,$7A
  !f5
  db 5
  !rest
  !end

.subE51B
  db 12
  !rest
  db 6,$1A
  !e4
  !e4
  db 12
  !e4
  !e4
  !e4
  db 36,$4A
  !e4
  db 12
  !rest
  db 6,$1A
  !a4
  !a4
  db 12
  !a4
  !a4
  db 12,$19
  !a4
  db 32,$79
  !a4
  db 4
  !rest
  !end

.subE53A
  db 6,$3F
  !ds5
  db 6,$34
  !ds5
  !ds5
  db 6,$17
  !ds5
  db 6,$2F
  !ds5
  db 6,$14
  !ds5
  !ds5
  db 6,$2A
  !ds5
  db 6,$2E
  !ds5
  db 6,$13
  !ds5
  db 6,$15
  !ds5
  db 6,$2C
  !ds5
  db 6,$2F
  !ds5
  db 6,$13
  !ds5
  db 6,$15
  !ds5
  db 6,$1D
  !ds5
  db 6,$1C
  !ds5
  db 6,$14
  !ds5
  db 6,$15
  !ds5
  db 6,$3A
  !ds5
  db 6,$1F
  !ds5
  db 6,$15
  !ds5
  !ds5
  db 6,$1B
  !ds5
  db 6,$2E
  !ds5
  db 6,$15
  !ds5
  db 6,$14
  !ds5
  db 6,$2A
  !ds5
  db 6,$1F
  !ds5
  db 6,$14
  !ds5
  db 6,$15
  !ds5
  db 6,$7C
  !ds5
  !end

.subE4A1
  db 28
  !rest
  db 12,$6D
  !g5
  db 12,$1B
  !g5
  db 12,$6F
  !a5
  db 12,$1B
  !g5
  db 12,$5B
  !e5
  db 10,$3B
  !c5
  db 2,$7B
  !cs5
  db 2,$6D
  !tie
  db 10
  !d5
  db 12,$1B
  !c5
  db 12,$5D
  !c5
  db 12,$1B
  !a4
  db 12,$3D
  !c5
  db 12,$5F
  !ds5
  db 24
  !rest
  !end

.subE595
  db 20
  !rest
  db 4,$6D
  !ds5
  db 12,$6B
  !e5
  db 12,$1D
  !e5
  db 12,$6D
  !e5
  db 36
  !rest
  db 12
  !a4
  db 36
  !rest
  db 12,$3D
  !a4
  db 12,$5D
  !a4
  db 2,$77
  !g5
  !f5
  !e5
  !d5
  !c5
  db 14
  !rest
  !end

.subE5B9
  db 24
  !rest
  db 12,$6D
  !g5
  db 12,$1B
  !g5
  db 12,$6F
  !a5
  db 12,$1B
  !g5
  db 12,$5B
  !e5
  db 10,$3B
  !c5
  db 2,$7B
  !cs5
  db 2,$6D
  !tie
  db 10
  !d5
  db 12,$1B
  !c5
  db 12,$5D
  !c5
  db 12,$1B
  !a4
  db 12,$3D
  !c5
  db 12,$5F
  !ds5
  db 24
  !rest
  !end

.subE60C
  db 35
  !rest
  db 4,$7C
  !c5
  db 6,$7B
  !b4
  db 12,$1C
  !a4
  !b4
  db 13
  !c5
  db 12,$1B
  !d5
  db 2,$7D
  !e5
  db 32,$0F
  !tie
  db 64,$6F
  !c5
  !end

.subE627
  db 32,$0F
  !tie
  db 64,$6F
  !c6
  db 39
  !rest
  db 4,$79
  !e6
  db 6,$7C
  !d6
  db 12,$1C
  !c6
  db 13,$1B
  !b5
  db 11
  !c6
  db 11,$1C
  !d6
  !end

.subE641
  db 94
  !rest
  db 2,$7B
  !c6
  db 33,$0B
  !tie
  db 63,$4B
  !a5
  !end

.subE64D
  db 5,$1E
  !tie
  db 6,$3E
  !a4
  db 6,$23
  !b5
  db 6,$26
  !b5
  db 12,$0F
  !b5
  db 12,$7A
  !b3
  db 12,$3D
  !a4
  db 6,$3A
  !a4
  db 7,$01
  !b5
  db 11,$1F
  !b5
  db 6,$22
  !b5
  db 7,$3A
  !a4
  db 5,$32
  !a4
  db 12,$3F
  !a4
  db 6,$23
  !b5
  db 12,$0F
  !b5
  db 12,$7B
  !b3
  db 12,$3F
  !a4
  db 13,$3A
  !a4
  db 11,$0F
  !b5
  db 6,$33
  !b5
  db 5,$3A
  !a4
  db 2,$74
  !b5
  !end

.subE693
  db 32,$0F
  !tie
  db 64,$6F
  !a6
  db 24
  !c7
  db 12,$5D
  !a6
  db 24,$5B
  !e6
  db 12,$6F
  !c6
  db 12,$6B
  !b5
  db 12,$5B
  !a5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
