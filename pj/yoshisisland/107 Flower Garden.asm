asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr03 = $16
!instr04 = $17
!instr0A = $18
!instr11 = $19
!instr18 = $1A
!instr19 = $1B
!instr1A = $1C
!instr1B = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FF,$F6,$B8,$03,$FF
  db !instr04,$FF,$EC,$B8,$0A,$02
  db !instr0A,$FF,$E0,$B8,$03,$74
  db !instr11,$8F,$F1,$B8,$07,$A8
  db !instr18,$FF,$E0,$B8,$07,$A8
  db !instr19,$FF,$E0,$B8,$03,$B8
  db !instr1A,$FF,$E0,$B8,$03,$C8
  db !instr1B,$FF,$E2,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+369
  dw Sample04,Sample04+288
  dw Sample0A,Sample0A+882
  dw Sample11,Sample11+1683
  dw Sample18,Sample18+1683
  dw Sample19,Sample19+765
  dw Sample1A,Sample1A+1413
  dw Sample1B,Sample1B+747
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample_d695b2adef566f86f7525b7d853c0d6e.brr"
  Sample04: incbin "Sample_6b2d9404e8f16fdc424cf2f60f24fe8e.brr"
  Sample0A: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample11: incbin "Sample_f3af6328bd01ba69fad6d210dcfe9d7c.brr"
  Sample18: incbin "Sample_a9d9ea06a1346c028a856bf75b3929fb.brr"
  Sample19: incbin "Sample_830913f7d7c8de159660a43730597185.brr"
  Sample1A: incbin "Sample_d45bbea96124e9486749b3dec9f0220d.brr"
  Sample1B: incbin "Sample_eceaa6c5725e35a064be56984a36bd4a.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDC7F

TrackerDC7F:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, 0, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, 0
.pattern6: dw .pattern6_0, .pattern5_1, .pattern6_2, .pattern6_3, .pattern5_4, .pattern6_5, 0, 0
.pattern7: dw .pattern6_0, .pattern5_1, .pattern7_2, .pattern7_3, .pattern5_4, .pattern6_5, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,25
  !musicVolume,200
  db 96
  !rest
  !end

.pattern0_1
  !instr,!instr11
  !pan,10
  !volume,250
  db 59
  !rest
  db 13,$0F
  !d4
  db 6,$1D
  !d4
  db 5,$19
  !d4
  !instr,!instr18
  db 13,$03
  !c4
  !end

.pattern0_2
  !instr,!instr04
  !pan,9
  !volume,200
  db 12,$5F
  !c4
  db 12,$0B
  !a3
  db 12,$0D
  !gs3
  db 18,$7F
  !g3
  db 6,$5D
  !g3
  db 12,$0A
  !g3
  db 6,$0D
  !g3
  db 5
  !g4
  db 13,$2D
  !g3
  !end

.pattern0_4
  !instr,!instr19
  !pan,2
  !volume,250
  db 12,$0A
  !c5
  db 6,$19
  !c5
  db 6,$15
  !c5
  db 12,$0B
  !c5
  !instr,!instr1A
  db 25,$7F
  !c5
  !instr,!instr19
  db 11,$07
  !c5
  !instr,!instr1A
  db 12,$5D
  !c5
  !instr,!instr19
  db 12,$27
  !c5
  !end

.pattern1_0
  !instr,!instr1B
  !pan,7
  !volume,200
  !vibrato,36,28,24
  db 96
  !rest
  !rest
  !rest
  db 87
  !rest
  db 3,$75
  !e6
  db 3,$77
  !f6
  db 3,$79
  !fs6
  !end

.pattern1_1
  !loop : dw .subE3D8 : db 1
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 18,$02
  !d4
  db 6,$1F
  !d4
  db 12,$02
  !d4
  db 6,$32
  !d4
  db 6,$12
  !d4
  !d4
  !instr,!instr18
  db 12,$0B
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 11,$02
  !d4
  db 6,$12
  !d4
  !instr,!instr18
  db 6,$18
  !c4
  !instr,!instr11
  db 12,$01
  !d4
  !instr,!instr18
  db 6,$18
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 5,$12
  !d4
  !instr,!instr18
  db 7,$15
  !c4
  !instr,!instr11
  db 5,$12
  !d4
  !instr,!instr18
  db 7,$19
  !c4
  !instr,!instr11
  db 11,$02
  !d4
  !instr,!instr18
  db 5,$18
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 5,$11
  !d4
  !instr,!instr18
  db 6,$19
  !c4
  !instr,!instr11
  db 6,$12
  !d4
  !instr,!instr18
  db 1,$79
  !c4
  db 5,$18
  !tie
  !instr,!instr11
  db 6,$1F
  !d4
  !instr,!instr18
  db 13,$73
  !c4
  !instr,!instr11
  db 7,$5F
  !d4
  db 5,$11
  !d4
  !instr,!instr18
  db 7,$12
  !c4
  !instr,!instr11
  db 6,$22
  !d4
  db 7,$1F
  !d4
  db 4,$22
  !d4
  db 7,$1A
  !d4
  db 5,$23
  !d4
  db 6,$15
  !d4
  db 5,$1B
  !d4
  db 7,$1C
  !d4
  db 6,$13
  !d4
  !end

.pattern1_2
  !instr,!instr04
  !pan,9
  !volume,200
  db 24,$3A
  !c3
  db 19
  !c3
  db 5,$79
  !c3
  db 10,$19
  !a3
  db 2,$55
  !a3
  db 24,$09
  !a3
  db 12,$29
  !a3
  !loop : dw .subE49E : db 1
  db 1
  !rest
  db 23,$3A
  !f3
  db 20,$3B
  !f3
  db 4,$79
  !f3
  db 10,$29
  !g3
  db 2,$55
  !g3
  db 24,$0B
  !g3
  db 12,$4A
  !g3
  !end

.pattern1_3
  !instr,!instr03
  !pan,13
  !volume,220
  !loop : dw .subE4CA : db 1
  !end

.pattern1_4
  !instr,!instr19
  !pan,2
  !volume,250
  db 12,$09
  !c5
  db 6,$19
  !c5
  db 6,$14
  !c5
  db 13,$09
  !c5
  db 6,$19
  !c5
  db 5,$14
  !c5
  db 12,$08
  !c5
  !instr,!instr1A
  db 12,$6A
  !c5
  !instr,!instr19
  db 12,$08
  !c5
  db 6,$09
  !c5
  db 6,$15
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 12,$69
  !c5
  !instr,!instr19
  db 12,$09
  !c5
  db 6,$1A
  !c5
  db 5,$15
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 13,$6A
  !c5
  !instr,!instr19
  db 12,$0A
  !c5
  db 7,$19
  !c5
  db 5,$15
  !c5
  db 12,$08
  !c5
  db 6,$18
  !c5
  db 6,$15
  !c5
  db 13,$08
  !c5
  db 6,$18
  !c5
  db 5,$16
  !c5
  db 12,$09
  !c5
  db 6,$1A
  !c5
  db 5,$15
  !c5
  db 13,$09
  !c5
  db 6,$19
  !c5
  db 5,$16
  !c5
  db 1,$79
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 12,$69
  !c5
  !instr,!instr19
  db 12,$09
  !c5
  db 6,$1A
  !c5
  db 5,$15
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 13,$6A
  !c5
  !instr,!instr19
  db 12,$0A
  !c5
  db 7,$19
  !c5
  db 5,$15
  !c5
  !end

.pattern1_5
  !instr,!instr03
  !pan,15
  !volume,220
  !loop : dw .subE555 : db 1
  !end

.pattern2_0
  db 6,$7A
  !g6
  !tie
  !pitchSlide,0,8 : !fs6
  db 84
  !tie
  !pitchSlide,0,8 : !g6
  db 12,$1A
  !tie
  db 11,$7A
  !f6
  db 13,$28
  !e6
  db 12,$2A
  !f6
  db 11,$76
  !ds6
  !pitchSlide,0,8 : !e6
  db 11,$18
  !c6
  db 14
  !a5
  db 12,$7A
  !g5
  !loop : dw .subE3C3 : db 1
  db 96
  !tie
  !end

.pattern2_1
  !loop : dw .subE3D8 : db 1
  !loop : dw .subE414 : db 1
  db 6,$1B
  !c4
  !instr,!instr11
  db 12,$02
  !d4
  !instr,!instr18
  db 6,$23
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 12,$02
  !d4
  !instr,!instr18
  db 5,$15
  !c4
  db 7,$1B
  !c4
  !instr,!instr11
  db 5,$12
  !d4
  !instr,!instr18
  db 12,$03
  !c4
  !instr,!instr11
  db 6,$1F
  !d4
  db 6,$12
  !d4
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 6,$12
  !d4
  !end

.pattern2_2
  db 24,$3A
  !c3
  db 19
  !c3
  db 5,$79
  !c3
  db 10,$19
  !a3
  db 2,$55
  !a3
  db 24,$09
  !a3
  db 12,$29
  !a3
  !loop : dw .subE49E : db 2
  !end

.pattern2_3
  !loop : dw .subE4CA : db 1
  db 24,$3A
  !e5
  db 19
  !g5
  db 4,$79
  !g5
  db 14,$19
  !e5
  db 35,$09
  !c5
  !end

.pattern2_4
  db 12,$09
  !c5
  db 6,$19
  !c5
  db 6,$14
  !c5
  db 13,$09
  !c5
  db 6,$19
  !c5
  db 5,$14
  !c5
  db 12,$08
  !c5
  !instr,!instr1A
  db 12,$6A
  !c5
  !instr,!instr19
  db 12,$08
  !c5
  db 6,$09
  !c5
  db 6,$15
  !c5
  !loop : dw .subE509 : db 2
  !end

.pattern2_5
  !loop : dw .subE555 : db 1
  db 24,$3A
  !c5
  db 19
  !e5
  db 4,$79
  !e5
  db 14,$19
  !c5
  db 35,$09
  !a4
  !end

.pattern2_7
  !instr,!instr1B
  !pan,14
  !volume,120
  !vibrato,36,26,26
  db 5
  !rest
  db 6,$7A
  !g6
  !tie
  !pitchSlide,0,8 : !fs6
  db 84
  !tie
  !pitchSlide,0,8 : !g6
  db 12,$1A
  !tie
  db 11,$7A
  !f6
  db 13,$28
  !e6
  db 12,$2A
  !f6
  db 11,$76
  !e6
  db 11,$18
  !c6
  db 14
  !a5
  db 12,$7A
  !g5
  !loop : dw .subE3C3 : db 1
  db 91
  !tie
  !end

.pattern3_0
  db 10
  !rest
  db 12,$79
  !a6
  db 12,$19
  !as6
  !pitchSlide,0,6 : !b6
  db 13,$18
  !a6
  db 12,$79
  !g6
  db 13,$18
  !f6
  db 12,$19
  !e6
  db 12,$08
  !d6
  db 23,$1A
  !ds6
  !pitchSlide,0,8 : !e6
  db 13,$59
  !c6
  db 60,$7A
  !g5
  db 34,$3A
  !tie
  db 12,$6A
  !c6
  db 13,$68
  !b5
  db 12,$19
  !c6
  db 13
  !d6
  db 12,$7A
  !ds6
  !pitchSlide,0,6 : !e6
  db 24,$5B
  !tie
  db 24,$1B
  !g6
  db 24,$78
  !c6
  db 24,$07
  !e6
  !end

.pattern3_1
  !loop : dw .subE414 : db 1
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 12,$02
  !d4
  !instr,!instr18
  db 6,$23
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 12,$02
  !d4
  !instr,!instr18
  db 5,$15
  !c4
  db 7,$1B
  !c4
  !instr,!instr11
  db 5,$12
  !d4
  !instr,!instr18
  db 12,$03
  !c4
  !instr,!instr11
  db 6,$1F
  !d4
  db 6,$12
  !d4
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 6,$12
  !d4
  !end

.pattern3_2
  !loop : dw .subE49E : db 1
  db 1
  !rest
  db 23,$3A
  !f3
  db 20,$3B
  !f3
  db 4,$79
  !f3
  db 10,$29
  !g3
  db 2,$55
  !g3
  db 24,$0B
  !g3
  db 12,$4A
  !g3
  db 24,$3A
  !e3
  db 19
  !e3
  db 5,$79
  !e3
  db 10,$19
  !ds3
  db 2,$55
  !ds3
  db 24,$09
  !ds3
  db 12,$29
  !ds3
  !end

.pattern3_3
  !loop : dw .subE594 : db 1
  db 24,$3A
  !g5
  db 19
  !g5
  db 4,$79
  !g5
  db 14,$19
  !g5
  db 35,$09
  !g5
  !end

.pattern3_4
  !loop : dw .subE509 : db 2
  !end

.pattern3_5
  !loop : dw .subE5C5 : db 1
  db 24,$3A
  !d5
  db 19
  !d5
  db 4,$79
  !d5
  db 14,$19
  !cs5
  db 35,$09
  !cs5
  !end

.pattern3_7
  db 15,$09
  !tie
  db 12,$79
  !a6
  db 12,$19
  !b6
  db 13,$18
  !a6
  db 12,$79
  !g6
  db 13,$18
  !f6
  db 12,$19
  !e6
  db 12,$08
  !d6
  db 23,$1A
  !e6
  db 13,$59
  !c6
  db 60,$7A
  !g5
  db 34,$3A
  !tie
  db 12,$6A
  !c6
  db 13,$68
  !b5
  db 12,$19
  !c6
  db 13
  !d6
  db 12,$7A
  !e6
  db 24
  !tie
  db 24,$1B
  !g6
  db 24,$78
  !c6
  db 19,$07
  !e6
  !end

.pattern4_0
  db 13,$7A
  !e6
  !pitchSlide,0,6 : !f6
  db 12,$18
  !e6
  db 12,$1A
  !f6
  db 23,$79
  !d6
  db 12,$38
  !c6
  db 13,$29
  !b5
  db 11,$7A
  !b5
  !pitchSlide,0,6 : !c6
  db 96
  !tie
  db 2
  !tie
  db 94
  !rest
  !end

.pattern4_1
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 18,$02
  !d4
  db 6,$1F
  !d4
  db 12,$02
  !d4
  db 6,$32
  !d4
  db 6,$12
  !d4
  !d4
  !instr,!instr18
  db 12,$0B
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 11,$02
  !d4
  db 6,$12
  !d4
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 12,$02
  !d4
  !instr,!instr18
  db 6,$23
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 12,$02
  !d4
  !instr,!instr18
  db 5,$15
  !c4
  db 7,$1B
  !c4
  !instr,!instr11
  db 5,$12
  !d4
  !instr,!instr18
  db 12,$03
  !c4
  !instr,!instr11
  db 6,$1F
  !d4
  db 6,$12
  !d4
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 6,$12
  !d4
  db 5
  !tie
  !instr,!instr11
  db 6,$1F
  !d4
  !instr,!instr18
  db 13,$73
  !c4
  !instr,!instr11
  db 7,$5F
  !d4
  db 5,$11
  !d4
  !instr,!instr18
  db 7,$12
  !c4
  !instr,!instr11
  db 6,$22
  !d4
  db 7,$1F
  !d4
  db 4,$22
  !d4
  db 7,$1A
  !d4
  db 5,$23
  !d4
  db 6,$15
  !d4
  db 5,$1B
  !d4
  db 7,$1C
  !d4
  db 6,$13
  !d4
  !end

.pattern4_2
  db 1
  !rest
  db 23,$3A
  !d3
  db 20,$3B
  !d3
  db 4,$79
  !d3
  db 10,$29
  !g3
  db 2,$55
  !g3
  db 24,$0B
  !g3
  db 12,$4A
  !g3
  db 24,$3A
  !e3
  db 19
  !e3
  db 5,$79
  !e3
  db 10,$19
  !ds3
  db 2,$55
  !ds3
  db 24,$09
  !ds3
  db 12,$29
  !ds3
  db 1
  !rest
  db 23,$3A
  !d3
  db 20,$3B
  !d3
  db 4,$79
  !d3
  db 10,$29
  !cs3
  db 2,$55
  !cs3
  db 24,$0B
  !cs3
  db 12,$4A
  !cs3
  !end

.pattern4_3
  db 1
  !rest
  db 23,$2A
  !g5
  db 20,$3B
  !g5
  db 4,$79
  !g5
  db 12,$2B
  !g5
  db 36,$0D
  !g5
  db 24,$3A
  !g5
  db 19
  !g5
  db 4,$79
  !g5
  db 14,$19
  !c6
  db 35,$09
  !g5
  db 1
  !rest
  db 23,$2A
  !c6
  db 20,$3B
  !c6
  db 4,$79
  !c6
  db 12,$29
  !e6
  db 36,$0B
  !d6
  !end

.pattern4_4
  !loop : dw .subE5F6 : db 1
  !end

.pattern4_5
  db 1
  !rest
  db 23,$2A
  !c5
  db 20,$3B
  !c5
  db 4,$79
  !c5
  db 12,$29
  !b4
  db 36,$0B
  !b4
  db 24,$3A
  !e5
  db 19
  !e5
  db 4,$79
  !e5
  db 14,$19
  !g5
  db 35,$09
  !cs5
  db 1
  !rest
  db 23,$2A
  !f5
  db 20,$3B
  !f5
  db 4,$79
  !a5
  db 12,$29
  !b5
  db 36,$0B
  !b5
  !end

.pattern4_7
  db 18,$78
  !f6
  db 12,$18
  !e6
  db 12,$1A
  !f6
  db 23,$79
  !d6
  db 12,$38
  !c6
  db 13,$29
  !b5
  db 11,$7A
  !c6
  db 96
  !tie
  db 2
  !tie
  db 89
  !rest
  !end

.pattern5_0
  !instr,!instr0A
  !pan,9
  !volume,200
  !endVibrato
  !loop : dw .subE668 : db 1
  !end

.pattern5_1
  !loop : dw .subE3D8 : db 1
  !loop : dw .subE695 : db 1
  !end

.pattern5_2
  db 12,$6C
  !as2
  db 12,$1C
  !as2
  !rest
  db 12,$07
  !as2
  !rest
  db 24,$1B
  !as2
  db 12,$5B
  !as2
  !rest
  db 12,$2C
  !a2
  !rest
  db 54,$7B
  !a2
  db 6,$39
  !gs2
  db 12,$6C
  !gs2
  db 12,$1C
  !gs2
  !rest
  db 12,$05
  !gs2
  !rest
  db 24,$1B
  !gs2
  db 12,$5B
  !g2
  !rest
  db 12,$2C
  !g2
  !rest
  db 24,$7C
  !g2
  db 6,$77
  !c4
  db 6,$37
  !d4
  db 24,$7C
  !g4
  !end

.pattern5_3
  !instr,!instr0A
  !pan,7
  !volume,200
  !loop : dw .subE738 : db 1
  !rest
  db 12,$2C
  !c6
  !rest
  db 60,$6B
  !c6
  !end

.pattern5_4
  !loop : dw .subE75D : db 1
  !end

.pattern5_5
  !instr,!instr0A
  !pan,11
  !volume,200
  !loop : dw .subE7F6 : db 2
  !end

.pattern6_0
  !loop : dw .subE668 : db 1
  !end

.pattern6_2
  !loop : dw .subE80D : db 1
  !rest
  db 12,$2C
  !g2
  !rest
  db 24,$7C
  !g2
  db 6
  !g3
  db 6,$2C
  !g4
  db 6,$7C
  !gs3
  db 6,$2C
  !gs4
  db 6,$7C
  !a3
  db 6,$2C
  !a4
  !end

.pattern6_3
  !loop : dw .subE738 : db 1
  !rest
  db 12,$2C
  !c6
  !rest
  db 60,$6B
  !c6
  !end

.pattern6_5
  !loop : dw .subE7F6 : db 2
  !end

.pattern7_2
  !loop : dw .subE80D : db 1
  !rest
  db 12,$2C
  !g2
  !rest
  db 24,$7C
  !g2
  db 6
  !g2
  db 6,$2C
  !g3
  db 6,$7C
  !gs2
  db 6,$2C
  !gs3
  db 6,$7C
  !a2
  db 6,$2C
  !a3
  !end

.pattern7_3
  !loop : dw .subE738 : db 1
  !rest
  db 12,$2C
  !c6
  !rest
  db 24,$6B
  !c6
  db 36
  !b5
  !end

.subE3D8
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 12,$02
  !d4
  !instr,!instr18
  db 6,$23
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 12,$02
  !d4
  !instr,!instr18
  db 5,$15
  !c4
  db 7,$1B
  !c4
  !instr,!instr11
  db 5,$12
  !d4
  !instr,!instr18
  db 12,$03
  !c4
  !instr,!instr11
  db 6,$1F
  !d4
  db 6,$12
  !d4
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 6,$12
  !d4
  !end

.subE49E
  db 1
  !rest
  db 23,$3A
  !f3
  db 20,$3B
  !f3
  db 4,$79
  !f3
  db 10,$29
  !g3
  db 2,$55
  !g3
  db 24,$0B
  !g3
  db 12,$4A
  !g3
  db 24,$3A
  !c3
  db 19
  !c3
  db 5,$79
  !c3
  db 10,$19
  !a3
  db 2,$55
  !a3
  db 24,$09
  !a3
  db 12,$29
  !a3
  !end

.subE4CA
  db 24,$3A
  !e5
  db 19
  !g5
  db 4,$79
  !g5
  db 14,$19
  !e5
  db 35,$09
  !c5
  db 1
  !rest
  db 23,$2A
  !a4
  db 20,$3B
  !c5
  db 4,$79
  !a4
  db 12,$2B
  !d5
  db 36,$0D
  !e5
  db 24,$3A
  !e5
  db 19
  !g5
  db 4,$79
  !g5
  db 14,$19
  !e5
  db 35,$09
  !c5
  db 1
  !rest
  db 23,$2A
  !a4
  db 20,$3B
  !c5
  db 4,$79
  !a4
  db 12,$29
  !e5
  db 36,$0B
  !d5
  !end

.subE555
  db 24,$3A
  !c5
  db 19
  !e5
  db 4,$79
  !e5
  db 14,$19
  !c5
  db 35,$09
  !a4
  db 1
  !rest
  db 23,$2A
  !f4
  db 20,$3B
  !a4
  db 4,$79
  !f4
  db 12,$29
  !b4
  db 36,$0B
  !c5
  db 24,$3A
  !c5
  db 19
  !e5
  db 4,$79
  !e5
  db 14,$19
  !c5
  db 35,$09
  !a4
  db 1
  !rest
  db 23,$2A
  !f4
  db 20,$3B
  !a4
  db 4,$79
  !f4
  db 12,$29
  !c5
  db 36,$0B
  !b4
  !end

.subE3C3
  db 96
  !tie
  db 38,$09
  !tie
  db 11,$49
  !c6
  db 10,$6A
  !b5
  db 11,$18
  !d6
  db 13,$1A
  !a6
  db 13,$7A
  !g6
  !end

.subE414
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 18,$02
  !d4
  db 6,$1F
  !d4
  db 12,$02
  !d4
  db 6,$32
  !d4
  db 6,$12
  !d4
  !d4
  !instr,!instr18
  db 12,$0B
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 11,$02
  !d4
  db 6,$12
  !d4
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 12,$02
  !d4
  !instr,!instr18
  db 6,$23
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 12,$02
  !d4
  !instr,!instr18
  db 5,$15
  !c4
  db 7,$1B
  !c4
  !instr,!instr11
  db 5,$12
  !d4
  !instr,!instr18
  db 12,$03
  !c4
  !instr,!instr11
  db 6,$1F
  !d4
  db 6,$12
  !d4
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 6,$12
  !d4
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 18,$02
  !d4
  db 6,$1F
  !d4
  db 12,$02
  !d4
  db 6,$32
  !d4
  db 6,$12
  !d4
  !d4
  !instr,!instr18
  db 12,$0B
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 11,$02
  !d4
  db 6,$12
  !d4
  !end

.subE509
  db 12,$09
  !c5
  !instr,!instr1A
  db 12,$69
  !c5
  !instr,!instr19
  db 12,$09
  !c5
  db 6,$1A
  !c5
  db 5,$15
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 13,$6A
  !c5
  !instr,!instr19
  db 12,$0A
  !c5
  db 7,$19
  !c5
  db 5,$15
  !c5
  db 12,$09
  !c5
  db 6,$19
  !c5
  db 6,$14
  !c5
  db 13,$09
  !c5
  db 6,$19
  !c5
  db 5,$14
  !c5
  db 12,$08
  !c5
  !instr,!instr1A
  db 12,$6A
  !c5
  !instr,!instr19
  db 12,$08
  !c5
  db 6,$09
  !c5
  db 6,$15
  !c5
  !end

.subE594
  db 1
  !rest
  db 23,$2A
  !a4
  db 20,$3B
  !c5
  db 4,$79
  !a4
  db 12,$2B
  !d5
  db 36,$0D
  !e5
  db 24,$3A
  !e5
  db 19
  !g5
  db 4,$79
  !g5
  db 14,$19
  !e5
  db 35,$09
  !c5
  db 1
  !rest
  db 23,$2A
  !a4
  db 20,$3B
  !c5
  db 4,$79
  !a4
  db 12,$29
  !e5
  db 36,$0B
  !d5
  !end

.subE5C5
  db 1
  !rest
  db 23,$2A
  !f4
  db 20,$3B
  !a4
  db 4,$79
  !f4
  db 12,$29
  !b4
  db 36,$0B
  !c5
  db 24,$3A
  !c5
  db 19
  !e5
  db 4,$79
  !e5
  db 14,$19
  !c5
  db 35,$09
  !a4
  db 1
  !rest
  db 23,$2A
  !f4
  db 20,$3B
  !a4
  db 4,$79
  !f4
  db 12,$29
  !c5
  db 36,$0B
  !b4
  !end

.subE5F6
  db 12,$09
  !c5
  !instr,!instr1A
  db 12,$69
  !c5
  !instr,!instr19
  db 12,$09
  !c5
  db 6,$1A
  !c5
  db 5,$15
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 13,$6A
  !c5
  !instr,!instr19
  db 12,$0A
  !c5
  db 7,$19
  !c5
  db 5,$15
  !c5
  db 12,$09
  !c5
  db 6,$19
  !c5
  db 6,$14
  !c5
  db 13,$09
  !c5
  db 6,$19
  !c5
  db 5,$14
  !c5
  db 12,$08
  !c5
  !instr,!instr1A
  db 12,$6A
  !c5
  !instr,!instr19
  db 12,$08
  !c5
  db 6,$09
  !c5
  db 6,$15
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 12,$69
  !c5
  !instr,!instr19
  db 12,$09
  !c5
  db 6,$1A
  !c5
  db 5,$15
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 13,$6A
  !c5
  !instr,!instr19
  db 12,$0A
  !c5
  db 7,$19
  !c5
  db 5,$15
  !c5
  !end

.subE668
  db 12,$6C
  !as5
  db 12,$1C
  !as5
  db 36
  !rest
  db 24,$1B
  !as5
  db 12,$5B
  !as5
  !rest
  db 12,$2C
  !a5
  !rest
  db 60,$6B
  !a5
  db 12,$6C
  !gs5
  db 12,$1C
  !gs5
  db 36
  !rest
  db 24,$1B
  !gs5
  db 12,$5B
  !g5
  !rest
  db 12,$2C
  !g5
  !rest
  db 60,$6C
  !g5
  !end

.subE695
  !instr,!instr18
  db 6,$1A
  !c4
  !instr,!instr11
  db 12,$02
  !d4
  !instr,!instr18
  db 6,$29
  !c4
  !instr,!instr11
  db 7,$1F
  !d4
  db 5,$32
  !d4
  !instr,!instr18
  db 7,$0A
  !c4
  !instr,!instr11
  db 4,$22
  !d4
  db 12,$0F
  !d4
  db 13
  !d4
  db 6,$1F
  !d4
  db 5,$1B
  !d4
  !instr,!instr18
  db 13,$03
  !c4
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 12,$02
  !d4
  !instr,!instr18
  db 6,$23
  !c4
  !instr,!instr11
  db 7,$1F
  !e4
  db 12,$02
  !e4
  !instr,!instr18
  db 5,$15
  !c4
  db 7,$1B
  !c4
  !instr,!instr11
  db 5,$12
  !d4
  !instr,!instr18
  db 12,$03
  !c4
  !instr,!instr11
  db 6,$1F
  !d4
  db 6,$12
  !d4
  !instr,!instr18
  db 6,$1B
  !c4
  !instr,!instr11
  db 6,$12
  !d4
  db 5
  !tie
  !instr,!instr11
  db 6,$1F
  !d4
  !instr,!instr18
  db 13,$73
  !c4
  !instr,!instr11
  db 7,$5F
  !d4
  db 5,$11
  !d4
  !instr,!instr18
  db 7,$12
  !c4
  !instr,!instr11
  db 6,$22
  !d4
  db 7,$1F
  !d4
  db 4,$22
  !d4
  db 7,$1A
  !d4
  db 5,$23
  !d4
  db 6,$15
  !d4
  db 5,$1B
  !d4
  db 7,$1C
  !d4
  db 6,$13
  !d4
  !end

.subE738
  db 12,$6C
  !c6
  db 12,$1D
  !c6
  db 36
  !rest
  db 24,$1B
  !c6
  db 12,$5B
  !c6
  !rest
  db 12,$2C
  !c6
  !rest
  db 60,$6B
  !c6
  db 12,$6C
  !c6
  db 12,$1D
  !c6
  db 36
  !rest
  db 24,$1B
  !c6
  db 12,$5B
  !c6
  !end

.subE75D
  !instr,!instr19
  db 12,$09
  !c5
  db 6,$19
  !c5
  db 6,$14
  !c5
  db 13,$09
  !c5
  db 6,$19
  !c5
  db 5,$14
  !c5
  db 12,$08
  !c5
  !instr,!instr1A
  db 12,$6A
  !c5
  !instr,!instr19
  db 12,$08
  !c5
  db 6,$09
  !c5
  db 6,$15
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 12,$69
  !c5
  !instr,!instr19
  db 12,$09
  !c5
  db 6,$1A
  !c5
  db 5,$15
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 13,$6A
  !c5
  !instr,!instr19
  db 12,$0A
  !c5
  db 7,$19
  !c5
  db 5,$15
  !c5
  db 12,$09
  !c5
  db 6,$19
  !c5
  db 6,$14
  !c5
  db 13,$09
  !c5
  db 6,$19
  !c5
  db 5,$14
  !c5
  db 12,$08
  !c5
  !instr,!instr1A
  db 12,$6A
  !c5
  !instr,!instr19
  db 12,$08
  !c5
  db 6,$09
  !c5
  db 6,$15
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 12,$69
  !c5
  !instr,!instr19
  db 12,$09
  !c5
  db 6,$1A
  !c5
  db 5,$15
  !c5
  db 12,$09
  !c5
  !instr,!instr1A
  db 13,$6A
  !c5
  !instr,!instr19
  db 12,$0A
  !c5
  db 7,$19
  !c5
  db 5,$15
  !c5
  !end

.subE7F6
  db 12,$6C
  !f5
  db 12,$1C
  !f5
  db 36
  !rest
  db 24,$1B
  !f5
  db 12,$5B
  !f5
  !rest
  db 12,$2C
  !f5
  !rest
  db 60,$6B
  !f5
  !end

.subE80D
  db 12,$6C
  !as2
  db 12,$3D
  !as2
  db 12,$19
  !as4
  db 12,$1B
  !as2
  db 12,$19
  !as4
  db 12,$3B
  !as2
  db 6,$1B
  !as2
  db 6,$5B
  !as4
  db 12
  !as2
  !rest
  db 12,$2C
  !a2
  db 12,$19
  !a4
  db 48,$7B
  !a2
  db 12,$39
  !g4
  !pitchSlide,6,1 : !a4
  db 12,$6C
  !gs2
  db 12,$1D
  !gs2
  db 12,$19
  !gs4
  db 12,$1B
  !gs2
  db 12,$19
  !gs4
  db 12,$1B
  !gs2
  db 6
  !gs2
  db 6,$5B
  !gs4
  db 12
  !gs2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
