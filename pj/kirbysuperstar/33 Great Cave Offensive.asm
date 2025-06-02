asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr19 = $17
!instr30 = $18
!instr33 = $19
!instr34 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr33,$FF,$F1,$B8,$04,$00
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+1098
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample30,Sample30+2196
  dw Sample33,Sample33+387
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample33: incbin "Sample_e42d834c4fd0df619c1d2a53c82c3c1d.brr"
  Sample34: incbin "Sample_deadfac8fb90983ab9614fd75bc82e34.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
-
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echoParameters,4,186,0
  !echo,%00011111,44,44
  !musicVolume,255
  !tempo,51
  !instr,!instr19
  !subtranspose,60
  !volume,230
  !loop : dw .sub58AA : db 2
  !end

.pattern0_1
  !instr,!instr19
  !volume,162
  !pan,12
  !subtranspose,60
  !loop : dw .sub58B7 : db 2

.pattern0_2
  !instr,!instr19
  !volume,162
  !pan,8
  !subtranspose,60
  !loop : dw .sub58C4 : db 2

.pattern0_3
  !subtranspose,60
  !instr,!instr19
  !volume,162
  !pan,10
  !loop : dw .sub58D1 : db 2

.pattern0_4
  !volume,230
  !instr,!instr34
  db 70,$78
  !c4
  !tie
  !instr,!instr34
  db 10,$79
  !g3
  !g3
  !instr,!instr34
  db 70,$78
  !c4
  !tie
  !instr,!instr34
  db 10,$79
  !g3
  !g3

.pattern1_0
  !instr,!instr19
  !subtranspose,60
  !volume,230
  !echo,%00011111,44,44
  !loop : dw .sub58AA : db 2
  db 20,$2F
  !g2
  db 20,$2B
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  db 20,$2F
  !g2
  db 20,$2B
  !g2
  !g2
  !g2
  !g2
  !g2
  !gs2
  !gs2
  !loop : dw .sub58DE : db 2
  db 20,$2B
  !e3
  db 20,$26
  !e3
  !e3
  !e3
  !e3
  !e3
  !e3
  !e3
  db 20,$2B
  !e3
  db 20,$29
  !e3
  !e3
  !e3
  !e3
  !e3
  !e3
  !e3
  !end

.pattern1_1
  !instr,!instr19
  !volume,162
  !pan,12
  !subtranspose,60
  db 20,$19
  !g4
  db 20,$13
  !g4
  !g4
  !g4
  !g4
  !g4
  !g4
  !g4
  !loop : dw .sub58EB : db 2
  db 20,$19
  !b4
  db 20,$13
  !b4
  !b4
  !b4
  !a4
  !a4
  !b4
  !b4
  db 20,$19
  !g4
  db 20,$13
  !g4
  !g4
  !g4
  !g4
  !g4
  !g4
  !g4
  db 20,$19
  !a4
  db 20,$13
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  db 20,$19
  !a4
  db 20,$13
  !a4
  !a4
  !a4
  db 20,$18
  !g4
  db 20,$14
  !g4
  !g4
  !g4
  db 20,$19
  !fs4
  db 20,$16
  !fs4
  db 20,$17
  !g4
  db 20,$18
  !a4
  !g4
  db 20,$16
  !g4
  db 20,$15
  !fs4
  !g4

.pattern1_2
  !instr,!instr19
  !volume,162
  !pan,8
  !subtranspose,60
  !loop : dw .sub58B7 : db 4
  db 20,$19
  !b4
  db 20,$13
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  db 20,$19
  !b4
  db 20,$13
  !b4
  !b4
  !b4
  !c5
  !c5
  !b4
  !b4
  !loop : dw .sub58F8 : db 2

.pattern1_3
  !subtranspose,60
  !instr,!instr19
  !pan,10
  !volume,153
  !vibrato,10,20,50
  db 20,$49
  !c6
  db 20,$14
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  db 10,$7A
  !c6
  !d6
  db 20,$49
  !e6
  db 20,$14
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  db 10,$7A
  !d6
  !c6
  db 20,$49
  !b5
  db 20,$14
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  db 20,$19
  !g5
  db 20,$14
  !g5
  !g5
  !g5
  !f5
  !f5
  !e5
  !e5
  db 20,$49
  !a5
  db 20,$14
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  db 10,$7A
  !a5
  !b5
  db 20,$49
  !c6
  db 20,$14
  !e5
  !e5
  !e5
  db 20,$49
  !b5
  db 20,$14
  !e5
  db 20,$49
  !a5
  db 20,$14
  !e5
  db 20,$49
  !g5
  db 20,$14
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  db 20,$19
  !d5
  db 20,$14
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5

.pattern1_4
  !volume,230
  !instr,!instr34
  !pan,10
  db 70,$78
  !c4
  !tie
  db 10,$79
  !g3
  !g3
  db 80,$78
  !c4
  !tie
  db 70,$7B
  !g3
  !tie
  db 10,$76
  !g4
  !g4
  db 80,$7B
  !g3
  !tie
  db 70,$79
  !a3
  !tie
  db 10,$7B
  !e3
  !e3
  db 80,$79
  !a3
  !tie
  db 70,$7C
  !e3
  !tie
  db 10,$77
  !e4
  !e4
  db 80,$7C
  !e3
  !tie

.pattern2_0
  !loop : dw .sub5905 : db 1
  !loop : dw .sub58AA : db 2
  !loop : dw .sub5922 : db 2
  !loop : dw .sub592F : db 2
  !end

.pattern2_1
  !loop : dw .sub593C : db 1
  db 20,$19
  !d5
  db 20,$13
  !d5
  !d5
  !d5
  !g4
  !g4
  !g4
  !g4
  db 20,$19
  !ds5
  db 20,$13
  !ds5
  !ds5
  db 20,$14
  !ds5
  db 20,$15
  !ds5
  !ds5
  !ds5
  !ds5
  db 20,$19
  !g5
  db 20,$15
  !g5
  !g5
  !g5
  !g5
  !g5
  db 20,$14
  !g5
  db 20,$13
  !g5
  db 20,$19
  !f5
  db 20,$13
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  db 20,$19
  !e5
  db 20,$13
  !e5
  !d5
  !c5
  !b4
  !b4
  !c5
  !d5

.pattern2_2
  !loop : dw .sub5961 : db 1
  db 20,$19
  !e5
  db 20,$13
  !e5
  !e5
  !e5
  !c5
  !c5
  !c5
  !c5
  db 20,$19
  !g5
  db 20,$13
  !g5
  !g5
  db 20,$14
  !g5
  db 20,$15
  !g5
  !g5
  !g5
  !g5
  db 20,$19
  !gs5
  db 20,$15
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  db 20,$14
  !gs5
  db 20,$13
  !gs5
  db 20,$19
  !g5
  db 20,$13
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  db 20,$19
  !f5
  db 20,$13
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5

.pattern2_3
  !loop : dw .sub5986 : db 1
  db 20,$49
  !c6
  db 20,$14
  !g5
  !g5
  !g5
  db 20,$49
  !g5
  db 20,$14
  !e5
  !e5
  !e5
  db 20,$49
  !c6
  db 20,$14
  !gs5
  !gs5
  db 20,$15
  !gs5
  db 20,$16
  !gs5
  !gs5
  !gs5
  db 10,$7A
  !c6
  !d6
  db 20,$79
  !ds6
  db 20,$16
  !c6
  !c6
  !c6
  db 20,$78
  !f6
  db 20,$16
  !c6
  db 20,$15
  !c6
  db 10,$74
  !c6
  db 10,$7A
  !ds6
  db 20,$49
  !d6
  db 20,$14
  !b5
  !b5
  !b5
  !b5
  !b5
  !b5
  !b5
  db 20,$19
  !g5
  db 20,$14
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5

.pattern2_4
  !pan,8
  !instr,!instr30
  !volume,90
  !dynamicVolume,255,115
  !loop : dw .sub59B7 : db 7
  db 20,$79
  !gs4
  db 6,$75
  !g4
  db 7,$74
  !g4
  db 7,$73
  !g4
  db 20,$7A
  !gs4
  db 6,$75
  !g4
  db 7,$74
  !g4
  db 7,$73
  !g4
  db 10,$7A
  !gs4
  db 10,$79
  !gs4
  db 10,$7A
  !gs4
  !gs4
  db 10,$7B
  !gs4
  !gs4
  db 10,$7C
  !gs4
  !gs4

.pattern3_0
  !instr,!instr19
  !subtranspose,60
  !volume,230
  !echo,%00011111,44,44
  !loop : dw .sub58AA : db 2
  db 20,$2F
  !g2
  db 20,$2B
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  db 20,$2F
  !g2
  db 20,$2B
  !g2
  !g2
  !g2
  !g2
  !g2
  !gs2
  !gs2
  !loop : dw .sub58DE : db 2
  db 20,$2B
  !e3
  db 20,$26
  !e3
  !e3
  !e3
  !e3
  !e3
  !e3
  !e3
  db 20,$2B
  !e3
  db 20,$29
  !e3
  !e3
  !e3
  !e3
  !e3
  !e3
  !e3
  !end

.pattern3_1
  !instr,!instr19
  !volume,162
  !pan,12
  !subtranspose,60
  db 20,$19
  !g4
  db 20,$13
  !g4
  !g4
  !g4
  !g4
  !g4
  !g4
  !g4
  !loop : dw .sub58EB : db 2
  db 20,$19
  !b4
  db 20,$13
  !b4
  !b4
  !b4
  !a4
  !a4
  !b4
  !b4
  db 20,$19
  !g4
  db 20,$13
  !g4
  !g4
  !g4
  !g4
  !g4
  !g4
  !g4
  db 20,$19
  !a4
  db 20,$13
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  db 20,$19
  !a4
  db 20,$13
  !a4
  !a4
  !a4
  db 20,$18
  !g4
  db 20,$14
  !g4
  !g4
  !g4
  db 20,$19
  !fs4
  db 20,$16
  !fs4
  db 20,$17
  !g4
  db 20,$18
  !a4
  !g4
  db 20,$16
  !g4
  db 20,$15
  !fs4
  !g4

.pattern3_2
  !instr,!instr19
  !volume,162
  !pan,8
  !subtranspose,60
  !loop : dw .sub58B7 : db 4
  db 20,$19
  !b4
  db 20,$13
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  db 20,$19
  !b4
  db 20,$13
  !b4
  !b4
  !b4
  !c5
  !c5
  !b4
  !b4
  !loop : dw .sub58F8 : db 2

.pattern3_3
  !subtranspose,60
  !instr,!instr19
  !pan,10
  !volume,153
  !vibrato,10,20,50
  db 20,$49
  !c6
  db 20,$14
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  db 10,$7A
  !c6
  !d6
  db 20,$49
  !e6
  db 20,$14
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  db 10,$7A
  !d6
  !c6
  db 20,$49
  !b5
  db 20,$14
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  db 20,$19
  !g5
  db 20,$14
  !g5
  !g5
  !g5
  !f5
  !f5
  !e5
  !e5
  db 20,$49
  !a5
  db 20,$14
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  db 10,$7A
  !a5
  !b5
  db 20,$49
  !c6
  db 20,$14
  !e5
  !e5
  !e5
  db 20,$49
  !b5
  db 20,$14
  !e5
  db 20,$49
  !a5
  db 20,$14
  !e5
  db 20,$49
  !g5
  db 20,$14
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  db 20,$19
  !d5
  db 20,$14
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5

.pattern3_4
  !volume,230
  !instr,!instr34
  !pan,10
  db 70,$78
  !c4
  !tie
  db 10,$79
  !g3
  !g3
  db 80,$78
  !c4
  !tie
  db 70,$7B
  !g3
  !tie
  db 10,$76
  !g4
  !g4
  db 80,$7B
  !g3
  !tie
  db 70,$79
  !a3
  !tie
  db 10,$7B
  !e3
  !e3
  db 80,$79
  !a3
  !tie
  db 70,$7C
  !e3
  !tie
  db 10,$77
  !e4
  !e4
  db 80,$7C
  !e3
  !tie

.pattern4_0
  !loop : dw .sub5905 : db 1
  !loop : dw .sub58AA : db 2
  db 20,$2E
  !gs2
  db 20,$2A
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  db 20,$2E
  !g2
  db 20,$2B
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  db 20,$2F
  !f2
  db 20,$2C
  !f2
  !f2
  !f2
  db 20,$2F
  !g2
  db 20,$2B
  !g2
  !g2
  !g2
  db 20,$2D
  !c3
  db 20,$29
  !c3
  !c3
  !c3
  !c3
  !c3
  !c3
  !c3
  !end

.pattern4_1
  !loop : dw .sub593C : db 1
  db 20,$19
  !d5
  db 20,$13
  !d5
  !d5
  !d5
  !d5
  !d5
  !c5
  !c5
  db 20,$19
  !fs5
  db 20,$13
  !fs5
  db 20,$14
  !fs5
  db 20,$15
  !fs5
  !fs5
  !fs5
  db 20,$16
  !fs5
  !fs5
  db 20,$19
  !f5
  db 20,$16
  !f5
  db 20,$15
  !f5
  !f5
  db 20,$14
  !f5
  !c5
  db 20,$13
  !d5
  !d5
  db 20,$19
  !f5
  db 20,$13
  !c5
  !c5
  !c5
  db 20,$19
  !d5
  db 20,$13
  !d5
  !d5
  !d5
  db 20,$18
  !g4
  db 20,$13
  !g4
  !g4
  !g4
  db 20,$16
  !g4
  db 20,$13
  !g4
  !g4
  !g4

.pattern4_2
  !loop : dw .sub5961 : db 1
  db 20,$19
  !e5
  db 20,$13
  !e5
  !e5
  !e5
  !e5
  !e5
  !g5
  !g5
  db 20,$19
  !gs5
  db 20,$13
  !gs5
  db 20,$14
  !gs5
  db 20,$15
  !gs5
  !gs5
  !gs5
  db 20,$16
  !gs5
  !c6
  db 20,$19
  !b5
  db 20,$16
  !b5
  db 20,$15
  !b5
  !b5
  db 20,$14
  !a5
  !f5
  db 20,$13
  !g5
  !g5
  db 20,$19
  !a5
  db 20,$13
  !f5
  !f5
  !f5
  db 20,$19
  !f5
  db 20,$13
  !f5
  !f5
  !f5
  db 20,$18
  !b4
  db 20,$13
  !b4
  !b4
  !b4
  db 20,$16
  !c5
  db 20,$13
  !c5
  !c5
  !c5

.pattern4_3
  !loop : dw .sub5986 : db 1
  db 20,$49
  !c6
  db 20,$14
  !g5
  !g5
  !g5
  db 20,$79
  !g5
  db 20,$14
  !g5
  db 10,$69
  !g5
  !c6
  db 10,$68
  !e6
  !g6
  db 40,$44
  !c7
  db 20,$14
  !c6
  db 20,$15
  !c6
  !c6
  db 20,$16
  !c6
  !c6
  db 10,$78
  !as6
  !gs6
  db 20,$49
  !g6
  db 20,$16
  !d5
  db 20,$15
  !d5
  !d5
  db 20,$49
  !e6
  db 20,$15
  !a5
  !b5
  db 10,$75
  !b5
  db 10,$7A
  !d6
  db 20,$49
  !c6
  db 20,$14
  !a5
  !a5
  !a5
  db 20,$19
  !gs5
  db 20,$14
  !gs5
  !gs5
  !gs5
  db 20,$18
  !d5
  db 20,$14
  !d5
  !d5
  !d5
  db 20,$16
  !e5
  db 20,$14
  !e5
  !e5
  !e5

.pattern4_4
  !pan,8
  !instr,!instr30
  !volume,90
  !dynamicVolume,255,115
  !loop : dw .sub59B7 : db 7
  db 20,$79
  !gs4
  db 6,$75
  !g4
  db 7,$74
  !g4
  db 7,$73
  !g4
  db 20,$7A
  !gs4
  db 6,$75
  !g4
  db 7,$74
  !g4
  db 7,$73
  !g4
  db 10,$7A
  !gs4
  db 10,$79
  !gs4
  db 10,$7A
  !gs4
  !gs4
  db 10,$7B
  !gs4
  !gs4
  db 10,$7C
  !gs4
  !gs4

.pattern5_0
  !echo,%00011111,44,44
  !volume,230
  !loop : dw .sub59EB : db 1
  !loop : dw .sub59FC : db 2
  !loop : dw .sub59EB : db 1
  !loop : dw .sub59FC : db 2
  !end

.pattern5_1
  !vibrato,0,30,20
  !subtranspose,0
  !instr,!instr04
  !volume,158
  !loop : dw .sub5A05 : db 2
  !loop : dw .sub5A1C : db 2
  db 20,$09
  !f5
  db 20,$03
  !f5
  !f5
  db 20,$04
  !f5
  db 20,$05
  !f5
  db 20,$06
  !f5
  db 20,$07
  !f5
  db 20,$08
  !f5
  db 20,$09
  !d5
  db 20,$03
  !d5
  !d5
  db 20,$04
  !d5
  db 20,$05
  !d5
  db 20,$06
  !d5
  db 20,$07
  !d5
  db 20,$08
  !d5
  !loop : dw .sub5A33 : db 2

.pattern5_2
  !vibrato,0,30,20
  !subtranspose,0
  !instr,!instr04
  !volume,158
  db 20,$09
  !gs5
  db 20,$03
  !gs5
  !gs5
  db 20,$04
  !gs5
  db 20,$05
  !gs5
  db 20,$06
  !gs5
  db 20,$07
  !gs5
  db 20,$08
  !gs5
  !loop : dw .sub5A4A : db 3
  db 20,$09
  !gs5
  db 20,$03
  !gs5
  !gs5
  db 20,$04
  !gs5
  db 20,$05
  !gs5
  db 20,$06
  !gs5
  db 20,$07
  !gs5
  db 20,$08
  !gs5
  db 20,$09
  !f5
  db 20,$03
  !f5
  !f5
  db 20,$04
  !f5
  db 20,$05
  !f5
  db 20,$06
  !f5
  db 20,$07
  !f5
  db 20,$08
  !f5
  !loop : dw .sub5A61 : db 2

.pattern5_3
  !subtranspose,60
  !instr,!instr19
  !volume,158
  db 20,$45
  !c7
  !subtranspose,0
  !instr,!instr04
  db 20,$03
  !c5
  !c5
  db 20,$04
  !c5
  db 20,$05
  !c5
  db 20,$06
  !c5
  db 20,$07
  !c5
  !instr,!instr19
  !subtranspose,60
  db 6,$76
  !c7
  db 7
  !d7
  !ds7
  db 20,$44
  !f7
  !subtranspose,0
  !instr,!instr04
  db 20,$03
  !d5
  !d5
  db 20,$04
  !d5
  db 20,$05
  !d5
  !instr,!instr19
  !subtranspose,60
  db 20,$45
  !ds7
  !instr,!instr04
  !subtranspose,0
  db 20,$07
  !d5
  db 10,$78
  !d5
  !instr,!instr19
  !subtranspose,60
  db 10,$76
  !d7
  !g6
  !d7
  db 20,$45
  !d7
  !subtranspose,0
  !instr,!instr04
  db 20,$03
  !ds5
  !ds5
  db 20,$04
  !ds5
  db 20,$05
  !ds5
  db 20,$07
  !ds5
  db 20,$08
  !ds5
  db 20,$09
  !ds5
  db 20,$03
  !ds5
  !ds5
  db 20,$04
  !ds5
  db 20,$05
  !ds5
  db 20,$06
  !ds5
  db 20,$07
  !ds5
  db 20,$08
  !ds5
  !instr,!instr19
  !subtranspose,60
  db 20,$46
  !f6
  !instr,!instr04
  !subtranspose,0
  db 20,$03
  !c5
  !c5
  db 20,$04
  !c5
  db 20,$05
  !c5
  db 20,$06
  !c5
  db 20,$07
  !c5
  !instr,!instr19
  !subtranspose,60
  db 6,$78
  !f6
  db 7
  !g6
  !gs6
  db 20,$46
  !as6
  !instr,!instr04
  !subtranspose,0
  db 20,$03
  !as4
  !as4
  db 20,$04
  !as4
  db 20,$05
  !as4
  !instr,!instr19
  !subtranspose,60
  db 20,$46
  !gs6
  !instr,!instr04
  !subtranspose,0
  db 20,$07
  !as4
  db 10,$78
  !as4
  !subtranspose,60
  !instr,!instr19
  db 10,$76
  !as6
  db 20,$46
  !g6
  !subtranspose,0
  !instr,!instr04
  db 20,$03
  !g4
  !g4
  db 20,$04
  !g4
  db 20,$05
  !g4
  db 20,$06
  !g4
  db 20,$07
  !g4
  db 20,$08
  !g4
  db 20,$09
  !g4
  db 20,$03
  !g4
  !g4
  db 20,$04
  !g4
  db 20,$05
  !g4
  db 20,$06
  !g4
  db 20,$07
  !g4
  !instr,!instr19
  !subtranspose,60
  db 6,$76
  !g6
  db 7
  !gs6
  !as6

.pattern5_4
  !loop : dw .sub5A78 : db 1
  !dynamicPan,160,5
  db 20,$76
  !gs6
  db 10
  !g6
  db 10,$73
  !gs5
  db 10,$76
  !f6
  db 10,$73
  !g6
  db 10,$76
  !c6
  db 10,$73
  !f6
  db 10,$76
  !gs5
  db 10,$73
  !c6
  db 10,$76
  !g5
  db 10,$73
  !gs5
  db 10,$77
  !f5
  db 10,$73
  !g5
  db 10,$78
  !c5
  db 10,$73
  !f5
  !dynamicPan,160,15
  db 20,$79
  !as4
  db 10,$78
  !d5
  db 10,$73
  !as4
  db 10,$77
  !f5
  db 10,$73
  !d5
  db 10,$76
  !as5
  db 10,$73
  !f5
  db 10,$76
  !d6
  db 10,$73
  !as5
  db 10,$76
  !as5
  db 10,$73
  !d6
  db 10,$76
  !f5
  db 10,$73
  !as5
  db 10,$76
  !d5
  db 10,$73
  !f5
  !dynamicPan,160,5
  db 20,$7A
  !ds4
  db 10,$79
  !as4
  db 10,$73
  !ds4
  db 10,$78
  !ds5
  db 10,$73
  !as4
  db 10,$76
  !g5
  db 10,$73
  !ds5
  db 10,$76
  !as5
  db 10,$73
  !g5
  db 10,$76
  !g5
  db 10,$73
  !as5
  db 10,$76
  !ds5
  db 10,$73
  !g5
  db 10,$76
  !as4
  db 10,$73
  !ds5
  !dynamicPan,160,15
  db 20,$7A
  !ds4
  db 10,$79
  !as4
  db 10,$73
  !ds4
  db 10,$78
  !ds5
  db 10,$73
  !as4
  db 10,$76
  !g5
  db 10,$73
  !ds5
  db 10,$76
  !as5
  db 10,$73
  !g5
  db 10,$76
  !g5
  db 10,$73
  !as5
  db 10,$76
  !ds5
  db 10,$73
  !g5
  db 10,$76
  !as4
  db 10,$73
  !ds5

.pattern6_0
  !loop : dw .sub59EB : db 1
  !loop : dw .sub59FC : db 2
  !echo,%00001111,44,44
  !loop : dw .sub5B3D : db 2
  !loop : dw .sub5B46 : db 2
  !loop : dw .sub5B4F : db 3
  db 40,$57
  !as2
  db 40,$17
  !as2
  !as2
  db 40,$19
  !g2
  !end

.pattern6_1
  !loop : dw .sub5A05 : db 2
  !loop : dw .sub5A1C : db 2
  db 20,$09
  !ds5
  db 20,$03
  !ds5
  !ds5
  db 20,$04
  !ds5
  db 20,$05
  !ds5
  db 20,$06
  !ds5
  db 20,$07
  !ds5
  !ds5
  db 20,$09
  !ds5
  db 20,$03
  !ds5
  !ds5
  db 20,$04
  !ds5
  db 20,$05
  !ds5
  db 20,$06
  !ds5
  db 20,$07
  !ds5
  db 20,$08
  !ds5
  !loop : dw .sub5B58 : db 2
  !loop : dw .sub5A61 : db 2
  db 20,$09
  !d5
  db 20,$03
  !d5
  !d5
  db 20,$04
  !d5
  db 20,$05
  !d5
  db 20,$06
  !d5
  db 20,$07
  !d5
  db 20,$08
  !d5
  db 20,$09
  !d5
  db 20,$03
  !d5
  !d5
  db 20,$04
  !d5
  db 20,$07
  !d5
  db 20,$06
  !d5
  db 20,$07
  !d5
  db 20,$08
  !d5

.pattern6_2
  db 20,$09
  !gs5
  db 20,$03
  !gs5
  !gs5
  db 20,$04
  !gs5
  db 20,$05
  !gs5
  db 20,$06
  !gs5
  db 20,$07
  !gs5
  db 20,$08
  !gs5
  !loop : dw .sub5A4A : db 3
  !loop : dw .sub5A1C : db 2
  !loop : dw .sub5A4A : db 2
  !loop : dw .sub5A05 : db 3
  db 20,$09
  !f5
  db 20,$03
  !f5
  !f5
  db 20,$04
  !f5
  db 20,$08
  !gs4
  db 20,$07
  !gs4
  !b4
  db 20,$08
  !b4

.pattern6_3
  !pan,10
  !subtranspose,60
  !instr,!instr19
  !volume,158
  db 20,$45
  !c7
  !subtranspose,0
  !instr,!instr04
  db 20,$03
  !c5
  !c5
  db 20,$04
  !c5
  db 20,$05
  !c5
  db 20,$06
  !c5
  db 20,$07
  !c5
  !instr,!instr19
  !subtranspose,60
  db 6,$76
  !c7
  db 7
  !d7
  !ds7
  !slideIn,0,10,1
  db 40,$43
  !g7
  !subtranspose,0
  !instr,!instr04
  !endSlide
  db 20,$04
  !d5
  db 20,$05
  !d5
  !instr,!instr19
  !subtranspose,60
  db 20,$54
  !f7
  !instr,!instr04
  !subtranspose,0
  db 20,$07
  !d5
  db 20,$08
  !d5
  !instr,!instr19
  !subtranspose,60
  db 20,$45
  !ds7
  db 16,$74
  !d7
  !pitchSlide,8,1 : !ds7
  db 8
  !tie
  !pitchSlide,0,1 : !d7
  !tie
  !pitchSlide,0,1 : !c7
  db 28,$38
  !tie
  !pitchSlide,0,1 : !d7
  !subtranspose,0
  !instr,!instr04
  db 20,$03
  !ds5
  db 20,$04
  !ds5
  db 20,$05
  !ds5
  db 20,$07
  !ds5
  db 20,$08
  !ds5
  db 20,$09
  !ds5
  db 20,$03
  !ds5
  !ds5
  db 20,$04
  !ds5
  db 20,$05
  !ds5
  db 20,$06
  !ds5
  db 20,$07
  !ds5
  db 10,$08
  !ds5
  !instr,!instr19
  !subtranspose,60
  db 10,$78
  !g6
  db 20,$46
  !c7
  !instr,!instr04
  !subtranspose,0
  db 20,$03
  !gs5
  !gs5
  db 10,$44
  !gs5
  !instr,!instr19
  !subtranspose,60
  db 10,$46
  !g6
  db 20
  !c7
  !instr,!instr04
  !subtranspose,0
  db 10
  !gs5
  !instr,!instr19
  !subtranspose,60
  !as6
  db 20
  !c7
  !instr,!instr04
  !subtranspose,0
  db 20,$08
  !gs5
  db 20,$06
  !gs5
  db 10,$43
  !gs5
  !instr,!instr19
  !subtranspose,60
  db 10,$76
  !g6
  db 20,$44
  !c7
  !instr,!instr04
  !subtranspose,0
  db 10
  !gs5
  !instr,!instr19
  !subtranspose,60
  db 10,$75
  !as6
  db 20,$44
  !c7
  !instr,!instr04
  !subtranspose,0
  db 20,$06
  !gs5
  db 20,$07
  !gs5
  !subtranspose,60
  !instr,!instr19
  db 10,$76
  !c7
  !d7
  db 20,$46
  !ds7
  !instr,!instr04
  !subtranspose,0
  db 20,$03
  !b5
  !b5
  db 10,$44
  !b5
  !instr,!instr19
  !subtranspose,60
  db 10,$46
  !as6
  db 20
  !ds7
  !instr,!instr04
  !subtranspose,0
  db 10
  !b5
  !instr,!instr19
  !subtranspose,60
  !cs7
  db 20
  !ds7
  !instr,!instr04
  !subtranspose,0
  db 20,$08
  !b5
  db 20,$06
  !b5
  db 10,$43
  !b5
  !instr,!instr19
  !subtranspose,60
  db 10,$76
  !as6
  db 20,$44
  !ds7
  !instr,!instr04
  !subtranspose,0
  db 10
  !b5
  !instr,!instr19
  !subtranspose,60
  db 10,$75
  !cs7
  db 20,$44
  !ds7
  !instr,!instr04
  !subtranspose,0
  db 20,$06
  !b5
  db 20,$07
  !b5
  !subtranspose,60
  !instr,!instr19
  db 10,$76
  !cs7
  !b6
  db 40,$36
  !as6
  !instr,!instr04
  !subtranspose,0
  db 20,$03
  !gs5
  db 20,$04
  !gs5
  db 20,$05
  !gs5
  db 20,$06
  !gs5
  db 20,$07
  !gs5
  db 20,$08
  !gs5
  db 20,$09
  !gs5
  db 20,$03
  !gs5
  !gs5
  db 20,$04
  !gs5
  db 20,$05
  !gs5
  db 20,$06
  !gs5
  db 20,$07
  !gs5
  !instr,!instr19
  !subtranspose,60
  db 10,$76
  !as6
  !b6
  db 40,$73
  !as6
  !instr,!instr04
  !subtranspose,0
  db 20,$03
  !gs5
  db 20,$04
  !gs5
  db 20,$05
  !gs5
  db 20,$06
  !gs5
  db 20,$07
  !gs5
  db 20,$08
  !gs5
  db 20,$09
  !gs5
  db 20,$03
  !gs5
  !gs5
  db 20,$04
  !gs5
  db 20,$08
  !f5
  db 20,$07
  !f5
  !g5
  db 20,$08
  !g5

.pattern6_4
  !loop : dw .sub5A78 : db 1
  !pan,8
  !instr,!instr30
  !volume,90
  !dynamicVolume,255,115
  !loop : dw .sub59B7 : db 7
  db 20,$79
  !gs4
  db 6,$75
  !g4
  db 7,$74
  !g4
  db 7,$73
  !g4
  db 20,$7A
  !gs4
  db 6,$75
  !g4
  db 7,$74
  !g4
  db 7,$73
  !g4
  db 10,$7A
  !gs4
  db 10,$79
  !gs4
  db 10,$7A
  !gs4
  !gs4
  db 10,$7B
  !gs4
  !gs4
  !pan,10
  !instr,!instr34
  !volume,230
  db 20,$79
  !g3

.sub58AA
  db 20,$2D
  !c3
  db 20,$29
  !c3
  !c3
  !c3
  !c3
  !c3
  !c3
  !c3
  !end

.sub58B7
  db 20,$19
  !d5
  db 20,$13
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !end

.sub58C4
  db 20,$19
  !e5
  db 20,$13
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !end

.sub58D1
  db 20,$19
  !g5
  db 20,$13
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !end

.sub58DE
  db 20,$2D
  !a2
  db 20,$29
  !a2
  !a2
  !a2
  !a2
  !a2
  !a2
  !a2
  !end

.sub58EB
  db 20,$19
  !c5
  db 20,$13
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !end

.sub58F8
  db 20,$19
  !b4
  db 20,$13
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !end

.sub5905
  !echo,%00001111,44,44
  db 20,$2D
  !d3
  db 20,$29
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  db 20,$2F
  !g2
  db 20,$2B
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  !end

.sub5922
  db 20,$2E
  !gs2
  db 20,$2A
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !end

.sub592F
  db 20,$2E
  !g2
  db 20,$2B
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  !end

.sub593C
  db 20,$19
  !a4
  db 20,$13
  !g4
  !g4
  !f4
  !e4
  !e4
  !f4
  !a4
  db 20,$19
  !e5
  db 20,$13
  !d5
  !d5
  !d5
  !f4
  !f4
  !g4
  !g4
  db 20,$19
  !g4
  db 20,$13
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !end

.sub5961
  db 20,$19
  !c5
  db 20,$13
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !c5
  db 20,$19
  !f5
  db 20,$13
  !f5
  !f5
  !f5
  !a4
  !a4
  !b4
  !b4
  db 20,$19
  !c5
  db 20,$13
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !end

.sub5986
  db 20,$49
  !f5
  db 20,$14
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  db 10,$7A
  !f5
  !g5
  db 20,$49
  !a5
  db 20,$13
  !a5
  !a5
  !a5
  db 20,$14
  !e5
  !e5
  !e5
  db 10,$7A
  !g5
  !f5
  !e5
  !g5
  db 20,$79
  !c6
  db 20,$14
  !g5
  !g5
  !g5
  !g5
  !g5
  db 10,$7A
  !c6
  !d6
  !end

.sub59B7
  db 20,$79
  !gs4
  db 6,$75
  !g4
  db 7,$74
  !g4
  db 7,$73
  !g4
  db 20,$79
  !gs4
  db 6,$75
  !g4
  db 7,$74
  !g4
  db 7,$73
  !g4
  db 10,$79
  !gs4
  db 10,$78
  !gs4
  db 10,$79
  !gs4
  db 10,$78
  !gs4
  db 20,$79
  !gs4
  db 5,$74
  !gs4
  db 5,$75
  !gs4
  db 5,$76
  !gs4
  db 5,$77
  !gs4
  !end

.sub59EB
  db 40,$59
  !f2
  db 40,$19
  !f2
  !f2
  !f2
  db 40,$57
  !as2
  db 40,$17
  !as2
  !as2
  !as2
  !end

.sub59FC
  db 40,$5B
  !ds2
  db 40,$1B
  !ds2
  !ds2
  !ds2
  !end

.sub5A05
  db 20,$09
  !f5
  db 20,$03
  !f5
  !f5
  db 20,$04
  !f5
  db 20,$05
  !f5
  db 20,$06
  !f5
  db 20,$07
  !f5
  db 20,$08
  !f5
  !end

.sub5A1C
  db 20,$09
  !g5
  db 20,$03
  !g5
  !g5
  db 20,$04
  !g5
  db 20,$05
  !g5
  db 20,$06
  !g5
  db 20,$07
  !g5
  db 20,$08
  !g5
  !end

.sub5A33
  db 20,$09
  !as4
  db 20,$03
  !as4
  !as4
  db 20,$04
  !as4
  db 20,$05
  !as4
  db 20,$06
  !as4
  db 20,$07
  !as4
  db 20,$08
  !as4
  !end

.sub5A4A
  db 20,$09
  !as5
  db 20,$03
  !as5
  !as5
  db 20,$04
  !as5
  db 20,$05
  !as5
  db 20,$06
  !as5
  db 20,$07
  !as5
  db 20,$08
  !as5
  !end

.sub5A61
  db 20,$09
  !ds5
  db 20,$03
  !ds5
  !ds5
  db 20,$04
  !ds5
  db 20,$05
  !ds5
  db 20,$06
  !ds5
  db 20,$07
  !ds5
  db 20,$08
  !ds5
  !end

.sub5A78
  !instr,!instr33
  !volume,150
  !pan,15
  !dynamicPan,160,5
  db 20,$79
  !f4
  db 10,$78
  !c5
  db 10,$73
  !f4
  db 10,$77
  !f5
  db 10,$73
  !c5
  db 10,$76
  !g5
  db 10,$73
  !f5
  db 10,$76
  !gs5
  db 10,$73
  !g5
  db 10,$76
  !g5
  db 10,$73
  !gs5
  db 10,$76
  !f5
  db 10,$73
  !g5
  db 10,$76
  !c5
  db 10,$73
  !f5
  !dynamicPan,160,15
  db 20,$79
  !as4
  db 10,$78
  !f5
  db 10,$73
  !as4
  db 10,$78
  !as5
  db 10,$73
  !f5
  db 10,$77
  !d6
  db 10,$73
  !as5
  db 10,$76
  !f6
  db 10,$73
  !d6
  db 10,$76
  !d6
  db 10,$73
  !f6
  db 10,$76
  !as5
  db 10,$73
  !d6
  db 10,$76
  !f5
  db 10,$73
  !as5
  !dynamicPan,160,5
  db 20,$7A
  !ds4
  db 10,$79
  !as4
  db 10,$78
  !ds4
  !ds5
  db 10,$73
  !as4
  db 10,$76
  !g5
  db 10,$73
  !ds5
  db 10,$76
  !as5
  db 10,$73
  !g5
  db 10,$76
  !g5
  db 10,$73
  !as5
  db 10,$76
  !ds5
  db 10,$73
  !g5
  db 10,$76
  !as4
  db 10,$73
  !ds5
  !dynamicPan,160,15
  db 20,$7A
  !ds4
  db 10,$79
  !as4
  db 10,$73
  !ds4
  db 10,$78
  !ds5
  db 10,$73
  !as4
  db 10,$76
  !g5
  db 10,$73
  !ds5
  db 10,$76
  !as5
  db 10,$73
  !g5
  db 10,$76
  !ds6
  db 10,$73
  !as5
  db 10,$76
  !g6
  db 10,$73
  !ds6
  db 10,$76
  !as6
  db 10,$73
  !g5
  !end

.sub5B3D
  db 40,$59
  !gs2
  db 40,$19
  !gs2
  !gs2
  !gs2
  !end

.sub5B46
  db 40,$56
  !b2
  db 40,$16
  !b2
  !b2
  !b2
  !end

.sub5B4F
  db 40,$57
  !as2
  db 40,$17
  !as2
  !as2
  !as2
  !end

.sub5B58
  db 20,$09
  !fs5
  db 20,$03
  !fs5
  !fs5
  db 20,$04
  !fs5
  db 20,$05
  !fs5
  db 20,$06
  !fs5
  db 20,$07
  !fs5
  db 20,$08
  !fs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
