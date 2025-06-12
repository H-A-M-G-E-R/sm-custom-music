asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr04 = $17
!instr07 = $18
!instr2C = $19
!instr2D = $1A
!instr2E = $1B
!instr30 = $1C
!instr31 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FD,$F1,$B8,$07,$40
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample04,Sample04+1098
  dw Sample06_07,Sample06_07+558
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_997ae0fd998037789f5b8dc17e49af0b.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, 0, 0, 0, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%00011111,26,26
  !echoParameters,5,186,0
  !musicVolume,255
  !tempo,51
  !volume,255
  !pan,10
  db 32,$77
  %percNote(!instr31-!instr2C)
  !instr,!instr2E
  db 10,$79
  !b3
  db 21
  !b3
  db 21,$77
  !b3
  db 32
  %percNote(!instr31-!instr2C)
  !instr,!instr2E
  !pan,12
  db 10,$76
  !b4
  db 11,$77
  !b4
  !pan,8
  db 10
  !f4
  !pan,10
  db 21
  !d4
  db 22,$74
  %percNote(!instr31-!instr2C)
  !instr,!instr2E
  !pan,12
  db 11,$77
  !b4
  db 11,$74
  !b4
  !pan,8
  db 11,$77
  !f4
  db 11,$74
  !f4
  !pan,10
  db 11,$77
  !d4
  db 11,$74
  !d4
  db 12,$77
  %percNote(!instr30-!instr2C)
  db 12,$74
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  !pan,12
  db 12,$77
  !b4
  db 12,$74
  !b4
  !pan,8
  db 12,$77
  !f4
  db 12,$74
  !f4
  !pan,10
  db 30,$17
  !d4
  db 80,$77
  %percNote(!instr31-!instr2C)
  db 5,$70
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 5,$71
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 5,$72
  %percNote(!instr30-!instr2C)
  db 5,$71
  %percNote(!instr30-!instr2C)
  db 5,$72
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 5,$73
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 5,$74
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 5,$75
  %percNote(!instr30-!instr2C)
  db 5,$76
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 12,$7B
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 111
  !rest
  !end

.pattern0_1
  !instr,!instr07
  db 32,$67
  !e3
  db 10,$65
  !e3
  db 32,$6B
  !e2
  db 10,$67
  !e2
  db 32,$63
  !d4
  db 10,$62
  !d4
  db 32,$67
  !d3
  db 10,$65
  !d3
  db 33,$66
  !cs4
  db 11,$64
  !cs4
  db 33,$67
  !cs3
  db 11,$65
  !cs3
  db 36,$68
  !c3
  db 12,$66
  !c3
  db 24
  !c4
  db 30,$16
  !c4
  db 78,$67
  !d3
  db 97
  !tie
  db 12,$6B
  !e2
  !e2
  db 111
  !rest
  !end

.pattern0_2
  !vibrato,3,15,20
  !instr,!instr04
  !volume,185
  !pan,12
  db 21,$18
  !gs5
  db 7,$68
  !gs5
  db 7,$66
  !gs5
  !gs5
  db 21,$18
  !gs5
  db 21,$28
  !gs5
  db 32,$56
  !e6
  db 31
  !b5
  db 21,$26
  !e6
  db 33,$56
  !cs6
  !cs6
  db 22,$36
  !a5
  db 36,$56
  !c6
  !c6
  db 30,$16
  !a5
  db 15,$66
  !c6
  !dynamicVolume,25,120
  db 25,$78
  !tie
  !dynamicVolume,120,190
  db 115
  !tie
  db 20,$69
  !tie
  db 12,$59
  !fs5
  !fs5
  db 111
  !rest
  !end

.pattern0_3
  !vibrato,3,15,20
  !instr,!instr04
  !volume,185
  !pan,8
  db 21,$18
  !b5
  db 7,$68
  !b5
  db 7,$66
  !b5
  !b5
  db 21,$18
  !b5
  db 21,$28
  !b5
  db 32,$56
  !gs6
  db 31
  !e6
  db 21,$26
  !gs6
  db 33,$56
  !e6
  !e6
  db 22,$36
  !cs6
  db 36,$56
  !e6
  !e6
  db 30,$16
  !c6
  db 15,$76
  !a5
  !dynamicVolume,25,120
  db 25
  !tie
  !dynamicVolume,120,190
  db 115
  !tie
  db 20,$69
  !tie
  db 12,$59
  !b5
  !b5
  db 111
  !rest
  !end

.pattern0_4
  !vibrato,0,18,20
  !instr,!instr04
  !volume,190
  !pan,10
  db 21,$18
  !e6
  db 7,$68
  !e6
  db 7,$66
  !e6
  !e6
  db 21,$18
  !e6
  db 21,$28
  !e6
  !slideIn,1,7,1
  db 32,$56
  !b6
  !endSlide
  db 31
  !gs6
  db 21,$26
  !b6
  db 33,$56
  !a6
  !gs6
  db 22,$36
  !fs6
  db 36,$56
  !a6
  !g6
  db 30,$16
  !f6
  db 15,$76
  !e6
  !dynamicVolume,25,130
  db 25
  !tie
  !dynamicVolume,120,195
  db 115
  !tie
  db 20,$65
  !tie
  db 12,$55
  !e7
  !e7
  db 111
  !rest
  !end

.pattern1_0
  !echo,%00011100,38,38
  !echoParameters,4,50,0
  db 24,$79
  %percNote(!instr30-!instr2C)
  db 8,$75
  %percNote(!instr30-!instr2C)
  db 8,$79
  %percNote(!instr30-!instr2C)
  db 8,$75
  %percNote(!instr30-!instr2C)
  db 8,$79
  %percNote(!instr30-!instr2C)
  db 8,$75
  %percNote(!instr30-!instr2C)
  !end

.pattern1_1
  db 32
  !rest
  !slideIn,2,6,8
  db 8,$73
  !b3
  db 24
  !tie
  !pitchSlide,2,22 : !c3
  !end

.pattern2_0
  !loop : dw .sub5268 : db 3
  !pan,10
  db 16,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$73
  %percNote(!instr2D-!instr2C)
  db 8,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 16,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$73
  %percNote(!instr2D-!instr2C)
  db 8,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 8,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$71
  %percNote(!instr2D-!instr2C)
  db 8,$73
  %percNote(!instr2D-!instr2C)
  db 8,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 8,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$71
  %percNote(!instr2D-!instr2C)
  db 8,$73
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 8,$75
  %percNote(!instr30-!instr2C)
  !loop : dw .sub5268 : db 3
  !pan,10
  db 16,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$73
  %percNote(!instr2D-!instr2C)
  db 8,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 16,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$73
  %percNote(!instr2D-!instr2C)
  db 8,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 16,$7A
  %percNote(!instr30-!instr2C)
  db 8,$72
  %percNote(!instr30-!instr2C)
  db 8,$77
  %percNote(!instr30-!instr2C)
  db 16,$7A
  %percNote(!instr30-!instr2C)
  db 16,$76
  %percNote(!instr31-!instr2C)
  !end

.pattern2_1
  !endSlide
  db 16,$17
  !a2
  !a2
  db 16,$16
  !cs3
  !e3
  !d3
  !d3
  !fs3
  !a3
  db 24,$66
  !a2
  db 8,$47
  !a2
  db 16,$16
  !cs3
  !e3
  !d3
  !d3
  !fs3
  !a3
  !rest
  db 16,$17
  !a2
  db 16,$16
  !cs3
  !e3
  !d3
  !d3
  !fs3
  !a3
  db 16,$17
  !a2
  !a2
  db 16,$16
  !cs3
  !e3
  !d3
  !d3
  !slideIn,0,7,2
  db 16,$76
  !fs3
  !endSlide
  db 16,$16
  !a3
  db 24,$66
  !a2
  db 8,$37
  !a2
  db 16,$16
  !cs3
  !e3
  !d3
  !d3
  !fs3
  !a3
  !rest
  db 16,$17
  !a2
  db 16,$16
  !cs3
  !e3
  !d3
  !d3
  !fs3
  !a3
  db 16,$56
  !a2
  db 16,$17
  !a2
  db 16,$16
  !cs3
  db 16,$56
  !e3
  db 16,$16
  !d3
  db 8,$66
  !d3
  db 8,$65
  !d3
  !slideIn,0,8,1
  db 16,$46
  !fs3
  !endSlide
  !a3
  !rest
  db 16,$37
  !a2
  db 16,$16
  !cs3
  !e3
  !slideIn,1,6,2
  db 24,$46
  !d3
  !endSlide
  db 8,$56
  !d3
  !slideIn,0,5,1
  db 16,$76
  !a3
  !endSlide
  !fs3
  !end

.pattern2_2
  db 16
  !rest
  !instr,!instr01
  !volume,185
  !endVibrato
  db 16,$36
  !e4
  !rest
  !e4
  !rest
  !fs4
  !rest
  !fs4
  !rest
  !a4
  !rest
  !a4
  !rest
  !fs4
  !rest
  !fs4
  !rest
  !e4
  !rest
  !e4
  !rest
  !fs4
  !rest
  !fs4
  !rest
  !g4
  !rest
  !g4
  !rest
  !fs4
  !rest
  !fs4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !c5
  !rest
  !c5
  !rest
  !a4
  !rest
  !a4
  !rest
  !cs5
  !rest
  !cs5
  !rest
  !c5
  !rest
  !c5
  !rest
  !c5
  !rest
  !c5
  !rest
  !d5
  !rest
  !c5
  !end

.pattern2_3
  db 16
  !rest
  !instr,!instr01
  !volume,185
  !endVibrato
  db 16,$36
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !cs5
  !rest
  !cs5
  !rest
  !a4
  !rest
  !a4
  !rest
  !g4
  !rest
  !g4
  !rest
  !a4
  !rest
  !a4
  !rest
  !cs5
  !rest
  !cs5
  !rest
  !a4
  !rest
  !a4
  !rest
  !cs5
  !rest
  !cs5
  !rest
  !d5
  !rest
  !d5
  !rest
  !e5
  !rest
  !e5
  !rest
  !d5
  !rest
  !d5
  !loop : dw .sub529D : db 2
  !end

.pattern2_4
  db 16
  !rest
  !instr,!instr01
  !volume,193
  !endVibrato
  db 16,$36
  !cs5
  !rest
  !cs5
  !rest
  !d5
  !rest
  !d5
  !rest
  !e5
  !rest
  !e5
  !rest
  !d5
  !rest
  !d5
  !rest
  !cs5
  !rest
  !cs5
  !rest
  !d5
  !rest
  !d5
  !rest
  !e5
  !rest
  !e5
  !rest
  !c5
  !rest
  !c5
  !rest
  !e5
  !rest
  !e5
  !rest
  !fs5
  !rest
  !fs5
  !rest
  !g5
  !rest
  !g5
  !rest
  !fs5
  !rest
  !fs5
  !rest
  !g5
  !rest
  !g5
  !rest
  !a5
  !rest
  !a5
  !rest
  !b5
  !rest
  !b5
  !rest
  !a5
  !rest
  !a5
  !end

.sub5268
  !pan,10
  db 16,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$73
  %percNote(!instr2D-!instr2C)
  db 8,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 16,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$73
  %percNote(!instr2D-!instr2C)
  db 8,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 16,$79
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$73
  %percNote(!instr2D-!instr2C)
  db 8,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 16,$78
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$73
  %percNote(!instr2D-!instr2C)
  db 8,$72
  %percNote(!instr2D-!instr2C)
  !end

.sub529D
  !rest
  !e5
  !rest
  !e5
  !rest
  !fs5
  !rest
  !fs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
