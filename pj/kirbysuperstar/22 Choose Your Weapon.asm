asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr05 = $17
!instr0B = $18
!instr2D = $19
!instr2E = $1A
!instr30 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample05,Sample05+27
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2D
  !echoParameters,1,1,2
  !echo,%00011100,1,1
  !musicVolume,255
  !tempo,51
  !echo,%00011100,38,38
  !echoParameters,5,50,0
  !pan,10
  !instr,!instr2E
  db 12,$79
  !d3
  db 11,$72
  !cs3
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 12,$76
  %percNote(!instr30-!instr2D)
  db 11,$71
  %percNote(!instr30-!instr2D)
  !pan,12
  db 12
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 12,$78
  !d3
  db 11,$72
  !cs3
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 12,$76
  %percNote(!instr30-!instr2D)
  db 11,$71
  %percNote(!instr30-!instr2D)
  !pan,12
  db 12
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !loop : dw .sub4F8C : db 1
  !end

.pattern0_1
  !loop : dw .sub5055 : db 1
  !end

.pattern0_2
  !loop : dw .sub50B3 : db 1
  !end

.pattern0_3
  !instr,!instr01
  !pan,11
  !volume,165
  !loop : dw .sub51AD : db 2
  !end

.pattern0_4
  !instr,!instr01
  !pan,9
  !volume,175
  !loop : dw .sub51D8 : db 2
  !end

.pattern1_0
  !pan,10
  !instr,!instr2E
  db 12,$79
  !d3
  db 11,$72
  !cs3
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 12,$76
  %percNote(!instr30-!instr2D)
  db 11,$71
  %percNote(!instr30-!instr2D)
  !pan,12
  db 12
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 12,$78
  !d3
  db 11,$72
  !cs3
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 12,$76
  %percNote(!instr30-!instr2D)
  db 11,$71
  %percNote(!instr30-!instr2D)
  !pan,12
  db 12
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !loop : dw .sub4F8C : db 1
  !end

.pattern1_1
  !loop : dw .sub5055 : db 1
  !end

.pattern1_2
  !loop : dw .sub50B3 : db 1
  !end

.pattern1_3
  !instr,!instr01
  !pan,11
  !volume,165
  !loop : dw .sub51AD : db 2
  !end

.pattern1_4
  !instr,!instr01
  !pan,9
  !volume,175
  !loop : dw .sub51D8 : db 2
  !end

.sub4F8C
  !pan,10
  !instr,!instr2E
  db 12,$78
  !d3
  db 11,$72
  !cs3
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 12,$76
  %percNote(!instr30-!instr2D)
  db 11,$71
  %percNote(!instr30-!instr2D)
  !pan,12
  db 12
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 12,$78
  !d3
  db 11,$72
  !cs3
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 12,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 11,$70
  %percNote(!instr2D-!instr2D)
  db 12,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 11,$72
  %percNote(!instr30-!instr2D)
  !pan,10
  !instr,!instr2E
  db 12,$79
  !d3
  db 11,$72
  !cs3
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 12,$76
  %percNote(!instr30-!instr2D)
  db 11,$71
  %percNote(!instr30-!instr2D)
  !pan,12
  db 12
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 12,$78
  !d3
  db 11,$72
  !cs3
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 12,$76
  %percNote(!instr30-!instr2D)
  db 11,$71
  %percNote(!instr30-!instr2D)
  !pan,12
  db 12
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 12,$76
  !d3
  db 11,$72
  !cs3
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 12,$76
  %percNote(!instr30-!instr2D)
  db 11,$71
  %percNote(!instr30-!instr2D)
  !pan,12
  db 12
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 12,$79
  !d3
  db 11,$72
  !cs3
  !pan,12
  db 12,$71
  %percNote(!instr2D-!instr2D)
  db 11,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 12,$76
  %percNote(!instr30-!instr2D)
  db 11,$72
  %percNote(!instr30-!instr2D)
  db 12,$73
  %percNote(!instr30-!instr2D)
  db 11,$76
  %percNote(!instr30-!instr2D)
  !end

.sub5055
  !instr,!instr05
  !volume,230
  db 35,$47
  !a2
  db 34
  !a2
  db 12,$57
  !a2
  db 11,$56
  !b2
  db 23,$16
  !c3
  !c3
  db 12,$56
  !c3
  db 11
  !c3
  db 23,$46
  !c3
  db 35
  !d3
  db 34
  !d3
  db 23,$56
  !d3
  db 23,$16
  !e3
  !e3
  db 12,$56
  !d3
  db 11
  !e3
  db 23,$4B
  !e2
  db 35,$47
  !a2
  db 34
  !a2
  db 12,$57
  !a2
  db 11,$56
  !b2
  db 23,$16
  !c3
  !c3
  db 12,$56
  !c3
  db 11
  !c3
  db 23,$46
  !c3
  db 35
  !d3
  db 34
  !d3
  db 12,$56
  !c3
  db 11
  !d3
  db 23,$16
  !e3
  !e3
  db 12,$56
  !d3
  db 11
  !e3
  db 12,$5B
  !e2
  db 11,$53
  !b2
  !end

.sub50B3
  db 12
  !rest
  !instr,!instr0B
  !volume,125
  !pan,8
  db 11,$16
  !a5
  !pan,13
  db 12
  !a6
  !pan,10
  db 11
  !d6
  !pan,6
  db 12
  !e6
  !pan,15
  db 11,$18
  !g6
  db 12
  !rest
  !pan,9
  db 11,$16
  !a6
  db 12
  !rest
  !pan,12
  db 11
  !e6
  !pan,3
  db 12
  !g6
  !pan,10
  db 11
  !a6
  db 12
  !rest
  !pan,7
  db 11
  !e6
  !pan,14
  db 12
  !g6
  !pan,11
  db 11
  !a6
  db 12
  !rest
  !pan,12
  db 11
  !a5
  !pan,8
  db 12
  !a6
  !pan,5
  db 11
  !d6
  !pan,11
  db 12
  !e6
  !pan,15
  db 11
  !g6
  db 12
  !rest
  !pan,7
  db 11
  !a6
  db 12
  !rest
  !pan,3
  db 11
  !e6
  !pan,17
  db 12
  !g6
  !pan,12
  db 11
  !a6
  !pan,4
  db 12,$18
  !c7
  !pan,7
  db 11,$16
  !a6
  !pan,13
  db 12
  !g6
  !pan,15
  db 11
  !a6
  db 12
  !rest
  !pan,8
  db 11
  !a5
  !pan,14
  db 12
  !a6
  !pan,6
  db 11
  !d6
  !pan,11
  db 12,$18
  !e6
  !pan,7
  db 11,$16
  !g6
  db 12
  !rest
  !pan,3
  db 11
  !a6
  db 12
  !rest
  !pan,8
  db 11
  !d6
  !pan,3
  db 12
  !e6
  !pan,6
  db 11
  !g6
  !pan,9
  db 12,$18
  !a6
  !pan,14
  db 11,$16
  !d6
  !pan,16
  db 12
  !e6
  !pan,11
  db 11
  !g6
  db 12
  !rest
  !pan,7
  db 11
  !a6
  !pan,13
  db 12
  !d6
  !pan,7
  db 11
  !e6
  !pan,13
  db 12
  !g6
  !pan,6
  db 11
  !a6
  !pan,14
  db 12
  !fs6
  !pan,5
  db 11
  !a6
  db 12
  !rest
  !pan,8
  db 11,$18
  !c7
  !pan,12
  db 12,$16
  !a6
  !pan,7
  db 11
  !c7
  !pan,13
  db 12,$18
  !ds7
  !pan,11
  db 11,$16
  !e7
  !pan,9
  db 12
  !c7
  !pan,13
  db 11
  !g6
  !end

.sub51AD
  db 35,$16
  !c5
  db 34
  !d5
  db 12,$36
  !c5
  db 11
  !e5
  db 23,$06
  !d5
  !e5
  db 12,$36
  !d5
  db 11
  !d5
  db 23,$26
  !e5
  db 35,$16
  !d5
  db 34
  !c5
  db 23,$36
  !d5
  db 23,$06
  !b4
  !b4
  db 12,$46
  !a4
  db 11
  !b4
  db 23,$56
  !gs4
  !end

.sub51D8
  db 35,$16
  !g5
  db 34
  !g5
  db 12,$36
  !e5
  db 11
  !a5
  db 23,$06
  !g5
  !g5
  db 12,$36
  !g5
  db 11
  !g5
  db 23,$26
  !g5
  db 35,$16
  !fs5
  db 34
  !fs5
  db 23,$36
  !fs5
  db 23,$06
  !e5
  !e5
  db 12,$46
  !e5
  db 11
  !e5
  db 23,$56
  !e5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
