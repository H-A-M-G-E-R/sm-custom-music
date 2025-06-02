asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr18 = $16
!instr19 = $17
!instr22 = $18
!instr26 = $19
!instr2D = $1A
!instr2E = $1B
!instr31 = $1C
!instr32 = $1D
!instr34 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr18,$82,$EE,$B8,$03,$C0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr31,$FD,$F1,$B8,$07,$40
  db !instr32,$8F,$E0,$B8,$03,$C0
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample22,Sample22+315
  dw Sample26,Sample26+27
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample31,Sample31+27
  dw Sample32,Sample32+2232
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
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
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw $00C8,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr31
  !echoParameters,5,186,0
  !echo,%00111111,45,45
  !musicVolume,255
  !tempo,51
  !volume,120
  !dynamicVolume,30,255
  !instr,!instr34
  db 6,$78
  !c4
  db 7
  !c4
  db 6
  !c4
  db 7
  !c4
  db 6
  !c4
  !c4
  !end

.pattern1_0
  !volume,255
  !instr,!instr34
  !loop : dw .sub5400 : db 7
  db 40,$79
  !c4
  db 13,$78
  !c4
  db 14,$76
  !c4
  db 13
  !c4
  db 40,$78
  !c4
  db 40,$77
  !c4
  db 20,$78
  !c4
  db 20,$76
  !c4
  db 20,$79
  !as3
  db 20,$78
  !as3
  !end

.pattern1_1
  !subtranspose,40
  !instr,!instr32
  !volume,194
  !pan,7
  db 40,$28
  !g4
  db 13,$57
  !c4
  db 14,$55
  !g4
  db 13
  !c4
  db 40,$27
  !g4
  db 40,$26
  !c4
  db 20,$37
  !g4
  db 20,$35
  !c4
  db 40,$67
  !gs4
  !loop : dw .sub541E : db 3
  db 40,$28
  !c4
  db 13,$57
  !g4
  db 14,$55
  !c4
  db 13
  !g4
  db 40,$27
  !c4
  db 40,$26
  !g4
  db 20,$37
  !c4
  db 20,$35
  !g4
  db 40,$67
  !f4

.pattern1_2
  !subtranspose,40
  !instr,!instr32
  !pan,13
  !volume,194
  !loop : dw .sub541E : db 3
  db 40,$28
  !c4
  db 13,$57
  !g4
  db 14,$55
  !c4
  db 13
  !g4
  db 40,$27
  !c4
  db 40,$26
  !g4
  db 20,$37
  !c4
  db 20,$35
  !g4
  db 40,$67
  !cs4
  db 40,$28
  !g4
  db 13,$57
  !c4
  db 14,$55
  !g4
  db 13
  !c4
  db 40,$27
  !g4
  db 40,$26
  !c4
  db 20,$37
  !g4
  db 20,$35
  !c4
  db 40,$67
  !as3

.pattern1_3
  !loop : dw .sub5453 : db 7
  !pan,9
  db 120,$71
  %percNote(!instr31-!instr31)
  !pan,10
  !instr,!instr2E
  db 30,$76
  !e3
  db 10,$73
  !e3
  db 40,$7A
  !a2
  !pan,11
  !instr,!instr2D
  db 20,$7B
  !g2
  !g2

.pattern1_4
  !subtranspose,0
  !transpose,12
  !instr,!instr26
  !volume,162
  !dynamicVolume,149,126
  !pan,10
  !tremolo,80,13,100
  !vibrato,0,20,30
  !slideIn,0,8,1
  db 100,$75
  !g6
  db 50
  !tie
  !dynamicVolume,49,199
  !tie
  !endSlide
  !volume,157
  db 20
  !as6
  db 20,$74
  !c7
  db 6,$76
  !f6
  db 6,$77
  !g6
  !dynamicVolume,67,115
  db 68,$76
  !f6
  !dynamicVolume,120,157
  db 120
  !tie
  db 20,$78
  !ds6
  db 20,$76
  !f6
  db 6,$77
  !d6
  db 6,$78
  !ds6
  db 20,$76
  !d6
  !dynamicVolume,20,105
  !tie
  !dynamicVolume,120,162
  db 48
  !tie
  db 100
  !tie
  db 20,$78
  !as5
  db 20,$76
  !c6
  !dynamicVolume,240,126
  !slideIn,0,40,1
  db 120,$74
  !g5
  !tie
  !endTremolo
  !vibrato,60,11,30
  !instr,!instr22
  !volume,105
  !dynamicVolume,90,183
  !slideIn,0,9,1
  db 100,$75
  !f5
  !tie
  !endSlide
  db 20,$77
  !ds5
  db 20,$75
  !f5
  db 20,$77
  !d5
  !dynamicVolume,20,105
  !tie
  !dynamicVolume,150,183
  db 60
  !tie
  db 100
  !tie
  db 20,$78
  !as4
  db 20,$76
  !c5
  !dynamicVolume,79,115
  db 80,$78
  !gs4
  !dynamicVolume,99,183
  db 100
  !tie
  db 22,$76
  !as4
  !slideIn,0,8,2
  db 23,$78
  !c5
  !endSlide
  db 15,$76
  !d5
  db 20
  !tie
  !dynamicVolume,215,126
  !slideIn,0,30,1
  db 110,$72
  !as5
  !endSlide
  !tie

.pattern2_0
  db 40,$79
  !gs3
  db 13,$78
  !gs3
  db 14,$76
  !gs3
  db 13
  !gs3
  db 40,$78
  !gs3
  db 40,$77
  !gs3
  db 20,$78
  !as3
  db 20,$76
  !as3
  db 40,$79
  !c4
  db 13,$78
  !c4
  db 14,$76
  !c4
  db 13
  !c4
  db 40,$78
  !c4
  db 40,$77
  !c4
  db 20,$78
  !d4
  db 20,$76
  !d4
  db 40,$79
  !ds4
  db 13,$78
  !ds4
  db 14,$76
  !ds4
  db 13
  !ds4
  db 40,$78
  !ds4
  db 40,$77
  !ds4
  db 20,$78
  !ds4
  db 20,$76
  !ds4
  db 20,$78
  !ds4
  db 20,$76
  !ds4
  db 20,$59
  !cs4
  db 20,$58
  !cs4
  db 20,$59
  !cs4
  db 20,$58
  !cs4
  db 40,$79
  !c4
  db 13,$78
  !c4
  db 14,$76
  !c4
  db 13
  !c4
  db 40,$78
  !c4
  db 40,$77
  !c4
  db 20,$78
  !c4
  db 20,$76
  !c4
  db 20,$78
  !as3
  db 20,$76
  !as3
  db 40,$79
  !c4
  db 13,$78
  !c4
  db 14,$76
  !c4
  db 13
  !c4
  db 40,$78
  !c4
  db 40,$77
  !c4
  db 20,$78
  !c4
  db 20,$76
  !c4
  db 20,$78
  !gs3
  db 20,$76
  !as3
  db 40,$79
  !c4
  db 13,$78
  !c4
  db 14,$76
  !c4
  db 13
  !c4
  db 40,$78
  !c4
  db 40,$77
  !c4
  db 20,$78
  !c4
  db 20,$76
  !c4
  db 20,$78
  !as3
  db 20,$76
  !as3
  db 40,$79
  !gs3
  db 13,$78
  !gs3
  db 14,$76
  !gs3
  db 13
  !gs3
  db 40,$78
  !gs3
  db 40,$77
  !gs3
  db 20,$78
  !gs3
  db 20,$76
  !gs3
  db 20,$78
  !gs3
  db 20,$76
  !gs3
  db 40,$79
  !gs3
  db 13,$78
  !gs3
  db 14,$76
  !gs3
  db 13
  !gs3
  db 40,$78
  !gs3
  db 40,$77
  !gs3
  db 20,$78
  !gs3
  db 20,$76
  !gs3
  db 20,$7A
  !as3
  !as3
  !end

.pattern2_1
  db 40,$28
  !ds4
  db 13,$57
  !gs3
  db 14,$55
  !ds4
  db 13
  !gs3
  db 40,$27
  !ds4
  db 40,$26
  !gs3
  db 20,$37
  !f4
  db 20,$35
  !as3
  db 40,$28
  !g4
  db 13,$57
  !c4
  db 14,$55
  !g4
  db 13
  !c4
  db 40,$27
  !g4
  db 40,$26
  !c4
  db 20,$37
  !g4
  db 20,$35
  !d4
  db 40,$28
  !as4
  db 13,$57
  !ds4
  db 14,$55
  !as4
  db 13
  !ds4
  db 40,$27
  !as4
  db 40,$26
  !ds4
  db 20,$37
  !as4
  !ds4
  db 20,$67
  !as4
  !ds4
  db 20,$57
  !gs4
  !cs4
  !gs4
  db 20,$55
  !cs4
  db 40,$28
  !g4
  db 13,$57
  !c4
  db 14,$55
  !g4
  db 13
  !c4
  db 40,$27
  !g4
  db 40,$26
  !c4
  db 20,$37
  !g4
  db 20,$35
  !c4
  db 40,$67
  !f4
  db 40,$28
  !g4
  db 13,$57
  !c4
  db 14,$55
  !g4
  db 13
  !c4
  db 40,$27
  !g4
  db 40,$26
  !c4
  db 20,$37
  !g4
  db 20,$35
  !c4
  db 20,$67
  !ds4
  !as3
  db 40,$28
  !g4
  db 13,$57
  !c4
  db 14,$55
  !g4
  db 13
  !c4
  db 40,$27
  !g4
  db 40,$26
  !c4
  db 20,$37
  !g4
  db 20,$35
  !c4
  db 40,$67
  !f4
  db 40,$28
  !ds4
  db 13,$57
  !gs3
  db 14,$55
  !ds4
  db 13
  !gs3
  db 40,$27
  !ds4
  db 40,$26
  !gs3
  db 20,$37
  !ds4
  db 20,$35
  !gs3
  !ds4
  !gs3
  db 40,$28
  !ds4
  db 13,$57
  !gs3
  db 14,$55
  !ds4
  db 13
  !gs3
  db 40,$27
  !ds4
  db 40,$26
  !gs3
  db 20,$37
  !ds4
  db 20,$38
  !gs3
  db 40
  !as3

.pattern2_2
  db 40,$28
  !gs3
  db 13,$57
  !ds4
  db 14,$55
  !gs3
  db 13
  !ds4
  db 40,$27
  !gs3
  db 40,$26
  !ds4
  db 20,$37
  !as3
  db 20,$35
  !f4
  db 40,$28
  !c4
  db 13,$57
  !g4
  db 14,$55
  !c4
  db 13
  !g4
  db 40,$27
  !c4
  db 40,$26
  !g4
  db 20,$37
  !d4
  db 20,$35
  !g4
  db 40,$28
  !ds4
  db 13,$57
  !as4
  db 14,$55
  !ds4
  db 13
  !as4
  db 40,$27
  !ds4
  db 40,$26
  !as4
  db 20,$37
  !ds4
  db 20,$35
  !as4
  db 20,$67
  !ds4
  !as4
  db 20,$57
  !cs4
  !gs4
  !cs4
  !gs4
  db 40,$28
  !c4
  db 13,$57
  !g4
  db 14,$55
  !c4
  db 13
  !g4
  db 40,$27
  !c4
  db 40,$26
  !g4
  db 20,$37
  !c4
  db 20,$35
  !g4
  db 40,$67
  !as3
  db 40,$28
  !c4
  db 13,$57
  !g4
  db 14,$55
  !c4
  db 13
  !g4
  db 40,$27
  !c4
  db 40,$26
  !g4
  db 20,$37
  !c4
  db 20,$35
  !g4
  db 20,$67
  !gs3
  !f4
  db 40,$28
  !c4
  db 13,$57
  !g4
  db 14,$55
  !c4
  db 13
  !g4
  db 40,$27
  !c4
  db 40,$26
  !g4
  db 20,$37
  !c4
  db 20,$35
  !g4
  db 40,$67
  !as3
  db 40,$28
  !gs3
  db 13,$57
  !ds4
  db 14,$55
  !gs3
  db 13
  !ds4
  db 40,$27
  !gs3
  db 40,$26
  !ds4
  db 20,$37
  !gs3
  db 20,$35
  !ds4
  !gs3
  !ds4
  db 40,$28
  !gs3
  db 13,$57
  !ds4
  db 14,$55
  !gs3
  db 13
  !ds4
  db 40,$27
  !gs3
  db 40,$26
  !ds4
  db 20,$37
  !gs3
  db 20,$38
  !ds4
  db 40
  !f4

.pattern2_3
  !loop : dw .sub546D : db 2
  !pan,9
  db 120,$71
  %percNote(!instr31-!instr31)
  !pan,10
  !instr,!instr2E
  db 30,$76
  !e3
  db 10,$73
  !e3
  db 40,$7A
  !a2
  !pan,11
  !instr,!instr2D
  db 40,$79
  !g2
  !pan,9
  db 40,$71
  %percNote(!instr31-!instr31)
  %percNote(!instr31-!instr31)
  !pan,9
  db 120
  %percNote(!instr31-!instr31)
  !pan,10
  !instr,!instr2E
  db 30,$76
  !e3
  db 10,$73
  !e3
  db 40,$7A
  !a2
  !pan,11
  !instr,!instr2D
  db 40,$79
  !g2
  !loop : dw .sub5480 : db 3
  !pan,9
  db 120,$71
  %percNote(!instr31-!instr31)
  !pan,10
  !instr,!instr2E
  db 30,$76
  !e3
  db 10,$73
  !e3
  db 40,$7A
  !a2
  !pan,11
  !instr,!instr2D
  db 20,$7B
  !g2
  !g2

.pattern2_4
  !pan,9
  !transpose,0
  !instr,!instr18
  !subtranspose,50
  !volume,183
  db 80,$79
  !c6
  db 80,$68
  !tie
  !instr,!instr19
  db 20,$58
  !c6
  db 20,$56
  !d6
  db 80,$77
  !ds6
  db 80,$56
  !tie
  db 20
  !ds6
  !f6
  db 100,$76
  !g6
  db 100,$46
  !tie
  db 20,$56
  !f6
  !g6
  db 40,$67
  !gs6
  db 20,$55
  !g6
  !f6
  db 100,$75
  !ds6
  db 100,$66
  !tie
  db 20,$56
  !d6
  db 20,$55
  !f6
  db 100,$75
  !ds6
  db 100,$65
  !tie
  db 20,$55
  !d6
  db 20,$53
  !ds6
  db 100,$73
  !d6
  db 100,$63
  !tie
  db 20,$53
  !c6
  !as5
  !instr,!instr18
  db 120,$79
  !as5
  !tie
  !tie
  !tie

.pattern2_5
  !pan,11
  !transpose,0
  !instr,!instr18
  !subtranspose,50
  !volume,162
  db 80,$79
  !g5
  db 80,$68
  !tie
  !instr,!instr19
  db 20,$58
  !gs5
  db 20,$56
  !as5
  db 80,$77
  !c6
  db 80,$56
  !tie
  db 20
  !c6
  !d6
  db 100,$76
  !ds6
  db 100,$46
  !tie
  db 20,$56
  !d6
  !ds6
  db 40,$67
  !f6
  db 20,$55
  !ds6
  db 20,$54
  !cs6
  db 100,$75
  !c6
  db 100,$66
  !tie
  db 20,$56
  !as5
  db 20,$55
  !d6
  db 100,$75
  !c6
  db 100,$65
  !tie
  db 20,$55
  !as5
  !c6
  db 100,$73
  !as5
  db 100,$68
  !tie
  !subtranspose,30
  db 20,$53
  !c6
  !as5
  !subtranspose,50
  !instr,!instr18
  db 120,$79
  !g5
  !tie
  !tie
  !tie

.sub5400
  db 40,$79
  !c4
  db 13,$78
  !c4
  db 14,$76
  !c4
  db 13
  !c4
  db 40,$78
  !c4
  db 40,$77
  !c4
  db 20,$78
  !c4
  db 20,$76
  !c4
  db 20,$78
  !cs4
  db 20,$76
  !as3
  !end

.sub541E
  db 40,$28
  !c4
  db 13,$57
  !g4
  db 14,$55
  !c4
  db 13
  !g4
  db 40,$27
  !c4
  db 40,$26
  !g4
  db 20,$37
  !c4
  db 20,$35
  !g4
  db 40,$67
  !cs4
  db 40,$28
  !g4
  db 13,$57
  !c4
  db 14,$55
  !g4
  db 13
  !c4
  db 40,$27
  !g4
  db 40,$26
  !c4
  db 20,$37
  !g4
  db 20,$35
  !c4
  db 40,$67
  !gs4
  !end

.sub5453
  !pan,9
  db 120,$71
  %percNote(!instr31-!instr31)
  !pan,10
  !instr,!instr2E
  db 30,$76
  !e3
  db 10,$73
  !e3
  db 40,$7A
  !a2
  !pan,11
  !instr,!instr2D
  db 40,$79
  !g2
  !end

.sub546D
  !pan,9
  db 120,$71
  %percNote(!instr31-!instr31)
  !pan,10
  !instr,!instr2E
  db 30,$76
  !e3
  db 10,$73
  !e3
  db 40,$7A
  !a2
  !end

.sub5480
  !pan,9
  db 120,$70
  %percNote(!instr31-!instr31)
  !pan,10
  !instr,!instr2E
  db 30,$76
  !e3
  db 10,$73
  !e3
  db 40,$7A
  !a2
  !pan,11
  !instr,!instr2D
  db 40,$79
  !g2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
