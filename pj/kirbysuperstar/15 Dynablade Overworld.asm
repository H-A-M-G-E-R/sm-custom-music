asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr22 = $17
!instr2C = $18
!instr2D = $19
!instr2E = $1A
!instr2F = $1B
!instr30 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample22,Sample22+315
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
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
-
  dw .pattern0
  dw .pattern1
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !musicVolume,255
  !tempo,51
  !echoParameters,4,50,2
  !echo,%00010100,30,30
  !volume,211
  !loop : dw .sub5328 : db 7
  !pan,10
  db 26,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 13,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 26,$75
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2F
  db 39,$05
  !ds7
  !pan,12
  db 13,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 26,$77
  %percNote(!instr30-!instr2C)
  db 13,$75
  %percNote(!instr30-!instr2C)
  !pan,10
  db 26,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 13,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 26,$75
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2F
  db 39,$05
  !ds7
  !pan,12
  db 13,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 26,$77
  %percNote(!instr30-!instr2C)
  !pan,9
  !instr,!instr2F
  db 13,$72
  !a5
  !pan,10
  db 26,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 13,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 26,$75
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2F
  db 39,$05
  !ds7
  !pan,12
  db 13,$72
  %percNote(!instr2D-!instr2C)
  !instr,!instr2E
  !pan,12
  db 13,$23
  !d5
  db 13,$21
  !d5
  !pan,8
  db 13,$23
  !as4
  !end

.pattern0_1
  !instr,!instr05
  !volume,154
  !pan,10
  db 26,$16
  !d3
  db 78
  !rest
  db 13,$57
  !d3
  db 26
  !rest
  db 13,$58
  !g3
  db 26
  !rest
  db 13,$53
  !g3
  db 65
  !rest
  db 13
  !g3
  db 39
  !rest
  db 26,$58
  !e3
  db 13,$55
  !e3
  db 104
  !rest
  db 13,$56
  !a3
  db 26
  !rest
  db 13
  !a3
  db 78
  !rest
  db 39,$55
  !a4
  !volume,142
  db 26,$16
  !d4
  db 52
  !rest
  db 26,$57
  !d4
  db 13,$55
  !d4
  db 26
  !rest
  db 13,$57
  !e4
  db 26
  !rest
  db 13,$55
  !e4
  db 65
  !rest
  db 13,$56
  !e4
  db 39
  !rest
  db 26,$16
  !f4
  db 52
  !rest
  db 26,$56
  !f4
  db 13,$54
  !f4
  db 26
  !rest
  db 13,$56
  !as4
  db 26
  !rest
  db 13
  !as4
  db 78
  !rest
  db 26,$15
  !as4
  db 13
  !rest
  db 26,$18
  !ds4
  db 65
  !rest
  !rest
  db 104
  !rest
  !instr,!instr22
  db 13,$31
  !fs4
  db 26,$02
  !fs4
  db 13
  !rest
  !end

.pattern0_2
  !instr,!instr22
  !volume,134
  !pan,8
  db 26,$16
  !f5
  db 78
  !rest
  db 13,$57
  !f5
  db 26
  !rest
  db 13,$58
  !d5
  db 26
  !rest
  db 13,$53
  !d5
  db 65
  !rest
  db 13
  !d5
  db 39
  !rest
  db 26,$58
  !g5
  db 13,$55
  !g5
  db 104
  !rest
  db 13
  !e5
  db 26
  !rest
  db 13,$54
  !e5
  db 78
  !rest
  db 39,$56
  !e5
  !volume,142
  db 26,$16
  !c5
  db 52
  !rest
  db 26,$57
  !c5
  db 13,$55
  !c5
  db 26
  !rest
  db 13,$57
  !d5
  db 26
  !rest
  db 13,$53
  !d5
  db 65
  !rest
  db 13,$56
  !d5
  db 39
  !rest
  db 26,$17
  !ds5
  db 52
  !rest
  db 26,$57
  !ds5
  db 13,$55
  !ds5
  db 26
  !rest
  db 13,$57
  !f5
  db 26
  !rest
  db 13
  !f5
  db 78
  !rest
  db 26,$16
  !f5
  db 13
  !rest
  db 26,$18
  !as5
  db 65
  !rest
  !rest
  db 104
  !rest
  db 13,$31
  !a5
  db 26,$02
  !a5
  db 13
  !rest
  !end

.pattern0_3
  !instr,!instr22
  !volume,134
  !pan,12
  db 26,$16
  !a5
  db 78
  !rest
  db 13,$57
  !a5
  db 26
  !rest
  db 13,$58
  !f5
  db 26
  !rest
  db 13,$53
  !f5
  db 65
  !rest
  db 13
  !f5
  db 39
  !rest
  db 26,$58
  !b5
  db 13,$55
  !b5
  db 104
  !rest
  db 13
  !g5
  db 26
  !rest
  db 13,$54
  !g5
  db 78
  !rest
  db 39,$56
  !g5
  !volume,142
  db 26,$16
  !f5
  db 52
  !rest
  db 26,$57
  !f5
  db 13,$55
  !f5
  db 26
  !rest
  db 13,$57
  !fs5
  db 26
  !rest
  db 13,$53
  !g5
  db 65
  !rest
  db 13,$56
  !g5
  db 39
  !rest
  db 26,$17
  !gs5
  db 52
  !rest
  db 26,$57
  !gs5
  db 13,$55
  !gs5
  db 26
  !rest
  db 13,$57
  !gs5
  db 26
  !rest
  db 13
  !gs5
  db 78
  !rest
  db 26,$16
  !gs5
  db 13
  !rest
  db 26,$18
  !d6
  db 65
  !rest
  !rest
  db 104
  !rest
  db 13,$31
  !c6
  db 26,$02
  !c6
  db 13
  !rest
  !end

.pattern0_4
  !instr,!instr22
  !volume,138
  !pan,10
  db 26,$16
  !c6
  db 78
  !rest
  db 13,$57
  !c6
  db 26
  !rest
  db 13,$58
  !b5
  db 26
  !rest
  db 13,$53
  !b5
  db 65
  !rest
  db 13
  !b5
  db 39
  !rest
  db 26,$58
  !d6
  db 13,$55
  !d6
  db 104
  !rest
  db 13
  !cs6
  db 26
  !rest
  db 13,$54
  !cs6
  db 78
  !rest
  !slideIn,0,9,1
  db 26,$56
  !as5
  !endSlide
  db 13
  !c6
  !volume,146
  db 26,$16
  !a5
  db 52
  !rest
  db 26,$57
  !a5
  db 13,$55
  !a5
  db 26
  !rest
  db 13,$57
  !b5
  db 26
  !rest
  db 13,$53
  !b5
  db 65
  !rest
  db 13,$56
  !b5
  db 39
  !rest
  db 26,$17
  !c6
  db 52
  !rest
  db 26,$57
  !c6
  db 13,$55
  !c6
  db 26
  !rest
  db 13,$57
  !d6
  db 26
  !rest
  db 13
  !d6
  db 78
  !rest
  db 26,$16
  !d6
  db 13
  !rest
  db 26,$18
  !g6
  db 65
  !rest
  !rest
  db 104
  !rest
  db 13,$31
  !ds6
  db 26,$02
  !ds6
  db 13
  !rest
  !end

.pattern1_0
  !loop : dw .sub5328 : db 7
  !pan,10
  db 26,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 13,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 26,$75
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2F
  db 39,$05
  !ds7
  !pan,12
  db 13,$72
  %percNote(!instr2D-!instr2C)
  !pan,12
  !instr,!instr2E
  db 26,$23
  !d5
  !pan,8
  db 13
  !as4
  !end

.pattern1_1
  !instr,!instr05
  !volume,154
  db 26,$15
  !g4
  db 52
  !rest
  db 26,$46
  !g4
  db 13,$53
  !g3
  db 26
  !rest
  db 13,$56
  !f3
  db 26
  !rest
  db 13,$54
  !f4
  db 65
  !rest
  db 13,$52
  !f3
  db 26,$15
  !f3
  db 13
  !rest
  db 26,$17
  !e3
  db 52
  !rest
  db 26,$44
  !e4
  db 13,$53
  !e3
  db 26
  !rest
  db 13,$56
  !ds3
  db 26
  !rest
  db 13,$54
  !ds4
  db 26
  !rest
  db 13,$52
  !ds3
  db 26
  !rest
  db 13,$51
  !ds4
  db 13,$54
  !ds3
  db 26
  !rest
  db 26,$17
  !d3
  db 52
  !rest
  db 26,$45
  !d3
  db 13,$53
  !d3
  db 26
  !rest
  !slideIn,0,6,1
  db 13,$74
  !g4
  db 26,$18
  !tie
  !endSlide
  db 13,$77
  !g3
  db 78
  !rest
  db 26,$17
  !g3
  db 13
  !rest
  db 65,$76
  !c3
  db 52,$75
  !g3
  db 39
  !c4
  db 26
  !tie
  db 52,$72
  !d4
  db 39,$75
  !c4
  !g3
  !end

.pattern1_2
  db 26,$17
  !f5
  db 52
  !rest
  db 26,$47
  !f5
  db 13,$53
  !f5
  db 26
  !rest
  db 13,$56
  !ds5
  db 26
  !rest
  db 13,$55
  !ds5
  db 65
  !rest
  db 13,$52
  !ds5
  db 26,$15
  !ds5
  db 13
  !rest
  db 26,$17
  !g5
  db 52
  !rest
  db 26,$45
  !g5
  db 13,$53
  !g5
  db 26
  !rest
  db 13,$56
  !fs5
  db 26
  !rest
  db 13,$55
  !fs5
  db 26
  !rest
  db 13,$52
  !fs5
  db 26
  !rest
  db 13,$50
  !fs5
  db 13,$54
  !fs5
  db 26
  !rest
  db 26,$17
  !f5
  db 52
  !rest
  db 26,$45
  !f5
  db 13,$53
  !f5
  db 26
  !rest
  !slideIn,0,6,1
  db 13,$74
  !d5
  db 26,$18
  !tie
  !endSlide
  db 13,$54
  !d5
  db 78
  !rest
  db 26,$16
  !d5
  db 13
  !rest
  db 26,$46
  !e5
  db 39,$65
  !e5
  db 91
  !rest
  db 78
  !rest
  !rest
  !end

.pattern1_3
  db 26,$17
  !as5
  db 52
  !rest
  db 26,$47
  !as5
  db 13,$53
  !as5
  db 26
  !rest
  db 13,$56
  !gs5
  db 26
  !rest
  db 13,$55
  !gs5
  db 65
  !rest
  db 13,$52
  !gs5
  db 26,$15
  !gs5
  db 13
  !rest
  db 26,$17
  !b5
  db 52
  !rest
  db 26,$45
  !b5
  db 13,$53
  !b5
  db 26
  !rest
  db 13,$56
  !as5
  db 26
  !rest
  db 13,$55
  !as5
  db 26
  !rest
  db 13,$52
  !as5
  db 26
  !rest
  db 13,$50
  !as5
  db 13,$54
  !as5
  db 26
  !rest
  db 26,$17
  !a5
  db 52
  !rest
  db 26,$45
  !a5
  db 13,$53
  !a5
  db 26
  !rest
  !slideIn,0,6,1
  db 13,$74
  !f5
  db 26,$18
  !tie
  !endSlide
  db 13,$54
  !f5
  db 78
  !rest
  db 26,$16
  !gs5
  db 13
  !rest
  db 26,$46
  !g5
  db 39,$65
  !g5
  db 91
  !rest
  db 78
  !rest
  !rest
  !end

.pattern1_4
  db 26,$17
  !d6
  db 52
  !rest
  db 26,$47
  !d6
  db 13,$53
  !d6
  db 26
  !rest
  db 13,$56
  !c6
  db 26
  !rest
  db 13,$55
  !c6
  db 65
  !rest
  db 13,$52
  !c6
  db 26,$15
  !c6
  db 13
  !rest
  db 26,$17
  !d6
  db 52
  !rest
  db 26,$45
  !d6
  db 13,$53
  !d6
  db 26
  !rest
  db 13,$56
  !cs6
  db 26
  !rest
  db 13,$55
  !cs6
  db 26
  !rest
  db 13,$52
  !cs6
  db 26
  !rest
  db 13,$50
  !cs6
  db 13,$54
  !cs6
  db 26
  !rest
  db 26,$17
  !c6
  db 52
  !rest
  db 26,$45
  !c6
  db 13,$53
  !c6
  db 26
  !rest
  !slideIn,0,6,1
  db 13,$74
  !b5
  db 26,$18
  !tie
  !endSlide
  db 13,$54
  !b5
  db 78
  !rest
  db 26,$16
  !b5
  db 13
  !rest
  !slideIn,0,9,1
  db 26,$46
  !d6
  !endSlide
  db 39,$65
  !b5
  db 91
  !rest
  db 78
  !rest
  !rest
  !end

.sub5328
  !pan,10
  db 26,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 13,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 26,$75
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2F
  db 39,$05
  !ds7
  !pan,12
  db 13,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 26,$77
  %percNote(!instr30-!instr2C)
  !pan,9
  !instr,!instr2F
  db 13,$72
  !a5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
