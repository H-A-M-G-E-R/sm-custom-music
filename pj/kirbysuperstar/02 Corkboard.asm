asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr23 = $17
!instr2F = $18
!instr30 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample23,Sample23+396
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"

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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr30
  !echo,%00011110,34,34
  !echoParameters,5,55,2
  !volume,235
  !musicVolume,255
  !tempo,51
  !loop : dw .sub5123 : db 2
  !end

.pattern0_1
  !instr,!instr05
  !volume,255
  db 22,$06
  !c3
  !c3
  db 33,$74
  !g3
  db 22,$06
  !c3
  !c3
  db 11,$36
  !c3
  db 22,$74
  !g3
  db 22,$78
  !g2
  db 22,$07
  !gs2
  !gs2
  db 33,$76
  !ds3
  db 22,$07
  !gs2
  !gs2
  db 11,$37
  !gs2
  db 22,$76
  !ds3
  db 22,$77
  !gs2
  !end

.pattern0_2
  !instr,!instr23
  !volume,165
  !pan,12
  db 22,$06
  !g4
  !g4
  db 33
  !g4
  db 22
  !g4
  !g4
  db 11,$36
  !g4
  db 22,$06
  !g4
  !g4
  !g4
  !g4
  db 33
  !g4
  db 22
  !g4
  !g4
  db 11,$36
  !g4
  db 22,$06
  !g4
  !g4
  !end

.pattern0_3
  !instr,!instr23
  !volume,165
  !pan,8
  db 22,$06
  !a4
  !a4
  db 33
  !b4
  db 22
  !a4
  !a4
  db 11,$36
  !a4
  db 22,$06
  !b4
  !a4
  !gs4
  !gs4
  db 33
  !c5
  db 22
  !gs4
  !gs4
  db 11,$36
  !gs4
  db 22,$06
  !c5
  !gs4
  !end

.pattern0_4
  !instr,!instr23
  !volume,165
  !pan,10
  db 22,$06
  !e5
  !e5
  db 33
  !e5
  db 22
  !e5
  !e5
  db 11,$36
  !e5
  db 22,$06
  !e5
  !e5
  !ds5
  !ds5
  db 33
  !ds5
  db 22
  !ds5
  !ds5
  db 11,$36
  !ds5
  db 22,$06
  !ds5
  !ds5
  !end

.pattern1_0
  !percBase,!instr30
  !echo,%00011110,34,34
  !echoParameters,5,55,2
  !volume,235
  !musicVolume,255
  !tempo,51
  !loop : dw .sub5123 : db 2
  !end

.pattern1_1
  !instr,!instr05
  !volume,255
  db 22,$06
  !c3
  !c3
  db 33,$74
  !g3
  db 22,$06
  !c3
  !c3
  db 11,$36
  !c3
  db 22,$74
  !g3
  db 22,$78
  !g2
  db 22,$07
  !gs2
  !gs2
  db 33,$76
  !ds3
  db 22,$07
  !gs2
  !gs2
  db 11,$37
  !gs2
  db 22,$76
  !ds3
  db 22,$77
  !gs2
  !end

.pattern1_2
  !instr,!instr23
  !volume,165
  !pan,12
  db 22,$06
  !g4
  !g4
  db 33
  !g4
  db 22
  !g4
  !g4
  db 11,$36
  !g4
  db 22,$06
  !g4
  !g4
  !g4
  !g4
  db 33
  !g4
  db 22
  !g4
  !g4
  db 11,$36
  !g4
  db 22,$06
  !g4
  !g4
  !end

.pattern1_3
  !instr,!instr23
  !volume,165
  !pan,8
  db 22,$06
  !a4
  !a4
  db 33
  !b4
  db 22
  !a4
  !a4
  db 11,$36
  !a4
  db 22,$06
  !b4
  !a4
  !gs4
  !gs4
  db 33
  !c5
  db 22
  !gs4
  !gs4
  db 11,$36
  !gs4
  db 22,$06
  !c5
  !gs4
  !end

.pattern1_4
  !instr,!instr23
  !volume,165
  !pan,10
  db 22,$06
  !e5
  !e5
  db 33
  !e5
  db 22
  !e5
  !e5
  db 11,$36
  !e5
  db 22,$06
  !e5
  !e5
  !ds5
  !ds5
  db 33
  !ds5
  db 22
  !ds5
  !ds5
  db 11,$36
  !ds5
  db 22,$06
  !ds5
  !ds5
  !end

.pattern2_0
  !loop : dw .sub5123 : db 2
  !end

.pattern2_1
  db 22,$09
  !f2
  !f2
  db 33,$76
  !c3
  db 22,$09
  !f2
  !f2
  db 11,$39
  !f2
  db 22,$76
  !c3
  db 22,$79
  !f2
  db 22,$07
  !gs2
  !gs2
  db 33,$76
  !ds3
  db 22,$07
  !gs2
  !gs2
  db 11,$37
  !gs2
  db 22,$76
  !ds3
  db 22,$77
  !gs2
  !end

.pattern2_2
  db 22,$06
  !f4
  !f4
  db 33
  !f4
  db 22
  !f4
  !f4
  db 11,$36
  !f4
  db 22,$06
  !f4
  !f4
  !gs4
  !gs4
  db 33
  !gs4
  db 22
  !gs4
  !gs4
  db 11,$36
  !gs4
  db 22,$06
  !gs4
  !gs4
  !end

.pattern2_3
  db 22,$06
  !a4
  !a4
  db 33
  !c5
  db 22
  !a4
  !a4
  db 11,$36
  !a4
  db 22,$06
  !c5
  !a4
  !c5
  !c5
  db 33
  !ds5
  db 22
  !c5
  !c5
  db 11,$36
  !c5
  db 22,$06
  !ds5
  !c5
  !end

.pattern2_4
  db 22,$06
  !e5
  !e5
  db 33
  !e5
  db 22
  !e5
  !e5
  db 11,$36
  !e5
  db 22,$06
  !e5
  !e5
  !g5
  !g5
  db 33
  !g5
  db 22
  !g5
  !g5
  db 11,$36
  !g5
  db 22,$06
  !g5
  !g5
  !end

.pattern3_0
  !loop : dw .sub516C : db 1
  !end

.pattern3_1
  db 22,$09
  !f2
  !f2
  db 33,$76
  !c3
  db 22,$09
  !f2
  !f2
  db 11,$39
  !f2
  db 22,$76
  !c3
  db 22,$79
  !f2
  db 22,$0B
  !e2
  !e2
  db 33,$76
  !e3
  db 22,$06
  !d3
  !d3
  db 11,$36
  !d3
  db 22,$74
  !g3
  db 22,$78
  !g2
  !end

.pattern3_2
  db 22,$06
  !f4
  !f4
  db 33
  !f4
  db 22
  !f4
  !f4
  db 11,$36
  !f4
  db 22,$06
  !f4
  !f4
  !b4
  !b4
  db 33
  !b4
  db 22
  !a4
  !a4
  db 11,$36
  !a4
  db 22,$06
  !a4
  !a4
  !end

.pattern3_3
  db 22,$06
  !a4
  !a4
  db 33
  !c5
  db 22
  !a4
  !a4
  db 11,$36
  !a4
  db 22,$06
  !c5
  !a4
  !d5
  !e5
  db 33
  !d5
  db 22
  !c5
  !c5
  db 11,$36
  !c5
  db 22,$06
  !d5
  !c5
  !end

.pattern3_4
  db 22,$06
  !e5
  !e5
  db 33
  !e5
  db 22
  !e5
  !e5
  db 11,$36
  !e5
  db 22,$06
  !e5
  !e5
  !g5
  !g5
  db 33
  !g5
  db 22
  !f5
  !f5
  db 11,$36
  !f5
  db 22,$06
  !f5
  !f5
  !end

.pattern4_0
  !percBase,!instr30
  !echo,%00011110,34,34
  !echoParameters,5,55,2
  !volume,235
  !musicVolume,255
  !tempo,51
  !loop : dw .sub5123 : db 2
  !end

.pattern4_1
  !instr,!instr05
  !volume,255
  db 22,$06
  !c3
  !c3
  db 33,$74
  !g3
  db 22,$06
  !c3
  !c3
  db 11,$36
  !c3
  db 22,$74
  !g3
  db 22,$78
  !g2
  db 22,$07
  !gs2
  !gs2
  db 33,$76
  !ds3
  db 22,$07
  !gs2
  !gs2
  db 11,$37
  !gs2
  db 22,$76
  !ds3
  db 22,$77
  !gs2
  !end

.pattern4_2
  !instr,!instr23
  !volume,165
  !pan,12
  db 22,$06
  !g4
  !g4
  db 33
  !g4
  db 22
  !g4
  !g4
  db 11,$36
  !g4
  db 22,$06
  !g4
  !g4
  !g4
  !g4
  db 33
  !g4
  db 22
  !g4
  !g4
  db 11,$36
  !g4
  db 22,$06
  !g4
  !g4
  !end

.pattern4_3
  !instr,!instr23
  !volume,165
  !pan,8
  db 22,$06
  !a4
  !a4
  db 33
  !b4
  db 22
  !a4
  !a4
  db 11,$36
  !a4
  db 22,$06
  !b4
  !a4
  !gs4
  !gs4
  db 33
  !c5
  db 22
  !gs4
  !gs4
  db 11,$36
  !gs4
  db 22,$06
  !c5
  !gs4
  !end

.pattern4_4
  !instr,!instr23
  !volume,165
  !pan,10
  db 22,$06
  !e5
  !e5
  db 33
  !e5
  db 22
  !e5
  !e5
  db 11,$36
  !e5
  db 22,$06
  !e5
  !e5
  !ds5
  !ds5
  db 33
  !ds5
  db 22
  !ds5
  !ds5
  db 11,$36
  !ds5
  db 22,$06
  !ds5
  !ds5
  !end

.pattern5_0
  !percBase,!instr30
  !echo,%00011110,34,34
  !echoParameters,5,55,2
  !volume,235
  !musicVolume,255
  !tempo,51
  !loop : dw .sub5123 : db 2
  !end

.pattern5_1
  !instr,!instr05
  !volume,255
  db 22,$06
  !c3
  !c3
  db 33,$74
  !g3
  db 22,$06
  !c3
  !c3
  db 11,$36
  !c3
  db 22,$74
  !g3
  db 22,$78
  !g2
  db 22,$07
  !gs2
  !gs2
  db 33,$76
  !ds3
  db 22,$07
  !gs2
  !gs2
  db 11,$37
  !gs2
  db 22,$76
  !ds3
  db 22,$77
  !gs2
  !end

.pattern5_2
  !instr,!instr23
  !volume,165
  !pan,12
  db 22,$06
  !g4
  !g4
  db 33
  !g4
  db 22
  !g4
  !g4
  db 11,$36
  !g4
  db 22,$06
  !g4
  !g4
  !g4
  !g4
  db 33
  !g4
  db 22
  !g4
  !g4
  db 11,$36
  !g4
  db 22,$06
  !g4
  !g4
  !end

.pattern5_3
  !instr,!instr23
  !volume,165
  !pan,8
  db 22,$06
  !a4
  !a4
  db 33
  !b4
  db 22
  !a4
  !a4
  db 11,$36
  !a4
  db 22,$06
  !b4
  !a4
  !gs4
  !gs4
  db 33
  !c5
  db 22
  !gs4
  !gs4
  db 11,$36
  !gs4
  db 22,$06
  !c5
  !gs4
  !end

.pattern5_4
  !instr,!instr23
  !volume,165
  !pan,10
  db 22,$06
  !e5
  !e5
  db 33
  !e5
  db 22
  !e5
  !e5
  db 11,$36
  !e5
  db 22,$06
  !e5
  !e5
  !ds5
  !ds5
  db 33
  !ds5
  db 22
  !ds5
  !ds5
  db 11,$36
  !ds5
  db 22,$06
  !ds5
  !ds5
  !end

.pattern6_0
  !loop : dw .sub5123 : db 2
  !end

.pattern6_1
  db 22,$09
  !f2
  !f2
  db 33,$76
  !c3
  db 22,$09
  !f2
  !f2
  db 11,$39
  !f2
  db 22,$76
  !c3
  db 22,$79
  !f2
  db 22,$07
  !gs2
  !gs2
  db 33,$76
  !ds3
  db 22,$07
  !gs2
  !gs2
  db 11,$37
  !gs2
  db 22,$76
  !ds3
  db 22,$77
  !gs2
  !end

.pattern6_2
  db 22,$06
  !f4
  !f4
  db 33
  !f4
  db 22
  !f4
  !f4
  db 11,$36
  !f4
  db 22,$06
  !f4
  !f4
  !gs4
  !gs4
  db 33
  !gs4
  db 22
  !gs4
  !gs4
  db 11,$36
  !gs4
  db 22,$06
  !gs4
  !gs4
  !end

.pattern6_3
  db 22,$06
  !a4
  !a4
  db 33
  !c5
  db 22
  !a4
  !a4
  db 11,$36
  !a4
  db 22,$06
  !c5
  !a4
  !c5
  !c5
  db 33
  !ds5
  db 22
  !c5
  !c5
  db 11,$36
  !c5
  db 22,$06
  !ds5
  !c5
  !end

.pattern6_4
  db 22,$06
  !e5
  !e5
  db 33
  !e5
  db 22
  !e5
  !e5
  db 11,$36
  !e5
  db 22,$06
  !e5
  !e5
  !g5
  !g5
  db 33
  !g5
  db 22
  !g5
  !g5
  db 11,$36
  !g5
  db 22,$06
  !g5
  !g5
  !end

.pattern7_0
  !loop : dw .sub516C : db 1
  !end

.pattern7_1
  db 22,$09
  !f2
  !f2
  db 33,$76
  !c3
  db 22,$09
  !f2
  !f2
  db 11,$39
  !f2
  db 22,$76
  !c3
  db 22,$79
  !f2
  db 22,$08
  !gs2
  !gs2
  db 33,$73
  !gs3
  db 22,$06
  !cs3
  !cs3
  db 11,$36
  !cs3
  !slideIn,0,5,1
  db 22,$73
  !cs4
  !endSlide
  db 22,$76
  !cs3
  !end

.pattern7_2
  db 22,$06
  !f4
  !f4
  db 33
  !f4
  db 22
  !f4
  !f4
  db 11,$36
  !f4
  db 22,$06
  !f4
  !f4
  !b4
  !cs5
  db 33
  !b4
  db 22
  !b4
  !b4
  db 11,$36
  !b4
  db 22,$06
  !b4
  !b4
  !end

.pattern7_3
  db 22,$06
  !a4
  !a4
  db 33
  !c5
  db 22
  !a4
  !a4
  db 11,$36
  !a4
  db 22,$06
  !c5
  !a4
  !ds5
  !ds5
  db 33
  !ds5
  db 22
  !cs5
  !cs5
  db 11,$36
  !cs5
  db 22,$06
  !ds5
  !cs5
  !end

.pattern7_4
  db 22,$06
  !e5
  !e5
  db 33
  !e5
  db 22
  !e5
  !e5
  db 11,$36
  !e5
  db 22,$06
  !e5
  !e5
  !fs5
  !fs5
  db 33
  !fs5
  db 22
  !f5
  !f5
  db 11,$36
  !f5
  !f5
  !f5
  !fs5
  !f5
  !end

.sub5123
  !pan,12
  !instr,!instr2F
  db 11,$77
  !c7
  !pan,10
  db 11,$70
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$72
  %percNote(!instr30-!instr30)
  !pan,8
  !instr,!instr2F
  db 11,$76
  !g6
  !pan,10
  db 11,$70
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$72
  %percNote(!instr30-!instr30)
  !pan,12
  !instr,!instr2F
  db 11,$77
  !c7
  !pan,10
  db 11,$70
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$72
  %percNote(!instr30-!instr30)
  !pan,8
  !instr,!instr2F
  db 11,$76
  !g6
  !pan,10
  db 11,$70
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$72
  %percNote(!instr30-!instr30)
  !end

.sub516C
  !pan,12
  !instr,!instr2F
  db 11,$77
  !c7
  !pan,10
  db 11,$70
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$72
  %percNote(!instr30-!instr30)
  !pan,8
  !instr,!instr2F
  db 11,$76
  !g6
  !pan,10
  db 11,$70
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$72
  %percNote(!instr30-!instr30)
  !pan,12
  !instr,!instr2F
  db 11,$77
  !c7
  !pan,10
  db 11,$70
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$72
  %percNote(!instr30-!instr30)
  !pan,8
  !instr,!instr2F
  db 11,$76
  !g6
  !pan,10
  db 11,$70
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$72
  %percNote(!instr30-!instr30)
  !pan,12
  !instr,!instr2F
  db 11,$77
  !c7
  !pan,10
  db 11,$70
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$72
  %percNote(!instr30-!instr30)
  !pan,8
  !instr,!instr2F
  db 11,$76
  !g6
  !pan,10
  db 11,$70
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$72
  %percNote(!instr30-!instr30)
  !pan,12
  !instr,!instr2F
  db 11,$77
  !c7
  !pan,10
  db 11,$70
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$71
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$71
  %percNote(!instr30-!instr30)
  db 11,$73
  %percNote(!instr30-!instr30)
  db 11,$72
  %percNote(!instr30-!instr30)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
