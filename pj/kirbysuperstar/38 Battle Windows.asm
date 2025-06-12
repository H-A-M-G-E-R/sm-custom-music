asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr10 = $16
!instr25 = $17
!instr26 = $18
!instr31 = $19
!instr32 = $1A
!instr33 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr10,$FF,$E0,$B8,$02,$00
  db !instr25,$FF,$E0,$B8,$02,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr31,$FF,$E0,$B8,$02,$00
  db !instr32,$FF,$E0,$B8,$02,$00
  db !instr33,$BF,$D4,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample10,Sample10+27
  dw Sample24_25,Sample24_25+27
  dw Sample26,Sample26+27
  dw Sample31,Sample31+27
  dw Sample32,Sample32+27
  dw Sample33,Sample33+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample10: incbin "Sample_ea8770757e0789379fe5b938b6423e22.brr"
  Sample24_25: incbin "Sample_9ddfb5e318bb09130c06c0fefb7b2686.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample31: incbin "Sample_7b809b3756fb29c438178d7783fee31f.brr"
  Sample32: incbin "Sample_8d034db71fdfc2579258e437eb166f1d.brr"
  Sample33: incbin "Sample_8d034db71fdfc2579258e437eb166f1d.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $00BE,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, 0, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, 0, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, 0, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, 0, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,255
  !tempo,51
  !endEcho
  !volume,175
  !instr,!instr25
  !slideOut,17,18,251
  db 36,$68
  !g3
  db 18
  !rest
  !endSlide
  db 6,$48
  !g3
  db 6,$46
  !g3
  !g3
  db 9,$47
  !g3
  db 18,$05
  !g4
  db 9,$47
  !g3
  db 18,$05
  !g4
  db 9,$47
  !g3
  db 9,$45
  !g4
  db 18
  !rest
  db 27,$27
  !g3
  !g3
  !g3
  db 18
  !rest
  db 9,$4B
  !g2
  db 9,$47
  !as2
  !b2
  !loop : dw .sub559B : db 2
  !end

.pattern0_1
  !instr,!instr10
  !volume,75
  db 72,$76
  !b7
  !tie
  db 40
  !tie
  db 104
  !b7
  db 60
  !tie
  db 5
  !b7
  db 79,$78
  !b7
  db 72
  !tie
  !tie
  !end

.pattern0_2
  !instr,!instr32
  !volume,176
  !slideOut,19,16,241
  db 36,$77
  !b5
  db 108
  !rest
  db 18
  !rest
  !endSlide
  !instr,!instr31
  db 27,$07
  !f6
  !f6
  !f6
  db 18
  !rest
  !instr,!instr25
  db 9,$43
  !g4
  !as4
  !b4
  !slideOut,11,6,246
  db 18,$76
  !c5
  !endSlide
  !instr,!instr33
  !volume,125
  db 9,$36
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  !end

.pattern0_3
  !instr,!instr32
  !volume,176
  !slideOut,19,16,241
  db 36,$77
  !g6
  db 108
  !rest
  db 18
  !rest
  !instr,!instr31
  !endSlide
  db 27,$07
  !as6
  !as6
  !as6
  db 18
  !rest
  !instr,!instr31
  !subtranspose,10
  db 9,$43
  !g4
  !as4
  !b4
  !slideOut,11,6,246
  db 18,$76
  !c5
  !endSlide
  !subtranspose,0
  !instr,!instr33
  !volume,125
  db 9,$36
  !ds6
  !as5
  db 18
  !rest
  db 9
  !ds6
  !as5
  db 18
  !rest
  db 9
  !ds6
  !as5
  db 18
  !rest
  db 9
  !ds6
  !as5
  db 18
  !rest
  db 9
  !ds6
  !as5
  db 18
  !rest
  db 9
  !ds6
  !as5
  db 18
  !rest
  db 9
  !ds6
  !as5
  db 18
  !rest
  db 9
  !ds6
  !as5
  !end

.pattern1_0
  !volume,165
  !instr,!instr25
  db 18,$07
  !c3
  !c4
  db 9,$47
  !g3
  !as3
  db 18,$17
  !c4
  db 9,$47
  !c3
  !g3
  !as3
  db 18,$27
  !c4
  db 9,$47
  !as3
  !c4
  !g3
  db 18,$07
  !c3
  !c4
  db 9,$47
  !g3
  !as3
  db 18,$17
  !c4
  db 9,$47
  !c3
  !g3
  !as3
  db 18,$27
  !c4
  db 9,$47
  !as3
  !c4
  !g3
  !loop : dw .sub55B4 : db 2
  !loop : dw .sub559B : db 2
  !loop : dw .sub55B4 : db 2
  !end

.pattern1_1
  !instr,!instr10
  db 72,$76
  !g7
  !tie
  db 20
  !tie
  !b7
  db 104
  !b7
  db 90
  !b7
  db 54
  !b7
  db 11
  !tie
  db 5
  !b7
  !b7
  db 1
  !b7
  db 3
  !b7
  db 8
  !b7
  db 2
  !b7
  !b7
  db 3
  !b7
  db 5
  !b7
  db 40
  !tie
  db 55
  !b7
  db 4
  !b7
  db 10
  !tie
  db 72
  !g7
  db 62
  !tie
  db 20
  !tie
  !b7
  db 104
  !b7
  db 90
  !b7
  db 31
  !b7
  db 5
  !b7
  !b7
  db 1
  !b7
  db 3
  !b7
  db 8
  !b7
  db 1
  !b7
  !tie
  db 2
  !b7
  db 3
  !b7
  db 5
  !b7
  db 40
  !tie
  db 55
  !b7
  db 38
  !b7
  !end

.pattern1_2
  !loop : dw .sub55CD : db 2
  !end

.pattern1_3
  !loop : dw .sub5621 : db 2
  !end

.pattern2_0
  !loop : dw .sub5675 : db 2
  !loop : dw .sub568E : db 2
  !end

.pattern2_1
  db 72,$76
  !b7
  !tie
  !tie
  !tie
  db 88
  !tie
  db 26
  !b7
  db 30
  !b7
  db 111
  !tie
  db 20
  !b7
  db 4
  !b7
  db 5
  !b7
  db 4
  !b7
  !end

.pattern2_2
  !vibrato,10,20,110
  !instr,!instr25
  !volume,102
  db 9,$76
  !a5
  !a4
  !d5
  !fs5
  db 18,$16
  !a5
  db 36,$26
  !a5
  db 9,$76
  !a5
  !a5
  db 36,$36
  !a5
  db 18,$16
  !d6
  db 6,$76
  !d6
  !d6
  !d6
  db 18,$06
  !d6
  !d6
  db 36,$46
  !cs6
  !b5
  db 9,$76
  !g5
  !a5
  db 36
  !c6
  db 9,$72
  !g5
  !a5
  db 36
  !c6
  db 9,$71
  !g5
  !a5
  db 18
  !c6
  !vibrato,20,20,40
  !volume,125
  db 9,$75
  !e5
  !fs5
  db 36
  !g5
  db 9,$72
  !e5
  !fs5
  db 36
  !g5
  db 9,$71
  !e5
  !fs5
  db 18
  !g5
  !end

.pattern2_3
  !vibrato,10,20,110
  !instr,!instr25
  !volume,120
  db 9,$76
  !d6
  !d5
  !fs5
  !a5
  db 18,$16
  !d6
  db 36,$26
  !d6
  db 9,$76
  !d6
  !d6
  db 36,$36
  !e6
  db 18,$16
  !fs6
  db 6,$76
  !fs6
  !fs6
  !fs6
  db 18,$06
  !fs6
  !fs6
  db 36,$46
  !e6
  !d6
  db 9,$76
  !c6
  !d6
  db 36
  !e6
  db 9,$72
  !c6
  !d6
  db 36
  !e6
  db 9,$71
  !c6
  !d6
  db 18
  !e6
  !vibrato,20,20,40
  !instr,!instr26
  !volume,176
  db 9,$75
  !g5
  !a5
  db 36
  !b5
  db 9,$72
  !g5
  !a5
  db 36
  !b5
  db 9,$71
  !g5
  !a5
  db 18
  !b5
  !end

.pattern3_0
  !loop : dw .sub5675 : db 2
  db 18,$07
  !a2
  !a3
  db 9,$47
  !e3
  !g3
  db 18,$17
  !a3
  db 9,$47
  !a2
  !e3
  !g3
  db 18,$27
  !a3
  db 9,$47
  !g3
  !a3
  !e3
  db 18,$08
  !gs2
  db 18,$07
  !gs3
  db 9,$47
  !ds3
  !fs3
  db 18,$17
  !gs3
  db 9,$4B
  !g2
  db 9,$47
  !d3
  !g3
  db 18,$3B
  !g2
  db 9,$47
  !f3
  db 18
  !g3
  !end

.pattern3_1
  db 40,$76
  !b7
  db 5
  !b7
  db 8
  !b7
  db 91
  !b7
  db 72
  !tie
  !tie
  db 96
  !tie
  db 48
  !b7
  db 72
  !tie
  !tie
  !end

.pattern3_2
  !instr,!instr33
  !volume,156
  !endVibrato
  db 9,$76
  !a5
  !a4
  !d5
  !fs5
  db 18,$16
  !a5
  db 36,$26
  !a5
  db 9,$76
  !a5
  !a5
  db 36,$36
  !a5
  db 18,$16
  !d6
  db 6,$76
  !d6
  !d6
  !d6
  db 18,$06
  !d6
  !d6
  db 36,$56
  !cs6
  db 36,$76
  !b5
  db 18,$16
  !e6
  db 6,$76
  !d6
  !e6
  !d6
  db 18,$16
  !c6
  !b5
  db 72,$46
  !c6
  !vibrato,9,20,140
  !instr,!instr31
  !volume,120
  db 18,$06
  !ds7
  !c7
  db 18,$66
  !d7
  db 18,$06
  !ds7
  db 9,$77
  !f6
  !b5
  db 9,$78
  !a6
  db 9,$77
  !b5
  db 9,$78
  !b6
  !g5
  !f6
  db 9,$79
  !g5
  !end

.pattern3_3
  !instr,!instr33
  !volume,167
  !endVibrato
  db 9,$76
  !d6
  !d5
  !fs5
  !a5
  db 18,$16
  !d6
  db 36,$26
  !d6
  db 9,$76
  !d6
  !d6
  db 36,$36
  !e6
  db 18,$16
  !fs6
  db 6,$76
  !fs6
  !fs6
  !fs6
  db 18,$06
  !fs6
  !fs6
  db 36,$56
  !e6
  db 36,$76
  !d6
  db 18,$16
  !g6
  db 6,$76
  !fs6
  !g6
  !fs6
  db 18,$16
  !e6
  !d6
  db 72,$66
  !e6
  !vibrato,9,20,140
  !instr,!instr31
  !volume,134
  db 18,$06
  !g7
  !ds7
  db 18,$66
  !f7
  db 18,$06
  !g7
  db 9,$77
  !b6
  !d6
  db 9,$78
  !c7
  db 9,$77
  !d6
  db 9,$78
  !d7
  !b5
  !b6
  db 9,$79
  !b5
  !end

.pattern4_0
  !volume,165
  !instr,!instr25
  db 18,$07
  !c3
  !c4
  db 9,$47
  !g3
  !as3
  db 18,$17
  !c4
  db 9,$47
  !c3
  !g3
  !as3
  db 18,$27
  !c4
  db 9,$47
  !as3
  !c4
  !g3
  db 18,$07
  !c3
  !c4
  db 9,$47
  !g3
  !as3
  db 18,$17
  !c4
  db 9,$47
  !c3
  !g3
  !as3
  db 18,$27
  !c4
  db 9,$47
  !as3
  !c4
  !g3
  !loop : dw .sub55B4 : db 2
  !loop : dw .sub559B : db 2
  !loop : dw .sub55B4 : db 2
  !end

.pattern4_1
  !instr,!instr10
  db 72,$76
  !g7
  !tie
  db 20
  !tie
  !b7
  db 104
  !b7
  db 54
  !b7
  db 11
  !tie
  db 5
  !b7
  !b7
  db 30
  !b7
  db 3
  !b7
  db 8
  !b7
  db 2
  !b7
  !b7
  db 3
  !b7
  db 21
  !b7
  db 40
  !tie
  db 55
  !b7
  db 4
  !b7
  db 3
  !b7
  db 5
  !b7
  db 37
  !b7
  db 72
  !b7
  !tie
  db 100
  !tie
  db 4
  !b7
  db 3
  !b7
  !b7
  db 14
  !b7
  db 20
  !b7
  db 72
  !tie
  !tie
  db 33
  !tie
  db 39
  !tie
  db 50
  !tie
  db 22
  !tie
  !end

.pattern4_2
  !loop : dw .sub55CD : db 1
  !instr,!instr32
  !volume,148
  !vibrato,18,20,14
  db 9,$76
  !as5
  !as4
  !ds5
  !g5
  db 18,$16
  !as5
  db 36,$26
  !as5
  db 9,$76
  !as5
  !as5
  db 36,$56
  !as5
  db 18,$16
  !ds6
  db 6,$76
  !ds6
  !ds6
  !ds6
  db 18,$06
  !ds6
  !ds6
  db 36,$76
  !d6
  !ds6
  db 18,$16
  !cs6
  db 6,$76
  !ds6
  !f6
  !ds6
  db 18,$16
  !cs6
  !c6
  db 72,$46
  !cs6
  !vibrato,5,18,110
  !instr,!instr25
  !volume,97
  db 9,$56
  !f6
  !g6
  db 36,$36
  !gs6
  db 9,$56
  !cs6
  !ds6
  db 36,$36
  !f6
  db 9,$56
  !gs6
  !as6
  db 18,$76
  !c7
  !end

.pattern4_3
  !loop : dw .sub5621 : db 1
  !instr,!instr32
  !volume,148
  !vibrato,18,20,14
  db 9,$76
  !ds6
  !ds5
  !g5
  !as5
  db 18,$16
  !ds6
  db 36,$26
  !ds6
  db 9,$76
  !ds6
  !ds6
  db 36,$56
  !f6
  db 18,$16
  !g6
  db 6,$76
  !g6
  !g6
  !g6
  db 18,$06
  !g6
  !g6
  db 36,$56
  !f6
  db 36,$76
  !g6
  db 18,$16
  !gs6
  db 6,$76
  !g6
  !gs6
  !g6
  db 18,$16
  !f6
  !ds6
  db 72,$46
  !f6
  !vibrato,5,18,120
  !instr,!instr26
  !volume,167
  db 9,$56
  !gs6
  !as6
  db 36,$36
  !c7
  db 9,$56
  !f6
  !g6
  db 36,$36
  !gs6
  db 9,$56
  !c7
  !cs7
  db 18,$76
  !ds7
  !end

.pattern5_0
  db 18,$08
  !gs2
  db 18,$07
  !gs3
  db 9,$47
  !ds3
  !fs3
  db 18,$17
  !gs3
  db 9,$48
  !gs2
  db 9,$47
  !ds3
  !fs3
  db 18,$27
  !gs3
  db 9,$47
  !fs3
  !gs3
  !ds3
  db 18,$0B
  !g2
  db 18,$07
  !g3
  db 9,$47
  !d3
  !f3
  db 18,$17
  !g3
  db 9,$4B
  !g2
  db 9,$47
  !d3
  !f3
  db 18,$27
  !g3
  db 9,$47
  !f3
  !g3
  !d3
  db 18,$07
  !f3
  db 18,$05
  !f4
  db 9,$47
  !c4
  db 9,$45
  !ds4
  db 18,$15
  !f4
  db 9,$47
  !f3
  !c4
  db 9,$45
  !ds4
  db 18,$25
  !f4
  db 9,$45
  !ds4
  !f4
  db 9,$47
  !c4
  db 18,$07
  !g3
  db 18,$05
  !g4
  db 9,$47
  !d4
  db 9,$45
  !f4
  db 18,$15
  !g4
  db 9,$47
  !g3
  !d4
  db 9,$45
  !f4
  db 18,$25
  !g4
  db 9,$48
  !f4
  !g4
  db 9,$49
  !d4
  !loop : dw .sub559B : db 3
  db 27
  !d3
  db 9
  !c4
  db 18,$17
  !d4
  db 27,$47
  !g3
  db 9
  !d4
  db 18
  !g3
  db 9
  !g3
  db 9,$45
  !f4
  db 18
  !g4
  !end

.pattern5_1
  db 72,$76
  !b7
  !tie
  !tie
  !tie
  db 30
  !tie
  db 42
  !b7
  db 72
  !tie
  db 10
  !tie
  db 6
  !b7
  db 8
  !b7
  db 3
  !b7
  db 6
  !b7
  db 12
  !b7
  db 3
  !b7
  db 4
  !b7
  db 6
  !b7
  db 86
  !b7
  db 72
  !tie
  db 70
  !tie
  db 2
  !b7
  db 72
  !tie
  db 30
  !tie
  db 42
  !b7
  db 72
  !tie
  db 40
  !b7
  db 32
  !b7
  db 72
  !tie
  !tie
  !end

.pattern5_2
  !instr,!instr32
  !volume,148
  !vibrato,0,14,20
  db 18,$16
  !gs5
  db 6,$76
  !gs5
  !gs5
  !gs5
  db 18,$16
  !gs5
  db 18,$56
  !gs5
  db 18,$26
  !c5
  db 18,$16
  !gs5
  db 36,$56
  !as5
  db 18,$16
  !f5
  db 9,$56
  !as4
  !d5
  db 18,$16
  !f5
  db 18,$76
  !f5
  !d4
  db 18,$26
  !f5
  db 36,$56
  !f5
  db 9
  !gs5
  !gs4
  !c5
  !ds5
  db 18,$16
  !gs5
  db 18,$56
  !gs5
  db 18,$26
  !c5
  db 18,$16
  !gs5
  db 36,$56
  !as5
  db 18,$16
  !f5
  db 9,$56
  !f4
  !as4
  db 18,$16
  !f5
  db 18,$76
  !f5
  db 18,$25
  !as4
  db 18,$17
  !f5
  db 36,$57
  !as5
  !slideOut,19,16,241
  db 36,$78
  !as5
  !endSlide
  !instr,!instr25
  !volume,130
  db 30,$56
  !as4
  db 6,$76
  !c5
  db 36,$66
  !ds5
  !g5
  db 72
  !ds5
  db 36,$56
  !d5
  db 36,$57
  !c5
  db 72,$77
  !as4
  db 72,$78
  !f4
  !vibrato,4,20,100
  !instr,!instr31
  !volume,148
  db 24,$0B
  !a5
  db 30
  !rest
  !dynamicVolume,19,102
  db 20,$7B
  !b5
  !dynamicVolume,69,176
  db 70
  !tie
  !end

.pattern5_3
  !instr,!instr32
  !volume,148
  !vibrato,0,14,24
  db 18,$16
  !c6
  db 6,$76
  !c6
  !c6
  !c6
  db 18,$16
  !c6
  db 18,$56
  !c6
  db 18,$26
  !gs4
  db 18,$16
  !c6
  db 36,$56
  !d6
  db 18,$16
  !as5
  db 9,$56
  !f5
  !f5
  db 18,$16
  !as5
  db 18,$76
  !as5
  db 18,$26
  !f4
  db 18,$16
  !as5
  db 36,$56
  !b5
  db 9
  !c6
  !c5
  !ds5
  !g5
  db 18,$16
  !c6
  db 18,$56
  !c6
  db 18,$26
  !gs4
  db 18,$16
  !c6
  db 36,$56
  !d6
  db 18,$16
  !as5
  db 9,$56
  !as4
  !d5
  db 18,$16
  !as5
  db 18,$76
  !as5
  db 18,$25
  !d5
  db 18,$17
  !as5
  db 36,$57
  !d6
  !slideOut,19,16,241
  db 36,$78
  !ds6
  !endSlide
  !instr,!instr25
  !volume,130
  db 30,$56
  !ds5
  db 6,$76
  !f5
  db 36,$66
  !g5
  !as5
  db 72
  !g5
  db 36,$56
  !f5
  db 36,$57
  !ds5
  db 72,$77
  !d5
  db 72,$78
  !as4
  !vibrato,4,20,100
  !instr,!instr31
  !volume,148
  db 24,$0B
  !c6
  db 30
  !rest
  !dynamicVolume,19,102
  db 20,$7B
  !d6
  !dynamicVolume,69,176
  db 70
  !tie
  !end

.sub559B
  db 18,$07
  !c3
  !c4
  db 9,$47
  !g3
  !as3
  db 18,$17
  !c4
  db 9,$47
  !c3
  !g3
  !as3
  db 18,$27
  !c4
  db 9,$47
  !as3
  !c4
  !g3
  !end

.sub55B4
  db 18,$07
  !as2
  !as3
  db 9,$47
  !f3
  !gs3
  db 18,$17
  !as3
  db 9,$47
  !as2
  !f3
  !gs3
  db 18,$27
  !as3
  db 9,$47
  !gs3
  !as3
  !f3
  !end

.sub55CD
  !instr,!instr32
  !volume,148
  !vibrato,18,20,14
  db 9,$76
  !as5
  !as4
  !ds5
  !g5
  db 18,$16
  !as5
  db 36,$26
  !as5
  db 9,$76
  !as5
  !as5
  db 36,$36
  !as5
  db 18,$16
  !ds6
  db 6,$76
  !ds6
  !ds6
  !ds6
  db 18,$06
  !ds6
  !ds6
  db 36,$46
  !d6
  !c6
  db 9,$76
  !gs5
  !as5
  db 36
  !cs6
  db 9,$72
  !gs5
  !as5
  db 36
  !cs6
  db 9,$71
  !gs5
  !as5
  db 18
  !cs6
  !instr,!instr25
  !volume,130
  db 9,$75
  !f5
  !g5
  db 36
  !gs5
  db 9,$72
  !f5
  !g5
  db 36
  !gs5
  db 9,$71
  !f5
  !g5
  db 18
  !gs5
  !end

.sub5621
  !instr,!instr32
  !volume,148
  !vibrato,18,20,14
  db 9,$76
  !ds6
  !ds5
  !g5
  !as5
  db 18,$16
  !ds6
  db 36,$26
  !ds6
  db 9,$76
  !ds6
  !ds6
  db 36,$36
  !f6
  db 18,$16
  !g6
  db 6,$76
  !g6
  !g6
  !g6
  db 18,$06
  !g6
  !g6
  db 36,$46
  !f6
  !ds6
  db 9
  !cs6
  !ds6
  db 36,$76
  !f6
  db 9,$72
  !cs6
  !ds6
  db 36
  !f6
  db 9,$71
  !cs6
  !ds6
  db 18
  !f6
  !instr,!instr25
  !volume,130
  db 9,$75
  !gs5
  !as5
  db 36
  !c6
  db 9,$72
  !gs5
  !as5
  db 36
  !c6
  db 9,$71
  !gs5
  !as5
  db 18
  !c6
  !end

.sub5675
  db 18,$07
  !b2
  !b3
  db 9,$47
  !fs3
  !a3
  db 18,$17
  !b3
  db 9,$47
  !b2
  !fs3
  !a3
  db 18,$27
  !b3
  db 9,$47
  !a3
  !b3
  !fs3
  !end

.sub568E
  db 18,$07
  !a2
  !a3
  db 9,$47
  !e3
  !g3
  db 18,$17
  !a3
  db 9,$47
  !a2
  !e3
  !g3
  db 18,$27
  !a3
  db 9,$47
  !g3
  !a3
  !e3
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
