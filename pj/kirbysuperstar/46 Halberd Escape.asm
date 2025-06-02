asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr2B = $17
!instr2C = $18
!instr2D = $19
!instr2E = $1A
!instr32 = $1B
!instr33 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$04,$80
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr32,$FF,$E0,$B8,$02,$50
  db !instr33,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+765
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample32,Sample32+2502
  dw Sample33,Sample33+3267
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_759514f69dc1ba8eed65c41c2bb81670.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample32: incbin "Sample_8d56d18ccf40f82419c6f6881e3b1271.brr"
  Sample33: incbin "Sample_49e5db46f22a1ff8ea1bc7ae56432f7f.brr"

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

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !musicVolume,255
  !tempo,51
  !echoParameters,5,80,0
  !echo,%00011111,57,57
  !vibrato,0,255,160
  !instr,!instr2B
  !volume,70
  !dynamicVolume,189,155
  db 72,$76
  !cs6
  !tie
  !tie
  !loop : dw .sub5378 : db 1
  !dynamicVolume,144,130
  !tie
  !tie
  !dynamicVolume,72,100
  !tie
  !end

.pattern0_1
  db 72
  !rest
  !rest
  !rest
  !loop : dw .sub538A : db 3
  db 92
  !rest
  !rest
  !volume,255
  !instr,!instr2E
  !pan,16
  !dynamicPan,36,5
  db 6,$78
  !g3
  db 5,$76
  !g3
  db 5,$77
  !g3
  db 5,$78
  !g3
  db 5,$79
  !g3
  db 6,$7A
  !g3

.pattern0_2
  db 10
  !rest
  !pan,0
  !vibrato,0,220,160
  !instr,!instr2B
  !volume,60
  !dynamicVolume,150,90
  db 72,$75
  !cs6
  !tie
  !tie
  !loop : dw .sub5378 : db 1
  !tie
  !tie
  db 62
  !tie

.pattern0_3
  db 20
  !rest
  !pan,20
  !vibrato,0,240,160
  !instr,!instr2B
  !volume,60
  !dynamicVolume,150,90
  db 72,$75
  !cs6
  !tie
  !tie
  !loop : dw .sub5378 : db 1
  !tie
  !tie
  db 52
  !tie

.pattern1_0
  !echoParameters,5,50,0
  !echo,%00011111,42,42
  !volume,100
  !dynamicVolume,89,160
  db 64,$76
  !cs6
  !tie
  !pitchSlide,0,255 : !gs6
  !tie
  !loop : dw .sub538E : db 1
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,70,218 : !gs6
  !tie
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,70,218 : !d6
  db 32
  !tie
  db 64
  !tie
  !tie
  !pitchSlide,0,255 : !gs6
  !tie
  !loop : dw .sub538E : db 1
  !tie
  !tie
  !pitchSlide,70,218 : !gs6
  !tie
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,70,154 : !d6
  !tie
  !tie
  !dynamicVolume,32,90
  db 32
  !tie
  !end

.pattern1_1
  !pan,10
  !instr,!instr2E
  db 24,$4A
  !g3
  db 8,$7A
  !g3
  db 8,$7B
  !e3
  db 16
  !e3
  db 8,$74
  %percNote(!instr2C-!instr2C)
  db 16,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr33
  !a4
  db 16,$78
  !as4
  !instr,!instr2E
  !pan,5
  db 8,$71
  !d5
  !pan,15
  !a4
  !pan,10
  db 24,$4B
  !e3
  db 8,$7A
  !e3
  !pan,5
  !dynamicPan,32,15
  db 8,$25
  !g4
  !f4
  !g4
  !f4
  !loop : dw .sub5399 : db 2
  !pan,10
  !instr,!instr2E
  db 24,$4A
  !g3
  db 8,$7A
  !g3
  db 8,$7B
  !e3
  db 16
  !e3
  db 8,$74
  %percNote(!instr2C-!instr2C)
  db 16,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr33
  !a4
  db 16,$78
  !as4
  !instr,!instr2D
  !pan,5
  db 8,$75
  !d3
  !pan,15
  !d3
  !pan,10
  !instr,!instr33
  db 24,$78
  !gs4
  db 8
  !gs4
  !instr,!instr2E
  !pan,17
  !dynamicPan,32,6
  db 6
  !g3
  db 5,$76
  !g3
  db 5,$77
  !g3
  db 5,$78
  !g3
  db 5,$79
  !g3
  db 6,$7A
  !g3
  !instr,!instr33
  !pan,10
  db 8,$78
  !b4
  db 8,$77
  !b4
  db 8,$78
  !b4
  !b4
  !pan,10
  !instr,!instr2E
  db 24,$4A
  !g3
  db 8,$7A
  !g3
  db 8,$7B
  !e3
  db 16
  !e3
  db 8,$74
  %percNote(!instr2C-!instr2C)
  db 16,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr33
  !a4
  db 16,$78
  !as4
  !instr,!instr2E
  !pan,5
  db 8,$71
  !d5
  !pan,15
  !a4
  !pan,10
  db 24,$4B
  !e3
  db 8,$7A
  !e3
  !pan,5
  !dynamicPan,32,15
  db 8,$25
  !g4
  !f4
  !g4
  !f4
  !loop : dw .sub5399 : db 2
  !pan,10
  !instr,!instr2E
  db 24,$4A
  !g3
  db 8,$7A
  !g3
  db 8,$7B
  !e3
  db 16
  !e3
  db 8,$74
  %percNote(!instr2C-!instr2C)
  db 16,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr33
  !a4
  db 16,$78
  !as4
  !instr,!instr2D
  !pan,5
  db 8,$75
  !d3
  !pan,15
  !d3
  !pan,10
  !instr,!instr33
  db 24,$78
  !gs4
  db 8
  !gs4
  !instr,!instr2E
  !pan,17
  !dynamicPan,32,6
  db 6
  !g3
  db 5,$76
  !g3
  db 5,$77
  !g3
  db 5,$78
  !g3
  db 5,$79
  !g3
  db 6,$7A
  !g3
  !instr,!instr33
  !pan,10
  db 8,$78
  !b4
  db 8,$77
  !b4
  db 8,$78
  !b4
  !b4

.pattern1_2
  !endVibrato
  !transpose,0
  !pan,10
  !instr,!instr32
  !volume,230
  !loop : dw .sub5418 : db 2
  db 16,$76
  !d5
  db 16,$78
  !ds3
  !ds3
  db 16,$76
  !d5
  db 16,$78
  !ds3
  !ds3
  db 8,$76
  !d5
  db 8,$78
  !ds3
  db 16
  !ds3
  db 8
  !ds3
  db 8,$76
  !d5
  db 16,$78
  !ds3
  db 16,$76
  !d5
  db 16,$78
  !ds3
  db 16,$76
  !ds5
  db 16,$78
  !f3
  db 16,$76
  !ds5
  !ds5
  db 16,$78
  !e3
  db 16,$76
  !ds5
  !ds5
  db 16,$78
  !f3
  db 16,$76
  !ds5
  db 16,$79
  !e3
  db 16,$76
  !ds5
  db 16,$79
  !f3
  db 16,$76
  !ds5
  !ds5
  !transpose,2
  !e5
  db 16,$78
  !fs3
  !fs3
  db 16,$76
  !e5
  db 16,$78
  !fs3
  !fs3
  db 8,$76
  !e5
  db 8,$77
  !fs3
  db 16,$78
  !fs3
  db 8
  !fs3
  db 8,$76
  !e5
  db 16,$78
  !fs3
  db 16,$76
  !e5
  db 16,$78
  !fs3
  db 16,$76
  !ds5
  db 16,$78
  !f3
  !f3
  db 16,$76
  !ds5
  db 16,$78
  !f3
  !f3
  db 8,$76
  !ds5
  db 8,$77
  !f3
  db 16,$78
  !f3
  db 8
  !f3
  db 8,$76
  !ds5
  db 16,$78
  !f3
  db 16,$76
  !ds5
  db 16,$78
  !f3
  !loop : dw .sub5418 : db 1
  db 16,$76
  !d5
  db 16,$78
  !ds3
  !ds3
  db 16,$76
  !d5
  db 16,$78
  !ds3
  !ds3
  db 8,$76
  !d5
  db 8,$78
  !ds3
  db 16
  !ds3
  db 8
  !ds3
  db 8,$76
  !d5
  db 16,$78
  !ds3
  db 16,$76
  !d5
  db 16,$78
  !ds3
  db 16,$76
  !ds5
  db 16,$78
  !f3
  db 16,$76
  !ds5
  !ds5
  db 16,$78
  !e3
  db 16,$76
  !ds5
  !ds5
  db 16,$78
  !f3
  db 16,$76
  !ds5
  db 16,$79
  !e3
  db 16,$76
  !ds5
  db 16,$79
  !f3
  db 8,$78
  !ds5
  db 8,$76
  !ds5
  !ds5
  db 8,$79
  !ds5

.pattern1_3
  !endVibrato
  !transpose,0
  !instr,!instr02
  !volume,197
  !loop : dw .sub5463 : db 2
  !pan,8
  db 16,$26
  !g5
  db 16,$2A
  !ds3
  !ds3
  !pan,12
  db 16,$26
  !g5
  db 16,$2A
  !ds3
  !ds3
  !pan,8
  db 8,$75
  !g5
  db 8,$77
  !ds3
  db 16,$2A
  !ds3
  !pan,12
  db 8,$7A
  !ds3
  db 8,$76
  !g5
  db 16,$2A
  !ds3
  !pan,9
  db 16,$38
  !g5
  db 16,$2A
  !ds3
  !pan,8
  db 16,$26
  !gs5
  db 16,$2A
  !f3
  !pan,12
  db 16,$26
  !gs5
  !pan,8
  db 16,$27
  !gs5
  db 16,$2A
  !e3
  !pan,12
  db 16,$26
  !gs5
  !pan,8
  db 16,$27
  !gs5
  db 16,$2A
  !f3
  !pan,12
  db 16,$27
  !gs5
  db 16,$2A
  !e3
  !pan,8
  db 16,$26
  !gs5
  db 16,$2A
  !f3
  !pan,11
  db 16,$27
  !gs5
  !pan,9
  !gs5
  !transpose,2
  !loop : dw .sub5463 : db 2
  !pan,8
  db 16,$26
  !g5
  db 16,$2A
  !ds3
  !ds3
  !pan,12
  db 16,$26
  !g5
  db 16,$2A
  !ds3
  !ds3
  !pan,8
  db 8,$75
  !g5
  db 8,$77
  !ds3
  db 16,$2A
  !ds3
  !pan,12
  db 8,$7A
  !ds3
  db 8,$76
  !g5
  db 16,$2A
  !ds3
  !pan,9
  db 16,$38
  !g5
  db 16,$2A
  !ds3
  !pan,8
  db 16,$26
  !gs5
  db 16,$2A
  !f3
  !pan,12
  db 16,$26
  !gs5
  !pan,8
  db 16,$27
  !gs5
  db 16,$2A
  !e3
  !pan,12
  db 16,$26
  !gs5
  !pan,8
  db 16,$27
  !gs5
  db 16,$2A
  !f3
  !pan,12
  db 16,$27
  !gs5
  db 16,$2A
  !e3
  !pan,8
  db 16,$26
  !gs5
  db 16,$2A
  !f3
  !pan,13
  db 8,$77
  !gs5
  !pan,7
  !gs5
  !pan,13
  !gs5
  !pan,7
  !gs5

.pattern1_4
  !vibrato,0,20,20
  !transpose,0
  !instr,!instr02
  !volume,197
  !loop : dw .sub54C4 : db 2
  !pan,12
  db 16,$26
  !d6
  db 16,$2A
  !ds4
  !ds4
  !pan,8
  db 16,$26
  !d6
  db 16,$2A
  !ds4
  !ds4
  !pan,12
  db 8,$55
  !d6
  db 8,$57
  !ds4
  db 16,$2A
  !ds4
  !pan,8
  db 8,$5A
  !ds4
  db 8,$56
  !d6
  db 16,$2A
  !ds4
  !pan,11
  db 16,$38
  !d6
  db 16,$2A
  !ds4
  !pan,12
  db 16,$26
  !ds6
  db 16,$2A
  !f4
  !pan,8
  db 16,$26
  !ds6
  !pan,12
  db 16,$27
  !ds6
  db 16,$2A
  !e4
  !pan,8
  db 16,$26
  !ds6
  !pan,12
  db 16,$27
  !ds6
  db 16,$2A
  !f4
  !pan,8
  db 16,$27
  !ds6
  db 16,$2A
  !e4
  !pan,12
  db 16,$26
  !ds6
  db 16,$2A
  !f4
  !pan,9
  db 16,$27
  !ds6
  !pan,11
  !ds6
  !transpose,2
  !instr,!instr02
  !volume,186
  !loop : dw .sub5525 : db 2
  !pan,12
  db 16,$26
  !g6
  db 16,$2A
  !ds4
  !ds4
  !pan,8
  db 16,$26
  !g6
  db 16,$2A
  !ds4
  !ds4
  !pan,12
  db 8,$55
  !g6
  db 8,$57
  !ds4
  db 16,$2A
  !ds4
  !pan,8
  db 8,$5A
  !ds4
  db 8,$56
  !g6
  db 16,$2A
  !ds4
  !pan,11
  db 16,$38
  !g6
  db 16,$2A
  !ds4
  !pan,12
  db 16,$26
  !gs6
  db 16,$2A
  !f4
  !pan,8
  db 16,$26
  !gs6
  !pan,12
  db 16,$27
  !gs6
  db 16,$2A
  !e4
  !pan,8
  db 16,$26
  !gs6
  !pan,12
  db 16,$27
  !gs6
  db 16,$2A
  !f4
  !pan,8
  db 16,$27
  !gs6
  db 16,$2A
  !e4
  !pan,12
  db 16,$26
  !gs6
  db 16,$2A
  !f4
  !pan,7
  db 8,$77
  !gs6
  !pan,13
  !gs6
  !pan,7
  !gs6
  !pan,13
  !gs6

.sub5378
  !pitchSlide,0,255 : !gs6
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,70,255 : !cs6
  !tie
  !end

.sub538A
  !rest
  !rest
  !rest
  !end

.sub538E
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,70,218 : !d6
  !tie
  !tie
  !end

.sub5399
  !pan,10
  !instr,!instr2E
  db 24,$4A
  !g3
  db 8,$7A
  !g3
  db 8,$7B
  !e3
  db 16
  !e3
  db 8,$74
  %percNote(!instr2C-!instr2C)
  db 16,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr33
  !a4
  db 16,$78
  !as4
  !instr,!instr2D
  !pan,5
  db 8,$75
  !d3
  !pan,15
  !d3
  !pan,10
  !instr,!instr33
  db 24,$78
  !gs4
  db 8
  !gs4
  !instr,!instr2E
  !pan,17
  !dynamicPan,32,6
  db 6
  !g3
  db 5,$76
  !g3
  db 6,$77
  !g3
  db 5,$78
  !g3
  db 5,$79
  !g3
  db 5,$7A
  !g3
  !pan,10
  !instr,!instr2E
  db 24,$4A
  !g3
  db 8,$7A
  !g3
  db 8,$7B
  !e3
  db 16
  !e3
  db 8,$74
  %percNote(!instr2C-!instr2C)
  db 16,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr33
  !a4
  db 16,$78
  !as4
  !instr,!instr2E
  !pan,5
  db 8,$71
  !d5
  !pan,15
  !a4
  !pan,10
  db 24,$4B
  !e3
  db 8,$7A
  !e3
  !pan,5
  !dynamicPan,32,15
  db 8,$25
  !g4
  !f4
  !g4
  !f4
  !end

.sub5418
  db 16,$76
  !e5
  db 16,$78
  !fs3
  !fs3
  db 16,$76
  !e5
  db 16,$78
  !fs3
  !fs3
  db 8,$76
  !e5
  db 8,$77
  !fs3
  db 16,$78
  !fs3
  db 8
  !fs3
  db 8,$76
  !e5
  db 16,$78
  !fs3
  db 16,$76
  !e5
  db 16,$78
  !fs3
  db 16,$76
  !ds5
  db 16,$78
  !f3
  !f3
  db 16,$76
  !ds5
  db 16,$78
  !f3
  !f3
  db 8,$76
  !ds5
  db 8,$77
  !f3
  db 16,$78
  !f3
  db 8
  !f3
  db 8,$76
  !ds5
  db 16,$78
  !f3
  db 16,$76
  !ds5
  db 16,$78
  !f3
  !end

.sub5463
  !pan,8
  db 16,$26
  !a5
  db 16,$2A
  !fs3
  !fs3
  !pan,12
  db 16,$26
  !a5
  db 16,$2A
  !fs3
  !fs3
  !pan,8
  db 8,$75
  !a5
  db 8,$77
  !fs3
  db 16,$2A
  !fs3
  !pan,12
  db 8,$7A
  !fs3
  db 8,$76
  !a5
  db 16,$2A
  !fs3
  !pan,9
  db 16,$38
  !a5
  db 16,$2A
  !fs3
  !pan,8
  db 16,$26
  !gs5
  db 16,$2A
  !f3
  !f3
  !pan,12
  db 16,$26
  !gs5
  db 16,$2A
  !f3
  !f3
  !pan,8
  db 8,$75
  !gs5
  db 8,$77
  !f3
  db 16,$2A
  !f3
  !pan,12
  db 8,$7A
  !f3
  db 8,$76
  !gs5
  db 16,$2A
  !f3
  !pan,9
  db 16,$38
  !gs5
  db 16,$2A
  !f3
  !end

.sub54C4
  !pan,12
  db 16,$26
  !e6
  db 16,$2A
  !fs4
  !fs4
  !pan,8
  db 16,$26
  !e6
  db 16,$2A
  !fs4
  !fs4
  !pan,12
  db 8,$75
  !e6
  db 8,$77
  !fs4
  db 16,$2A
  !fs4
  !pan,8
  db 8,$7A
  !fs4
  db 8,$76
  !e6
  db 16,$2A
  !fs4
  !pan,11
  db 16,$38
  !e6
  db 16,$2A
  !fs4
  !pan,12
  db 16,$26
  !ds6
  db 16,$2A
  !f4
  !f4
  !pan,8
  db 16,$26
  !ds6
  db 16,$2A
  !f4
  !f4
  !pan,12
  db 8,$75
  !ds6
  db 8,$77
  !f4
  db 16,$2A
  !f4
  !pan,8
  db 8,$7A
  !f4
  db 8,$76
  !ds6
  db 16,$2A
  !f4
  !pan,11
  db 16,$38
  !ds6
  db 16,$2A
  !f4
  !end

.sub5525
  !pan,12
  db 16,$26
  !a6
  db 16,$2A
  !fs4
  !fs4
  !pan,8
  db 16,$26
  !a6
  db 16,$2A
  !fs4
  !fs4
  !pan,12
  db 8,$75
  !a6
  db 8,$77
  !fs4
  db 16,$2A
  !fs4
  !pan,8
  db 8,$7A
  !fs4
  db 8,$76
  !a6
  db 16,$2A
  !fs4
  !pan,11
  db 16,$38
  !a6
  db 16,$2A
  !fs4
  !pan,12
  db 16,$26
  !gs6
  db 16,$2A
  !f4
  !f4
  !pan,8
  db 16,$26
  !gs6
  db 16,$2A
  !f4
  !f4
  !pan,12
  db 8,$75
  !gs6
  db 8,$77
  !f4
  db 16,$2A
  !f4
  !pan,8
  db 8,$7A
  !f4
  db 8,$76
  !gs6
  db 16,$2A
  !f4
  !pan,11
  db 16,$38
  !gs6
  db 16,$2A
  !f4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
