asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr03 = $19
!instr04 = $1A
!instr05 = $1B
!instr06 = $1C
!instr07 = $1D
!instr08 = $1E
!instr09 = $1F
!instr0A = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr03,$FF,$F2,$B8,$03,$30
  db !instr04,$FF,$EC,$B8,$02,$40
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$FF,$F4,$B8,$03,$90
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$F6,$B8,$04,$90
  db !instr09,$FF,$E0,$B8,$01,$20
  db !instr0A,$FC,$F1,$B8,$03,$E0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+27
  dw Sample03,Sample03+1791
  dw Sample04,Sample04+1386
  dw Sample05,Sample05+1116
  dw Sample06,Sample06+1152
  dw Sample07,Sample07+522
  dw Sample08,Sample08+207
  dw Sample09,Sample09+486
  dw Sample0A,Sample0A+549
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample03: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample04: incbin "Sample_69ccba18c0744e2d4f5b892690ea0fa2.brr"
  Sample05: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample06: incbin "Sample_902a1cfa6206b16ff325e6df14f7c7d7.brr"
  Sample07: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"
  Sample08: incbin "Sample_52321808d69bf220a373c01cbb04d19b.brr"
  Sample09: incbin "Sample_0d959324dbd4ad3bae023b4e0eb99cb7.brr"
  Sample0A: incbin "Sample_5cac8ed5aaaa86695a684f7f807906cc.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2402

Tracker2402:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr05
  !musicVolume,255
  !tempo,22
  !end

.pattern1_0
  !instr,!instr03
  !volume,104
  !pan,9
  !subtranspose,54
  db 12
  !rest
  db 12,$7F
  !a4
  !a4
  !a4
  !a4
  !a4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  db 12,$79
  !b4
  db 12,$73
  !b4
  !rest
  !rest
  db 12,$7F
  !a4
  !a4
  !a4
  !a4
  !a4
  !b4
  !b4
  !b4
  !b4
  !e5
  !c5
  !b4
  db 12,$79
  !b4
  db 12,$7F
  !a4
  db 12,$79
  !a4
  !instr,!instr00
  !volume,104
  !pan,10
  !vibrato,24,24,64
  !slideIn,0,5,4
  !subtranspose,0
  db 48,$7F
  !e5
  !e5
  db 24
  !e5
  !e5
  !e5
  !e5
  !endSlide
  db 6
  !b5
  !c6
  !e6
  !c6
  db 48
  !b5
  db 24
  !a5
  !end

.pattern1_1
  !instr,!instr03
  !volume,125
  !pan,11
  !subtranspose,54
  db 12
  !rest
  db 12,$7F
  !b4
  !b4
  !b4
  !b4
  !b4
  !d5
  !d5
  !e5
  !e5
  !d5
  !d5
  !e5
  db 12,$79
  !e5
  db 12,$73
  !e5
  !rest
  !rest
  db 12,$7F
  !b4
  !b4
  !b4
  !b4
  !b4
  !d5
  !d5
  !e5
  !e5
  !a5
  !f5
  !e5
  db 12,$79
  !e5
  db 12,$7F
  !d5
  db 12,$79
  !d5
  db 12,$73
  !d5
  db 12,$7F
  !e5
  db 12,$79
  !e5
  db 12,$7F
  !e5
  db 12,$79
  !e5
  db 12,$7F
  !e5
  db 12,$79
  !e5
  db 12,$7F
  !e5
  db 12,$79
  !e5
  db 12,$7F
  !e5
  db 12,$79
  !e5
  db 12,$7F
  !e5
  db 12,$79
  !e5
  db 12,$7F
  !e5
  db 12,$79
  !e5
  db 12,$7F
  !e5
  db 12,$79
  !e5
  !volume,94
  !pan,13
  db 12,$7F
  !e5
  !e5
  !e5
  !e5
  !e5
  !d5
  !d5
  !end

.pattern1_2
  !instr,!instr01
  !volume,166
  !transpose,12
  db 96,$7F
  !d4
  !pitchSlide,3,2 : !e4
  !tie
  !d4
  !pitchSlide,3,2 : !e4
  db 72
  !tie
  db 24
  !d3
  db 12,$2F
  !b2
  !e3
  !b2
  !e3
  !b2
  !e3
  !b2
  !e3
  !b2
  !e3
  !b2
  !e3
  !b2
  !e3
  !b2
  !e3
  !a2
  !a2
  !a2
  !a2
  !a2
  !a2
  !a2
  db 12,$7F
  !e3
  !end

.pattern1_3
  !loop : dw .sub2C8B : db 1
  !volume,198
  db 24,$7F
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr08-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr09-!instr05)
  db 12
  %percNote(!instr09-!instr05)
  !end

.pattern1_4
  !volume,198
  db 24,$7F
  %percNote(!instr08-!instr05)
  db 72
  !rest
  db 84
  !rest
  db 12
  %percNote(!instr08-!instr05)
  db 24
  %percNote(!instr08-!instr05)
  db 72
  !rest
  !rest
  db 24
  %percNote(!instr08-!instr05)
  db 12
  !rest
  db 24
  %percNote(!instr08-!instr05)
  !rest
  %percNote(!instr08-!instr05)
  db 12
  !rest
  !rest
  db 24
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  db 12
  %percNote(!instr08-!instr05)
  !instr,!instr02
  !volume,125
  !subtranspose,29
  db 96
  !e5
  !end

.pattern1_5
  !loop : dw .sub2C8B : db 1
  !instr,!instr03
  !volume,94
  !pan,9
  !subtranspose,54
  db 12,$73
  !a4
  db 12,$7F
  !b4
  db 12,$79
  !b4
  db 12,$7F
  !b4
  db 12,$79
  !b4
  db 12,$7F
  !b4
  db 12,$79
  !b4
  db 12,$7F
  !b4
  db 12,$79
  !b4
  db 12,$7F
  !b4
  db 12,$79
  !b4
  db 12,$7F
  !b4
  db 12,$79
  !b4
  db 12,$7F
  !b4
  db 12,$79
  !b4
  db 12,$7F
  !b4
  db 12,$79
  !b4
  !pan,7
  db 12,$7F
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !end

.pattern1_6
  !instr,!instr02
  !volume,104
  !subtranspose,29
  db 6,$7F
  !d5
  db 90
  !e5
  db 96
  !tie
  db 6
  !d5
  db 90
  !e5
  db 96
  !tie
  !rest
  !rest
  !volume,198
  db 12,$75
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  !end

.pattern1_7
  !loop : dw .sub2C8B : db 1
  !rest
  !rest
  !volume,198
  db 96,$79
  %percNote(!instr0A-!instr05)
  !end

.pattern2_0
  db 48,$7F
  !b5
  !dynamicVolume,36,31
  db 36
  !tie
  db 12
  !rest
  !volume,125
  db 6
  !b5
  !c6
  !e6
  !c6
  db 48
  !b5
  db 24
  !a5
  !loop : dw .sub2C91 : db 1
  db 36
  !c7
  db 6
  !b6
  !a6
  db 36
  !e6
  db 12
  !e6
  db 36
  !b6
  db 6
  !c7
  !b6
  db 36
  !c7
  db 6
  !c7
  !d7
  db 48
  !b6
  !dynamicVolume,36,31
  db 36
  !tie
  db 12
  !rest
  !volume,104
  db 6
  !b5
  !c6
  !e6
  !c6
  db 48
  !b5
  db 24
  !a5
  db 48
  !b5
  !dynamicVolume,48,31
  !tie
  !volume,104
  db 6
  !b5
  !c6
  !e6
  !c6
  db 48
  !b5
  db 24
  !a5
  !loop : dw .sub2C91 : db 1
  db 36
  !c7
  db 6
  !b6
  !a6
  db 36
  !e6
  db 12
  !a6
  db 48
  !c7
  db 36
  !d7
  db 6
  !b6
  !d7
  db 48
  !e7
  !dynamicVolume,36,31
  db 36
  !tie
  db 12
  !rest
  !volume,104
  db 6
  !b6
  !c7
  !b6
  !g6
  db 48
  !e6
  db 12,$75
  !e6
  db 12,$7F
  !d6
  db 48
  !e6
  !dynamicVolume,36,31
  db 36
  !tie
  db 12
  !rest
  !volume,104
  db 6
  !b6
  !c7
  !b6
  !g6
  db 48
  !e6
  db 12,$75
  !e6
  db 12,$7F
  !b6
  db 48
  !a6
  !dynamicVolume,36,31
  db 36
  !tie
  db 12
  !rest
  !volume,104
  db 6
  !f6
  !g6
  !a6
  !c7
  db 48
  !e7
  db 12,$75
  !e7
  db 6,$7F
  !d7
  !c7
  db 42
  !b6
  db 6
  !g6
  db 36
  !e6
  db 6
  !g6
  !e6
  db 24
  !ds6
  !b5
  !fs6
  !a6
  db 96
  !b6
  !dynamicVolume,72,42
  db 72
  !tie
  db 24
  !rest
  !instr,!instr02
  !volume,125
  !subtranspose,29
  db 96
  !a5
  db 24
  !tie
  !b5
  !c6
  !d6
  db 84
  !e6
  db 6
  !f6
  !e6
  db 96
  !a6
  db 84
  !d6
  db 6
  !e6
  !d6
  db 24
  !g6
  !f6
  !e6
  !f6
  db 36
  !e6
  db 60
  !a5
  db 84
  !tie
  !instr,!instr00
  !volume,104
  !subtranspose,0
  db 6
  !b5
  !c6
  !b5
  !c6
  !e6
  !c6
  db 48
  !b5
  db 24
  !a5
  !end

.pattern2_1
  !loop : dw .sub2CA7 : db 1
  db 12,$79
  !d5
  db 12,$7F
  !e5
  !e5
  !e5
  !e5
  !e5
  !d5
  !d5
  !loop : dw .sub2CA7 : db 1
  !instr,!instr02
  !volume,125
  !pan,10
  !endVibrato
  !endTremolo
  !transpose,0
  !subtranspose,29
  !endSlide
  db 96
  !b5
  !b5
  !b5
  !e5
  !f5
  !g5
  !fs5
  !f5
  !f5
  !instr,!instr03
  !volume,94
  !subtranspose,54
  db 12
  !b5
  !b5
  db 12,$79
  !b5
  db 12,$7F
  !b5
  db 12,$79
  !b5
  db 12,$7F
  !b5
  db 12,$79
  !b5
  db 12,$7F
  !b5
  !loop : dw .sub2CF8 : db 7
  db 12,$79
  !b5
  !pan,13
  db 12,$7F
  !e5
  !e5
  !e5
  !e5
  !e5
  !d5
  !d5
  !end

.pattern2_2
  !loop : dw .sub2D0D : db 2
  !loop : dw .sub2D1A : db 1
  db 12,$2F
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  db 12,$7F
  !e3
  !loop : dw .sub2D0D : db 3
  !loop : dw .sub2D1A : db 1
  db 12,$2F
  !gs2
  !gs2
  !gs2
  !gs2
  !e2
  !e2
  !e2
  db 12,$7F
  !b2
  !loop : dw .sub2D4B : db 3
  !loop : dw .sub2D55 : db 2
  db 24
  !c3
  db 12
  !rest
  db 24
  !c3
  !c3
  db 12
  !c3
  db 24
  !a2
  db 12
  !rest
  db 24
  !a2
  !a2
  db 12
  !a2
  db 24
  !gs2
  db 12
  !rest
  db 24
  !d3
  !b2
  db 12
  !gs2
  db 24
  !gs2
  db 12
  !rest
  db 24
  !gs2
  !gs2
  db 12
  !gs2
  !instr,!instr01
  !volume,166
  db 24
  !a2
  db 12
  !rest
  db 60
  !a2
  db 12
  !a2
  !a2
  !rest
  db 48
  !a2
  db 12
  !a2
  db 24
  !f2
  db 12
  !rest
  db 60
  !f2
  db 12
  !f2
  !f2
  !rest
  db 48
  !f2
  db 12
  !f2
  db 24
  !g2
  db 12
  !rest
  db 60
  !g2
  db 12
  !g2
  !g2
  !rest
  db 48
  !g2
  db 12
  !g2
  db 24
  !a2
  db 12
  !rest
  db 60
  !a2
  db 12
  !a2
  db 24
  !e3
  !d3
  !b2
  db 12
  !a2
  db 12,$2F
  !a2
  !a2
  !a2
  !a2
  !a2
  !a2
  !a2
  db 12,$7F
  !e3
  !end

.pattern2_3
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr08-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr09-!instr05)
  db 12
  %percNote(!instr09-!instr05)
  !loop : dw .sub2D5F : db 5
  !loop : dw .sub2D67 : db 1
  !loop : dw .sub2D5F : db 7
  !loop : dw .sub2D67 : db 1
  %percNote(!instr05-!instr05)
  db 6,$75
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6,$7F
  %percNote(!instr05-!instr05)
  db 6,$75
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6,$7F
  %percNote(!instr05-!instr05)
  db 6,$75
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6,$7F
  %percNote(!instr05-!instr05)
  db 6,$75
  %percNote(!instr07-!instr05)
  !loop : dw .sub2D7F : db 7
  db 12,$7F
  %percNote(!instr05-!instr05)
  !instr,!instr06
  !pan,7
  !slideIn,0,6,252
  db 24
  !c5
  !pan,9
  !g4
  !pan,7
  db 12
  !c5
  !pan,9
  !g4
  !pan,11
  !d4
  !pan,10
  !endSlide
  db 36
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr08-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  !loop : dw .sub2D9F : db 3
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr08-!instr05)
  db 12
  %percNote(!instr08-!instr05)
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr08-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr09-!instr05)
  db 12
  %percNote(!instr09-!instr05)
  !end

.pattern2_4
  db 96,$7F
  !e5
  !e5
  !d5
  !b4
  !a4
  !f4
  !gs4
  !e5
  !e5
  !e5
  !d5
  !b4
  !a4
  !f4
  !gs4
  !volume,198
  !pan,10
  !subtranspose,0
  db 12
  %percNote(!instr09-!instr05)
  db 24
  %percNote(!instr08-!instr05)
  db 24,$7B
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr09-!instr05)
  %percNote(!instr09-!instr05)
  %percNote(!instr09-!instr05)
  %percNote(!instr09-!instr05)
  db 24
  %percNote(!instr08-!instr05)
  db 24,$7B
  %percNote(!instr08-!instr05)
  db 24,$7F
  %percNote(!instr09-!instr05)
  db 12
  %percNote(!instr09-!instr05)
  !loop : dw .sub2DAE : db 3
  db 12,$75
  %percNote(!instr07-!instr05)
  db 12,$7F
  %percNote(!instr09-!instr05)
  %percNote(!instr08-!instr05)
  db 24,$7B
  %percNote(!instr08-!instr05)
  db 24,$7F
  %percNote(!instr09-!instr05)
  db 12
  %percNote(!instr09-!instr05)
  %percNote(!instr09-!instr05)
  db 6,$75
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  !instr,!instr09
  db 6,$7F
  !c7
  !c7
  !loop : dw .sub2DC5 : db 3
  db 12,$75
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  !instr,!instr06
  !slideIn,0,6,252
  !pan,9
  db 12,$7F
  !e4
  !pan,11
  !c4
  !pan,13
  !gs3
  !instr,!instr02
  !volume,125
  !subtranspose,29
  !pan,10
  !endSlide
  db 96
  !e5
  !end

.pattern2_5
  !loop : dw .sub2DF6 : db 3
  !loop : dw .sub2E03 : db 1
  db 12,$79
  !g4
  db 12,$7F
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !loop : dw .sub2DF6 : db 3
  !loop : dw .sub2E03 : db 1
  !volume,198
  !pan,10
  !endVibrato
  !endTremolo
  !transpose,0
  !subtranspose,0
  !endSlide
  !rest
  db 6
  !rest
  !rest
  db 12
  !rest
  db 6,$75
  %percNote(!instr07-!instr05)
  !rest
  db 12
  !rest
  db 6
  %percNote(!instr07-!instr05)
  !rest
  db 12
  !rest
  db 6
  %percNote(!instr07-!instr05)
  !rest
  !loop : dw .sub2E30 : db 6
  db 36,$79
  %percNote(!instr0A-!instr05)
  db 24,$75
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 36,$79
  %percNote(!instr0A-!instr05)
  db 24,$7F
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  !instr,!instr03
  !volume,94
  !pan,10
  !endVibrato
  !endTremolo
  !transpose,0
  !subtranspose,54
  !loop : dw .sub2E45 : db 8
  db 12,$79
  !a5
  !pan,7
  db 12,$7F
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !end

.pattern2_6
  db 12,$75
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  !loop : dw .sub2E5A : db 14
  !instr,!instr02
  !volume,125
  !pan,10
  !endVibrato
  !endTremolo
  !transpose,0
  !subtranspose,29
  !endSlide
  db 96,$7F
  !c5
  !c5
  !c5
  !f4
  !a4
  !c5
  !a5
  !gs5
  !gs5
  !instr,!instr04
  !volume,125
  !pan,10
  !endVibrato
  !endTremolo
  !transpose,0
  !subtranspose,10
  !endSlide
  !pan,15
  db 3
  !a6
  !rest
  !pan,10
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !pan,15
  db 3,$7F
  !a6
  !pan,10
  db 3,$79
  !e7
  db 3,$7F
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !pan,15
  db 3,$7F
  !a6
  !pan,10
  db 3,$79
  !e7
  db 3,$7F
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !pan,15
  db 3,$7F
  !a6
  !pan,10
  db 3,$79
  !e7
  db 3,$7F
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !loop : dw .sub2E6F : db 6
  !dynamicVolume,96,42
  !pan,15
  db 3,$7F
  !a6
  !pan,10
  db 3,$79
  !e7
  db 3,$7F
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !pan,15
  db 3,$7F
  !a6
  !pan,10
  db 3,$79
  !e7
  db 3,$7F
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !pan,15
  db 3,$7F
  !a6
  !pan,10
  db 3,$79
  !e7
  db 3,$7F
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !pan,15
  db 3,$7F
  !a6
  !pan,10
  db 3,$79
  !e7
  db 3,$7F
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !volume,198
  !pan,10
  db 12,$75
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  !end

.pattern2_7
  !loop : dw .sub2C8B : db 1
  !rest
  !rest
  !rest
  !volume,198
  db 96,$79
  %percNote(!instr0A-!instr05)
  db 24
  !rest
  !instr,!instr04
  !volume,104
  !pan,10
  !subtranspose,10
  db 6,$7F
  !e7
  db 6,$79
  !e5
  db 6,$7F
  !c7
  db 6,$79
  !e7
  db 6,$7F
  !b6
  db 6,$79
  !c7
  db 6,$7F
  !a6
  db 6,$79
  !b6
  db 6,$7F
  !b6
  db 6,$79
  !a6
  db 6,$7F
  !c7
  db 6,$79
  !b6
  db 6,$7F
  !e5
  db 6,$79
  !c7
  db 6,$7B
  !e5
  db 6,$79
  !e5
  db 6,$77
  !e5
  db 6,$75
  !e5
  db 6,$73
  !e5
  db 6,$72
  !e5
  db 6,$71
  !e5
  db 6,$70
  !e5
  db 36
  !rest
  db 24
  !rest
  db 6,$7F
  !f6
  !rest
  !e6
  db 6,$79
  !f6
  db 6,$7F
  !f6
  db 6,$79
  !e6
  db 6,$7F
  !a6
  db 6,$79
  !f6
  db 6,$7F
  !b6
  db 6,$79
  !a6
  db 6,$7F
  !a6
  db 6,$79
  !b6
  db 6,$7F
  !f6
  db 6,$79
  !b6
  db 6,$7B
  !f6
  db 6,$79
  !f6
  db 6,$77
  !f6
  db 6,$75
  !f6
  db 6,$73
  !f6
  db 6,$72
  !f6
  db 6,$71
  !f6
  db 6,$70
  !f6
  db 36
  !rest
  db 60
  !rest
  db 6,$7F
  !e6
  !f6
  !a6
  db 6,$79
  !e6
  db 6,$7F
  !e6
  !f6
  !a6
  db 6,$79
  !e6
  db 6,$7B
  !a6
  db 6,$79
  !a6
  db 6,$77
  !a6
  db 6,$75
  !a6
  db 6,$73
  !a6
  db 6,$72
  !a6
  db 6,$71
  !a6
  db 6,$70
  !a6
  db 36
  !rest
  db 48
  !rest
  db 6,$7F
  !e5
  !gs5
  !a5
  !gs5
  !a5
  !b5
  !c6
  !d6
  !instr,!instr03
  !volume,114
  !pan,10
  !endVibrato
  !endTremolo
  !transpose,0
  !subtranspose,54
  !endSlide
  !c5
  !e5
  !g5
  !b5
  !d6
  db 6,$79
  !g5
  !b5
  !d6
  db 6,$73
  !g5
  !b5
  !d6
  db 18
  !rest
  db 6,$7F
  !b5
  !g5
  !c5
  !e5
  !g5
  !d6
  !b5
  db 6,$79
  !g5
  db 6,$7B
  !c5
  !e5
  !g5
  !d6
  !b5
  db 6,$73
  !g5
  db 6,$77
  !c5
  !e5
  !g5
  !d6
  db 6,$7F
  !c5
  !e5
  !g5
  !b5
  !d6
  db 6,$79
  !g5
  !b5
  !d6
  db 6,$73
  !g5
  !b5
  !d6
  db 18
  !rest
  db 6,$7F
  !b5
  !g5
  !f5
  !a5
  !c6
  !e6
  !f6
  !e6
  !c6
  !a5
  !c6
  !a5
  !f5
  !e5
  db 6,$7B
  !a5
  !f5
  !e5
  !c5
  db 6,$7F
  !a4
  !c5
  !f5
  !a5
  !c6
  !a5
  !f5
  !c5
  !a4
  !c5
  !e5
  !f5
  db 6,$7B
  !a4
  !c5
  !e5
  !f5
  db 6,$7F
  !c5
  !e5
  !g5
  !b5
  db 6,$7B
  !c5
  !e5
  !g5
  !b5
  db 6,$77
  !c5
  !e5
  !g5
  !b5
  db 6,$75
  !c5
  !e5
  !g5
  !b5
  db 6,$7F
  !b4
  !ds5
  !fs5
  !a5
  !b5
  !a5
  !fs5
  !ds5
  db 6,$7B
  !fs5
  !a5
  !b5
  !ds6
  !b5
  !ds6
  !fs6
  !a6
  db 6,$7F
  !b6
  !a6
  !f6
  !d6
  !b5
  !a5
  !f5
  !d5
  db 6,$7B
  !b6
  !a6
  !f6
  !d6
  !b5
  !a5
  !f5
  !d5
  db 6,$7F
  !b6
  !a6
  !f6
  !d6
  !b5
  !a5
  !f5
  !d5
  !f5
  !a5
  !b5
  !d6
  !e6
  !f6
  !a6
  !f6
  !loop : dw .sub2C8B : db 1
  !rest
  !rest
  !volume,198
  !subtranspose,0
  db 96,$79
  %percNote(!instr0A-!instr05)
  db 12
  !rest
  db 24
  %percNote(!instr0A-!instr05)
  db 60
  %percNote(!instr0A-!instr05)
  db 96
  %percNote(!instr0A-!instr05)
  !end

.sub2C8B
  db 96
  !rest
  !rest
  !rest
  !rest
  !end

.sub2C91
  db 48
  !f6
  !dynamicVolume,36,31
  db 36
  !tie
  db 12
  !rest
  !volume,104
  db 6
  !d6
  !e6
  !b5
  !d6
  db 60
  !b6
  db 6
  !c7
  !b6
  !end

.sub2CA7
  db 12,$79
  !d5
  db 12,$7F
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  db 12,$79
  !e5
  db 12,$7F
  !e5
  !e5
  !e5
  !e5
  !e5
  !f5
  !e5
  db 12,$79
  !e5
  db 12,$7F
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  db 12,$79
  !f5
  db 12,$7F
  !f5
  !f5
  !f5
  !f5
  !f5
  !a5
  !f5
  !e5
  !e5
  !e5
  !d5
  !e5
  !e5
  !e5
  !e5
  db 12,$79
  !e5
  db 12,$7F
  !b4
  !b4
  !b4
  !b4
  !b4
  !d5
  !d5
  db 12,$79
  !d5
  db 12,$7F
  !e5
  !e5
  !f5
  !e5
  !e5
  !e5
  !d5
  !end

.sub2CF8
  !b5
  !b5
  db 12,$79
  !b5
  db 12,$7F
  !b5
  db 12,$79
  !b5
  db 12,$7F
  !b5
  db 12,$79
  !b5
  db 12,$7F
  !b5
  !end

.sub2D0D
  db 12,$2F
  !a2
  !a2
  !a2
  !a2
  !a2
  !a2
  !a2
  db 12,$7F
  !e3
  !end

.sub2D1A
  db 12,$2F
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  db 12,$7F
  !a3
  db 12,$2F
  !b2
  !b2
  !b2
  !b2
  !b2
  !b2
  !b2
  db 12,$7F
  !f3
  db 12,$2F
  !a2
  !a2
  !a2
  !a2
  !a2
  !a2
  !a2
  db 12,$7F
  !e3
  db 12,$2F
  !f2
  !f2
  !f2
  !f2
  !f2
  !f2
  !f2
  db 12,$7F
  !c3
  !end

.sub2D4B
  db 24
  !c3
  db 12
  !rest
  db 24
  !c3
  !c3
  db 12
  !c3
  !end

.sub2D55
  db 24
  !f2
  db 12
  !rest
  db 24
  !f2
  !f2
  db 12
  !f2
  !end

.sub2D5F
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr08-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr09-!instr05)
  db 12
  %percNote(!instr09-!instr05)
  !end

.sub2D67
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr08-!instr05)
  %percNote(!instr05-!instr05)
  !instr,!instr06
  !slideIn,0,6,252
  !pan,9
  db 12
  !c5
  !pan,11
  !g4
  !pan,13
  !d4
  !pan,10
  !endSlide
  !end

.sub2D7F
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 6,$75
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6,$7F
  %percNote(!instr05-!instr05)
  db 6,$75
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6,$7F
  %percNote(!instr05-!instr05)
  db 6,$75
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6,$7F
  %percNote(!instr05-!instr05)
  db 6,$75
  %percNote(!instr07-!instr05)
  !end

.sub2D9F
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr08-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  db 36
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr08-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  !end

.sub2DAE
  %percNote(!instr09-!instr05)
  db 24
  %percNote(!instr08-!instr05)
  db 24,$7B
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr09-!instr05)
  %percNote(!instr09-!instr05)
  %percNote(!instr09-!instr05)
  %percNote(!instr09-!instr05)
  db 24
  %percNote(!instr08-!instr05)
  db 24,$7B
  %percNote(!instr08-!instr05)
  db 24,$7F
  %percNote(!instr09-!instr05)
  db 12
  %percNote(!instr09-!instr05)
  !end

.sub2DC5
  db 12,$75
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  !instr,!instr09
  db 6,$7F
  !c7
  !c7
  db 12
  %percNote(!instr09-!instr05)
  db 6,$75
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  !instr,!instr09
  db 6,$7F
  !c7
  !c7
  !end

.sub2DF6
  db 12,$79
  !a4
  db 12,$7F
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !end

.sub2E03
  db 12,$79
  !b4
  db 12,$7F
  !b4
  !b4
  !b4
  !b4
  !b4
  !d5
  !b4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  db 12,$79
  !a4
  db 12,$7F
  !f4
  !f4
  !f4
  !f4
  !f4
  !f4
  !f4
  db 12,$79
  !f4
  db 12,$7F
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !end

.sub2E30
  db 12
  !rest
  db 6
  !rest
  !rest
  db 12
  !rest
  db 6
  %percNote(!instr07-!instr05)
  !rest
  db 12
  !rest
  db 6
  %percNote(!instr07-!instr05)
  !rest
  db 12
  !rest
  db 6
  %percNote(!instr07-!instr05)
  !rest
  !end

.sub2E45
  !a5
  !a5
  db 12,$79
  !a5
  db 12,$7F
  !a5
  db 12,$79
  !a5
  db 12,$7F
  !a5
  db 12,$79
  !a5
  db 12,$7F
  !a5
  !end

.sub2E5A
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12
  %percNote(!instr07-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  !end

.sub2E6F
  !pan,15
  db 3,$7F
  !a6
  !pan,10
  db 3,$79
  !e7
  db 3,$7F
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !pan,15
  db 3,$7F
  !a6
  !pan,10
  db 3,$79
  !e7
  db 3,$7F
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !pan,15
  db 3,$7F
  !a6
  !pan,10
  db 3,$79
  !e7
  db 3,$7F
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !pan,15
  db 3,$7F
  !a6
  !pan,10
  db 3,$79
  !e7
  db 3,$7F
  !b6
  !pan,15
  db 3,$79
  !a6
  !pan,5
  db 3,$7F
  !d7
  !pan,10
  db 3,$79
  !b6
  db 3,$7F
  !e7
  !pan,5
  db 3,$79
  !d7
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
