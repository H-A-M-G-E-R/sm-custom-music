asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr07 = $18
!instr2C = $19
!instr2D = $1A
!instr30 = $1B
!instr31 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+1098
  dw Sample05,Sample05+27
  dw Sample06_07,Sample06_07+558
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+1215
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_5d400e769f6d3768ed63d8b03d719ce0.brr"

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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, 0, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !musicVolume,245
  !tempo,35
  !echo,%11111101,38,38
  !echoParameters,4,186,2
  !volume,255
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 18,$79
  !gs4
  !pan,12
  !instr,!instr2D
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !loop : dw .sub5AA9 : db 2
  !pan,10
  db 9
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 9,$75
  !gs4
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 9,$79
  !gs4
  db 9,$77
  !gs4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 9,$76
  !gs4
  db 9,$78
  !gs4
  db 9,$73
  !gs4
  !end

.pattern0_1
  !instr,!instr07
  !volume,255
  db 72,$36
  !a3
  db 18,$57
  !e3
  !g3
  db 36,$56
  !a3
  db 18,$57
  !a2
  !e3
  !slideIn,0,5,1
  db 18,$56
  !a3
  !endSlide
  db 18,$57
  !g3
  db 36,$77
  !f3
  db 36,$78
  !f2
  db 18,$57
  !c3
  !f3
  db 27,$77
  !e3
  db 18,$59
  !e2
  db 9,$57
  !d3
  db 18
  !e3
  db 18,$59
  !e2
  db 18,$57
  !e3
  !end

.pattern0_2
  !instr,!instr05
  !volume,197
  !pan,8
  db 9,$78
  !e4
  db 27,$73
  !e4
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$78
  !e4
  db 27,$73
  !e4
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$78
  !f4
  db 27,$73
  !f4
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$78
  !e4
  db 27,$73
  !e4
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !b4
  db 27,$73
  !b4
  !end

.pattern0_3
  db 18
  !rest
  !instr,!instr05
  !volume,197
  !pan,8
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$75
  !e5
  db 27,$73
  !e5
  db 9,$76
  !a4
  db 27,$73
  !a4
  !loop : dw .sub5AD4 : db 2
  db 9,$76
  !gs4
  db 27,$73
  !gs4
  db 9,$75
  !d5
  db 27,$73
  !d5
  db 9,$75
  !d5
  db 9,$73
  !d5
  !end

.pattern0_4
  db 54
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  db 84
  !rest
  !instr,!instr04
  !pan,10
  !tremolo,30,15,40
  !vibrato,0,15,10
  !volume,210
  !slideIn,0,8,1
  db 12,$56
  !e5
  !endSlide
  db 12,$16
  !g5
  !end

.pattern0_5
  db 8
  !rest
  !instr,!instr31
  !subtranspose,48
  !volume,169
  !pan,12
  db 27,$06
  !b4
  db 18
  !b4
  db 19,$66
  !b4
  db 36
  !a4
  db 8
  !rest
  db 27,$06
  !b4
  db 18
  !b4
  db 19,$66
  !b4
  db 36
  !a4
  db 8
  !rest
  db 27,$06
  !a4
  db 18
  !a4
  db 19,$66
  !a4
  db 36
  !f4
  db 8
  !rest
  db 27,$06
  !gs4
  db 18,$66
  !gs4
  !gs4
  !gs4
  db 19
  !gs4
  !end

.pattern0_6
  db 8
  !rest
  !instr,!instr31
  !subtranspose,48
  !volume,157
  !pan,12
  db 27,$06
  !c5
  db 18
  !c5
  db 19,$66
  !c5
  db 36
  !c5
  db 8
  !rest
  db 27,$06
  !c5
  db 18
  !c5
  db 19,$66
  !c5
  db 36
  !c5
  db 8
  !rest
  db 27,$06
  !b4
  db 18
  !b4
  db 19,$66
  !b4
  db 36
  !a4
  db 8
  !rest
  db 27,$06
  !d5
  db 18,$66
  !d5
  !d5
  !d5
  db 19
  !d5
  !end

.pattern0_7
  db 8
  !rest
  !instr,!instr31
  !subtranspose,48
  !volume,157
  !pan,11
  db 27,$06
  !e5
  db 18
  !e5
  db 19,$66
  !e5
  db 36
  !e5
  db 8
  !rest
  db 27,$06
  !e5
  db 18
  !e5
  db 19,$66
  !e5
  db 36
  !e5
  db 8
  !rest
  db 27,$06
  !e5
  db 18
  !e5
  db 19,$66
  !e5
  db 36
  !d5
  db 8
  !rest
  db 27,$06
  !g5
  db 18,$66
  !g5
  !f5
  !g5
  db 19
  !e5
  !end

.pattern1_0
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 18,$79
  !gs4
  !pan,12
  !instr,!instr2D
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !loop : dw .sub5AE7 : db 2
  !loop : dw .sub5B3B : db 1
  !end

.pattern1_1
  !loop : dw .sub5BBD : db 1
  db 54,$37
  !g3
  db 18,$57
  !d3
  !g3
  !fs3
  db 72,$37
  !f3
  db 18,$57
  !c3
  !c3
  db 36,$47
  !f3
  db 18,$57
  !c3
  !f3
  !f3
  !c3
  db 72,$37
  !e3
  db 18,$57
  !b2
  !d3
  db 27,$77
  !e3
  db 18,$59
  !e2
  db 9,$57
  !d3
  db 18
  !e3
  db 18,$59
  !e2
  db 18,$57
  !e3
  !end

.pattern1_2
  !loop : dw .sub5BD6 : db 2
  !loop : dw .sub5BE9 : db 1
  db 9,$78
  !c4
  db 27,$73
  !c4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$75
  !d5
  db 27,$73
  !d5
  db 9,$76
  !f4
  db 27,$73
  !f4
  db 9,$76
  !f4
  db 27,$73
  !f4
  db 9,$78
  !d4
  db 27,$73
  !d4
  db 9,$76
  !gs4
  db 27,$73
  !gs4
  db 9,$76
  !gs4
  db 27,$73
  !gs4
  db 9,$75
  !b4
  db 27,$73
  !b4
  db 9,$76
  !e4
  db 27,$73
  !e4
  db 9,$76
  !f4
  db 27,$73
  !f4
  !end

.pattern1_3
  !loop : dw .sub5C0E : db 1
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !d4
  db 27,$73
  !d4
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !f4
  db 27,$73
  !f4
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$76
  !f4
  db 27,$73
  !f4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !c4
  db 27,$73
  !c4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !f4
  db 27,$73
  !f4
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !e4
  db 27,$73
  !e4
  db 9,$76
  !gs4
  db 27,$73
  !gs4
  db 9,$75
  !b4
  db 27,$73
  !b4
  db 9,$76
  !d4
  db 9,$73
  !d4
  !end

.pattern1_4
  !loop : dw .sub5C47 : db 1
  db 12,$76
  !b5
  db 12,$75
  !c6
  db 84,$76
  !b5
  db 56
  !tie
  db 16
  !rest
  !slideIn,0,5,1
  db 18,$56
  !e5
  !endSlide
  db 18,$66
  !g5
  db 84,$56
  !a5
  db 12,$65
  !e5
  db 12,$64
  !g5
  db 36,$65
  !a5
  db 18,$66
  !c5
  !slideIn,0,7,1
  db 18,$64
  !g5
  !endSlide
  db 24
  !e5
  db 12
  !d5
  db 13,$45
  !e5
  db 13,$23
  !f5
  db 82,$75
  !e5
  db 80,$66
  !tie
  db 14
  !ds5
  !pitchSlide,4,2 : !e5
  db 14,$26
  !g5
  !end

.pattern1_5
  db 8
  !rest
  !volume,169
  !pan,12
  db 27,$06
  !b4
  db 18
  !b4
  db 19,$66
  !b4
  db 36
  !a4
  db 8
  !rest
  db 27,$06
  !b4
  db 18
  !b4
  db 19,$66
  !b4
  db 36
  !a4
  db 8
  !rest
  db 27,$06
  !a4
  db 18
  !a4
  db 19,$66
  !a4
  db 36
  !g4
  db 8
  !rest
  db 27,$06
  !a4
  db 18
  !a4
  db 18,$66
  !a4
  !g4
  db 19
  !a4
  db 8
  !rest
  db 27,$06
  !g4
  db 18
  !g4
  db 19,$66
  !g4
  db 36
  !f4
  db 8
  !rest
  db 27,$06
  !g4
  db 18
  !g4
  db 18,$56
  !g4
  db 18,$66
  !f4
  db 19
  !g4
  db 8
  !rest
  db 27,$07
  !f4
  db 18,$47
  !f4
  db 18,$67
  !f4
  !e4
  db 19
  !d4
  db 8
  !rest
  db 27,$08
  !gs4
  db 18,$68
  !gs4
  !gs4
  !gs4
  db 19
  !gs4
  !end

.pattern1_6
  db 8
  !rest
  !volume,157
  !pan,12
  db 27,$06
  !c5
  db 18
  !c5
  db 19,$66
  !c5
  db 36
  !c5
  db 8
  !rest
  db 27,$06
  !c5
  db 18
  !c5
  db 19,$66
  !c5
  db 36
  !c5
  db 8
  !rest
  db 27,$06
  !b4
  db 18
  !b4
  db 19,$66
  !b4
  db 36
  !b4
  db 8
  !rest
  db 27,$06
  !b4
  db 18
  !b4
  db 18,$66
  !b4
  !b4
  db 19
  !b4
  db 8
  !rest
  db 27,$06
  !a4
  db 18
  !a4
  db 19,$66
  !a4
  db 36
  !a4
  db 8
  !rest
  db 27,$06
  !a4
  db 18
  !a4
  db 18,$56
  !a4
  db 18,$66
  !a4
  db 19
  !a4
  db 8
  !rest
  db 27,$07
  !gs4
  db 18,$47
  !gs4
  db 18,$67
  !gs4
  !gs4
  db 19
  !gs4
  db 8
  !rest
  db 27,$08
  !d5
  db 18,$68
  !d5
  !d5
  !d5
  db 19
  !b4
  !end

.pattern1_7
  db 8
  !rest
  !volume,157
  !pan,11
  db 27,$06
  !e5
  db 18
  !e5
  db 19,$66
  !e5
  db 36
  !e5
  db 8
  !rest
  db 27,$06
  !e5
  db 18
  !e5
  db 19,$66
  !e5
  db 36
  !e5
  db 8
  !rest
  db 27,$06
  !d5
  db 18
  !d5
  db 19,$66
  !d5
  db 36
  !d5
  db 8
  !rest
  db 27,$06
  !d5
  db 18
  !d5
  db 18,$66
  !d5
  !d5
  db 19
  !d5
  db 8
  !rest
  db 27,$06
  !c5
  db 18
  !c5
  db 19,$66
  !c5
  db 36
  !c5
  db 8
  !rest
  db 27,$06
  !c5
  db 18
  !c5
  db 18,$56
  !c5
  db 18,$66
  !c5
  db 19
  !c5
  db 8
  !rest
  db 27,$07
  !b4
  db 18,$47
  !b4
  db 18,$67
  !b4
  !b4
  db 19
  !b4
  db 8
  !rest
  db 27,$08
  !g5
  db 18,$68
  !g5
  !f5
  !g5
  db 19
  !e5
  !end

.pattern2_0
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 18,$79
  !gs4
  !pan,12
  !instr,!instr2D
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !loop : dw .sub5AE7 : db 2
  !loop : dw .sub5B3B : db 1
  !end

.pattern2_1
  !loop : dw .sub5BBD : db 1
  db 54,$37
  !g3
  db 18,$57
  !d3
  !d3
  !g3
  db 27
  !f3
  db 18,$17
  !f3
  db 9,$69
  !f2
  db 18,$57
  !e3
  !e3
  db 18,$59
  !e2
  db 27,$57
  !d3
  db 18,$17
  !d3
  db 9,$6A
  !d2
  db 18,$67
  !e3
  db 18,$59
  !e2
  db 18,$77
  !e3
  db 72,$36
  !a3
  db 18,$57
  !e3
  !g3
  db 27,$66
  !a3
  db 18,$67
  !e3
  db 9
  !g3
  db 18,$66
  !a3
  db 18,$68
  !a2
  db 18,$66
  !a3
  !end

.pattern2_2
  !loop : dw .sub5BD6 : db 2
  !loop : dw .sub5BE9 : db 1
  db 9,$76
  !f5
  db 27,$73
  !f5
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$76
  !f4
  db 27,$73
  !f4
  db 9,$76
  !gs4
  db 27,$73
  !gs4
  !loop : dw .sub5BD6 : db 2
  !end

.pattern2_3
  !loop : dw .sub5C0E : db 1
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !d4
  db 27,$73
  !d4
  db 9,$76
  !b4
  db 9,$73
  !b4
  db 18
  !rest
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$76
  !d5
  db 27,$73
  !d5
  db 9,$76
  !g4
  db 27,$73
  !g4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !e4
  db 27,$73
  !e4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$75
  !e5
  db 27,$73
  !e5
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$75
  !e5
  db 27,$73
  !e5
  db 9,$76
  !a4
  db 9,$73
  !a4
  !end

.pattern2_4
  !loop : dw .sub5C47 : db 1
  db 12,$75
  !b5
  !c6
  db 60,$55
  !b5
  db 12,$75
  !b5
  !a5
  db 72,$45
  !g5
  !slideIn,0,5,1
  db 18,$56
  !e6
  !endSlide
  db 18,$66
  !g6
  db 18,$46
  !a6
  db 18,$16
  !g6
  db 18,$46
  !e6
  !g6
  !e6
  !d6
  !slideIn,4,1,1
  !e6
  !endSlide
  db 18,$16
  !c6
  db 18,$46
  !a5
  db 18,$56
  !g5
  !e5
  !g5
  db 54,$76
  !a5
  !tie
  !dynamicVolume,108,128
  !tie
  !tie
  !end

.pattern2_5
  !loop : dw .sub5C64 : db 2
  db 8
  !rest
  db 27,$06
  !a4
  db 18
  !a4
  db 19,$66
  !a4
  db 36
  !g4
  db 8
  !rest
  db 27,$06
  !a4
  db 18
  !a4
  db 18,$66
  !a4
  !g4
  !a4
  db 18,$08
  !g5
  db 9,$48
  !g5
  db 27,$68
  !f5
  db 9,$18
  !fs5
  db 18,$08
  !fs5
  db 9,$38
  !fs5
  db 18,$48
  !e5
  db 9,$18
  !e5
  db 18,$08
  !e5
  db 9,$38
  !e5
  db 9,$68
  !c5
  !c5
  db 18
  !gs4
  !b4
  db 19,$58
  !gs4
  !loop : dw .sub5C64 : db 2
  !end

.pattern2_6
  !loop : dw .sub5C71 : db 2
  db 8
  !rest
  db 27,$06
  !b4
  db 18
  !b4
  db 19,$66
  !b4
  db 36
  !b4
  db 8
  !rest
  db 27,$06
  !b4
  db 18
  !b4
  db 18,$66
  !b4
  !b4
  !b4
  db 18,$08
  !a5
  db 9,$48
  !a5
  db 27,$68
  !a5
  db 9,$18
  !g5
  db 18,$08
  !g5
  db 9,$68
  !g5
  db 18,$38
  !g5
  db 9,$18
  !f5
  db 18,$08
  !f5
  db 9,$38
  !f5
  db 9,$68
  !f5
  !f5
  db 18
  !d5
  !d5
  db 19,$58
  !d5
  !loop : dw .sub5C71 : db 2
  !end

.pattern2_7
  !loop : dw .sub5C7E : db 2
  db 8
  !rest
  db 27,$06
  !d5
  db 18
  !d5
  db 19,$66
  !d5
  db 36
  !d5
  db 8
  !rest
  db 27,$06
  !d5
  db 18
  !d5
  db 18,$66
  !d5
  !d5
  !d5
  db 18,$08
  !c6
  db 9,$48
  !c6
  db 27,$68
  !c6
  db 9,$18
  !b5
  db 18,$08
  !b5
  db 9,$68
  !b5
  db 18,$38
  !b5
  db 9,$18
  !a5
  db 18,$08
  !a5
  db 9,$38
  !a5
  db 9,$68
  !a5
  !a5
  db 18
  !g5
  !e5
  db 19,$7A
  !fs5
  !pitchSlide,4,1 : !g5
  db 8
  !rest
  db 27,$06
  !e5
  db 18
  !e5
  db 19,$66
  !e5
  db 36
  !e5
  db 8
  !rest
  db 27,$06
  !e5
  db 18
  !e5
  db 19,$66
  !e5
  db 16
  !e5
  !volume,210
  db 10,$68
  !a5
  db 10,$08
  !b5
  !end

.pattern3_0
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 18,$79
  !gs4
  !pan,12
  !instr,!instr2D
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !loop : dw .sub5AE7 : db 2
  !loop : dw .sub5B3B : db 1
  !end

.pattern3_1
  db 72,$37
  !d3
  db 18,$57
  !a2
  !d3
  db 27,$67
  !e3
  db 18,$69
  !e2
  db 9,$67
  !d3
  db 18
  !e3
  db 18,$69
  !e2
  db 18,$67
  !e3
  db 54,$37
  !d3
  db 18,$5A
  !d2
  db 18,$57
  !a2
  !d3
  db 27,$67
  !e3
  db 18,$69
  !e2
  db 9,$67
  !d3
  db 18
  !e3
  db 18,$69
  !e2
  db 18,$67
  !e3
  db 36,$37
  !fs3
  db 18,$58
  !fs2
  db 18,$57
  !fs3
  db 18,$58
  !fs2
  db 18,$57
  !fs3
  db 27,$67
  !f3
  db 18,$68
  !f2
  db 9,$67
  !ds3
  db 18
  !f3
  db 18,$68
  !f2
  db 18,$67
  !f3
  db 36
  !e3
  db 18
  !b2
  db 36
  !ds3
  db 18
  !as2
  !d3
  db 18,$65
  !a3
  db 18,$67
  !d3
  !e3
  db 18,$69
  !e2
  db 18,$67
  !e3
  !end

.pattern3_2
  !loop : dw .sub5C8B : db 2
  db 9,$75
  !e5
  db 27,$73
  !e5
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$75
  !ds5
  db 27,$73
  !ds5
  db 9,$76
  !gs4
  db 27,$73
  !gs4
  db 9,$76
  !gs4
  db 27,$73
  !gs4
  db 9,$75
  !d5
  db 27,$73
  !d5
  db 9,$76
  !g4
  db 27,$73
  !g4
  db 9,$76
  !fs4
  db 27,$73
  !fs4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !d4
  db 27,$73
  !d4
  db 9,$76
  !g4
  db 27,$73
  !g4
  !end

.pattern3_3
  db 18
  !rest
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !d4
  db 27,$73
  !d4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !e4
  db 27,$73
  !e4
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !d4
  db 27,$73
  !d4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !e4
  db 27,$73
  !e4
  db 9,$75
  !d5
  db 27,$73
  !d5
  db 9,$76
  !cs5
  db 27,$73
  !cs5
  db 9,$76
  !fs4
  db 27,$73
  !fs4
  db 9,$76
  !cs5
  db 27,$73
  !cs5
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$76
  !f4
  db 27,$73
  !f4
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !ds4
  db 27,$73
  !ds4
  db 9,$76
  !as4
  db 27,$73
  !as4
  db 9,$76
  !f4
  db 27,$73
  !f4
  db 9,$76
  !e4
  db 27,$73
  !e4
  db 9,$76
  !b4
  db 9,$73
  !b4
  !end

.pattern3_5
  !volume,175
  db 72,$66
  !d4
  db 36
  !d4
  db 72
  !e4
  db 36
  !e4
  db 72
  !f4
  db 18
  !f4
  !f4
  db 72
  !e4
  db 36
  !e4
  db 72
  !fs4
  db 36
  !fs4
  db 72
  !f4
  db 36
  !f4
  db 27,$26
  !g4
  db 27,$66
  !g4
  db 27,$26
  !fs4
  db 27,$66
  !fs4
  db 27,$26
  !f4
  db 27,$66
  !f4
  db 27,$26
  !e4
  db 27,$66
  !e4
  !end

.pattern3_6
  !volume,175
  db 72,$66
  !f4
  db 36
  !f4
  db 72
  !g4
  db 36
  !g4
  db 72
  !a4
  db 18
  !a4
  !a4
  db 72
  !g4
  db 36
  !g4
  db 72
  !a4
  db 36
  !a4
  db 72
  !gs4
  db 36
  !gs4
  db 27,$26
  !b4
  db 27,$66
  !b4
  db 27,$26
  !as4
  db 27,$66
  !as4
  db 27,$26
  !a4
  db 27,$66
  !a4
  db 27,$26
  !g4
  db 27,$66
  !g4
  !end

.pattern3_7
  db 9
  !rest
  db 4,$76
  !b5
  db 23,$66
  !c6
  db 18
  !a5
  db 4,$76
  !ds6
  db 14,$66
  !d6
  db 18,$46
  !c6
  db 18,$66
  !a5
  !g5
  !a5
  db 36,$16
  !e5
  db 3,$76
  !gs6
  db 15,$66
  !a6
  db 18
  !gs6
  !pitchSlide,3,1 : !a6
  !gs6
  !pitchSlide,4,1 : !a6
  db 18,$56
  !g6
  !e6
  !d6
  db 27,$36
  !e6
  db 9,$66
  !g6
  db 18
  !ds6
  !pitchSlide,3,1 : !d6
  db 18,$36
  !a5
  db 18,$66
  !e6
  db 36
  !d6
  db 9
  !fs5
  !g5
  db 36
  !ds6
  !pitchSlide,4,1 : !e6
  db 18,$36
  !a6
  db 18,$56
  !e6
  !a5
  !e6
  db 36,$66
  !c6
  db 18,$07
  !g6
  db 3,$66
  !d6
  db 15
  !ds6
  db 36
  !c6
  !slideIn,4,1,1
  db 18
  !d6
  !endSlide
  !g5
  !d6
  !cs6
  !as5
  !fs5
  !slideIn,3,1,1
  db 27
  !c6
  !endSlide
  db 18
  !a5
  db 9
  !f5
  db 18
  !g5
  !a5
  !b5
  !end

.pattern4_0
  !loop : dw .sub5CB0 : db 2
  !end

.pattern4_1
  !loop : dw .sub5D5D : db 3
  db 27,$57
  !ds3
  db 18,$17
  !ds3
  db 9,$67
  !as2
  db 18
  !ds3
  db 18,$66
  !ds3
  db 18,$67
  !as2
  db 27,$57
  !d3
  db 18,$17
  !a2
  db 9,$67
  !d3
  db 18
  !e3
  db 18,$6A
  !e2
  db 18,$67
  !g2
  !end

.pattern4_2
  !loop : dw .sub5D80 : db 6
  db 9,$74
  !g5
  db 27,$72
  !g5
  db 9,$76
  !as4
  db 27,$73
  !as4
  db 9,$76
  !as4
  db 27,$73
  !as4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$75
  !d5
  db 9,$73
  !d5
  db 18,$76
  !gs5
  db 18,$46
  !e4
  !g4
  !end

.pattern4_3
  db 18
  !rest
  db 9,$75
  !e5
  db 27,$73
  !e5
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$75
  !fs5
  db 27,$73
  !fs5
  !loop : dw .sub5D93 : db 2
  db 9,$75
  !e5
  db 27,$73
  !e5
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$74
  !b5
  db 27,$72
  !b5
  !loop : dw .sub5D93 : db 2
  db 9,$75
  !d5
  db 27,$73
  !d5
  db 9,$76
  !g4
  db 27,$73
  !g4
  db 9,$75
  !d5
  db 27,$73
  !d5
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 18,$75
  !d6
  db 18,$46
  !b3
  !d4
  !end

.pattern4_4
  db 8
  !rest
  !pan,12
  !endTremolo
  !endVibrato
  !volume,187
  !subtranspose,48
  !instr,!instr31
  db 27,$06
  !c4
  db 18
  !c4
  db 18,$66
  !d4
  db 37,$16
  !d4
  db 8
  !rest
  db 27,$06
  !e4
  db 18
  !e4
  db 18,$66
  !d4
  !d4
  db 19
  !a3
  db 8
  !rest
  db 27,$06
  !c4
  db 18
  !c4
  db 18,$66
  !d4
  db 37,$16
  !d4
  db 8
  !rest
  db 27,$06
  !e4
  db 18
  !e4
  db 18,$66
  !d4
  !d4
  db 19
  !a3
  db 8
  !rest
  db 27,$06
  !c4
  db 18,$56
  !c4
  db 18,$66
  !d4
  db 37,$16
  !d4
  db 8
  !rest
  db 27,$06
  !e4
  db 18,$56
  !e4
  db 18,$66
  !d4
  !d4
  db 19
  !a3
  db 8
  !rest
  db 27,$06
  !as4
  db 18,$66
  !as4
  !g4
  !as4
  db 19
  !g4
  db 9
  !g4
  db 18,$16
  !g4
  db 9,$66
  !g4
  db 18
  !g4
  db 12,$68
  !gs4
  db 6,$76
  !c5
  !f4
  db 6,$56
  !c4
  !instr,!instr04
  !subtranspose,0
  !pan,10
  !tremolo,30,15,40
  !vibrato,0,15,10
  !volume,210
  !slideIn,0,8,1
  db 12
  !e5
  !endSlide
  db 12,$16
  !g5
  !end

.pattern4_5
  db 8
  !rest
  !volume,187
  db 27,$06
  !e4
  db 18
  !e4
  db 18,$66
  !fs4
  db 37,$16
  !fs4
  db 8
  !rest
  db 27,$06
  !g4
  db 18
  !g4
  db 18,$66
  !fs4
  !fs4
  db 19
  !d4
  db 8
  !rest
  db 27,$06
  !e4
  db 18
  !e4
  db 18,$66
  !fs4
  db 37,$16
  !fs4
  db 8
  !rest
  db 27,$06
  !g4
  db 18
  !g4
  db 18,$66
  !fs4
  !fs4
  db 19
  !d4
  db 8
  !rest
  db 27,$06
  !e4
  db 18,$56
  !e4
  db 18,$66
  !fs4
  db 37,$16
  !fs4
  db 8
  !rest
  db 27,$06
  !g4
  db 18,$56
  !g4
  db 18,$66
  !fs4
  !fs4
  db 19
  !d4
  db 8
  !rest
  db 27,$06
  !d5
  db 18,$66
  !d5
  !as4
  !d5
  db 19
  !as4
  db 9
  !a4
  db 18,$16
  !a4
  db 9,$66
  !a4
  db 18
  !a4
  db 14,$68
  !b4
  db 6,$66
  !b5
  !e5
  !as4
  db 22
  !rest
  !end

.pattern4_6
  !volume,199
  db 27,$66
  !a5
  db 18,$06
  !g5
  db 9,$66
  !a5
  db 18
  !fs5
  !e5
  !d5
  !slideIn,2,1,1
  !g5
  db 27
  !g5
  !endSlide
  db 9
  !g5
  db 36
  !fs5
  db 9
  !e5
  !fs5
  db 27
  !a5
  db 18,$06
  !a5
  db 9,$66
  !c6
  db 18
  !e6
  !d6
  !a5
  db 26
  !c6
  db 18,$06
  !e6
  db 9,$66
  !e6
  db 27
  !d6
  db 9,$76
  !c6
  !d6
  db 10
  !e6
  db 54
  !rest
  !rest
  !rest
  !rest
  db 27,$66
  !a5
  db 18,$16
  !a5
  db 9,$66
  !a5
  !slideIn,3,1,2
  db 18
  !c6
  !endSlide
  !as5
  !g5
  db 27
  !a5
  db 18
  !g5
  db 9
  !a5
  db 9,$78
  !g5
  db 6,$76
  !e5
  !a4
  !d4
  db 27
  !rest
  !end

.pattern4_7
  db 27,$66
  !b5
  !pitchSlide,4,1 : !c6
  db 18,$06
  !b5
  db 9,$66
  !c6
  db 3,$76
  !cs6
  db 15,$66
  !d6
  db 18
  !c6
  !b5
  !slideIn,2,1,1
  !c6
  db 27
  !c6
  !endSlide
  db 9
  !b5
  db 36
  !a5
  db 9
  !a5
  !c6
  db 27
  !e6
  db 18,$06
  !d6
  db 9,$66
  !e6
  db 18
  !g6
  !fs6
  !d6
  db 3
  !ds6
  db 23
  !e6
  db 18,$06
  !g6
  db 9,$66
  !a6
  db 27
  !f6
  !pitchSlide,4,1 : !fs6
  db 9,$76
  !fs6
  !g6
  db 10
  !a6
  !slideIn,4,1,1
  db 27,$56
  !b6
  db 27,$55
  !b6
  db 27,$53
  !b6
  db 27,$52
  !b6
  db 27,$53
  !b6
  db 27,$56
  !b6
  db 18,$58
  !b6
  db 18,$56
  !g6
  !endSlide
  db 18,$66
  !e6
  db 27
  !d6
  db 18,$16
  !c6
  db 9,$66
  !d6
  !slideIn,3,1,2
  db 18
  !f6
  !endSlide
  !d6
  !c6
  db 27
  !d6
  db 18
  !c6
  db 9
  !d6
  db 11,$78
  !e6
  db 6,$76
  !d6
  !g5
  !c5
  db 25
  !rest
  !end

.sub5AA9
  !pan,10
  db 9
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 18,$79
  !gs4
  !pan,12
  !instr,!instr2D
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !end

.sub5AD4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$75
  !e5
  db 27,$73
  !e5
  db 9,$76
  !a4
  db 27,$73
  !a4
  !end

.sub5AE7
  !pan,10
  db 9
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 9,$79
  !gs4
  db 18
  %percNote(!instr2C-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 9,$73
  !gs4
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 18,$79
  !gs4
  !pan,12
  !instr,!instr2D
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !end

.sub5B3B
  !pan,10
  db 9
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 9,$79
  !gs4
  db 18
  %percNote(!instr2C-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 9,$73
  !gs4
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 18,$79
  !gs4
  !pan,12
  !instr,!instr2D
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,10
  db 9
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 9,$75
  !gs4
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 9,$79
  !gs4
  db 9,$77
  !gs4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 9,$76
  !gs4
  db 9,$78
  !gs4
  db 9,$73
  !gs4
  !end

.sub5BBD
  db 72,$36
  !a3
  db 18,$57
  !e3
  !g3
  db 54,$36
  !a3
  db 18,$57
  !e3
  !e3
  db 18,$56
  !a3
  db 72,$37
  !g3
  db 18,$57
  !d3
  !d3
  !end

.sub5BD6
  db 9,$78
  !e4
  db 27,$73
  !e4
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$76
  !c5
  db 27,$73
  !c5
  !end

.sub5BE9
  db 9,$78
  !d4
  db 27,$73
  !d4
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$76
  !b4
  db 27,$73
  !b4
  db 9,$75
  !d5
  db 27,$73
  !d5
  db 9,$76
  !g4
  db 27,$73
  !g4
  db 9,$76
  !g4
  db 27,$73
  !g4
  !end

.sub5C0E
  db 18
  !rest
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$75
  !e5
  db 27,$73
  !e5
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$75
  !e5
  db 27,$73
  !e5
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$76
  !g4
  db 27,$73
  !g4
  db 9,$75
  !d5
  db 27,$73
  !d5
  db 9,$76
  !g4
  db 27,$73
  !g4
  !end

.sub5C47
  db 84,$56
  !a5
  db 12,$66
  !a5
  !b5
  db 2
  !rest
  db 34,$56
  !c6
  db 18,$43
  !a5
  db 18,$56
  !cs6
  !pitchSlide,5,1 : !d6
  db 24,$36
  !e6
  db 12,$46
  !c6
  !end

.sub5C64
  db 8
  !rest
  db 27,$06
  !b4
  db 18
  !b4
  db 19,$66
  !b4
  db 36
  !a4
  !end

.sub5C71
  db 8
  !rest
  db 27,$06
  !c5
  db 18
  !c5
  db 19,$66
  !c5
  db 36
  !c5
  !end

.sub5C7E
  db 8
  !rest
  db 27,$06
  !e5
  db 18
  !e5
  db 19,$66
  !e5
  db 36
  !e5
  !end

.sub5C8B
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$76
  !f4
  db 27,$73
  !f4
  db 9,$76
  !f4
  db 27,$73
  !f4
  db 9,$75
  !d5
  db 27,$73
  !d5
  db 9,$76
  !g4
  db 27,$73
  !g4
  db 9,$76
  !g4
  db 27,$73
  !g4
  !end

.sub5CB0
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 18,$79
  !gs4
  !pan,12
  !instr,!instr2D
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,10
  db 9
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 9,$79
  !gs4
  db 18
  %percNote(!instr2C-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 9,$73
  !gs4
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 18,$79
  !gs4
  !pan,12
  !instr,!instr2D
  db 9,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,10
  db 9
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 18,$72
  !g4
  db 9,$71
  !g4
  !pan,10
  !instr,!instr30
  db 9,$75
  !gs4
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 9,$79
  !gs4
  db 9,$77
  !gs4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 9,$76
  !gs4
  db 9,$78
  !gs4
  db 9,$73
  !gs4
  !end

.sub5D5D
  db 27,$56
  !a3
  db 18,$16
  !a3
  db 9,$67
  !c3
  db 18
  !d3
  db 18,$66
  !a3
  db 18,$67
  !d3
  db 27,$56
  !a3
  db 18,$16
  !a3
  db 9,$67
  !e3
  db 18
  !d3
  db 18,$6A
  !d2
  db 18,$67
  !d3
  !end

.sub5D80
  db 9,$74
  !a5
  db 27,$72
  !a5
  db 9,$76
  !c5
  db 27,$73
  !c5
  db 9,$76
  !d5
  db 27,$73
  !d5
  !end

.sub5D93
  db 9,$75
  !e5
  db 27,$73
  !e5
  db 9,$76
  !a4
  db 27,$73
  !a4
  db 9,$75
  !fs5
  db 27,$73
  !fs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
