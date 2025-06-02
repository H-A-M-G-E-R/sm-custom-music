asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr1D = $17
!instr2D = $18
!instr2F = $19
!instr31 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr31,$FF,$F0,$B8,$03,$D0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample2D,Sample2D+1161
  dw Sample2F,Sample2F+1080
  dw Sample31,Sample31+2556
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"
  Sample31: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"

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

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2D
  !echo,%01111110,1,1
  !echoParameters,1,1,2
  !musicVolume,255
  !tempo,51
  !echo,%01111110,34,34
  !echoParameters,5,80,0
  !pan,12
  !volume,231
  db 15,$72
  %percNote(!instr2D-!instr2D)
  db 15,$70
  %percNote(!instr2D-!instr2D)
  db 15,$71
  %percNote(!instr2D-!instr2D)
  !end

.pattern1_0
  !loop : dw .sub52FA : db 8
  !end

.pattern1_1
  !instr,!instr05
  !volume,230
  !pan,10
  !loop : dw .sub5336 : db 1
  db 75,$06
  !a2
  db 60,$04
  !a3
  db 45,$06
  !a2
  db 30
  !rest
  db 45,$05
  !e3
  db 45,$74
  !a3
  db 15,$76
  !a2
  db 30,$74
  !g3
  db 15
  !a3
  db 75,$08
  !g2
  db 60,$06
  !g3
  db 45,$08
  !g2
  db 30
  !rest
  db 45,$07
  !c3
  db 45,$73
  !c4
  db 15,$76
  !g3
  db 30,$77
  !c3
  db 15,$76
  !g3
  db 75,$06
  !f3
  db 60,$09
  !f2
  db 45,$06
  !f3
  db 30
  !rest
  db 45
  !c3
  db 45,$76
  !f3
  db 15,$79
  !f2
  db 30,$76
  !c3
  db 15
  !f3
  !loop : dw .sub5336 : db 1
  db 75,$06
  !as2
  db 60,$04
  !as3
  db 45,$06
  !as2
  db 30
  !rest
  db 45
  !f3
  db 45,$74
  !as3
  db 15,$76
  !as2
  db 30
  !f3
  db 15,$74
  !as3
  db 75,$07
  !gs2
  db 60,$06
  !gs3
  db 45,$07
  !gs2
  db 30
  !rest
  db 45,$08
  !g2
  db 45,$76
  !g3
  db 15
  !c3
  db 30,$74
  !g3
  db 15,$76
  !c3
  db 75,$09
  !f2
  db 60,$06
  !f3
  db 45,$09
  !f2
  db 30
  !rest
  db 45,$06
  !c3
  db 45,$76
  !f3
  db 15,$79
  !f2
  db 30,$76
  !f3
  db 15,$79
  !f2

.pattern1_2
  !instr,!instr1D
  !pan,12
  !volume,149
  !subtranspose,58
  !loop : dw .sub534D : db 1
  db 30,$09
  !c6
  db 15,$33
  !b5
  db 30,$06
  !c6
  db 15,$33
  !b5
  db 30,$06
  !c6
  db 15,$33
  !b5
  db 30,$06
  !c6
  db 15,$33
  !b5
  db 30,$06
  !c6
  db 15,$33
  !b5
  db 30,$06
  !c6
  db 15,$33
  !b5
  db 30,$06
  !c6
  db 15,$33
  !b5
  db 30,$08
  !c6
  db 15,$33
  !b5
  db 30,$09
  !as5
  db 15,$33
  !a5
  db 30,$06
  !as5
  db 15,$33
  !a5
  db 30,$06
  !as5
  db 15,$33
  !a5
  db 30,$06
  !as5
  db 15,$33
  !a5
  db 30,$06
  !as5
  db 15,$33
  !a5
  db 30,$06
  !as5
  db 15,$33
  !a5
  db 30,$06
  !as5
  db 15,$33
  !a5
  db 30,$08
  !as5
  db 15,$33
  !a5
  !loop : dw .sub537E : db 1
  !loop : dw .sub534D : db 1
  db 30,$09
  !cs6
  db 15,$33
  !c6
  db 30,$06
  !cs6
  db 15,$33
  !c6
  db 30,$06
  !cs6
  db 15,$33
  !c6
  db 30,$06
  !cs6
  db 15,$33
  !c6
  db 30,$06
  !cs6
  db 15,$33
  !c6
  db 30,$06
  !cs6
  db 15,$33
  !c6
  db 30,$06
  !cs6
  db 15,$33
  !c6
  db 30,$08
  !cs6
  db 15,$33
  !c6
  db 30,$09
  !c6
  db 15,$33
  !as5
  db 30,$06
  !c6
  db 15,$33
  !as5
  db 30,$06
  !c6
  db 15,$33
  !as5
  db 30,$06
  !c6
  db 15,$33
  !as5
  db 30,$07
  !as5
  db 15,$33
  !g5
  db 30,$06
  !as5
  db 15,$33
  !g5
  db 30,$06
  !as5
  db 15,$33
  !g5
  db 30,$08
  !as5
  db 15,$33
  !g5
  !loop : dw .sub537E : db 1

.pattern1_3
  !instr,!instr1D
  !pan,8
  !volume,149
  !subtranspose,58
  !loop : dw .sub53B1 : db 1
  db 30,$09
  !e6
  db 15,$33
  !c6
  db 30,$06
  !e6
  db 15,$33
  !c6
  db 30,$06
  !e6
  db 15,$33
  !c6
  db 30,$06
  !e6
  db 15,$33
  !c6
  db 30,$06
  !e6
  db 15,$33
  !c6
  db 30,$06
  !e6
  db 15,$33
  !c6
  db 30,$06
  !e6
  db 15,$33
  !c6
  db 30,$08
  !e6
  db 15,$33
  !c6
  db 30,$09
  !d6
  db 15,$33
  !as5
  db 30,$06
  !d6
  db 15,$33
  !as5
  db 30,$06
  !d6
  db 15,$33
  !as5
  db 30,$06
  !d6
  db 15,$33
  !as5
  db 30,$06
  !d6
  db 15,$33
  !as5
  db 30,$06
  !d6
  db 15,$33
  !as5
  db 30,$06
  !d6
  db 15,$33
  !as5
  db 30,$08
  !d6
  db 15,$33
  !as5
  !loop : dw .sub53E2 : db 1
  !loop : dw .sub53B1 : db 1
  db 30,$09
  !f6
  db 15,$33
  !cs6
  db 30,$06
  !f6
  db 15,$33
  !cs6
  db 30,$06
  !f6
  db 15,$33
  !cs6
  db 30,$06
  !f6
  db 15,$33
  !cs6
  db 30,$06
  !f6
  db 15,$33
  !cs6
  db 30,$06
  !f6
  db 15,$33
  !cs6
  db 30,$06
  !f6
  db 15,$33
  !cs6
  db 30,$08
  !f6
  db 15,$33
  !cs6
  db 30,$09
  !ds6
  db 15,$33
  !c6
  db 30,$06
  !ds6
  db 15,$33
  !c6
  db 30,$06
  !ds6
  db 15,$33
  !c6
  db 30,$06
  !ds6
  db 15,$33
  !c6
  db 30,$07
  !d6
  db 15,$33
  !as5
  db 30,$06
  !d6
  db 15,$33
  !as5
  db 30,$06
  !d6
  db 15,$33
  !as5
  db 30,$08
  !d6
  db 15,$33
  !as5
  !loop : dw .sub53E2 : db 1

.pattern1_4
  !instr,!instr1D
  !pan,10
  !volume,149
  !subtranspose,58
  !loop : dw .sub5415 : db 1
  db 30,$09
  !g6
  db 15,$33
  !e6
  db 30,$06
  !g6
  db 15,$33
  !e6
  db 30,$06
  !g6
  db 15,$33
  !e6
  db 30,$06
  !g6
  db 15,$33
  !e6
  db 30,$06
  !g6
  db 15,$33
  !e6
  db 30,$06
  !g6
  db 15,$33
  !e6
  db 30,$06
  !g6
  db 15,$33
  !e6
  db 30,$08
  !g6
  db 15,$33
  !e6
  !loop : dw .sub53B1 : db 1
  !loop : dw .sub5446 : db 1
  !loop : dw .sub5415 : db 1
  db 30,$09
  !gs6
  db 15,$33
  !f6
  db 30,$06
  !gs6
  db 15,$33
  !f6
  db 30,$06
  !gs6
  db 15,$33
  !f6
  db 30,$06
  !gs6
  db 15,$33
  !f6
  db 30,$06
  !gs6
  db 15,$33
  !f6
  db 30,$06
  !gs6
  db 15,$33
  !f6
  db 30,$06
  !gs6
  db 15,$33
  !f6
  db 30,$08
  !gs6
  db 15,$33
  !f6
  db 30,$09
  !g6
  db 15,$33
  !ds6
  db 30,$06
  !g6
  db 15,$33
  !ds6
  db 30,$06
  !g6
  db 15,$33
  !ds6
  db 30,$06
  !g6
  db 15,$33
  !ds6
  db 30,$07
  !f6
  db 15,$33
  !d6
  db 30,$06
  !f6
  db 15,$33
  !d6
  db 30,$06
  !f6
  db 15,$33
  !d6
  db 30,$08
  !f6
  db 15,$33
  !d6
  !loop : dw .sub5446 : db 1

.pattern1_5
  !instr,!instr31
  !pan,10
  !volume,171
  !vibrato,0,20,20
  db 90,$75
  !a6
  !tie
  !tie
  db 45,$76
  !d6
  db 45,$75
  !a6
  db 45,$76
  !g6
  db 100
  !c6
  db 35
  !tie
  db 90
  !tie
  !tie
  !as5
  !f6
  !tie
  db 45
  !g6
  !f6
  db 6,$71
  !e6
  db 7,$72
  !f6
  db 32,$76
  !e6
  db 100
  !a5
  db 35
  !tie
  db 90
  !tie
  !tie
  db 90,$75
  !a6
  !tie
  db 100,$73
  !d6
  db 50
  !tie
  db 15
  !f6
  db 15,$74
  !g6
  db 45,$76
  !gs6
  !cs6
  db 90
  !tie
  db 100
  !tie
  db 50
  !tie
  db 15,$74
  !ds6
  db 15,$75
  !cs6
  db 90,$76
  !c6
  db 90,$74
  !g6
  db 45
  !rest
  db 45,$76
  !as5
  db 45,$75
  !f6
  db 45,$76
  !as5
  db 11,$75
  !a5
  db 11,$74
  !g5
  db 100,$73
  !a5
  db 58
  !tie
  db 90
  !tie
  !tie

.pattern1_6
  db 33
  !rest
  !pan,10
  !instr,!instr31
  !volume,138
  !subtranspose,20
  !vibrato,0,12,20
  !pan,8
  db 90,$75
  !a6
  !tie
  !tie
  !pan,4
  db 45,$76
  !d6
  !pan,12
  db 45,$75
  !a6
  !pan,8
  db 45,$76
  !g6
  !pan,14
  db 100
  !c6
  db 35
  !tie
  db 90
  !tie
  !tie
  !pan,11
  !as5
  !pan,9
  !f6
  !tie
  !pan,13
  db 45
  !g6
  !pan,15
  !f6
  !pan,12
  db 6,$71
  !e6
  db 7,$72
  !f6
  !pan,11
  db 32,$76
  !e6
  !pan,7
  db 100
  !a5
  db 35
  !tie
  db 90
  !tie
  !tie
  !pan,12
  db 90,$75
  !a6
  !tie
  !pan,8
  db 100,$73
  !d6
  db 50
  !tie
  !pan,12
  db 15
  !f6
  !pan,8
  db 15,$74
  !g6
  !pan,3
  db 45,$76
  !gs6
  !pan,17
  !cs6
  db 90
  !tie
  db 100
  !tie
  db 50
  !tie
  !pan,12
  db 15,$74
  !ds6
  !pan,11
  db 15,$75
  !cs6
  !pan,7
  db 90,$76
  !c6
  !pan,9
  db 90,$74
  !g6
  db 45
  !rest
  !pan,14
  db 45,$76
  !as5
  !pan,9
  db 45,$75
  !f6
  !pan,12
  db 45,$76
  !as5
  !pan,9
  db 11,$75
  !a5
  !pan,11
  db 11,$74
  !g5
  !pan,13
  db 100,$73
  !a5
  db 58
  !tie
  db 90
  !tie
  db 57
  !tie

.sub52FA
  !pan,8
  !instr,!instr2F
  db 30,$77
  !c7
  !pan,12
  db 15,$71
  %percNote(!instr2D-!instr2D)
  db 30,$72
  %percNote(!instr2D-!instr2D)
  db 15,$71
  %percNote(!instr2D-!instr2D)
  db 30
  %percNote(!instr2D-!instr2D)
  db 15
  %percNote(!instr2D-!instr2D)
  db 30,$72
  %percNote(!instr2D-!instr2D)
  db 15,$71
  %percNote(!instr2D-!instr2D)
  !pan,8
  !instr,!instr2F
  db 30,$77
  !c7
  !pan,12
  db 15,$71
  %percNote(!instr2D-!instr2D)
  db 30,$72
  %percNote(!instr2D-!instr2D)
  db 15,$71
  %percNote(!instr2D-!instr2D)
  db 30
  %percNote(!instr2D-!instr2D)
  db 15
  %percNote(!instr2D-!instr2D)
  db 15,$72
  %percNote(!instr2D-!instr2D)
  db 15,$70
  %percNote(!instr2D-!instr2D)
  db 15,$71
  %percNote(!instr2D-!instr2D)
  !end

.sub5336
  db 75,$06
  !as2
  db 60
  !f3
  db 45
  !as2
  db 30
  !rest
  db 45
  !f3
  db 45,$74
  !as3
  db 15,$76
  !as2
  db 30
  !f3
  db 15,$74
  !as3
  !end

.sub534D
  db 30,$09
  !d6
  db 15,$33
  !c6
  db 30,$06
  !d6
  db 15,$33
  !c6
  db 30,$06
  !d6
  db 15,$33
  !c6
  db 30,$06
  !d6
  db 15,$33
  !c6
  db 30,$06
  !d6
  db 15,$33
  !c6
  db 30,$06
  !d6
  db 15,$33
  !c6
  db 30,$06
  !d6
  db 15,$33
  !c6
  db 30,$08
  !d6
  db 15,$33
  !c6
  !end

.sub537E
  db 30,$09
  !a5
  db 15,$33
  !g5
  db 30,$06
  !a5
  db 15,$33
  !g5
  db 30,$06
  !a5
  db 15,$33
  !g5
  db 30,$06
  !a5
  db 15,$33
  !g5
  db 30,$07
  !a5
  db 15,$33
  !g5
  db 30,$06
  !a5
  db 15,$33
  !g5
  db 15,$38
  !a5
  db 15,$33
  !g5
  !a5
  db 15,$38
  !g5
  db 15,$36
  !a5
  !g5
  !end

.sub53B1
  db 30,$09
  !f6
  db 15,$33
  !d6
  db 30,$06
  !f6
  db 15,$33
  !d6
  db 30,$06
  !f6
  db 15,$33
  !d6
  db 30,$06
  !f6
  db 15,$33
  !d6
  db 30,$06
  !f6
  db 15,$33
  !d6
  db 30,$06
  !f6
  db 15,$33
  !d6
  db 30,$06
  !f6
  db 15,$33
  !d6
  db 30,$08
  !f6
  db 15,$33
  !d6
  !end

.sub53E2
  db 30,$09
  !c6
  db 15,$33
  !a5
  db 30,$06
  !c6
  db 15,$33
  !a5
  db 30,$06
  !c6
  db 15,$33
  !a5
  db 30,$06
  !c6
  db 15,$33
  !a5
  db 30,$07
  !c6
  db 15,$33
  !a5
  db 30,$06
  !c6
  db 15,$33
  !a5
  db 15,$38
  !c6
  db 15,$33
  !a5
  !c6
  db 15,$38
  !a5
  db 15,$36
  !c6
  !a5
  !end

.sub5415
  db 30,$09
  !a6
  db 15,$33
  !f6
  db 30,$06
  !a6
  db 15,$33
  !f6
  db 30,$06
  !a6
  db 15,$33
  !f6
  db 30,$06
  !a6
  db 15,$33
  !f6
  db 30,$06
  !a6
  db 15,$33
  !f6
  db 30,$06
  !a6
  db 15,$33
  !f6
  db 30,$06
  !a6
  db 15,$33
  !f6
  db 30,$08
  !a6
  db 15,$33
  !f6
  !end

.sub5446
  db 30,$09
  !e6
  db 15,$33
  !c6
  db 30,$06
  !e6
  db 15,$33
  !c6
  db 30,$06
  !e6
  db 15,$33
  !c6
  db 30,$06
  !e6
  db 15,$33
  !c6
  db 30,$07
  !e6
  db 15,$33
  !c6
  db 30,$06
  !e6
  db 15,$33
  !c6
  db 15,$38
  !e6
  db 15,$33
  !c6
  !e6
  db 15,$38
  !c6
  db 15,$36
  !e6
  !c6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
