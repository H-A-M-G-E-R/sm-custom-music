asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr03 = $16
!instr04 = $17
!instr19 = $18
!instr30 = $19
!instr31 = $1A
!instr32 = $1B
!instr34 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FC,$E0,$B8,$03,$80
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FD,$F1,$B8,$07,$40
  db !instr32,$8F,$E0,$B8,$03,$C0
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+27
  dw Sample04,Sample04+1098
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+27
  dw Sample32,Sample32+2232
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample_55d7dd5330b8a8ef8525169d9eaa7cd3.brr"
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_997ae0fd998037789f5b8dc17e49af0b.brr"
  Sample32: incbin "Sample_1a788f845be3181021d56997b0deeaa8.brr"
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
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw .pattern10
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, 0, 0, 0
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, 0, 0, 0
.pattern10: dw .pattern10_0, .pattern10_1, .pattern10_2, .pattern10_3, .pattern10_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr31
  !subtranspose,40
  !musicVolume,255
  !tempo,51
  !echo,%00001111,46,46
  !echoParameters,5,67,0
  !pan,10
  !instr,!instr32
  !volume,230
  db 66,$76
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22,$73
  !c4
  !loop : dw .sub5980 : db 1
  !as3
  db 44
  !as3
  db 11
  !as3
  !as3
  !echo,%00011111,46,46
  db 88,$73
  %percNote(!instr31-!instr31)
  !end

.pattern0_1
  !vibrato,0,10,30
  !pan,8
  !instr,!instr19
  !subtranspose,60
  !volume,203
  db 44,$56
  !g4
  !e4
  !c4
  !g4
  !as4
  !f4
  !d4
  !as4
  !c5
  !g4
  !e4
  !c5
  !d5
  !as4
  db 44,$26
  !g4
  !rest
  !end

.pattern0_2
  !vibrato,0,10,30
  !pan,12
  !instr,!instr19
  !subtranspose,60
  !volume,196
  db 44,$56
  !c5
  !g4
  !e4
  !c5
  !d5
  !as4
  !f4
  !d5
  !e5
  !c5
  !g4
  !e5
  !f5
  !d5
  db 44,$26
  !g5
  !rest
  !end

.pattern0_3
  !subtranspose,0
  !pan,10
  !instr,!instr34
  !volume,207
  db 22,$78
  !c4
  db 44
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22
  !c4
  !as3
  db 44
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  !c4
  db 44
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !as3
  db 44
  !as3
  db 11
  !as3
  !as3
  db 88,$7A
  !g3
  !end

.pattern0_4
  !instr,!instr30
  !pan,5
  !volume,135
  db 22,$76
  !a4
  db 22,$74
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 22,$76
  !a4
  !a4
  db 11,$74
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 22,$76
  !a4
  db 11,$73
  !a4
  db 11,$74
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 22,$76
  !a4
  !a4
  db 11,$74
  !a4
  db 11,$72
  !a4
  db 22,$75
  !a4
  db 22,$76
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$74
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 22,$76
  !a4
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$74
  !a4
  db 11,$72
  !a4
  db 22,$76
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$74
  !a4
  db 11,$72
  !a4
  db 11,$74
  !a4
  db 11,$72
  !a4
  db 44,$77
  !a4
  !instr,!instr04
  !pan,10
  !volume,160
  !vibrato,10,7,10
  db 33,$16
  !g5
  db 11,$76
  !g5
  !end

.pattern1_0
  !endVibrato
  !subtranspose,40
  !pan,11
  !instr,!instr32
  !volume,207
  db 66,$76
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22,$73
  !c4
  db 66,$76
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  db 11,$75
  !c4
  db 22,$76
  !c4
  db 66
  !f4
  db 11
  !f4
  !f4
  db 22
  !d4
  !d4
  db 11,$75
  !d4
  db 11,$73
  !d4
  db 22,$76
  !d4
  !pan,10
  !volume,230
  db 66
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22,$73
  !c4
  !loop : dw .sub5980 : db 1
  !as3
  db 44
  !as3
  db 11
  !as3
  !as3
  db 88
  !g4
  !end

.pattern1_1
  !endVibrato
  !subtranspose,40
  !pan,9
  !instr,!instr32
  !volume,180
  db 66,$76
  !g4
  db 11
  !g4
  !g4
  db 22
  !g4
  db 44
  !g4
  db 22,$73
  !g4
  db 66,$76
  !g4
  db 11
  !g4
  !g4
  db 22
  !g4
  !g4
  db 11
  !g4
  db 11,$75
  !g4
  db 22,$76
  !g4
  db 66,$75
  !a4
  db 11
  !a4
  !a4
  db 22,$76
  !g4
  !g4
  db 11,$75
  !g4
  db 11,$73
  !g4
  db 22,$76
  !g4
  !instr,!instr19
  !vibrato,0,10,30
  !subtranspose,60
  !volume,216
  db 44,$56
  !g4
  !e4
  !c4
  !g4
  !as4
  !f4
  !d4
  !as4
  !c5
  !g4
  !e4
  !g4
  db 44,$57
  !d5
  db 44,$56
  !f5
  db 44,$26
  !g5
  !rest
  !end

.pattern1_2
  !pan,10
  !instr,!instr19
  !volume,194
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !d5
  db 44,$76
  !a4
  !f4
  !g4
  !pan,12
  db 44,$56
  !c5
  !g4
  !e4
  !c5
  !d5
  !as4
  !f4
  !d5
  !e5
  !c5
  !g4
  !e5
  db 44,$57
  !f5
  db 44,$56
  !a5
  db 44,$26
  !b5
  !rest
  !end

.pattern1_3
  !instr,!instr34
  !volume,207
  !subtranspose,0
  !endVibrato
  db 66,$78
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22,$75
  !c4
  db 66,$78
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 66
  !d4
  db 11
  !d4
  !d4
  db 22,$7A
  !g3
  !g3
  db 11
  !g3
  !g3
  db 22
  !g3
  db 66,$78
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 66
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  db 66
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 22,$79
  !as3
  db 44
  !as3
  db 11
  !as3
  !as3
  db 88,$7B
  !g3
  !end

.pattern1_4
  !subtranspose,0
  !pan,10
  !instr,!instr04
  !volume,160
  !vibrato,10,7,10
  db 100,$76
  !c6
  db 32,$66
  !tie
  db 33,$76
  !c6
  db 11
  !e6
  !loop : dw .sub59AA : db 1
  !vibrato,20,7,30
  db 88
  !c6
  !dynamicVolume,88,81
  db 88,$68
  !tie
  !endVibrato
  !volume,180
  !subtranspose,40
  !instr,!instr32
  db 22,$76
  !d4
  db 44,$73
  !d4
  db 11,$76
  !d4
  !d4
  db 22
  !d4
  !d4
  db 11
  !d4
  db 11,$73
  !d4
  db 22,$76
  !d4
  db 66
  !e4
  db 11,$75
  !e4
  db 11,$73
  !e4
  db 22,$76
  !e4
  !e4
  db 11
  !e4
  db 11,$73
  !e4
  db 22,$76
  !e4
  !d4
  db 44
  !d4
  db 11
  !d4
  !d4
  db 44
  !b4
  !subtranspose,0
  !instr,!instr04
  !volume,160
  !vibrato,10,7,10
  db 33,$16
  !g5
  db 11,$76
  !g5
  !end

.pattern2_0
  !pan,10
  !instr,!instr32
  !volume,216
  db 66,$76
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22,$73
  !c4
  db 66,$76
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  db 11,$75
  !c4
  db 22,$76
  !c4
  db 66
  !d4
  db 11
  !d4
  !d4
  db 22
  !b3
  !b3
  db 11,$75
  !b3
  db 11,$73
  !b3
  db 22,$76
  !b3
  !volume,230
  !a3
  db 44
  !a3
  db 11
  !a3
  !a3
  db 22
  !g3
  !g3
  db 11
  !g3
  !g3
  db 22,$73
  !g3
  db 22,$46
  !f4
  db 66,$23
  !f4
  db 22,$56
  !g4
  db 66,$26
  !g4
  db 66,$76
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 11
  !c4
  !c4
  db 66
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !end

.pattern2_1
  !endVibrato
  !subtranspose,40
  !pan,9
  !instr,!instr32
  !volume,198
  db 66,$76
  !g4
  db 11
  !g4
  !g4
  db 22
  !g4
  db 44
  !g4
  db 22,$73
  !g4
  db 66,$76
  !g4
  db 11
  !g4
  !g4
  db 22
  !g4
  !g4
  db 11
  !g4
  db 11,$75
  !g4
  db 22,$76
  !g4
  db 66
  !f4
  db 11
  !f4
  !f4
  db 22
  !e4
  !e4
  db 11
  !e4
  !e4
  db 22
  !e4
  !vibrato,0,10,30
  !instr,!instr19
  !subtranspose,60
  !volume,189
  db 44,$56
  !c5
  !a4
  !c5
  !a4
  db 22
  !a4
  db 66,$06
  !a4
  db 22,$16
  !b4
  db 66,$06
  !b4
  db 44,$56
  !c5
  !g4
  !e4
  !g4
  !c5
  !g4
  !e4
  !g4
  !end

.pattern2_2
  !pan,10
  !volume,194
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !d5
  db 44,$76
  !a4
  !d5
  !e5
  !pan,12
  db 44,$56
  !e5
  !c5
  !e5
  !c5
  db 22,$16
  !c5
  db 66,$06
  !c5
  db 22,$16
  !d5
  db 66,$06
  !d5
  db 44,$56
  !e5
  !c5
  !g4
  !c5
  !e5
  !c5
  !g4
  !c5
  !end

.pattern2_3
  db 66,$78
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22,$75
  !c4
  db 66,$78
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 66
  !d4
  db 11
  !d4
  !d4
  db 22,$7B
  !e3
  !e3
  db 11
  !e3
  !e3
  db 22
  !e3
  !subtranspose,60
  !instr,!instr19
  !volume,230
  db 44
  !a2
  db 44,$79
  !a3
  !g3
  db 44,$7B
  !g2
  !subtranspose,0
  !instr,!instr34
  !volume,230
  db 22,$78
  !f3
  db 66
  !f3
  db 22
  !g3
  db 66
  !g3
  !volume,207
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 11
  !c4
  !c4
  db 66
  !c4
  db 11
  !c4
  db 11,$77
  !c4
  db 22
  !c4
  !c4
  db 11,$76
  !c4
  !c4
  db 22
  !c4
  !end

.pattern2_4
  db 100,$76
  !c6
  db 32,$66
  !tie
  db 33,$76
  !c6
  db 11
  !e6
  !loop : dw .sub59AA : db 1
  !vibrato,20,7,30
  db 88
  !c6
  !dynamicVolume,88,108
  db 88,$68
  !tie
  !volume,158
  !vibrato,0,7,10
  db 33,$76
  !c6
  db 11,$73
  !c6
  db 22,$06
  !d6
  db 44,$45
  !e6
  db 22,$25
  !c6
  db 22,$55
  !d6
  db 22,$54
  !c6
  db 88
  !rest
  !rest
  !rest
  !rest
  !end

.pattern3_0
  !echo,%00001111,51,51
  !instr,!instr19
  !volume,171
  !pan,12
  !subtranspose,60
  !vibrato,0,17,40
  db 44,$76
  !gs4
  db 33
  !f4
  db 11
  !gs4
  db 44
  !as4
  db 33
  !f4
  db 11
  !as4
  db 44
  !as4
  db 33
  !g4
  db 11
  !as4
  db 44
  !ds4
  db 33
  !ds4
  db 11
  !ds4
  db 44
  !gs4
  db 33
  !f4
  db 11
  !gs4
  db 44
  !as4
  db 33
  !f4
  db 11
  !as4
  db 88
  !as4
  db 44,$26
  !ds5
  db 33,$76
  !ds4
  db 11
  !ds4
  db 44
  !gs4
  db 33
  !f4
  db 11
  !gs4
  db 44
  !as4
  db 33
  !f4
  db 11
  !as4
  db 44
  !as4
  db 33
  !g4
  db 11
  !as4
  db 44
  !ds4
  db 33
  !ds4
  db 11
  !ds4
  db 44
  !gs4
  db 33
  !f4
  db 11
  !gs4
  db 44
  !as4
  db 33
  !g4
  db 11
  !as4
  !end

.pattern3_1
  !instr,!instr19
  !volume,171
  !pan,8
  !subtranspose,60
  !vibrato,0,18,40
  db 44,$76
  !c5
  db 33
  !gs4
  db 11
  !c5
  db 44
  !d5
  db 33
  !as4
  db 11
  !d5
  !loop : dw .sub59C9 : db 1
  db 88
  !ds5
  db 44,$26
  !gs5
  db 33,$76
  !gs4
  db 11
  !gs4
  db 44
  !c5
  db 33
  !gs4
  db 11
  !c5
  db 44
  !d5
  db 33
  !as4
  db 11
  !d5
  !loop : dw .sub59C9 : db 1
  !end

.pattern3_2
  !instr,!instr19
  !volume,176
  !pan,10
  !subtranspose,60
  !vibrato,0,20,40
  db 44,$76
  !ds5
  db 33
  !d5
  db 11
  !ds5
  db 44
  !f5
  db 33
  !ds5
  db 11
  !f5
  !loop : dw .sub59E2 : db 1
  db 88
  !g5
  db 44,$26
  !c6
  db 33,$76
  !c5
  db 11
  !d5
  db 44
  !ds5
  db 33
  !d5
  db 11
  !ds5
  db 44
  !f5
  db 33
  !ds5
  db 11
  !f5
  !loop : dw .sub59E2 : db 1
  !end

.pattern3_3
  !instr,!instr19
  !subtranspose,60
  !volume,230
  db 44,$78
  !f2
  db 44,$76
  !c3
  db 44,$77
  !as2
  db 44,$78
  !f2
  !loop : dw .sub59FB : db 2
  db 44,$7A
  !ds2
  db 44,$77
  !as2
  !gs2
  db 44,$76
  !ds3
  db 44,$78
  !f2
  db 44,$76
  !c3
  db 44,$77
  !as2
  db 44,$78
  !f2
  !end

.pattern3_4
  !pan,5
  !instr,!instr30
  !endVibrato
  !volume,135
  db 22,$76
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  !loop : dw .sub5A14 : db 3
  !end

.pattern4_0
  db 44,$76
  !g4
  db 44,$77
  !g3
  !echo,%00011111,46,46
  db 88,$08
  !g4
  !end

.pattern4_1
  db 44,$76
  !c5
  db 44,$77
  !d4
  db 88,$08
  !d5
  !end

.pattern4_2
  db 44,$76
  !d5
  db 44,$77
  !g4
  db 88,$08
  !g5
  !end

.pattern4_3
  !subtranspose,0
  !instr,!instr34
  db 22,$7B
  !g3
  db 44
  !g3
  db 11
  !g3
  !g3
  db 44
  !g3
  !instr,!instr04
  !volume,160
  !vibrato,10,8,10
  db 33,$16
  !g5
  db 11,$76
  !g5
  !end

.pattern4_4
  db 22,$77
  !a4
  db 44
  !a4
  db 11
  !a4
  !a4
  !pan,10
  !volume,230
  db 88,$75
  %percNote(!instr31-!instr31)
  !end

.pattern5_0
  !endVibrato
  !subtranspose,40
  !pan,11
  !instr,!instr32
  !volume,207
  db 66,$76
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22,$73
  !c4
  db 66,$76
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  db 11,$75
  !c4
  db 22,$76
  !c4
  db 66
  !f4
  db 11
  !f4
  !f4
  db 22
  !d4
  !d4
  db 11,$75
  !d4
  db 11,$73
  !d4
  db 22,$76
  !d4
  !pan,10
  !volume,230
  db 66
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22,$73
  !c4
  !loop : dw .sub5980 : db 1
  !as3
  db 44
  !as3
  db 11
  !as3
  !as3
  db 88
  !g4
  !end

.pattern5_1
  !endVibrato
  !subtranspose,40
  !pan,9
  !instr,!instr32
  !volume,180
  db 66,$76
  !g4
  db 11
  !g4
  !g4
  db 22
  !g4
  db 44
  !g4
  db 22,$73
  !g4
  db 66,$76
  !g4
  db 11
  !g4
  !g4
  db 22
  !g4
  !g4
  db 11
  !g4
  db 11,$75
  !g4
  db 22,$76
  !g4
  db 66,$75
  !a4
  db 11
  !a4
  !a4
  db 22,$76
  !g4
  !g4
  db 11,$75
  !g4
  db 11,$73
  !g4
  db 22,$76
  !g4
  !instr,!instr19
  !vibrato,0,10,30
  !subtranspose,60
  !volume,216
  db 44,$56
  !g4
  !e4
  !c4
  !g4
  !as4
  !f4
  !d4
  !as4
  !c5
  !g4
  !e4
  !g4
  db 44,$57
  !d5
  db 44,$56
  !f5
  db 44,$26
  !g5
  !rest
  !end

.pattern5_2
  !pan,10
  !instr,!instr19
  !volume,194
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !d5
  db 44,$76
  !a4
  !f4
  !g4
  !pan,12
  db 44,$56
  !c5
  !g4
  !e4
  !c5
  !d5
  !as4
  !f4
  !d5
  !e5
  !c5
  !g4
  !e5
  db 44,$57
  !f5
  db 44,$56
  !a5
  db 44,$26
  !b5
  !rest
  !end

.pattern5_3
  !instr,!instr34
  !volume,207
  !subtranspose,0
  !endVibrato
  db 66,$78
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22,$75
  !c4
  db 66,$78
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 66
  !d4
  db 11
  !d4
  !d4
  db 22,$7A
  !g3
  !g3
  db 11
  !g3
  !g3
  db 22
  !g3
  db 66,$78
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 66
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  db 66
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 22,$79
  !as3
  db 44
  !as3
  db 11
  !as3
  !as3
  db 88,$7B
  !g3
  !end

.pattern5_4
  !subtranspose,0
  !pan,10
  !instr,!instr04
  !volume,160
  !vibrato,10,7,10
  db 100,$76
  !c6
  db 32,$66
  !tie
  db 33,$76
  !c6
  db 11
  !e6
  !loop : dw .sub59AA : db 1
  !vibrato,20,7,30
  db 88
  !c6
  !dynamicVolume,88,81
  db 88,$68
  !tie
  !endVibrato
  !volume,180
  !subtranspose,40
  !instr,!instr32
  db 22,$76
  !d4
  db 44,$73
  !d4
  db 11,$76
  !d4
  !d4
  db 22
  !d4
  !d4
  db 11
  !d4
  db 11,$73
  !d4
  db 22,$76
  !d4
  db 66
  !e4
  db 11,$75
  !e4
  db 11,$73
  !e4
  db 22,$76
  !e4
  !e4
  db 11
  !e4
  db 11,$73
  !e4
  db 22,$76
  !e4
  !d4
  db 44
  !d4
  db 11
  !d4
  !d4
  db 44
  !b4
  !subtranspose,0
  !instr,!instr04
  !volume,160
  !vibrato,10,7,10
  db 33,$16
  !g5
  db 11,$76
  !g5
  !end

.pattern6_0
  !pan,10
  !instr,!instr32
  !volume,216
  db 66,$76
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22,$73
  !c4
  db 66,$76
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  db 11,$75
  !c4
  db 22,$76
  !c4
  db 66
  !d4
  db 11
  !d4
  !d4
  db 22
  !b3
  !b3
  db 11,$75
  !b3
  db 11,$73
  !b3
  db 22,$76
  !b3
  !volume,230
  !a3
  db 44
  !a3
  db 11
  !a3
  !a3
  db 22
  !g3
  !g3
  db 11
  !g3
  !g3
  db 22,$73
  !g3
  db 22,$46
  !f4
  db 66,$23
  !f4
  db 22,$56
  !g4
  db 66,$26
  !g4
  db 66,$76
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 11
  !c4
  !c4
  db 66
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !end

.pattern6_1
  !endVibrato
  !subtranspose,40
  !pan,9
  !instr,!instr32
  !volume,198
  db 66,$76
  !g4
  db 11
  !g4
  !g4
  db 22
  !g4
  db 44
  !g4
  db 22,$73
  !g4
  db 66,$76
  !g4
  db 11
  !g4
  !g4
  db 22
  !g4
  !g4
  db 11
  !g4
  db 11,$75
  !g4
  db 22,$76
  !g4
  db 66
  !f4
  db 11
  !f4
  !f4
  db 22
  !e4
  !e4
  db 11
  !e4
  !e4
  db 22
  !e4
  !vibrato,0,10,30
  !instr,!instr19
  !subtranspose,60
  !volume,189
  db 44,$56
  !c5
  !a4
  !c5
  !a4
  db 22
  !a4
  db 66,$06
  !a4
  db 22,$16
  !b4
  db 66,$06
  !b4
  db 44,$56
  !c5
  !g4
  !e4
  !g4
  !c5
  !g4
  !e4
  !g4
  !end

.pattern6_2
  !pan,10
  !volume,194
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !c5
  db 44,$76
  !g4
  db 44,$75
  !d5
  db 44,$76
  !a4
  !d5
  !e5
  !pan,12
  db 44,$56
  !e5
  !c5
  !e5
  !c5
  db 22,$16
  !c5
  db 66,$06
  !c5
  db 22,$16
  !d5
  db 66,$06
  !d5
  db 44,$56
  !e5
  !c5
  !g4
  !c5
  !e5
  !c5
  !g4
  !c5
  !end

.pattern6_3
  db 66,$78
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 22,$75
  !c4
  db 66,$78
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 66
  !d4
  db 11
  !d4
  !d4
  db 22,$7B
  !e3
  !e3
  db 11
  !e3
  !e3
  db 22
  !e3
  !subtranspose,60
  !instr,!instr19
  !volume,230
  db 44
  !a2
  db 44,$79
  !a3
  !g3
  db 44,$7B
  !g2
  !subtranspose,0
  !instr,!instr34
  !volume,230
  db 22,$78
  !f3
  db 66
  !f3
  db 22
  !g3
  db 66
  !g3
  !volume,207
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 44
  !c4
  db 11
  !c4
  !c4
  db 66
  !c4
  db 11
  !c4
  db 11,$77
  !c4
  db 22
  !c4
  !c4
  db 11,$76
  !c4
  !c4
  db 22
  !c4
  !end

.pattern6_4
  db 100,$76
  !c6
  db 32,$66
  !tie
  db 33,$76
  !c6
  db 11
  !e6
  !loop : dw .sub59AA : db 1
  !vibrato,20,7,30
  db 88
  !c6
  !dynamicVolume,88,108
  db 88,$68
  !tie
  !volume,158
  !vibrato,0,7,10
  db 33,$76
  !c6
  db 11,$73
  !c6
  db 22,$06
  !d6
  db 44,$45
  !e6
  db 22,$25
  !c6
  db 22,$55
  !d6
  db 22,$54
  !c6
  db 88
  !rest
  !rest
  !rest
  !rest
  !end

.pattern7_0
  !echo,%00001111,51,51
  !instr,!instr19
  !volume,171
  !pan,12
  !subtranspose,60
  !vibrato,0,17,40
  db 44,$76
  !gs4
  db 33
  !f4
  db 11
  !gs4
  db 44
  !as4
  db 33
  !f4
  db 11
  !as4
  db 44
  !as4
  db 33
  !g4
  db 11
  !as4
  db 44
  !ds4
  db 33
  !ds4
  db 11
  !ds4
  db 44
  !gs4
  db 33
  !f4
  db 11
  !gs4
  db 44
  !as4
  db 33
  !f4
  db 11
  !as4
  db 88
  !as4
  db 44,$26
  !ds5
  db 33,$76
  !ds4
  db 11
  !ds4
  db 44
  !gs4
  db 33
  !f4
  db 11
  !gs4
  db 44
  !as4
  db 33
  !f4
  db 11
  !as4
  db 44
  !as4
  db 33
  !g4
  db 11
  !as4
  db 44
  !ds4
  db 33
  !ds4
  db 11
  !ds4
  db 44
  !gs4
  db 33
  !f4
  db 11
  !gs4
  db 44
  !as4
  db 33
  !g4
  db 11
  !as4
  !end

.pattern7_1
  !instr,!instr19
  !volume,171
  !pan,8
  !subtranspose,60
  !vibrato,0,18,40
  db 44,$76
  !c5
  db 33
  !gs4
  db 11
  !c5
  db 44
  !d5
  db 33
  !as4
  db 11
  !d5
  !loop : dw .sub59C9 : db 1
  db 88
  !ds5
  db 44,$26
  !gs5
  db 33,$76
  !gs4
  db 11
  !gs4
  db 44
  !c5
  db 33
  !gs4
  db 11
  !c5
  db 44
  !d5
  db 33
  !as4
  db 11
  !d5
  !loop : dw .sub59C9 : db 1
  !end

.pattern7_2
  !instr,!instr19
  !volume,176
  !pan,10
  !subtranspose,60
  !vibrato,0,20,40
  db 44,$76
  !ds5
  db 33
  !d5
  db 11
  !ds5
  db 44
  !f5
  db 33
  !ds5
  db 11
  !f5
  !loop : dw .sub59E2 : db 1
  db 88
  !g5
  db 44,$26
  !c6
  db 33,$76
  !c5
  db 11
  !d5
  db 44
  !ds5
  db 33
  !d5
  db 11
  !ds5
  db 44
  !f5
  db 33
  !ds5
  db 11
  !f5
  !loop : dw .sub59E2 : db 1
  !end

.pattern7_3
  !instr,!instr19
  !subtranspose,60
  !volume,230
  db 44,$78
  !f2
  db 44,$76
  !c3
  db 44,$77
  !as2
  db 44,$78
  !f2
  !loop : dw .sub59FB : db 2
  db 44,$7A
  !ds2
  db 44,$77
  !as2
  !gs2
  db 44,$76
  !ds3
  db 44,$78
  !f2
  db 44,$76
  !c3
  db 44,$77
  !as2
  db 44,$78
  !f2
  !end

.pattern7_4
  !pan,5
  !instr,!instr30
  !endVibrato
  !volume,135
  db 22,$76
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  !loop : dw .sub5A14 : db 3
  !end

.pattern8_0
  db 88,$76
  !g4
  db 44,$28
  !b4
  db 22,$38
  !f4
  !g4
  !end

.pattern8_1
  db 88,$76
  !f4
  db 44,$27
  !d5
  db 11,$48
  !d4
  !g4
  !b4
  !d5
  !end

.pattern8_2
  db 88,$77
  !d5
  db 44,$37
  !g5
  db 11,$58
  !g5
  !b5
  db 11,$57
  !d6
  db 11,$56
  !g6
  !end

.pattern8_3
  db 44,$7B
  !g2
  db 44,$79
  !d3
  db 44,$76
  !g3
  db 44,$7B
  !g2
  !end

.pattern8_4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  !end

.pattern9_0
  !echo,%00011111,46,46
  !loop : dw .sub5A72 : db 2
  !volume,167
  db 22
  !c6
  db 22,$76
  !gs5
  !f5
  !d5
  db 22,$75
  !as5
  db 22,$76
  !g5
  !ds5
  !c5
  !g5
  !ds5
  !c5
  !gs4
  !g5
  !g5
  !ds5
  !c5
  db 11
  !f5
  !c5
  !a5
  !c5
  !f5
  !c5
  !a5
  !c5
  !f5
  !c5
  !a5
  !c5
  !f5
  !c5
  !a5
  !c5
  !f5
  !d5
  !g5
  !d5
  !f5
  !d5
  !g5
  !d5
  !f5
  !d5
  !g5
  !d5
  !f5
  !d5
  !g5
  !d5
  !end

.pattern9_1
  !loop : dw .sub5AC3 : db 2
  !volume,167
  !rest
  db 22,$75
  !as5
  db 22,$76
  !g5
  !ds5
  !c5
  !gs5
  !f5
  !d5
  !as4
  !f5
  !d5
  !as4
  !g4
  !gs5
  !f5
  !d5
  db 11
  !as4
  !c5
  !a4
  !f5
  !a4
  !c5
  !a4
  !f5
  !a4
  !c5
  !a4
  !f5
  !a4
  !c5
  !a4
  !f5
  !a4
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  db 11,$78
  !g5
  !b5
  !d6
  !g6
  !end

.pattern9_2
  !volume,144
  db 66,$36
  !c7
  db 11,$56
  !c7
  !d7
  db 22,$25
  !ds7
  db 22,$26
  !d7
  !c7
  !as6
  !g6
  db 44,$56
  !as6
  db 22,$24
  !g6
  db 44,$54
  !as6
  db 22,$24
  !g6
  !as6
  db 66,$36
  !c7
  db 11,$56
  !c7
  !d7
  db 22,$25
  !ds7
  db 22,$26
  !d7
  db 22,$25
  !ds7
  db 22,$24
  !f7
  !g7
  db 44,$53
  !as7
  db 22,$24
  !g7
  db 44,$53
  !as7
  db 22,$24
  !g7
  db 22,$43
  !as7
  !slideIn,0,15,1
  !transpose,12
  !subtranspose,20
  !volume,126
  db 66,$73
  !c7
  !endSlide
  !subtranspose,60
  db 11,$74
  !as6
  db 11,$75
  !gs6
  db 22,$76
  !g6
  !f6
  !ds6
  !f6
  db 44
  !g6
  db 33
  !f6
  db 11
  !g6
  db 44
  !c6
  !c6
  db 77
  !d6
  db 11
  !c6
  db 44
  !a5
  !c6
  db 77
  !d6
  db 11
  !g6
  db 44
  !g6
  db 11,$78
  !g5
  !b5
  !d6
  !g6
  !end

.pattern9_3
  !loop : dw .sub5B14 : db 2
  !loop : dw .sub5B29 : db 1
  db 44,$7B
  !d2
  db 44,$76
  !d3
  !a2
  !d3
  db 44,$78
  !g2
  db 44,$76
  !g3
  !d3
  db 44,$78
  !g2
  !end

.pattern9_4
  !instr,!instr34
  !volume,230
  !pan,10
  db 22,$79
  !gs3
  db 44
  !gs3
  db 11
  !gs3
  !gs3
  db 22,$78
  !as3
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  !c4
  db 44
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 22,$79
  !gs3
  db 44
  !gs3
  db 11
  !gs3
  !gs3
  db 22,$78
  !as3
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  !c4
  db 44
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  !c4
  db 11
  !c4
  !c4
  db 22
  !c4
  db 22,$7A
  !f3
  db 44
  !f3
  db 11
  !f3
  !f3
  db 22,$78
  !as3
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  db 22,$7B
  !ds3
  db 44
  !ds3
  db 11
  !ds3
  !ds3
  db 22,$78
  !gs3
  !gs3
  db 11
  !gs3
  !gs3
  !gs3
  !gs3
  db 22,$7B
  !d3
  db 44
  !d3
  db 11
  !d3
  !d3
  db 22,$76
  !d4
  !d4
  db 11,$7B
  !d3
  !d3
  db 22
  !d3
  db 22,$7A
  !g3
  db 44
  !g3
  db 11
  !g3
  !g3
  db 22
  !g3
  !g3
  db 11
  !g3
  !g3
  db 22
  !g3
  !end

.pattern10_0
  !volume,180
  !pan,5
  !dynamicPan,88,15
  db 11,$74
  !c6
  db 11,$75
  !as5
  db 11,$76
  !gs5
  !g5
  !f5
  !ds5
  !d5
  !c5
  !dynamicPan,88,5
  db 11,$75
  !as5
  db 11,$76
  !gs5
  !g5
  !f5
  !ds5
  !d5
  !c5
  !as4
  !dynamicPan,88,15
  !g5
  !f5
  !ds5
  !d5
  !c5
  !as4
  !gs4
  !g4
  !dynamicPan,88,5
  !g5
  !gs5
  !g5
  !f5
  !ds5
  !d5
  !c5
  !as4
  !pan,12
  !volume,171
  !loop : dw .sub5B40 : db 2
  !loop : dw .sub5B51 : db 2
  !volume,90
  !dynamicVolume,255,180
  db 88
  !gs5
  !tie
  !tie
  db 88,$58
  !tie
  !end

.pattern10_1
  !pan,9
  !slideIn,0,15,1
  !volume,144
  db 66,$73
  !c7
  !endSlide
  db 11,$74
  !as6
  db 11,$75
  !gs6
  db 22,$76
  !g6
  !f6
  !ds6
  !f6
  db 44
  !g6
  db 33
  !f6
  db 11
  !g6
  db 44
  !c6
  !c6
  !pan,8
  !volume,171
  db 11
  !c5
  !a4
  !f5
  !a4
  !c5
  !a4
  !f5
  !a4
  !c5
  !a4
  !f5
  !a4
  !c5
  !a4
  !f5
  !a4
  !c5
  !a4
  !f5
  !a4
  !c5
  !a4
  !f5
  !a4
  !c5
  !a4
  !f5
  !a4
  !c5
  !a4
  !f5
  !a4
  !loop : dw .sub5B62 : db 2
  !volume,90
  !dynamicVolume,255,180
  db 88
  !f6
  !tie
  !tie
  db 88,$58
  !tie
  !end

.pattern10_2
  !pan,11
  !slideIn,0,15,1
  !transpose,12
  !subtranspose,20
  !volume,122
  db 66,$73
  !c7
  !endSlide
  !subtranspose,60
  db 11,$74
  !as6
  db 11,$75
  !gs6
  db 22,$76
  !g6
  !f6
  !ds6
  !f6
  db 44
  !g6
  db 33
  !f6
  db 11
  !g6
  db 44
  !c6
  !c6
  !pan,10
  db 77
  !d6
  db 11
  !g6
  !dynamicVolume,20,72
  db 20
  !g6
  !dynamicVolume,200,126
  db 68
  !tie
  db 88
  !tie
  db 44
  !tie
  db 33
  !rest
  db 11,$78
  !c6
  db 77,$76
  !d6
  db 11
  !g6
  !dynamicVolume,20,72
  db 20
  !g6
  !dynamicVolume,200,126
  db 68
  !tie
  db 88
  !tie
  db 44
  !tie
  !transpose,0
  db 33,$08
  !g6
  db 11,$79
  !g6
  !volume,171
  !dynamicVolume,29,115
  db 30,$73
  !c7
  !dynamicVolume,235,140
  db 36
  !tie
  db 110
  !tie
  db 88
  !tie
  db 88,$58
  !tie
  !end

.pattern10_3
  !loop : dw .sub5B29 : db 1
  !loop : dw .sub5B73 : db 2
  !loop : dw .sub5B7C : db 2
  !volume,108
  !dynamicVolume,255,230
  db 88,$78
  !as2
  !tie
  !tie
  db 88,$58
  !tie
  !end

.pattern10_4
  db 22,$7A
  !f3
  db 44
  !f3
  db 11
  !f3
  !f3
  db 22,$78
  !as3
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  db 22,$7B
  !ds3
  db 44
  !ds3
  db 11
  !ds3
  !ds3
  db 22,$78
  !gs3
  !gs3
  db 11
  !gs3
  !gs3
  !gs4
  !gs3
  db 22,$7B
  !d3
  db 44
  !d3
  db 11
  !d3
  !d3
  db 22
  !d3
  !d3
  !pan,8
  !volume,122
  !instr,!instr03
  db 11,$76
  !a6
  !d7
  !a6
  !d7
  db 44,$16
  !a6
  db 11,$76
  !a6
  !d7
  !a6
  !d7
  db 22
  !a6
  !pan,10
  !volume,230
  !instr,!instr34
  db 22,$7C
  !d3
  db 11,$7D
  !d3
  db 11,$7B
  !d3
  db 11,$7C
  !d3
  db 11,$7B
  !d3
  db 22,$7A
  !g3
  db 44
  !g3
  db 11
  !g3
  !g3
  db 22
  !g3
  !g3
  !pan,12
  !volume,122
  !instr,!instr03
  db 11,$76
  !a6
  !d7
  !a6
  !d7
  db 44,$16
  !a6
  db 11,$76
  !a6
  !d7
  !a6
  !d6
  db 22
  !a6
  !pan,10
  !volume,230
  !instr,!instr34
  db 22,$7A
  !g3
  db 11,$7B
  !g3
  db 11,$7A
  !g3
  db 11,$7B
  !g3
  db 11,$7A
  !g3
  !pan,5
  !instr,!instr30
  !endVibrato
  !volume,135
  !dynamicVolume,255,150
  db 22,$76
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$76
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  !instr,!instr34
  !pan,10
  !volume,230
  db 11,$7B
  !g3
  !g3
  !end

.sub5980
  db 22,$76
  !as3
  db 44,$73
  !as3
  db 11,$76
  !as3
  !as3
  db 22
  !as3
  !as3
  db 11
  !as3
  db 11,$73
  !as3
  db 22,$76
  !as3
  db 66
  !c4
  db 11,$75
  !c4
  db 11,$73
  !c4
  db 22,$76
  !c4
  !c4
  db 11
  !c4
  db 11,$73
  !c4
  db 22,$76
  !c4
  !end

.sub59AA
  db 22,$75
  !g6
  db 22,$14
  !c7
  !b6
  db 22,$15
  !a6
  db 44,$66
  !g6
  db 33
  !e6
  db 11,$76
  !g6
  db 44
  !f6
  db 33
  !d6
  db 11
  !e6
  db 44
  !d6
  db 33
  !e6
  db 11
  !d6
  !end

.sub59C9
  db 44
  !ds5
  db 33
  !as4
  db 11
  !ds5
  db 44
  !gs4
  db 33
  !gs4
  db 11
  !gs4
  db 44
  !c5
  db 33
  !gs4
  db 11
  !c5
  db 44
  !d5
  db 33
  !as4
  db 11
  !d5
  !end

.sub59E2
  db 44
  !g5
  db 33
  !f5
  db 11
  !g5
  db 44
  !c5
  db 33
  !c5
  db 11
  !d5
  db 44
  !ds5
  db 33
  !d5
  db 11
  !ds5
  db 44
  !f5
  db 33
  !ds5
  db 11
  !f5
  !end

.sub59FB
  db 44,$7A
  !ds2
  db 44,$77
  !as2
  db 44,$79
  !gs2
  db 44,$76
  !ds3
  db 44,$78
  !f2
  db 44,$76
  !c3
  db 44,$77
  !as2
  db 44,$78
  !f2
  !end

.sub5A14
  db 11,$76
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 22,$76
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$75
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  db 11,$73
  !a4
  db 11,$72
  !a4
  !end

.sub5A72
  db 11,$73
  !gs6
  db 11,$74
  !ds6
  db 11,$75
  !c6
  db 11,$76
  !gs5
  !ds5
  !gs5
  db 11,$75
  !c6
  db 11,$74
  !ds6
  db 11,$73
  !as6
  db 11,$74
  !f6
  db 11,$75
  !d6
  db 11,$76
  !as5
  !f5
  !d5
  db 11,$75
  !f5
  db 11,$74
  !as5
  db 11,$73
  !f6
  db 11,$74
  !c6
  db 11,$75
  !g5
  db 11,$76
  !f5
  !c5
  !f5
  db 11,$75
  !g5
  db 11,$74
  !c6
  db 11,$73
  !e6
  db 11,$74
  !c6
  db 11,$75
  !g5
  db 11,$76
  !e5
  !c5
  !e5
  db 11,$75
  !g5
  db 11,$74
  !c6
  !end

.sub5AC3
  db 11,$73
  !ds6
  db 11,$74
  !c6
  db 11,$75
  !gs5
  db 11,$76
  !ds5
  !c5
  !ds5
  db 11,$75
  !gs5
  db 11,$74
  !c6
  db 11,$73
  !f6
  db 11,$74
  !d6
  db 11,$75
  !as5
  db 11,$76
  !f5
  !d5
  !as4
  db 11,$75
  !d5
  db 11,$74
  !f5
  db 11,$73
  !c6
  db 11,$74
  !g5
  db 11,$75
  !f5
  db 11,$76
  !c5
  !g4
  !c5
  db 11,$75
  !f5
  db 11,$74
  !g5
  db 11,$73
  !c6
  db 11,$74
  !g5
  db 11,$75
  !e5
  db 11,$76
  !c5
  !g4
  !c5
  db 11,$75
  !e5
  db 11,$74
  !g5
  !end

.sub5B14
  db 44,$78
  !gs2
  db 44,$76
  !gs3
  db 44,$77
  !as2
  db 44,$76
  !as3
  !c3
  db 44,$74
  !c4
  db 44,$76
  !g3
  !c3
  !end

.sub5B29
  db 44,$79
  !f2
  db 44,$76
  !f3
  db 44,$75
  !as3
  db 44,$76
  !as2
  db 44,$7B
  !ds2
  db 44,$76
  !ds3
  !gs3
  db 44,$78
  !gs2
  !end

.sub5B40
  !f5
  !c5
  !a5
  !c5
  !f5
  !c5
  !a5
  !c5
  !f5
  !c5
  !a5
  !c5
  !f5
  !c5
  !a5
  !c5
  !end

.sub5B51
  !f5
  !d5
  !g5
  !d5
  !f5
  !d5
  !g5
  !d5
  !f5
  !d5
  !g5
  !d5
  !f5
  !d5
  !g5
  !d5
  !end

.sub5B62
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  !end

.sub5B73
  db 44,$7B
  !d2
  db 44,$76
  !d3
  !a2
  !d3
  !end

.sub5B7C
  db 44,$78
  !g2
  db 44,$76
  !g3
  db 44,$78
  !g2
  db 44,$76
  !g3
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
