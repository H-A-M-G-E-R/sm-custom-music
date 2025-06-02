asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr1B = $17
!instr1C = $18
!instr2B = $19
!instr2C = $1A
!instr2D = $1B
!instr30 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr1C,$AF,$A1,$B8,$03,$C0
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+1098
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%00000001,1,1
  !echoParameters,1,1,2
  !musicVolume,255
  !tempo,51
  !echo,%00011110,38,38
  !echoParameters,5,70,0
  !instr,!instr1C
  !subtranspose,58
  !pan,11
  !volume,255
  db 36,$7A
  !e2
  db 36,$08
  !tie
  db 108
  !rest
  db 72
  !rest
  db 36,$7A
  !e2
  db 36,$0D
  !tie
  db 36,$7D
  !e2
  db 36,$08
  !tie
  !rest
  db 90
  !rest
  !pan,10
  !volume,200
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 18,$78
  %percNote(!instr2C-!instr2C)
  db 36,$76
  %percNote(!instr2C-!instr2C)
  db 18,$74
  %percNote(!instr2C-!instr2C)
  !pan,11
  !instr,!instr1C
  !volume,255
  db 36,$7B
  !d2
  db 36,$08
  !tie
  db 108
  !rest
  db 72
  !rest
  db 36,$7B
  !d2
  db 36,$0B
  !tie
  db 17,$1B
  !d2
  db 18,$1D
  !d2
  db 37,$2B
  !d2
  db 36
  !rest
  db 90
  !rest
  !pan,10
  !volume,200
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 18,$78
  %percNote(!instr2C-!instr2C)
  db 36,$76
  %percNote(!instr2C-!instr2C)
  db 18,$74
  %percNote(!instr2C-!instr2C)
  !end

.pattern0_1
  !pan,9
  !instr,!instr04
  !volume,195
  db 36,$73
  !e3
  !pan,12
  db 36,$06
  !ds4
  !instr,!instr2B
  !volume,90
  !pan,0
  !dynamicPan,180,20
  db 30,$05
  !ds4
  db 30,$06
  !ds4
  db 30,$07
  !ds4
  db 18,$38
  !ds4
  db 12
  !rest
  db 30,$06
  !ds4
  db 30,$03
  !ds4
  !pan,9
  !instr,!instr04
  !volume,195
  db 36,$73
  !e3
  !pan,12
  db 36,$03
  !ds4
  !pan,9
  db 36,$73
  !e3
  !pan,12
  db 36,$19
  !ds4
  !rest
  !instr,!instr2D
  !volume,70
  !dynamicVolume,144,140
  !pan,19
  !dynamicPan,180,5
  db 18,$28
  !a4
  db 18,$23
  !f4
  db 18,$25
  !g4
  db 18,$23
  !f4
  db 18,$26
  !a4
  db 18,$23
  !f4
  db 18,$25
  !g4
  db 18,$23
  !f4
  db 18,$25
  !g4
  db 18,$22
  !f4
  !instr,!instr04
  !volume,195
  !pan,9
  db 36,$73
  !d3
  !pan,12
  db 36,$02
  !d4
  !instr,!instr1B
  !volume,105
  !subtranspose,58
  db 108,$76
  !a4
  db 72
  !tie
  !subtranspose,0
  !instr,!instr04
  !volume,195
  !pan,9
  db 36,$73
  !d3
  !pan,12
  db 36,$03
  !d4
  db 17,$15
  !d4
  db 18,$14
  !d4
  db 37,$08
  !d4
  !instr,!instr30
  !volume,70
  !dynamicVolume,180,140
  !pan,0
  !dynamicPan,216,15
  db 18,$26
  !a4
  db 18,$24
  !f4
  db 18,$28
  !g4
  db 18,$23
  !f4
  db 18,$25
  !a4
  db 18,$23
  !f4
  db 18,$26
  !g4
  db 18,$23
  !f4
  db 18,$25
  !a4
  db 18,$23
  !f4
  db 18,$25
  !g4
  db 18,$22
  !f4

.pattern0_2
  db 36
  !rest
  !pan,8
  !instr,!instr04
  !volume,185
  db 36,$06
  !cs5
  !instr,!instr2B
  !volume,90
  !pan,0
  !dynamicPan,180,20
  db 30,$05
  !cs5
  db 30,$06
  !cs5
  db 30,$07
  !cs5
  db 18,$38
  !cs5
  db 12
  !rest
  db 30,$06
  !cs5
  db 30,$03
  !cs5
  db 36
  !rest
  !pan,8
  !instr,!instr04
  !volume,185
  !cs5
  !rest
  db 36,$19
  !cs5
  !rest
  db 90
  !rest
  !rest
  db 36
  !rest
  db 36,$02
  !a4
  !instr,!instr1B
  !volume,100
  !subtranspose,58
  db 108,$76
  !e4
  !pitchSlide,50,55 : !f4
  db 72
  !tie
  db 36
  !rest
  !subtranspose,0
  !instr,!instr04
  !volume,185
  db 36,$03
  !a4
  db 17,$15
  !a4
  db 18,$14
  !a4
  db 37,$08
  !a4
  db 36
  !rest
  db 90
  !rest
  !rest

.pattern0_3
  db 36
  !rest
  !pan,9
  !instr,!instr04
  !volume,185
  db 36,$06
  !d5
  !instr,!instr2B
  !volume,90
  !pan,20
  !dynamicPan,180,0
  db 30,$05
  !d5
  db 30,$06
  !d5
  db 30,$07
  !d5
  db 18,$38
  !d5
  db 12
  !rest
  db 30,$06
  !d5
  db 30,$03
  !d5
  db 36
  !rest
  !pan,9
  !instr,!instr04
  !volume,185
  !d5
  !rest
  db 36,$19
  !d5
  !rest
  db 90
  !rest
  !rest
  db 36
  !rest
  db 36,$02
  !as4
  !instr,!instr1B
  !volume,100
  !subtranspose,58
  db 108,$76
  !d4
  db 72
  !tie
  db 36
  !rest
  !subtranspose,0
  !instr,!instr04
  !volume,185
  db 36,$03
  !as4
  db 17,$15
  !b4
  db 18,$14
  !b4
  db 37,$08
  !b4
  db 36
  !rest
  db 90
  !rest
  !rest

.pattern0_4
  db 36
  !rest
  !pan,11
  !instr,!instr04
  !volume,185
  db 36,$06
  !g5
  !instr,!instr2B
  !volume,90
  !pan,20
  !dynamicPan,180,0
  db 30,$05
  !g5
  db 30,$06
  !g5
  db 30,$07
  !g5
  db 18,$38
  !g5
  db 12
  !rest
  db 30,$06
  !g5
  db 30,$03
  !g5
  db 36
  !rest
  !pan,11
  !instr,!instr04
  !volume,185
  !g5
  !rest
  db 36,$19
  !g5
  !rest
  db 90
  !rest
  !rest
  db 36
  !rest
  db 36,$02
  !e5
  !instr,!instr1B
  !volume,100
  !subtranspose,58
  db 108,$76
  !as4
  !pitchSlide,50,55 : !a4
  db 72
  !tie
  db 36
  !rest
  !subtranspose,0
  !instr,!instr04
  !volume,185
  db 36,$03
  !e5
  db 17,$15
  !e5
  db 18,$14
  !e5
  db 37,$08
  !e5
  db 36
  !rest
  db 90
  !rest
  !rest
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
