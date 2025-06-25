asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr03 = $17
!instr04 = $18
!instr08 = $19
!instr12 = $1A
!instr18 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr03,$FF,$F6,$B8,$03,$FF
  db !instr04,$FF,$EC,$B8,$0A,$02
  db !instr08,$FF,$E0,$B8,$0A,$12
  db !instr12,$8B,$E0,$B8,$03,$00
  db !instr18,$FF,$E0,$B8,$07,$A8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample03,Sample03+369
  dw Sample04,Sample04+288
  dw Sample08,Sample08+1782
  dw Sample12,Sample12+27
  dw Sample18,Sample18+837
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample03: incbin "Sample_d695b2adef566f86f7525b7d853c0d6e.brr"
  Sample04: incbin "Sample_6b2d9404e8f16fdc424cf2f60f24fe8e.brr"
  Sample08: incbin "Sample_c9c40f868146997acc8be0cb97700a9f.brr"
  Sample12: incbin "Sample_abbecaee7661b5cc7135b099e2035f4d.brr"
  Sample18: incbin "Sample_84ecbfd5a3396d1864db1a473ec3479e.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD7A2

TrackerD7A2:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
-
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, 0, .pattern0_3, .pattern0_4, 0, .pattern0_6, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern0_4, 0, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern1_3, .pattern2_4, .pattern2_5, .pattern1_6, .pattern2_7
.pattern3: dw .pattern1_0, .pattern1_1, .pattern3_2, .pattern1_3, .pattern2_4, .pattern3_5, .pattern1_6, .pattern3_7
.pattern4: dw .pattern1_0, .pattern1_1, .pattern4_2, .pattern4_3, .pattern0_4, .pattern4_5, .pattern1_6, .pattern4_7
.pattern5: dw .pattern1_0, .pattern1_1, .pattern5_2, .pattern4_3, .pattern0_4, .pattern5_5, .pattern1_6, .pattern5_7
.pattern6: dw .pattern1_0, .pattern1_1, .pattern6_2, .pattern6_3, .pattern0_4, .pattern6_5, .pattern1_6, .pattern6_7
.pattern7: dw .pattern1_0, .pattern1_1, .pattern3_2, .pattern7_3, .pattern0_4, .pattern7_5, .pattern1_6, .pattern7_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !musicVolume,200
  !tempo,49
  !volume,200
  !subtranspose,0
  !instr,!instr08
  !pan,8
  !loop : dw .subDA59 : db 1
  !end

.pattern0_1
  !volume,180
  !instr,!instr08
  !subtranspose,0
  !pan,13
  !loop : dw .subDAB8 : db 1
  !end

.pattern0_3
  !volume,200
  !instr,!instr04
  !subtranspose,0
  !loop : dw .subDB19 : db 2
  !loop : dw .subDB28 : db 1
  !end

.pattern0_4
  !loop : dw .subDB45 : db 2
  !end

.pattern0_6
  !volume,170
  !instr,!instr18
  !pan,4
  !loop : dw .subDB96 : db 2
  !end

.pattern1_0
  !loop : dw .subDA59 : db 1
  !end

.pattern1_1
  !loop : dw .subDAB8 : db 1
  !end

.pattern1_2
  !volume,140
  !instr,!instr12
  !pan,14
  db 96
  !rest
  !rest
  !rest
  db 48
  !rest
  !vibrato,20,21,20
  db 24,$7F
  !g5
  !gs5
  !end

.pattern1_3
  !loop : dw .subDB19 : db 2
  !loop : dw .subDB28 : db 1
  !end

.pattern1_6
  !loop : dw .subDB96 : db 2
  !end

.pattern1_7
  !volume,120
  !instr,!instr12
  !pan,10
  db 96
  !rest
  !rest
  !rest
  db 56
  !rest
  !vibrato,20,21,21
  db 24,$7F
  !g5
  db 16
  !gs5
  !end

.pattern2_0
  !pan,8
  !loop : dw .subDA59 : db 1
  !end

.pattern2_1
  !volume,180
  !pan,13
  !loop : dw .subDAB8 : db 1
  !end

.pattern2_2
  db 96,$7F
  !a5
  db 48
  !tie
  !e6
  db 96
  !b5
  db 48
  !tie
  !g5
  !end

.pattern2_4
  !loop : dw .subDBC3 : db 1
  !end

.pattern2_5
  !volume,140
  !instr,!instr12
  !pan,6
  !vibrato,18,22,19
  db 96,$7F
  !f5
  !tie
  !e5
  db 48
  !tie
  !rest
  !end

.pattern2_7
  db 8
  !rest
  db 96,$7F
  !a5
  db 48
  !tie
  !e6
  db 96
  !b5
  db 48
  !tie
  db 40
  !g5
  !end

.pattern3_2
  db 96,$7F
  !a5
  db 48
  !tie
  !e6
  db 96
  !b5
  db 32
  !b5
  !c6
  !cs6
  !end

.pattern3_5
  db 96,$7F
  !f5
  !tie
  !e5
  !tie
  !end

.pattern3_7
  db 8
  !rest
  db 96,$7F
  !a5
  db 48
  !tie
  !e6
  db 96
  !b5
  db 32
  !b5
  !c6
  db 24
  !cs6
  !end

.pattern4_2
  db 96,$7F
  !d6
  db 48
  !tie
  !a6
  db 96
  !e6
  db 48
  !c6
  !cs6
  !end

.pattern4_3
  !loop : dw .subDC64 : db 1
  db 36
  !tie
  db 12,$37
  !g2
  db 24,$1F
  !g2
  db 12,$6F
  !c3
  db 12,$37
  !c3
  !end

.pattern4_5
  db 96,$7F
  !f5
  !d5
  !c5
  !e5
  !end

.pattern4_7
  db 8
  !rest
  db 96,$7F
  !d6
  db 48
  !tie
  db 40
  !a6
  !volume,140
  db 96
  !b5
  !g5
  !end

.pattern5_2
  db 96,$7F
  !d6
  db 48
  !tie
  !a6
  db 96
  !e6
  db 48
  !b6
  !g6
  !end

.pattern5_5
  db 72,$7F
  !f5
  db 24
  !e5
  !d5
  !c5
  !b4
  !g4
  db 72
  !a4
  db 24
  !e5
  db 48
  !g5
  !e5
  !end

.pattern5_7
  db 96,$7F
  !a5
  db 48
  !tie
  !b5
  db 96
  !g5
  !e6
  !end

.pattern6_2
  db 72,$7F
  !a6
  db 24
  !f6
  db 32
  !e6
  !d6
  !c6
  db 96
  !b5
  db 48
  !g5
  !gs5
  !end

.pattern6_3
  !loop : dw .subDC64 : db 1
  db 36
  !tie
  db 12,$1F
  !g3
  db 12,$4F
  !g2
  db 12,$1F
  !g3
  db 24,$5F
  !g2
  !end

.pattern6_5
  db 96,$7F
  !f5
  db 32
  !c5
  !b4
  !a4
  db 96
  !g4
  !b4
  !end

.pattern6_7
  db 96,$7F
  !d6
  db 48
  !f5
  !e5
  db 96
  !d5
  !e5
  !end

.pattern7_3
  !loop : dw .subDC64 : db 1
  db 12,$29
  !g3
  db 12,$4F
  !g3
  db 12,$29
  !g3
  db 12,$4F
  !g3
  db 12,$2D
  !g2
  !g2
  db 12,$7F
  !g2
  !pitchSlide,0,4 : !g4
  db 12,$4B
  !g2
  !pitchSlide,8,4 : !c3
  !end

.pattern7_5
  db 96,$7F
  !d5
  !c5
  !g4
  !tie
  !end

.pattern7_7
  db 96,$7F
  !f5
  db 48
  !tie
  !e6
  db 96
  !e5
  db 32
  !rest
  !g5
  !fs5
  !end

.subDA59
  db 13,$7F
  !f5
  db 11,$0B
  !f5
  db 13,$7D
  !f5
  db 11,$0B
  !f5
  db 13,$7D
  !f5
  db 11,$0B
  !f5
  db 13,$0B
  !f5
  db 11,$7F
  !f5
  db 13,$1B
  !f5
  db 11,$7F
  !f5
  db 13,$1B
  !f5
  db 11
  !f5
  db 13,$7F
  !f5
  db 11,$0B
  !f5
  db 13,$7F
  !f5
  db 11,$2B
  !f5
  db 13,$7F
  !e5
  db 11,$0B
  !e5
  db 13,$7D
  !e5
  db 11,$0B
  !e5
  db 13,$7D
  !e5
  db 11,$0B
  !e5
  db 13,$0B
  !e5
  db 11,$7F
  !e5
  db 13,$1B
  !e5
  db 11,$7F
  !e5
  db 13,$1B
  !e5
  db 11
  !e5
  db 13,$7F
  !e5
  db 11,$0B
  !e5
  db 13,$7F
  !e5
  db 11,$2B
  !e5
  !end

.subDAB8
  db 1
  !rest
  db 11,$7F
  !d5
  db 13,$0B
  !d5
  db 11,$7D
  !d5
  db 13,$0B
  !d5
  db 11,$7D
  !d5
  db 13,$0B
  !d5
  db 11,$5D
  !d5
  db 13,$7F
  !d5
  db 11,$1B
  !d5
  db 13,$7F
  !d5
  db 11,$0B
  !d5
  db 13
  !d5
  db 11,$7F
  !d5
  db 13,$6F
  !d5
  db 11,$7F
  !d5
  db 13,$29
  !d5
  db 11,$7F
  !c5
  db 13,$0B
  !c5
  db 11,$5D
  !c5
  db 13,$0B
  !c5
  db 11,$7D
  !c5
  db 13,$0B
  !c5
  db 11,$5D
  !c5
  db 13,$7F
  !c5
  db 11,$1B
  !c5
  db 13,$7F
  !c5
  db 11,$0B
  !c5
  db 13
  !c5
  db 11,$7F
  !c5
  db 13,$6F
  !c5
  db 11,$7F
  !c5
  db 12,$29
  !c5
  !end

.subDB19
  db 36,$6F
  !d3
  db 12,$3F
  !d3
  db 36,$6F
  !d3
  db 6
  !tie
  db 6,$2F
  !d3
  !end

.subDB28
  db 36,$6F
  !c3
  db 12,$3F
  !c3
  db 36,$6F
  !c3
  db 6
  !tie
  db 6,$3F
  !c3
  db 36,$6F
  !c3
  db 12,$3F
  !c3
  db 36,$6F
  !c3
  db 6
  !tie
  db 6,$2F
  !c3
  !end

.subDB45
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  db 12,$7D
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  !ds7
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7D
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$7D
  !ds7
  db 12,$27
  !ds7
  !end

.subDB96
  db 12,$7F
  !f4
  db 12,$79
  !f4
  db 12,$5B
  !f4
  db 12,$79
  !f4
  db 12,$7D
  !f4
  db 12,$79
  !f4
  !f4
  db 12,$7F
  !f4
  db 12,$19
  !f4
  db 12,$7F
  !f4
  db 12,$79
  !f4
  !f4
  db 12,$7F
  !f4
  db 12,$79
  !f4
  db 12,$7F
  !f4
  db 12,$79
  !f4
  !end

.subDBC3
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  db 12,$7D
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  !ds7
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7D
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$7D
  !ds7
  db 12,$27
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  db 12,$7D
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  !ds7
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7D
  !b6
  !volume,120
  !instr,!instr03
  db 12,$27
  !ds7
  !ds7
  !volume,200
  !instr,!instr02
  db 12,$7F
  !b6
  !volume,120
  !instr,!instr03
  db 12,$7D
  !ds7
  db 12,$2D
  !ds7
  !end

.subDC64
  db 36,$6F
  !d3
  !a2
  db 24
  !d3
  db 36
  !tie
  db 12,$37
  !a2
  db 24,$1F
  !a2
  db 12,$6F
  !d3
  db 12,$37
  !d3
  db 36,$6F
  !c3
  !g2
  db 24
  !c3
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
