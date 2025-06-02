asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr06 = $17
!instr07 = $18
!instr09 = $19
!instr2C = $1A
!instr2D = $1B
!instr2E = $1C
!instr2F = $1D
!instr30 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr06,$BF,$D4,$B8,$0F,$00
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr09,$8F,$F2,$B8,$01,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample06_07,Sample06_07+558
  dw Sample06_07,Sample06_07+558
  dw Sample08_09,Sample08_09+90
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"

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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%00011000,1,1
  !echoParameters,1,1,2
  !volume,255
  !musicVolume,255
  !echo,%00011000,38,38
  !echoParameters,5,40,0
  !tempo,51
  db 40
  !rest
  db 40,$77
  %percNote(!instr2C-!instr2C)
  !end

.pattern0_1
  !volume,255
  !pan,10
  db 27,$77
  %percNote(!instr30-!instr2C)
  db 13,$21
  %percNote(!instr30-!instr2C)
  db 10,$76
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  !pan,11
  db 10,$77
  !a4
  !pan,9
  db 10,$78
  !f4

.pattern0_2
  db 20
  !rest
  db 14,$25
  %percNote(!instr30-!instr2C)
  db 14,$22
  %percNote(!instr30-!instr2C)
  db 32
  !rest

.pattern1_0
  !transpose,0
  !echo,%00011100,38,38
  !echoParameters,5,40,0
  !instr,!instr06
  !volume,255
  !loop : dw .sub503B : db 1
  db 10,$44
  !ds4
  db 10,$46
  !ds3
  !f3
  !ds3
  db 10,$48
  !ds3
  db 10,$46
  !ds3
  db 10,$44
  !ds4
  db 10,$46
  !ds3
  db 10,$45
  !as3
  db 10,$46
  !ds3
  !gs3
  !instr,!instr07
  db 20,$73
  !cs4
  !pitchSlide,9,1 : !c4
  !instr,!instr06
  db 10,$77
  !gs3
  !f3
  db 10,$78
  !as2
  !end

.pattern1_1
  !loop : dw .sub50B2 : db 1
  !pan,10
  db 10,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$77
  %percNote(!instr30-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2F
  db 10,$77
  !as6
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 15,$76
  !e4
  db 5,$72
  %percNote(!instr30-!instr2C)
  db 11,$77
  %percNote(!instr30-!instr2C)
  db 10
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  !pan,11
  !a4
  !pan,9
  db 9,$78
  !f4

.pattern1_2
  !transpose,0
  !instr,!instr09
  !volume,175
  !loop : dw .sub5184 : db 2

.pattern1_3
  !transpose,0
  !instr,!instr01
  !pan,8
  !volume,175
  !loop : dw .sub51D9 : db 2

.pattern1_4
  !transpose,0
  !instr,!instr01
  !pan,12
  !volume,175
  !loop : dw .sub5226 : db 2

.pattern2_0
  !transpose,1
  !loop : dw .sub503B : db 1
  db 10,$44
  !ds4
  db 10,$46
  !ds3
  !f3
  !ds3
  db 10,$48
  !ds3
  db 10,$46
  !ds3
  db 10,$44
  !ds4
  db 10,$46
  !ds3
  db 10,$45
  !as3
  db 10,$46
  !ds3
  !gs3
  !instr,!instr07
  db 10,$74
  !cs4
  !c4
  db 10,$76
  !gs3
  !f3
  db 10,$77
  !as2
  !end

.pattern2_1
  !loop : dw .sub50B2 : db 1
  !pan,10
  db 10,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$77
  %percNote(!instr30-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2F
  db 10,$77
  !as6
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 15,$76
  !e4
  db 5,$72
  %percNote(!instr30-!instr2C)
  db 11,$77
  %percNote(!instr30-!instr2C)
  db 10
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  !pan,9
  db 10,$76
  !a4
  !pan,11
  db 9,$78
  !f4

.pattern2_2
  !transpose,1
  !loop : dw .sub5184 : db 2

.pattern2_3
  !transpose,1
  !loop : dw .sub51D9 : db 2

.pattern2_4
  !transpose,1
  !loop : dw .sub5226 : db 2

.sub503B
  db 10,$48
  !ds3
  db 10,$46
  !ds3
  !f3
  db 10,$45
  !ds3
  db 10,$47
  !fs3
  db 10,$46
  !ds3
  db 10,$44
  !ds4
  db 10,$46
  !ds3
  db 10,$44
  !ds4
  db 10,$46
  !ds3
  !f3
  !gs3
  !fs3
  db 10,$44
  !ds4
  db 10,$45
  !as3
  db 10,$46
  !f3
  db 10,$44
  !ds4
  db 10,$46
  !ds3
  !f3
  !ds3
  db 10,$48
  !ds3
  db 10,$46
  !ds3
  db 10,$44
  !ds4
  db 10,$46
  !ds3
  db 10,$45
  !as3
  db 10,$46
  !ds3
  !gs3
  db 10,$44
  !cs4
  !c4
  db 10,$46
  !gs3
  !f3
  db 10,$47
  !as2
  db 10,$48
  !ds3
  db 10,$46
  !ds3
  !f3
  db 10,$45
  !ds3
  db 10,$47
  !fs3
  db 10,$46
  !ds3
  db 10,$44
  !ds4
  db 10,$46
  !ds3
  db 10,$44
  !ds4
  db 10,$46
  !ds3
  !f3
  !gs3
  !fs3
  db 10,$44
  !ds4
  db 10,$45
  !as3
  db 10,$46
  !f3
  !end

.sub50B2
  !pan,10
  db 10,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$77
  %percNote(!instr30-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2F
  db 10,$77
  !as6
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$77
  %percNote(!instr30-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2F
  db 10,$77
  !as6
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 20,$76
  !e4
  db 10,$77
  %percNote(!instr30-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$77
  %percNote(!instr30-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2F
  db 10,$77
  !as6
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 10,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2C)
  db 10,$72
  %percNote(!instr2D-!instr2C)
  db 10,$71
  %percNote(!instr2D-!instr2C)
  !end

.sub5184
  db 10,$04
  !ds6
  !ds6
  db 10,$06
  !ds7
  db 10,$04
  !ds6
  db 10,$06
  !ds7
  db 10,$04
  !fs6
  !ds6
  db 10,$06
  !ds7
  db 10,$04
  !fs6
  db 10,$06
  !ds7
  db 10,$04
  !ds6
  db 10,$06
  !ds7
  db 10,$04
  !as6
  db 10,$06
  !ds7
  !cs7
  db 10,$05
  !ds7
  db 10,$04
  !fs6
  !ds6
  db 10,$06
  !ds7
  db 10,$04
  !ds6
  db 10,$06
  !ds7
  db 10,$04
  !fs6
  !ds6
  db 10,$06
  !ds7
  db 10,$04
  !ds6
  db 10,$06
  !ds7
  db 10,$04
  !as6
  db 10,$06
  !ds7
  db 10,$04
  !fs6
  db 10,$06
  !ds7
  !cs7
  db 10,$05
  !ds7
  !end

.sub51D9
  db 10,$48
  !fs5
  db 10,$45
  !ds5
  !as4
  db 10,$49
  !as5
  db 10,$45
  !as4
  db 10,$48
  !ds5
  db 10,$49
  !as5
  db 10,$45
  !as4
  !cs5
  !as4
  db 10,$48
  !gs5
  db 10,$45
  !as4
  db 10,$49
  !c6
  db 10,$45
  !as4
  !ds5
  !as4
  db 10,$48
  !as5
  db 10,$45
  !ds5
  !as4
  db 10,$49
  !cs6
  db 10,$45
  !as4
  db 10,$48
  !fs5
  db 10,$49
  !cs6
  db 10,$45
  !as4
  !cs5
  !as4
  db 10,$48
  !gs5
  db 10,$45
  !as4
  db 10,$49
  !c6
  db 10,$45
  !as4
  !ds5
  !as4
  !end

.sub5226
  db 10,$49
  !as5
  db 10,$45
  !fs5
  !cs5
  db 10,$48
  !fs5
  db 10,$45
  !cs5
  db 10,$49
  !fs5
  db 10,$48
  !fs5
  db 10,$45
  !cs5
  !fs5
  !cs5
  db 10,$49
  !c6
  db 10,$45
  !ds5
  db 10,$48
  !gs5
  db 10,$45
  !ds5
  !gs5
  !ds5
  db 10,$49
  !cs6
  db 10,$45
  !fs5
  !cs5
  db 10,$48
  !as5
  db 10,$45
  !cs5
  db 10,$49
  !as5
  db 10,$48
  !as5
  db 10,$45
  !cs5
  !fs5
  !cs5
  db 10,$49
  !c6
  db 10,$45
  !ds5
  db 10,$48
  !gs5
  db 10,$45
  !ds5
  !gs5
  !ds5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
