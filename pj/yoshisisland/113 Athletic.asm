asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr0A = $16
!instr11 = $17
!instr13 = $18
!instr19 = $19
!instr1B = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr0A,$FF,$E0,$B8,$03,$74
  db !instr11,$8F,$F1,$B8,$07,$A8
  db !instr13,$FE,$F3,$B8,$04,$FF
  db !instr19,$FF,$EB,$B8,$01,$00
  db !instr1B,$FF,$E0,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample0A,Sample0A+882
  dw Sample11,Sample11+1683
  dw Sample13,Sample13+369
  dw Sample19,Sample19+126
  dw Sample1B,Sample1B+1008
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample0A: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample11: incbin "Sample_f3af6328bd01ba69fad6d210dcfe9d7c.brr"
  Sample13: incbin "Sample_4e4eabd94f1d721abc772633931c5756.brr"
  Sample19: incbin "Sample_f3facc398cb5f118f06841f9b0d00c5a.brr"
  Sample1B: incbin "Sample_5208388da726b4ff3c057f432c18490c.brr"

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
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern3
  dw .pattern4
  dw .pattern9
  dw .pattern10
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern0_3, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern1_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern1_1, .pattern3_2, .pattern3_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern1_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, 0, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, 0, .pattern6_3, .pattern6_4, .pattern6_5, .pattern6_6, .pattern6_7
.pattern7: dw .pattern7_0, .pattern5_1, .pattern7_2, .pattern7_3, .pattern7_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, .pattern8_6, .pattern8_7
.pattern9: dw .pattern0_3, .pattern9_1, 0, 0, .pattern9_4, .pattern9_5, .pattern9_6, .pattern9_7
.pattern10: dw .pattern2_2, .pattern2_1, 0, 0, .pattern10_4, .pattern10_5, .pattern10_6, .pattern10_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,55
  !musicVolume,250
  !instr,!instr0A
  !pan,7
  !volume,180
  !vibrato,18,18,60
  !loop : dw .subE7EC : db 2
  db 16,$5D
  !d5
  db 8,$47
  !c5
  db 16,$49
  !d5
  db 24,$2D
  !a5
  db 8,$4B
  !f5
  db 24,$3B
  !d5
  db 24,$5B
  !c5
  db 72
  !rest
  !end

.pattern0_1
  !instr,!instr13
  !pan,10
  !volume,250
  db 22,$28
  !f3
  db 50
  !rest
  db 24,$16
  !f3
  db 24,$17
  !fs3
  db 48
  !rest
  db 24,$38
  !fs3
  db 24,$35
  !g3
  db 48
  !rest
  db 24,$17
  !g3
  db 22,$28
  !c3
  db 23,$17
  !c3
  !d3
  db 28,$29
  !e3
  !end

.pattern0_2
  !instr,!instr1B
  !pan,12
  !volume,230
  db 22,$2A
  !a5
  db 50
  !rest
  db 24,$1A
  !a5
  db 24,$1B
  !a5
  db 48
  !rest
  db 24,$3A
  !a5
  db 24,$39
  !as5
  db 48
  !rest
  db 24,$1B
  !as5
  !c6
  db 72
  !rest
  !end

.pattern0_3
  !instr,!instr13
  !pan,13
  !volume,210
  !loop : dw .subE4ED : db 1
  !loop : dw .subE509 : db 1
  !end

.pattern0_4
  !instr,!instr19
  !pan,10
  !volume,230
  !vibrato,10,20,30
  !loop : dw .subE7FF : db 2
  db 16,$5D
  !d6
  db 8,$47
  !c6
  db 16,$49
  !d6
  db 24,$2D
  !a6
  db 8,$4B
  !f6
  db 24,$3B
  !d6
  db 24,$5B
  !c6
  db 72
  !rest
  !end

.pattern0_5
  !instr,!instr11
  !pan,8
  !volume,190
  db 24,$7D
  !d5
  db 40
  !rest
  db 8,$79
  !d5
  db 24,$7D
  !d5
  !d5
  db 40
  !rest
  db 8,$77
  !d5
  db 16,$7D
  !d5
  db 8,$77
  !d5
  db 24,$7D
  !d5
  db 40
  !rest
  db 8,$77
  !d5
  db 24,$7D
  !d5
  db 24,$77
  !d5
  db 16,$7D
  !d5
  db 8,$79
  !d5
  db 16,$7B
  !d5
  db 8,$7D
  !d5
  db 16
  !d5
  db 8,$79
  !d5
  !end

.pattern0_6
  !instr,!instr13
  !pan,11
  !volume,210
  !loop : dw .subE5B9 : db 1
  db 25,$07
  !as5
  db 24
  !as5
  !as5
  db 23,$04
  !as5
  db 23,$07
  !as5
  db 14,$16
  !as5
  db 22,$07
  !as5
  db 9,$18
  !as5
  db 28,$38
  !as5
  !end

.pattern0_7
  !instr,!instr13
  !pan,14
  !volume,210
  db 24,$06
  !f5
  db 25
  !f5
  db 24
  !f5
  db 23,$05
  !f5
  db 24,$06
  !fs5
  db 13
  !fs5
  db 24
  !fs5
  db 8,$14
  !fs5
  db 27,$27
  !fs5
  db 24,$08
  !g5
  db 25,$09
  !g5
  db 23,$08
  !g5
  db 24,$07
  !g5
  db 23
  !e5
  db 14
  !e5
  db 23,$08
  !e5
  db 8,$17
  !e5
  db 28,$36
  !e5
  !end

.pattern1_0
  !instr,!instr1B
  !pan,12
  !volume,210
  !vibrato,18,16,60
  db 22,$7A
  !gs5
  db 26,$19
  !a5
  db 26,$28
  !c6
  db 22,$1A
  !d6
  db 2
  !rest
  db 24
  !f6
  db 52,$6A
  !f6
  db 18,$19
  !a6
  db 3,$69
  !a6
  db 23,$6A
  !as6
  db 20,$09
  !a6
  db 25
  !fs6
  db 23,$1A
  !d6
  db 2,$77
  !c6
  db 68,$69
  !tie
  db 4,$79
  !gs6
  db 24,$19
  !a6
  !end

.pattern1_1
  !loop : dw .subE522 : db 1
  !end

.pattern1_3
  !instr,!instr0A
  !pan,7
  !volume,180
  !vibrato,18,18,60
  !loop : dw .subE74F : db 1
  db 24,$77
  !fs5
  db 24,$09
  !d5
  db 24,$17
  !c5
  db 24,$39
  !a4
  db 72,$79
  !fs4
  db 24,$27
  !e5
  !end

.pattern1_4
  !loop : dw .subE765 : db 1
  !end

.pattern1_5
  !loop : dw .subE5A6 : db 3
  db 24,$77
  !d5
  db 16,$7D
  !d5
  db 8,$79
  !d5
  db 16,$7B
  !d5
  db 8,$7D
  !d5
  db 16
  !d5
  db 8,$79
  !d5
  !end

.pattern1_6
  !loop : dw .subE5B9 : db 1
  !loop : dw .subE5D2 : db 1
  !end

.pattern1_7
  !loop : dw .subE5EB : db 1
  !loop : dw .subE603 : db 1
  !end

.pattern2_0
  db 22,$7B
  !a6
  db 26,$09
  !g6
  db 22,$6A
  !a6
  db 25,$0A
  !g6
  db 1,$79
  !a6
  db 77,$4A
  !tie
  db 19,$0A
  !g6
  db 4
  !rest
  db 22,$78
  !c7
  db 25,$19
  !a6
  db 23,$09
  !g6
  db 22,$19
  !e6
  db 1
  !rest
  db 71,$4A
  !d6
  db 24,$19
  !c6
  !end

.pattern2_1
  !loop : dw .subE61D : db 1
  !end

.pattern2_2
  !loop : dw .subE655 : db 1
  !loop : dw .subE672 : db 1
  !end

.pattern2_3
  db 24,$79
  !d5
  db 24,$29
  !d5
  db 24,$79
  !d5
  db 24,$29
  !d5
  db 72,$69
  !d5
  db 24,$29
  !d5
  db 24,$79
  !a5
  db 24,$29
  !e5
  !d5
  db 24,$39
  !c5
  db 72,$69
  !as4
  db 24,$29
  !a4
  !end

.pattern2_4
  db 24,$5B
  !g5
  db 24,$59
  !d5
  db 16,$5B
  !g5
  db 8,$57
  !d5
  db 16,$59
  !g5
  db 8,$57
  !as5
  !loop : dw .subE691 : db 1
  !end

.pattern2_6
  !loop : dw .subE6DA : db 1
  !loop : dw .subE6F4 : db 1
  !end

.pattern2_7
  !loop : dw .subE715 : db 1
  !loop : dw .subE72F : db 1
  !end

.pattern3_0
  db 23,$69
  !gs5
  db 24,$18
  !a5
  db 26,$79
  !c6
  db 23,$19
  !d6
  db 1
  !rest
  db 23,$1A
  !f6
  db 54,$6A
  !f6
  db 18,$19
  !a6
  db 4
  !rest
  db 21,$7A
  !as6
  db 23,$19
  !a6
  db 27,$09
  !fs6
  db 21,$2B
  !d7
  db 1
  !rest
  db 73,$5A
  !a6
  db 22,$1B
  !a6
  !end

.pattern3_2
  !loop : dw .subE4ED : db 1
  !loop : dw .subE509 : db 1
  !end

.pattern3_3
  !loop : dw .subE74F : db 1
  db 24,$77
  !fs5
  db 24,$09
  !d5
  db 24,$17
  !c5
  db 24,$39
  !a5
  db 72,$79
  !d5
  db 24,$27
  !e5
  !end

.pattern4_0
  db 2
  !rest
  db 22,$7B
  !a6
  db 24,$18
  !d6
  db 24,$1A
  !a6
  !c7
  db 49,$6A
  !a6
  db 25,$19
  !c6
  db 22,$1A
  !a6
  db 3
  !rest
  db 93,$7A
  !f6
  db 48
  !tie
  !rest
  !end

.pattern4_1
  db 23,$29
  !g3
  db 24,$06
  !as3
  db 25,$19
  !d3
  db 24,$06
  !as3
  !loop : dw .subE7C4 : db 1
  db 24,$17
  !f3
  db 25,$27
  !c4
  db 21,$49
  !c3
  db 26,$38
  !c4
  !end

.pattern4_2
  db 23,$08
  !d6
  db 26
  !d6
  db 22,$07
  !d6
  db 25,$08
  !d6
  db 2
  !rest
  db 6,$77
  !c6
  db 18
  !rest
  db 13,$17
  !c6
  db 33,$08
  !c6
  db 14,$76
  !c6
  db 10
  !rest
  !loop : dw .subE4ED : db 1
  !end

.pattern4_3
  db 2
  !rest
  db 22,$7B
  !d5
  db 24,$18
  !as4
  db 24,$1A
  !d5
  !e5
  db 49,$6A
  !c5
  db 25,$19
  !g4
  db 22,$1A
  !as4
  db 3
  !rest
  db 93,$7A
  !a4
  db 48
  !tie
  !rest
  !end

.pattern4_4
  db 16,$5B
  !g5
  db 8,$57
  !fs5
  db 16,$59
  !g5
  db 8,$57
  !a5
  db 16,$5B
  !g5
  db 8,$57
  !d5
  db 16,$59
  !g5
  db 8,$57
  !as5
  db 16,$5B
  !e5
  db 8,$57
  !d5
  db 16,$59
  !e5
  db 8,$57
  !c5
  db 16,$5B
  !e5
  db 8,$57
  !c5
  db 16,$59
  !e5
  db 8,$57
  !g5
  db 16,$5B
  !f5
  db 8,$57
  !d5
  db 16,$59
  !f5
  db 8,$57
  !g5
  db 16,$5B
  !gs5
  db 8,$57
  !a5
  db 16,$59
  !f5
  db 8,$57
  !c5
  db 16,$5B
  !f5
  db 8,$57
  !c5
  db 16,$59
  !d5
  db 24,$5B
  !f5
  db 8,$57
  !c5
  db 16,$5B
  !d5
  db 8,$57
  !f5
  !end

.pattern4_6
  db 23,$08
  !as5
  db 24,$09
  !as5
  db 23
  !as5
  db 26,$08
  !as5
  db 2
  !rest
  db 23,$07
  !as5
  db 14,$18
  !as5
  db 23,$09
  !as5
  db 10,$19
  !as5
  db 14,$79
  !as5
  db 10
  !rest
  !loop : dw .subE5B9 : db 1
  !end

.pattern4_7
  db 24,$07
  !f5
  db 24,$06
  !f5
  db 23
  !f5
  db 25
  !f5
  db 1
  !rest
  db 24,$09
  !e5
  db 25,$08
  !e5
  db 24,$07
  !e5
  db 22
  !e5
  !loop : dw .subE7E1 : db 2
  !end

.pattern5_0
  !musicVolume,180
  !dynamicMusicVolume,120,220
  !loop : dw .subE509 : db 1
  !dynamicMusicVolume,120,180
  !loop : dw .subE655 : db 1
  !end

.pattern5_1
  !loop : dw .subE812 : db 1
  !end

.pattern5_3
  !instr,!instr19
  !pan,10
  !volume,230
  !loop : dw .subE840 : db 1
  db 24,$38
  !tie
  db 72
  !rest
  !end

.pattern5_4
  !pan,14
  !volume,170
  !loop : dw .subE874 : db 1
  db 24,$38
  !tie
  db 66
  !rest
  !end

.pattern5_5
  !instr,!instr11
  !pan,8
  !volume,190
  !loop : dw .subE5A6 : db 3
  db 24,$77
  !d5
  db 16,$7D
  !d5
  db 8,$79
  !d5
  db 16,$7B
  !d5
  db 8,$7D
  !d5
  db 16
  !d5
  db 8,$79
  !d5
  !end

.pattern5_6
  !loop : dw .subE5D2 : db 1
  !loop : dw .subE715 : db 1
  !end

.pattern5_7
  !loop : dw .subE603 : db 1
  !loop : dw .subE6DA : db 1
  !end

.pattern6_0
  !dynamicMusicVolume,120,210
  !loop : dw .subE672 : db 1
  !dynamicMusicVolume,120,170
  !loop : dw .subE4ED : db 1
  !end

.pattern6_1
  db 24,$28
  !c3
  db 27,$17
  !c4
  db 23,$19
  !g3
  db 22,$17
  !c4
  !loop : dw .subE7C4 : db 1
  db 24,$17
  !f3
  db 25,$29
  !f3
  db 21,$4A
  !e3
  db 26,$3A
  !ds3
  !end

.pattern6_3
  db 12,$4D
  !c6
  db 24,$1B
  !as5
  db 12,$4D
  !c6
  db 24,$17
  !as5
  db 12,$4D
  !c6
  db 12,$77
  !as5
  !loop : dw .subE8AA : db 1
  db 24,$18
  !tie
  db 72
  !rest
  !end

.pattern6_4
  db 6
  !rest
  db 12,$4D
  !c6
  db 24,$1B
  !as5
  db 12,$4D
  !c6
  db 24,$17
  !as5
  db 12,$4D
  !c6
  db 12,$77
  !as5
  !loop : dw .subE8AA : db 1
  db 24,$18
  !tie
  db 66
  !rest
  !end

.pattern6_5
  !loop : dw .subE5A6 : db 3
  db 24,$77
  !d5
  db 16,$7D
  !d5
  db 8,$79
  !d5
  db 16,$7B
  !d5
  db 8,$7D
  !d5
  db 16
  !d5
  db 8,$79
  !d5
  !end

.pattern6_6
  !loop : dw .subE72F : db 1
  !loop : dw .subE5B9 : db 1
  !end

.pattern6_7
  !loop : dw .subE6F4 : db 1
  !loop : dw .subE5EB : db 1
  !end

.pattern7_0
  !musicVolume,180
  !dynamicMusicVolume,120,240
  !loop : dw .subE509 : db 1
  !dynamicMusicVolume,120,180
  !loop : dw .subE655 : db 1
  !end

.pattern7_2
  !instr,!instr13
  !volume,150
  !endVibrato
  db 24
  !rest
  db 16,$59
  !d5
  db 8,$57
  !cs5
  db 16,$5B
  !d5
  db 8,$57
  !fs5
  db 16,$5D
  !a5
  db 8,$57
  !c6
  db 16,$5B
  !d6
  db 8,$57
  !ds6
  db 16,$5B
  !c6
  db 8,$57
  !d6
  db 16,$5D
  !a6
  db 8,$57
  !fs6
  db 16,$59
  !ds6
  db 8,$57
  !d6
  db 16,$5B
  !c6
  db 8,$57
  !d6
  db 16,$59
  !c6
  db 8,$5B
  !a5
  db 16,$57
  !as5
  db 8,$5B
  !c6
  db 16,$59
  !a5
  db 8,$5D
  !as5
  db 24
  !tie
  db 16,$59
  !a5
  db 8,$57
  !as5
  db 16,$59
  !g5
  db 8,$57
  !a5
  db 16,$59
  !f5
  db 8,$57
  !g5
  !end

.pattern7_3
  !loop : dw .subE840 : db 1
  db 24,$38
  !tie
  db 72
  !rest
  !end

.pattern7_4
  !loop : dw .subE874 : db 1
  db 24,$38
  !tie
  db 66
  !rest
  !end

.pattern8_0
  !musicVolume,250
  db 24,$09
  !c6
  db 36,$38
  !c6
  db 36,$08
  !c6
  db 24
  !as5
  db 36,$37
  !as5
  db 36,$07
  !as5
  db 24
  !a5
  db 36,$37
  !a5
  db 36,$05
  !a5
  db 24,$07
  !g5
  db 72,$17
  !c5
  !end

.pattern8_1
  db 24,$28
  !c4
  db 36,$37
  !c4
  db 36,$19
  !c4
  db 24,$08
  !as3
  db 36,$37
  !as3
  db 36,$25
  !as3
  db 24,$28
  !a3
  db 36,$37
  !a3
  db 36,$18
  !a3
  db 24,$17
  !g3
  db 24,$29
  !c3
  db 24,$2B
  !d3
  db 24,$2D
  !e3
  !end

.pattern8_2
  !instr,!instr1B
  !pan,12
  !volume,210
  !vibrato,18,16,60
  db 24,$39
  !c7
  db 36,$38
  !c7
  !c7
  db 24
  !as6
  db 36,$37
  !as6
  !as6
  db 24
  !a6
  db 36
  !a6
  db 36,$35
  !a6
  db 24,$37
  !g6
  db 72
  !c6
  !end

.pattern8_3
  !instr,!instr0A
  !pan,7
  !volume,180
  !vibrato,18,18,60
  db 24,$39
  !e5
  db 36,$38
  !e5
  !e5
  db 24
  !d5
  db 36,$37
  !d5
  !d5
  db 24
  !c5
  db 36
  !c5
  db 36,$35
  !c5
  db 24,$37
  !as4
  db 72
  !e4
  !end

.pattern8_4
  !instr,!instr0A
  !pan,14
  !volume,210
  !vibrato,18,18,60
  db 24,$39
  !c6
  db 36,$38
  !c6
  !c6
  db 24
  !as5
  db 36,$37
  !as5
  !as5
  db 24
  !a5
  db 36
  !a5
  db 36,$35
  !a5
  db 24,$37
  !g5
  db 72
  !c5
  !end

.pattern8_5
  db 24,$77
  !d5
  db 8,$7B
  !d5
  db 8,$75
  !d5
  db 8,$79
  !d5
  db 16,$7B
  !d5
  db 8,$7D
  !d5
  db 16,$77
  !d5
  db 8,$79
  !d5
  db 24,$7D
  !d5
  db 24,$7B
  !d5
  db 16,$7D
  !d5
  db 8,$79
  !d5
  db 16,$7D
  !d5
  db 8,$79
  !d5
  db 16
  !rest
  db 8,$7B
  !d5
  db 16
  !d5
  db 8,$77
  !d5
  db 24,$7D
  !d5
  db 24,$79
  !d5
  db 24,$77
  !d5
  db 16,$7D
  !d5
  db 8,$79
  !d5
  db 16,$7B
  !d5
  db 8,$7D
  !d5
  db 16
  !d5
  db 8,$79
  !d5
  !end

.pattern8_6
  db 24,$39
  !g6
  db 36,$38
  !g6
  !g6
  db 24
  !f6
  db 36,$37
  !f6
  !f6
  db 24
  !e6
  db 36
  !e6
  db 36,$35
  !e6
  db 24,$37
  !d6
  db 72
  !as5
  !end

.pattern8_7
  db 24,$09
  !e5
  db 36,$08
  !e5
  !e5
  db 24
  !d5
  db 36,$07
  !d5
  !d5
  db 24
  !c5
  db 36
  !c5
  db 36,$05
  !c5
  db 24,$07
  !as4
  db 72,$17
  !e4
  !end

.pattern9_1
  !instr,!instr13
  !pan,10
  !volume,250
  !loop : dw .subE522 : db 1
  !end

.pattern9_4
  !instr,!instr19
  !pan,6
  !volume,200
  !vibrato,10,20,30
  !loop : dw .subE551 : db 1
  !end

.pattern9_5
  !instr,!instr11
  !pan,8
  !volume,190
  !loop : dw .subE5A6 : db 3
  db 24,$77
  !d5
  db 16,$7D
  !d5
  db 8,$79
  !d5
  db 16,$7B
  !d5
  db 8,$7D
  !d5
  db 16
  !d5
  db 8,$79
  !d5
  !end

.pattern9_6
  !instr,!instr13
  !pan,11
  !volume,210
  !loop : dw .subE5B9 : db 1
  !loop : dw .subE5D2 : db 1
  !end

.pattern9_7
  !instr,!instr13
  !pan,14
  !volume,210
  !loop : dw .subE5EB : db 1
  !loop : dw .subE603 : db 1
  !end

.pattern10_4
  db 16,$5B
  !g5
  db 8,$57
  !fs5
  db 16,$59
  !g5
  db 8,$57
  !a5
  db 16,$5B
  !g5
  db 8,$57
  !d5
  db 16,$59
  !g5
  db 8,$57
  !as5
  !loop : dw .subE691 : db 1
  !end

.pattern10_5
  !loop : dw .subE5A6 : db 3
  db 24,$77
  !d5
  db 16,$7D
  !d5
  db 8,$79
  !d5
  db 16,$7B
  !d5
  db 8,$7D
  !d5
  db 16
  !d5
  db 8,$79
  !d5
  !end

.pattern10_6
  !loop : dw .subE715 : db 1
  !loop : dw .subE72F : db 1
  !end

.pattern10_7
  !loop : dw .subE6DA : db 1
  !loop : dw .subE6F4 : db 1
  !end

.subE7EC
  db 16,$5D
  !d5
  db 8,$57
  !c5
  db 16,$3B
  !a4
  db 24,$2D
  !d5
  db 8,$3B
  !c5
  db 24,$37
  !a4
  !end

.subE4ED
  db 5,$63
  !c6
  db 19
  !rest
  db 24,$05
  !c6
  db 24,$06
  !c6
  db 24,$07
  !c6
  !c6
  db 13,$17
  !c6
  db 24,$09
  !c6
  db 8,$13
  !c6
  db 27,$3A
  !c6
  !end

.subE509
  db 26,$0A
  !d6
  db 24,$07
  !d6
  db 24,$04
  !d6
  db 22,$02
  !d6
  db 23,$04
  !d6
  db 14,$03
  !d6
  db 31,$07
  !d6
  db 28,$3A
  !d6
  !end

.subE7FF
  db 16,$5D
  !d6
  db 8,$57
  !c6
  db 16,$3B
  !a5
  db 24,$2D
  !d6
  db 8,$3B
  !c6
  db 24,$37
  !a5
  !end

.subE5B9
  db 24,$06
  !a5
  db 24,$05
  !a5
  db 24,$06
  !a5
  db 24,$05
  !a5
  !a5
  db 13
  !a5
  db 23,$08
  !a5
  db 10,$17
  !a5
  db 26,$36
  !a5
  !end

.subE522
  db 22,$28
  !f3
  db 26,$17
  !c4
  db 24,$18
  !c3
  db 24,$16
  !c4
  db 24,$17
  !f3
  db 25,$27
  !c4
  db 21,$49
  !c3
  db 26,$38
  !c4
  db 24,$35
  !d3
  db 25,$08
  !c4
  db 23,$16
  !fs3
  db 24,$17
  !c4
  db 22,$28
  !d3
  db 23,$17
  !c4
  !fs3
  db 28,$29
  !c4
  !end

.subE74F
  db 24,$79
  !e4
  db 24,$27
  !f4
  db 24,$37
  !a4
  db 24,$39
  !a4
  db 24,$2A
  !c5
  db 48,$67
  !c5
  db 24,$17
  !e5
  !end

.subE765
  !instr,!instr19
  !pan,5
  !volume,190
  !vibrato,10,20,30
  db 16,$5B
  !f5
  db 8,$57
  !c5
  db 16,$5B
  !f5
  db 8,$57
  !g5
  db 16,$5B
  !gs5
  db 8,$57
  !a5
  db 16,$5B
  !f5
  db 8,$57
  !c5
  db 16,$5B
  !f5
  db 8,$57
  !c5
  db 16,$5B
  !f5
  db 32
  !a5
  db 16
  !f5
  db 8,$57
  !c5
  db 16,$5B
  !fs5
  db 8,$57
  !d5
  db 16,$59
  !fs5
  db 8,$57
  !a5
  db 24,$5B
  !c6
  db 16
  !a5
  db 8,$57
  !fs5
  db 16,$5B
  !d6
  db 8,$57
  !a5
  db 16,$59
  !fs5
  db 8,$57
  !d5
  db 16,$5B
  !fs5
  db 8,$57
  !a5
  db 16,$5B
  !fs5
  db 8,$57
  !d5
  !end

.subE5A6
  db 24,$77
  !d5
  db 16,$7D
  !d5
  db 8,$79
  !d5
  db 24,$77
  !d5
  db 16,$7D
  !d5
  db 8,$79
  !d5
  !end

.subE5D2
  db 25,$07
  !a5
  db 24
  !a5
  !a5
  db 23,$04
  !a5
  db 23,$07
  !a5
  db 14,$16
  !a5
  db 22,$07
  !a5
  db 9,$18
  !a5
  db 28,$38
  !a5
  !end

.subE5EB
  db 24,$06
  !f5
  db 25
  !f5
  db 24
  !f5
  db 23,$05
  !f5
  db 24,$06
  !f5
  db 13
  !f5
  db 24
  !f5
  db 8,$14
  !f5
  db 27,$27
  !f5
  !end

.subE603
  db 24,$08
  !fs5
  db 25,$09
  !fs5
  db 23,$08
  !fs5
  db 24,$07
  !fs5
  db 23
  !fs5
  db 14
  !fs5
  db 23,$08
  !fs5
  db 8,$17
  !fs5
  db 28,$36
  !fs5
  !end

.subE61D
  db 23,$29
  !g3
  db 24,$06
  !as3
  db 25,$19
  !d3
  db 24,$06
  !as3
  db 25,$18
  !g3
  db 22,$16
  !as3
  db 24,$28
  !d3
  db 24,$17
  !as3
  db 1,$78
  !c3
  db 24,$07
  !tie
  db 27,$17
  !c4
  db 23,$19
  !g3
  db 22,$17
  !c4
  db 3
  !rest
  db 22,$08
  !c3
  db 21,$27
  !c4
  db 22,$25
  !g3
  db 18,$77
  !c4
  db 10
  !rest
  !end

.subE655
  db 23,$08
  !d6
  db 26
  !d6
  db 22,$07
  !d6
  db 25,$08
  !d6
  db 1
  !rest
  db 24,$06
  !d6
  db 12,$17
  !d6
  db 24,$09
  !d6
  db 10,$18
  !d6
  db 25,$29
  !d6
  !end

.subE672
  db 1
  !rest
  db 24,$09
  !c6
  db 25,$08
  !c6
  !c6
  db 21,$07
  !c6
  db 2
  !rest
  db 6,$77
  !c6
  db 18
  !rest
  db 13,$17
  !c6
  db 33,$08
  !c6
  db 14,$76
  !c6
  db 10
  !rest
  !end

.subE691
  db 16,$5B
  !as5
  db 8,$57
  !c6
  db 16,$59
  !as5
  db 8,$57
  !a5
  db 16,$59
  !g5
  db 8,$57
  !f5
  db 16,$5B
  !e5
  db 8,$57
  !d5
  db 16,$5B
  !e5
  db 8,$57
  !d5
  db 16,$59
  !e5
  db 8,$57
  !c5
  db 16,$5B
  !e5
  db 8,$57
  !c5
  db 16,$59
  !e5
  db 8,$57
  !g5
  db 16,$5B
  !as5
  db 8,$57
  !c6
  db 16,$59
  !as5
  db 8,$57
  !a5
  db 16,$5B
  !g5
  db 8,$57
  !f5
  db 16,$59
  !e5
  db 8,$57
  !d5
  !end

.subE6DA
  db 24,$07
  !f5
  db 24,$06
  !f5
  db 23
  !f5
  db 25
  !f5
  db 25,$08
  !f5
  db 12,$16
  !f5
  db 24,$07
  !f5
  db 10,$17
  !f5
  db 25,$36
  !f5
  !end

.subE6F4
  db 1
  !rest
  db 24,$09
  !e5
  db 25,$08
  !e5
  db 24,$07
  !e5
  db 22
  !e5
  db 2
  !rest
  db 24,$08
  !e5
  db 13,$17
  !e5
  db 24,$08
  !e5
  db 9,$16
  !e5
  db 17,$77
  !e5
  db 7
  !rest
  !end

.subE715
  db 23,$08
  !as5
  db 24,$09
  !as5
  db 23
  !as5
  db 26,$08
  !as5
  db 24
  !as5
  db 12,$28
  !as5
  db 23,$08
  !as5
  db 11,$19
  !as5
  db 26,$49
  !as5
  !end

.subE72F
  db 1
  !rest
  db 24,$09
  !as5
  db 24,$08
  !as5
  db 25
  !as5
  db 22
  !as5
  db 2
  !rest
  db 23,$07
  !as5
  db 14,$18
  !as5
  db 23,$09
  !as5
  db 10,$19
  !as5
  db 14,$79
  !as5
  db 10
  !rest
  !end

.subE7C4
  db 3
  !rest
  db 22,$08
  !c3
  db 21,$27
  !c4
  db 22,$25
  !g3
  db 18,$77
  !c4
  db 10
  !rest
  db 22,$28
  !f3
  db 26,$17
  !c4
  db 24,$18
  !c3
  db 24,$16
  !c4
  !end

.subE7E1
  db 24,$06
  !f5
  db 25
  !f5
  db 24
  !f5
  db 23,$05
  !f5
  !end

.subE812
  db 24,$35
  !d3
  db 25,$08
  !c4
  db 23,$16
  !fs3
  db 24,$17
  !c4
  db 22,$28
  !d3
  db 23,$17
  !c4
  !fs3
  db 28,$29
  !c4
  db 23
  !g3
  db 24,$06
  !as3
  db 25,$19
  !d3
  db 24,$06
  !as3
  db 25,$18
  !g3
  db 22,$19
  !f3
  db 24,$2A
  !e3
  db 25,$1A
  !d3
  !end

.subE840
  db 12,$4D
  !d6
  db 24,$17
  !c6
  db 12,$4D
  !d6
  db 24,$17
  !c6
  db 12,$4D
  !d6
  db 12,$7B
  !c6
  db 12,$1D
  !tie
  db 12,$4D
  !d6
  db 24,$17
  !c6
  db 24,$5D
  !d6
  db 24,$17
  !a5
  db 12,$4D
  !c6
  db 24,$1B
  !as5
  db 12,$4D
  !c6
  db 24,$17
  !as5
  db 12,$5D
  !c6
  db 12,$77
  !as5
  !end

.subE874
  db 6
  !rest
  db 12,$4D
  !d6
  db 24,$17
  !c6
  db 12,$4D
  !d6
  db 24,$17
  !c6
  db 12,$4D
  !d6
  db 12,$7B
  !c6
  db 12,$1D
  !tie
  db 12,$4D
  !d6
  db 24,$17
  !c6
  db 24,$5D
  !d6
  db 24,$17
  !a5
  db 12,$4D
  !c6
  db 24,$1B
  !as5
  db 12,$4D
  !c6
  db 24,$17
  !as5
  db 12,$5D
  !c6
  db 12,$77
  !as5
  !end

.subE8AA
  db 12,$1D
  !tie
  db 12,$4D
  !c6
  db 24,$1D
  !as5
  db 24,$4D
  !c6
  db 24,$1D
  !as5
  db 12,$4D
  !as5
  db 24,$17
  !a5
  db 12,$4D
  !as5
  db 24,$17
  !a5
  db 12,$4D
  !as5
  db 12,$77
  !a5
  !end

.subE551
  db 16,$5B
  !f5
  db 8,$57
  !c5
  db 16,$5B
  !f5
  db 8,$57
  !g5
  db 16,$5B
  !gs5
  db 8,$57
  !a5
  db 16,$5B
  !f5
  db 8,$57
  !c5
  db 16,$5B
  !f5
  db 8,$57
  !c5
  db 16,$5B
  !f5
  db 32
  !a5
  db 16
  !f5
  db 8,$57
  !c5
  db 16,$5B
  !fs5
  db 8,$57
  !d5
  db 16,$59
  !fs5
  db 8,$57
  !a5
  db 24,$5B
  !c6
  db 16
  !a5
  db 8,$57
  !fs5
  db 16,$5B
  !d6
  db 8,$57
  !a5
  db 16,$59
  !fs5
  db 8,$57
  !d5
  db 16,$5B
  !fs5
  db 8,$57
  !a5
  db 16,$5B
  !fs5
  db 8,$57
  !d5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
