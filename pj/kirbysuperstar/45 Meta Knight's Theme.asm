asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr05 = $18
!instr0B = $19
!instr19 = $1A
!instr1E = $1B
!instr2B = $1C
!instr2D = $1D
!instr2E = $1E
!instr2F = $1F
!instr30 = $20
!instr31 = $21
!instr32 = $22
!instr33 = $23

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr02,$FF,$E0,$B8,$04,$80
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1E,$FF,$E0,$B8,$03,$C0
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FF,$E0,$B8,$04,$00
  db !instr32,$FF,$E0,$B8,$02,$50
  db !instr33,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample02,Sample02+765
  dw Sample05,Sample05+27
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+27
  dw Sample32,Sample32+2502
  dw Sample33,Sample33+3267
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample02: incbin "Sample_759514f69dc1ba8eed65c41c2bb81670.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample32: incbin "Sample_8d56d18ccf40f82419c6f6881e3b1271.brr"
  Sample33: incbin "Sample_49e5db46f22a1ff8ea1bc7ae56432f7f.brr"

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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2D
  !echoParameters,5,50,2
  !echo,%00011111,38,38
  !musicVolume,255
  !tempo,51
  !instr,!instr05
  !loop : dw .sub55B1 : db 4
  !end

.pattern0_1
  !pan,10
  !endSlide
  !endVibrato
  !instr,!instr1E
  !subtranspose,58
  !volume,255
  db 80,$76
  !c3
  db 48,$7F
  !cs2
  db 32,$77
  !as2
  !loop : dw .sub5636 : db 3
  !end

.pattern0_2
  !endSlide
  !endVibrato
  !subtranspose,0
  !instr,!instr0B
  !volume,110
  !pan,8
  !loop : dw .sub5640 : db 1
  !end

.pattern0_3
  !endSlide
  !endVibrato
  db 80
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.pattern0_4
  !loop : dw .sub55EE : db 3
  !pan,10
  !instr,!instr2E
  db 24,$7D
  !f3
  db 8,$77
  !c4
  !instr,!instr2D
  !slideOut,1,8,244
  db 16,$39
  !gs4
  !endSlide
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$71
  %percNote(!instr30-!instr2D)
  !pan,6
  !dynamicPan,32,14
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$75
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  !pan,10
  !instr,!instr2F
  db 16,$77
  !c7
  !pan,8
  db 8
  !g4
  !pan,12
  !c5
  !pan,10
  db 16
  %percNote(!instr33-!instr2D)
  db 16,$75
  %percNote(!instr33-!instr2D)
  !end

.pattern1_0
  !loop : dw .sub55B1 : db 4
  !end

.pattern1_1
  !pan,12
  !instr,!instr19
  !subtranspose,60
  !volume,100
  !dynamicVolume,160,180
  !vibrato,0,12,80
  db 80,$77
  !c5
  !tie
  !dynamicVolume,160,210
  !cs5
  !tie
  !dynamicVolume,160,240
  !ds5
  !tie
  !volume,100
  !dynamicVolume,120,255
  db 80,$79
  !f5
  !tie
  !pitchSlide,50,30 : !as4
  !end

.pattern1_2
  !pan,8
  !instr,!instr19
  !subtranspose,60
  !volume,100
  !dynamicVolume,160,180
  !vibrato,0,12,80
  db 80,$77
  !f5
  !tie
  !dynamicVolume,160,210
  !fs5
  !tie
  !dynamicVolume,160,240
  !gs5
  !tie
  !volume,100
  !dynamicVolume,120,255
  db 80,$79
  !fs5
  !tie
  !pitchSlide,50,30 : !b4
  !end

.pattern1_3
  !pan,10
  !instr,!instr19
  !subtranspose,60
  !volume,100
  !dynamicVolume,160,180
  !vibrato,0,12,80
  db 80,$76
  !as5
  !tie
  !dynamicVolume,160,210
  !tie
  !tie
  !dynamicVolume,160,240
  !tie
  !tie
  !volume,100
  !dynamicVolume,120,255
  db 80,$78
  !as5
  !tie
  !pitchSlide,50,30 : !e5
  !end

.pattern1_4
  !loop : dw .sub55EE : db 3
  !pan,10
  !instr,!instr2E
  db 24,$7D
  !f3
  db 8,$77
  !c4
  !instr,!instr2D
  !slideOut,1,8,244
  db 16,$39
  !gs4
  !endSlide
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$71
  %percNote(!instr30-!instr2D)
  !pan,6
  !dynamicPan,32,14
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$75
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  !pan,10
  !instr,!instr2F
  db 16,$77
  !c7
  !pan,8
  db 8
  !g4
  !pan,12
  !c5
  !pan,10
  db 8,$79
  %percNote(!instr33-!instr2D)
  db 8,$77
  %percNote(!instr33-!instr2D)
  %percNote(!instr33-!instr2D)
  db 8,$79
  %percNote(!instr33-!instr2D)
  !end

.pattern2_0
  !loop : dw .sub55B1 : db 4
  !end

.pattern2_1
  !endTremolo
  !pan,10
  !endSlide
  !endVibrato
  !instr,!instr1E
  !subtranspose,58
  !volume,255
  db 80,$76
  !c3
  db 48,$7F
  !cs2
  db 32,$77
  !as2
  !loop : dw .sub5636 : db 3
  !end

.pattern2_2
  !endTremolo
  !endSlide
  !endVibrato
  !subtranspose,0
  !instr,!instr0B
  !volume,110
  !pan,8
  !loop : dw .sub5640 : db 1
  !end

.pattern2_3
  !endTremolo
  !endSlide
  !subtranspose,0
  !vibrato,0,40,20
  !instr,!instr32
  !volume,220
  db 24,$7B
  !c5
  !endVibrato
  !instr,!instr2F
  !volume,230
  !pan,12
  db 8,$76
  !f6
  !pan,10
  db 16
  !c7
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !d6
  !d6
  !pan,10
  db 16
  !b6
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !pan,10
  db 24,$7B
  !c5
  db 8,$73
  !c7
  db 16,$76
  !c7
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !d6
  !d6
  !pan,10
  db 16
  !b6
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !vibrato,0,40,20
  !pan,10
  !instr,!instr32
  !volume,220
  db 16,$7B
  !as4
  db 24
  !c5
  !endVibrato
  !instr,!instr2F
  !volume,230
  !pan,12
  db 8,$76
  !f6
  !pan,10
  db 16
  !c7
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !d6
  !d6
  !pan,10
  db 16
  !b6
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !pan,12
  db 16
  !f6
  db 8
  !f6
  !pan,12
  !d6
  !pan,10
  db 16
  !c7
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !d6
  !d6
  !pan,10
  db 16
  !b6
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !end

.pattern2_4
  !loop : dw .sub55EE : db 3
  !pan,10
  !instr,!instr2E
  db 24,$7D
  !f3
  db 8,$77
  !c4
  !instr,!instr2D
  !slideOut,1,8,244
  db 16,$39
  !gs4
  !endSlide
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$71
  %percNote(!instr30-!instr2D)
  !pan,6
  !dynamicPan,32,14
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$75
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  !pan,10
  !instr,!instr2F
  db 16,$77
  !c7
  !pan,8
  db 8
  !g4
  !pan,12
  !c5
  !pan,10
  !instr,!instr33
  db 16,$78
  !gs4
  db 16,$76
  !gs4
  !end

.pattern3_0
  !loop : dw .sub5732 : db 6
  !pan,10
  !volume,120
  !dynamicVolume,128,255
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 32,$7E
  !g2
  !end

.pattern3_1
  !instr,!instr19
  !volume,190
  !subtranspose,60
  !endVibrato
  !tremolo,0,35,130
  !pan,12
  db 32,$76
  !f5
  !fs5
  db 53
  !gs5
  !slideIn,0,30,2
  db 43
  !as5
  !endSlide
  db 80
  !tie
  !tie
  !f5
  !ds5
  !ds5
  !cs5
  db 48
  !tie
  db 112
  !ds5
  db 40
  !tie
  !tremolo,30,10,150
  !slideIn,0,60,1
  db 120
  !a4
  !dynamicVolume,160,255
  !endSlide
  db 80
  !tie
  !tie
  !dynamicVolume,32,160
  db 32
  !tie
  !pitchSlide,0,30 : !a6
  !end

.pattern3_2
  !instr,!instr19
  !volume,190
  !subtranspose,60
  !endVibrato
  !tremolo,0,35,130
  !pan,8
  db 32,$76
  !g5
  !gs5
  db 53
  !as5
  !slideIn,0,30,2
  db 43
  !c6
  !endSlide
  db 80
  !tie
  !tie
  !as5
  !gs5
  !f5
  !ds5
  db 48
  !tie
  db 112
  !f5
  db 40
  !tie
  !tremolo,30,10,150
  !slideIn,0,60,1
  db 120
  !d5
  !dynamicVolume,160,255
  !endSlide
  db 80
  !tie
  !tie
  !dynamicVolume,32,160
  db 32
  !tie
  !pitchSlide,0,30 : !d7
  !end

.pattern3_3
  !instr,!instr19
  !volume,190
  !subtranspose,60
  !endVibrato
  !tremolo,0,35,130
  !slideIn,4,6,12
  !pan,10
  db 32,$76
  !c6
  !cs6
  db 53
  !ds6
  !slideIn,0,30,2
  db 43
  !f6
  db 80
  !tie
  !slideIn,4,6,12
  !tie
  !ds6
  !cs6
  !as5
  !gs5
  db 48
  !tie
  db 112
  !as5
  db 40
  !tie
  !tremolo,30,10,150
  !slideIn,0,60,1
  db 120
  !g5
  !dynamicVolume,160,255
  !endSlide
  db 80
  !tie
  !tie
  !dynamicVolume,32,160
  db 32
  !tie
  !pitchSlide,0,30 : !g7
  !end

.pattern3_4
  !loop : dw .sub5763 : db 6
  !pan,10
  !volume,120
  !dynamicVolume,128,255
  db 8,$79
  %percNote(!instr33-!instr2D)
  db 8,$73
  %percNote(!instr33-!instr2D)
  db 8,$76
  %percNote(!instr33-!instr2D)
  db 8,$73
  %percNote(!instr33-!instr2D)
  db 8,$79
  %percNote(!instr33-!instr2D)
  db 8,$73
  %percNote(!instr33-!instr2D)
  db 8,$76
  %percNote(!instr33-!instr2D)
  db 8,$73
  %percNote(!instr33-!instr2D)
  db 8,$79
  %percNote(!instr33-!instr2D)
  db 8,$73
  %percNote(!instr33-!instr2D)
  db 8,$76
  %percNote(!instr33-!instr2D)
  db 8,$73
  %percNote(!instr33-!instr2D)
  db 8,$79
  %percNote(!instr33-!instr2D)
  db 8,$73
  %percNote(!instr33-!instr2D)
  db 8,$76
  %percNote(!instr33-!instr2D)
  db 8,$73
  %percNote(!instr33-!instr2D)
  db 8,$79
  %percNote(!instr33-!instr2D)
  db 8,$73
  %percNote(!instr33-!instr2D)
  db 8,$76
  %percNote(!instr33-!instr2D)
  db 8,$73
  %percNote(!instr33-!instr2D)
  db 32,$7D
  !d3
  !end

.pattern4_0
  !loop : dw .sub55B1 : db 4
  !end

.pattern4_1
  !endTremolo
  !pan,10
  !endSlide
  !endVibrato
  !instr,!instr1E
  !subtranspose,58
  !volume,255
  db 80,$76
  !c3
  db 48,$7F
  !cs2
  db 32,$77
  !as2
  !loop : dw .sub5636 : db 3
  !end

.pattern4_2
  !endTremolo
  !endSlide
  !endVibrato
  !subtranspose,0
  !instr,!instr0B
  !volume,110
  !pan,8
  !loop : dw .sub5640 : db 1
  !end

.pattern4_3
  !endTremolo
  !endSlide
  !subtranspose,0
  !vibrato,0,40,20
  !instr,!instr32
  !volume,220
  db 24,$7B
  !c5
  !endVibrato
  !instr,!instr2F
  !volume,230
  !pan,12
  db 8,$76
  !f6
  !pan,10
  db 16
  !c7
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !d6
  !d6
  !pan,10
  db 16
  !b6
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !pan,10
  db 24,$7B
  !c5
  db 8,$73
  !c7
  db 16,$76
  !c7
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !d6
  !d6
  !pan,10
  db 16
  !b6
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !vibrato,0,40,20
  !pan,10
  !instr,!instr32
  !volume,220
  db 16,$7B
  !as4
  db 24
  !c5
  !endVibrato
  !instr,!instr2F
  !volume,230
  !pan,12
  db 8,$76
  !f6
  !pan,10
  db 16
  !c7
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !d6
  !d6
  !pan,10
  db 16
  !b6
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !pan,12
  db 16
  !f6
  db 8
  !f6
  !pan,12
  !d6
  !pan,10
  db 16
  !c7
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !d6
  !d6
  !pan,10
  db 16
  !b6
  !pan,8
  db 8
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !d6
  !pan,12
  !f6
  !pan,8
  !d6
  !end

.pattern4_4
  !loop : dw .sub55EE : db 3
  !pan,10
  !instr,!instr2E
  db 24,$7D
  !f3
  db 8,$77
  !c4
  !instr,!instr2D
  !slideOut,1,8,244
  db 16,$39
  !gs4
  !endSlide
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$71
  %percNote(!instr30-!instr2D)
  !pan,6
  !dynamicPan,32,14
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$75
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  !pan,10
  !instr,!instr2F
  db 16,$77
  !c7
  !pan,8
  db 8
  !g4
  !pan,12
  !c5
  !pan,10
  !instr,!instr33
  db 16,$78
  !gs4
  db 16,$76
  !gs4
  !end

.pattern5_0
  !instr,!instr05
  !loop : dw .sub57B1 : db 8
  !end

.pattern5_1
  !pan,8
  !instr,!instr31
  !volume,125
  !vibrato,30,24,220
  !dynamicVibrato,50
  db 17,$76
  !as6
  db 15
  !f6
  db 13
  !c6
  db 10
  !as6
  !f6
  !c6
  !as6
  db 9,$77
  !f6
  !c6
  db 9,$76
  !b6
  db 9,$77
  !fs6
  db 8,$78
  !cs6
  db 8,$76
  !c7
  db 7,$79
  !g6
  !d6
  db 7,$75
  !cs7
  db 2,$76
  !gs6
  db 5
  !tie
  db 8
  !ds6
  db 9,$75
  !d7
  db 9,$76
  !a6
  db 10
  !e6
  !slideIn,0,40,1
  db 119,$75
  !ds7
  !dynamicPan,160,12
  db 80
  !tie
  !pitchSlide,40,120 : !a6
  !tie
  !pan,12
  !endSlide
  !instr,!instr1E
  !volume,80
  !dynamicVolume,30,190
  !subtranspose,58
  !vibrato,0,30,70
  db 15,$76
  !g6
  db 13
  !as6
  db 11
  !c7
  db 9
  !g6
  !as6
  db 8
  !c7
  !g6
  !as6
  db 7
  !c7
  !g6
  !fs6
  !f6
  !g6
  !fs6
  !f6
  !ds6
  !fs6
  !f6
  !ds6
  db 2
  !fs6
  db 5
  !tie
  db 7
  !f6
  !ds6
  !f6
  !fs6
  !f6
  !ds6
  db 8
  !c6
  db 9
  !as5
  db 10
  !g5
  db 16
  !fs5
  db 20
  !f5
  !dynamicPan,50,8
  !slideOut,35,15,248
  db 50,$78
  !ds5
  !vibrato,0,30,20
  !subtranspose,0
  !instr,!instr2B
  !volume,180
  !endSlide
  db 15,$79
  !c5
  db 13,$76
  !as4
  db 10
  !c5
  db 9,$79
  !ds5
  db 9,$76
  !c5
  db 8
  !ds5
  db 8,$78
  !f5
  db 8,$77
  !ds5
  !f5
  !g5
  !f5
  !g5
  !as5
  !c6
  !as5
  !c6
  !ds6
  !c6
  !ds6
  !f6
  !ds6
  !f6
  db 8,$76
  !fs6
  !g6
  !as6
  db 10
  !f6
  db 11
  !fs6
  db 12
  !g6
  db 13,$75
  !as6
  db 14
  !c7
  !cs7
  db 17
  !c7
  !vibrato,40,30,243
  !dynamicVibrato,60
  !slideOut,40,173,247
  db 13
  !as6
  !dynamicPan,160,12
  db 80
  !tie
  !tie
  !end

.pattern5_2
  !instr,!instr01
  !volume,200
  !pan,8
  db 24,$06
  !f4
  !pan,12
  !f4
  !pan,8
  !f4
  !rest
  !pan,12
  db 32
  !fs4
  !pan,8
  db 8,$46
  !ds4
  !pan,12
  db 24,$06
  !ds4
  !loop : dw .sub57E2 : db 7
  !end

.pattern5_3
  !endVibrato
  !instr,!instr02
  !volume,200
  !pan,12
  db 24,$06
  !c5
  !pan,8
  !c5
  !pan,12
  !c5
  !rest
  !pan,8
  db 32
  !cs5
  !pan,12
  db 8,$46
  !as4
  !pan,8
  db 24,$06
  !as4
  !loop : dw .sub57FB : db 7
  !end

.pattern5_4
  !loop : dw .sub55EE : db 7
  !pan,10
  !instr,!instr2E
  db 24,$7D
  !f3
  db 8,$77
  !c4
  !instr,!instr2D
  !slideOut,1,8,244
  db 16,$39
  !gs4
  !endSlide
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$71
  %percNote(!instr30-!instr2D)
  !pan,6
  !dynamicPan,32,14
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$75
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  !pan,10
  !instr,!instr2F
  db 16,$77
  !c7
  !pan,8
  db 8
  !g4
  !pan,12
  !c5
  !pan,10
  db 8,$79
  %percNote(!instr33-!instr2D)
  db 8,$77
  %percNote(!instr33-!instr2D)
  %percNote(!instr33-!instr2D)
  db 8,$79
  %percNote(!instr33-!instr2D)
  !end

.pattern6_0
  !pan,10
  !instr,!instr32
  !volume,220
  db 80,$49
  !as4
  !rest
  !rest
  !rest
  !volume,255
  !instr,!instr33
  db 32,$7B
  !g3
  !end

.pattern6_1
  !pan,10
  !instr,!instr31
  !volume,150
  !slideIn,0,8,1
  db 16,$76
  !g6
  !endSlide
  db 13
  !as6
  db 10
  !c7
  db 9
  !g6
  db 8
  !as6
  !c7
  !g6
  db 7
  !as6
  db 8
  !c7
  db 7
  !g6
  !as6
  !c7
  db 14
  !cs7
  db 10
  !c7
  db 9
  !as6
  db 8
  !fs6
  !f6
  db 3
  !ds6
  db 4
  !tie
  db 7
  !c6
  !as5
  db 8
  !g5
  db 9
  !fs5
  db 11
  !f5
  !vibrato,20,30,230
  !dynamicVibrato,80
  !slideOut,58,88,248
  db 114
  !ds5
  db 32
  !tie
  !end

.pattern6_2
  db 20
  !rest
  !pan,0
  !instr,!instr31
  !volume,110
  !subtranspose,20
  !slideIn,0,8,1
  db 16,$76
  !g6
  !endSlide
  db 13
  !as6
  db 10
  !c7
  db 9
  !g6
  db 8
  !as6
  !c7
  !g6
  db 7
  !as6
  db 8
  !c7
  db 7
  !g6
  !as6
  !c7
  db 14
  !cs7
  db 10
  !c7
  db 9
  !as6
  db 8
  !fs6
  !f6
  db 3
  !ds6
  db 4
  !tie
  db 7
  !c6
  !as5
  db 8
  !g5
  db 9
  !fs5
  db 11
  !f5
  !vibrato,20,30,230
  !dynamicVibrato,80
  !slideOut,58,88,248
  db 94
  !ds5
  db 32
  !tie
  !end

.pattern6_3
  db 10
  !rest
  !pan,20
  !instr,!instr31
  !volume,110
  !subtranspose,10
  !slideIn,0,8,1
  db 16,$76
  !g6
  !endSlide
  db 13
  !as6
  db 10
  !c7
  db 9
  !g6
  db 8
  !as6
  !c7
  !g6
  db 7
  !as6
  db 8
  !c7
  db 7
  !g6
  !as6
  !c7
  db 14
  !cs7
  db 10
  !c7
  db 9
  !as6
  db 8
  !fs6
  !f6
  db 3
  !ds6
  db 4
  !tie
  db 7
  !c6
  !as5
  db 8
  !g5
  db 9
  !fs5
  db 11
  !f5
  !vibrato,20,30,230
  !dynamicVibrato,80
  !slideOut,58,88,248
  db 104
  !ds5
  db 32
  !tie
  !end

.pattern6_4
  !instr,!instr2E
  db 80,$7F
  !g2
  !tie
  !volume,120
  !dynamicVolume,180,255
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$79
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  !end

.sub55B1
  db 8,$48
  !c3
  db 8,$43
  !c3
  db 8,$48
  !c3
  db 8,$43
  !c3
  db 8,$48
  !c3
  db 8,$43
  !c3
  db 8,$48
  !c3
  db 8,$43
  !c3
  db 8,$48
  !c3
  db 8,$43
  !c3
  db 8,$48
  !cs3
  db 8,$43
  !cs3
  db 8,$48
  !cs3
  db 8,$43
  !cs3
  db 8,$48
  !cs3
  db 8,$43
  !cs3
  db 8,$48
  !as2
  db 8,$43
  !as2
  db 8,$48
  !as2
  db 8,$43
  !as2
  !end

.sub5636
  db 80,$76
  !c3
  db 48,$7F
  !cs2
  db 32,$77
  !as2
  !end

.sub5640
  db 8,$28
  !g7
  db 8,$25
  !d7
  db 8,$28
  !ds7
  db 8,$25
  !g7
  db 8,$28
  !g6
  db 8,$25
  !gs6
  db 8,$28
  !d7
  db 8,$25
  !ds7
  db 8,$28
  !g7
  db 8,$25
  !c7
  db 8,$28
  !f7
  db 8,$25
  !gs6
  db 8,$28
  !g7
  db 8,$25
  !gs6
  db 8,$28
  !f7
  db 8,$25
  !gs6
  !dynamicPan,32,12
  db 8,$28
  !f7
  !gs6
  db 8,$29
  !gs7
  db 8,$28
  !cs7
  !g7
  db 8,$25
  !d7
  db 8,$28
  !ds7
  db 8,$25
  !g7
  db 8,$28
  !g6
  db 8,$25
  !gs6
  db 8,$28
  !d7
  db 8,$25
  !ds7
  db 8,$28
  !g7
  db 8,$25
  !c7
  db 8,$28
  !f7
  db 8,$25
  !gs6
  db 8,$28
  !g7
  db 8,$25
  !gs6
  db 8,$28
  !f7
  db 8,$25
  !gs6
  !dynamicPan,32,8
  db 8,$28
  !f7
  !gs6
  db 8,$29
  !gs7
  db 8,$28
  !cs7
  !g7
  db 8,$25
  !d7
  db 8,$28
  !ds7
  db 8,$25
  !g7
  db 8,$28
  !g6
  db 8,$25
  !gs6
  db 8,$28
  !d7
  db 8,$25
  !ds7
  db 8,$28
  !g7
  db 8,$25
  !c7
  db 8,$28
  !f7
  db 8,$25
  !gs6
  db 8,$28
  !g7
  db 8,$25
  !gs6
  db 8,$28
  !f7
  db 8,$25
  !gs6
  !dynamicPan,32,12
  db 8,$28
  !f7
  !gs6
  db 8,$29
  !gs7
  db 8,$28
  !cs7
  !g7
  db 8,$25
  !d7
  db 8,$28
  !ds7
  db 8,$25
  !g7
  db 8,$28
  !g6
  db 8,$25
  !gs6
  db 8,$28
  !d7
  db 8,$25
  !ds7
  db 8,$28
  !g7
  db 8,$25
  !c7
  db 8,$28
  !f7
  db 8,$25
  !gs6
  !dynamicVolume,64,60
  db 8,$28
  !g7
  db 8,$25
  !gs6
  db 8,$28
  !f7
  db 8,$25
  !gs6
  !dynamicPan,32,8
  db 8,$28
  !f7
  !gs6
  db 8,$29
  !gs7
  db 8,$28
  !cs7
  !end

.sub55EE
  !pan,10
  !instr,!instr2E
  db 24,$7D
  !f3
  db 8,$77
  !c4
  !instr,!instr2D
  !slideOut,1,8,244
  db 16,$39
  !gs4
  !endSlide
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$71
  %percNote(!instr30-!instr2D)
  !pan,6
  !dynamicPan,32,14
  db 8,$72
  %percNote(!instr30-!instr2D)
  db 8,$73
  %percNote(!instr30-!instr2D)
  db 8,$75
  %percNote(!instr30-!instr2D)
  db 8,$76
  %percNote(!instr30-!instr2D)
  !pan,10
  !instr,!instr2F
  db 16,$77
  !c7
  !pan,8
  db 8
  !g4
  !pan,12
  !c5
  !pan,10
  db 16
  %percNote(!instr33-!instr2D)
  !pan,8
  !instr,!instr2D
  db 8,$75
  !as4
  !pan,12
  !as4
  !end

.sub5732
  db 8,$3B
  !c3
  db 8,$36
  !c3
  !c3
  !c3
  db 8,$3B
  !c3
  db 8,$36
  !c3
  !c3
  !c3
  db 8,$3B
  !c3
  db 8,$36
  !c3
  db 8,$38
  !c4
  db 8,$35
  !c4
  db 8,$38
  !c4
  db 8,$35
  !c4
  !c4
  !c4
  db 8,$68
  !as3
  db 8,$65
  !f3
  db 8,$5B
  !as2
  db 8,$39
  !as2
  !end

.sub5763
  !pan,10
  !instr,!instr2E
  db 24,$7C
  !f3
  db 8,$77
  !c4
  !instr,!instr2D
  !slideOut,1,8,244
  db 16,$39
  !gs4
  !endSlide
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$71
  %percNote(!instr2D-!instr2D)
  !pan,6
  !dynamicPan,32,14
  db 8,$72
  %percNote(!instr2D-!instr2D)
  db 8,$73
  %percNote(!instr2D-!instr2D)
  db 8,$75
  %percNote(!instr2D-!instr2D)
  db 8,$76
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2F
  db 16,$77
  !c7
  !pan,8
  db 8
  !g4
  !pan,12
  !c5
  !pan,10
  !instr,!instr2D
  !slideOut,1,14,241
  db 16,$7B
  !b3
  !endSlide
  !pan,8
  db 8,$75
  %percNote(!instr2D-!instr2D)
  !pan,12
  %percNote(!instr2D-!instr2D)
  !end

.sub57B1
  db 8,$43
  !c4
  db 8,$46
  !g3
  !c3
  db 8,$43
  !c4
  db 8,$46
  !g3
  !c3
  db 8,$43
  !c4
  db 8,$46
  !g3
  !c3
  db 8,$43
  !c4
  !cs4
  db 8,$46
  !gs3
  !cs3
  db 8,$43
  !cs4
  db 8,$46
  !gs3
  !cs3
  db 8,$45
  !as3
  db 8,$46
  !f3
  db 8,$47
  !as2
  db 8,$45
  !as3
  !end

.sub57E2
  !pan,8
  !f4
  !pan,12
  !f4
  !pan,8
  !f4
  !rest
  !pan,12
  db 32
  !fs4
  !pan,8
  db 8,$46
  !ds4
  !pan,12
  db 24,$06
  !ds4
  !end

.sub57FB
  !pan,12
  !c5
  !pan,8
  !c5
  !pan,12
  !c5
  !rest
  !pan,8
  db 32
  !cs5
  !pan,12
  db 8,$46
  !as4
  !pan,8
  db 24,$06
  !as4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
