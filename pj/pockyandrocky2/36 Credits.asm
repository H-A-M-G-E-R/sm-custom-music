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
  db !instr02,$87,$E0,$B8,$03,$00
  db !instr03,$F8,$E9,$B8,$03,$00
  db !instr04,$FF,$F2,$B8,$03,$30
  db !instr05,$FF,$EC,$B8,$02,$40
  db !instr06,$8F,$E0,$B8,$07,$A0
  db !instr07,$FF,$E0,$B8,$04,$B0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr09,$FF,$F6,$B8,$04,$90
  db !instr0A,$FF,$E0,$B8,$03,$C0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02_03,Sample02_03+27
  dw Sample02_03,Sample02_03+27
  dw Sample04,Sample04+1791
  dw Sample05,Sample05+1386
  dw Sample06,Sample06+1116
  dw Sample07,Sample07+1773
  dw Sample08,Sample08+522
  dw Sample09,Sample09+207
  dw Sample0A,Sample0A+1530
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02_03: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample04: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample05: incbin "Sample_69ccba18c0744e2d4f5b892690ea0fa2.brr"
  Sample06: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample07: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample08: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"
  Sample09: incbin "Sample_52321808d69bf220a373c01cbb04d19b.brr"
  Sample0A: incbin "Sample_c38c118110713ed94b98dc70871a6061.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2404

Tracker2404:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
-
  dw .pattern6
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, 0, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern6: dw 0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, .pattern6_6, .pattern6_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr06
  !musicVolume,255
  !tempo,21
  !instr,!instr05
  !volume,104
  !pan,10
  !subtranspose,10
  db 48,$7F
  !a6
  db 24
  !c7
  !a6
  !loop : dw .sub3013 : db 1
  db 96
  !g6
  !c7
  !tie
  !end

.pattern0_1
  db 18
  !rest
  !instr,!instr05
  !volume,73
  !subtranspose,18
  !pan,10
  db 48,$7F
  !a6
  db 24
  !c7
  !a6
  !loop : dw .sub3013 : db 1
  db 96
  !g6
  !c7
  db 78
  !tie

.pattern0_2
  !instr,!instr03
  !volume,94
  !subtranspose,29
  db 96,$7F
  !ds6
  !loop : dw .sub302F : db 1
  db 96
  !c7
  !tie

.pattern0_3
  !instr,!instr03
  !volume,94
  !pan,13
  !subtranspose,29
  db 96,$7F
  !c6
  db 48
  !b5
  !b5
  db 96
  !as5
  !a5
  !c6
  db 48
  !b5
  !b5
  db 96
  !gs5
  db 48
  !c6
  !e6
  db 96
  !g6
  !tie

.pattern0_4
  !instr,!instr03
  !volume,94
  !pan,7
  !subtranspose,29
  db 96,$7F
  !a5
  !loop : dw .sub303F : db 1
  db 96
  !e6
  !tie

.pattern0_5
  !instr,!instr03
  !volume,187
  !subtranspose,29
  db 96,$7F
  !ds3
  !d3
  !cs3
  !c3
  !ds3
  !d3
  !cs3
  !c3
  !c3
  !tie

.pattern0_6
  !volume,229
  db 96
  !rest
  !loop : dw .sub304F : db 4
  db 24
  !rest
  !rest
  !rest
  !rest

.pattern0_7
  !volume,229
  db 36,$7F
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 48
  %percNote(!instr06-!instr06)
  !loop : dw .sub305F : db 8
  db 36
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  db 7,$7D
  %percNote(!instr0A-!instr06)
  db 5,$7B
  %percNote(!instr07-!instr06)
  db 7,$7D
  %percNote(!instr0A-!instr06)
  db 5,$7F
  %percNote(!instr07-!instr06)

.pattern1_0
  db 48
  !rest
  !rest
  db 96
  !rest
  !rest
  db 48
  !rest
  !rest
  db 96
  !rest
  !rest
  db 48
  !rest
  !rest
  db 72
  !rest
  !instr,!instr00
  !volume,114
  !pan,10
  !vibrato,24,30,128
  db 24,$7F
  !c5
  !end

.pattern1_2
  !instr,!instr03
  !volume,114
  !pan,10
  !subtranspose,29
  db 96,$7F
  !a5
  !a5
  !a5
  db 48
  !as5
  db 24
  !c6
  !as5
  db 96
  !a5
  !a5
  !a5
  db 48
  !as5
  db 24
  !c6
  !as5

.pattern1_3
  !instr,!instr03
  !volume,114
  !pan,11
  !subtranspose,29
  db 96,$7F
  !e5
  !f5
  !f5
  db 48
  !f5
  db 24
  !g5
  !f5
  db 96
  !e5
  !f5
  !f5
  db 48
  !f5
  db 24
  !g5
  !f5

.pattern1_4
  !instr,!instr03
  !volume,114
  !pan,9
  !subtranspose,29
  db 96,$7F
  !c5
  !d5
  !d5
  db 48
  !d5
  db 24
  !d5
  !d5
  db 96
  !c5
  !d5
  !d5
  db 48
  !d5
  db 24
  !d5
  !d5

.pattern1_5
  !instr,!instr01
  !volume,166
  !pan,10
  !subtranspose,0
  db 12,$7F
  !f3
  db 31
  !rest
  db 5
  !c3
  db 7
  !f3
  db 5
  !d3
  db 7
  !f3
  db 29
  !rest
  db 12
  !f3
  db 31
  !rest
  db 5
  !c3
  db 7
  !f3
  db 5
  !rest
  db 7
  !g3
  db 5
  !rest
  db 7
  !a3
  db 5
  !g3
  db 12
  !c3
  !as3
  db 31
  !rest
  db 5
  !f3
  db 7
  !as3
  db 5
  !f3
  db 7
  !as3
  db 29
  !rest
  db 12
  !c4
  db 31
  !rest
  db 5
  !g3
  db 12
  !c4
  !c3
  !g3
  !c4
  !f3
  db 31
  !rest
  db 5
  !c3
  db 7
  !f3
  db 5
  !d3
  db 7
  !f3
  db 29
  !rest
  db 12
  !f3
  db 31
  !rest
  db 5
  !c4
  db 7
  !f4
  db 5
  !rest
  db 7
  !g4
  db 5
  !rest
  db 7
  !a4
  db 5
  !g4
  db 7
  !d4
  db 5
  !c4
  db 12
  !as3
  db 31
  !rest
  db 5
  !f3
  db 7
  !as3
  db 5
  !f3
  db 7
  !as3
  db 29
  !rest
  db 12
  !c4
  db 31
  !rest
  db 5
  !g3
  db 7
  !c4
  db 5
  !c5
  db 12
  !c4
  db 4
  !c5
  !a4
  !g4
  db 7
  !e4
  db 5
  !c4

.pattern1_6
  !volume,198
  !pan,10
  !subtranspose,0
  db 24,$7F
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 12,$7F
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 19
  !rest
  !loop : dw .sub3066 : db 3
  db 24
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 19
  !rest
  db 7
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 5,$79
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5,$7F
  %percNote(!instr07-!instr06)

.pattern1_7
  !volume,198
  !pan,10
  db 12,$79
  %percNote(!instr08-!instr06)
  db 24
  %percNote(!instr08-!instr06)
  db 7
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  db 12,$79
  %percNote(!instr08-!instr06)
  db 12,$7F
  %percNote(!instr0A-!instr06)
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  !loop : dw .sub308C : db 7

.pattern2_0
  db 24,$7F
  !f5
  !a5
  db 36
  !g5
  db 12
  !c5
  !loop : dw .sub30A9 : db 1
  db 78
  !f5
  db 18
  !rest
  !end

.pattern2_1
  !instr,!instr00
  !volume,73
  !pan,10
  !vibrato,24,30,128
  !subtranspose,8
  db 12,$7F
  !c5
  db 24
  !f5
  !a5
  db 36
  !g5
  db 12
  !c5
  !loop : dw .sub30A9 : db 1
  db 78
  !f5
  db 6
  !rest

.pattern2_2
  !instr,!instr03
  !volume,114
  !pan,10
  !subtranspose,29
  db 96,$7F
  !a5
  !tie
  !tie
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub30E9 : db 5

.pattern2_3
  !instr,!instr03
  !volume,114
  !pan,11
  !subtranspose,29
  db 96,$7F
  !e5
  !tie
  !tie
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub30E9 : db 5

.pattern2_4
  !instr,!instr03
  !volume,114
  !pan,9
  !subtranspose,29
  db 96,$7F
  !c5
  !tie
  !tie
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub30E9 : db 5

.pattern2_5
  db 12,$7F
  !f4
  db 31
  !rest
  db 5
  !c4
  db 7
  !e4
  db 5
  !c4
  db 7
  !e4
  db 29
  !rest
  db 12
  !d4
  db 31
  !rest
  db 5
  !a3
  db 7
  !c4
  db 5
  !a3
  db 7
  !c4
  db 29
  !rest
  db 12
  !as3
  db 31
  !rest
  db 5
  !as3
  db 7
  !c4
  db 5
  !rest
  db 7
  !d4
  db 5
  !rest
  db 7
  !e4
  db 5
  !d4
  db 12
  !c4
  !d4
  db 31
  !rest
  db 5
  !a3
  db 7
  !d4
  db 5
  !c4
  db 7
  !d4
  db 5
  !rest
  db 24
  !c4
  db 12
  !as3
  db 31
  !rest
  db 5
  !f3
  db 7
  !a3
  db 5
  !e3
  db 12
  !g3
  !a3
  !rest
  !as3
  db 31
  !rest
  db 5
  !f3
  db 7
  !a3
  db 5
  !e3
  db 12
  !g3
  !a3
  !rest
  !g3
  db 31
  !rest
  db 5
  !d3
  db 7
  !f3
  db 5
  !c3
  db 12
  !d3
  !f3
  !rest
  !as3
  db 31
  !rest
  db 5
  !as3
  db 7
  !c4
  db 5
  !as3
  db 12
  !g3
  db 7
  !c4
  db 5
  !rest
  db 12
  !e4
  !f4
  db 31
  !rest
  db 5
  !c4
  db 7
  !f4
  db 5
  !f5
  db 12
  !c4
  db 7
  !f5
  db 5
  !e5
  db 7
  !d4
  db 5
  !c4

.pattern2_6
  db 24,$7F
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 12,$7F
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 19
  !rest
  !loop : dw .sub3066 : db 3
  db 24
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 19
  !rest
  db 7
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 24,$7F
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 19
  !rest
  db 7
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 5,$79
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5,$7F
  %percNote(!instr07-!instr06)

.pattern2_7
  !loop : dw .sub308C : db 8
  db 12,$79
  %percNote(!instr08-!instr06)
  db 24
  %percNote(!instr08-!instr06)
  db 7
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  db 12,$79
  %percNote(!instr08-!instr06)
  db 12,$7F
  %percNote(!instr0A-!instr06)
  db 7
  %percNote(!instr0A-!instr06)
  db 5
  %percNote(!instr0A-!instr06)

.pattern3_0
  db 31,$7F
  !d5
  db 5,$75
  !d5
  db 7,$7F
  !f5
  db 5
  !g5
  db 24
  !a5
  !f5
  db 31
  !g5
  db 5,$75
  !g5
  db 7,$7F
  !a5
  db 5
  !c6
  db 24
  !d6
  !c6
  db 31
  !d6
  db 5,$75
  !d6
  db 7,$7F
  !f6
  db 5
  !g6
  db 24
  !a6
  !f6
  !e6
  !c6
  !a5
  !f5
  db 31
  !d5
  db 5,$75
  !d5
  db 7,$7F
  !f5
  db 5
  !g5
  db 24
  !a5
  !f5
  db 31
  !g5
  db 5,$75
  !g5
  db 7,$7F
  !a5
  db 5
  !c6
  db 24
  !d6
  !c6
  !d6
  db 12
  !f6
  !g6
  db 24
  !a6
  !f6
  db 60
  !g6
  db 12,$75
  !g6
  db 24,$7F
  !a6
  db 12
  !f6
  !g6
  !f6
  !d6
  !c6
  !d6
  !c6
  !a5
  !g5
  !f5
  !d5
  !f5
  db 48
  !f5
  db 30
  !tie
  db 18,$75
  !f5
  db 24,$7F
  !f5
  !g5
  !end

.pattern3_1
  !instr,!instr00
  !volume,104
  !pan,10
  !subtranspose,8
  !vibrato,24,30,128
  db 31,$7F
  !as4
  db 5,$75
  !as4
  db 7,$7F
  !d5
  db 5
  !e5
  db 24
  !f5
  !d5
  db 31
  !e5
  db 5,$75
  !e5
  db 7,$7F
  !e5
  db 5
  !g5
  db 24
  !a5
  !g5
  db 31
  !as5
  db 5,$75
  !as5
  db 7,$7F
  !d6
  db 5
  !e6
  db 24
  !f6
  !d6
  !c6
  !a5
  !f5
  !c5
  db 31
  !as4
  db 5,$75
  !as4
  db 7,$7F
  !d5
  db 5
  !e5
  db 24
  !f5
  !d5
  db 31
  !e5
  db 5,$75
  !e5
  db 7,$7F
  !e5
  db 5
  !g5
  db 24
  !a5
  !g5
  !as5
  db 12
  !d6
  !e6
  db 24
  !f6
  !d6
  db 60
  !e6
  db 18,$75
  !e6
  !rest
  db 96
  !rest
  !rest
  !rest

.pattern3_2
  !instr,!instr05
  !volume,104
  !subtranspose,10
  !transpose,12
  !pan,0
  !dynamicPan,96,20
  db 7,$2F
  !as5
  db 5
  !d6
  db 7
  !as6
  db 5
  !rest
  db 7,$2B
  !as5
  db 5
  !d6
  db 7
  !as6
  db 5
  !rest
  db 7,$27
  !as5
  db 5
  !d6
  db 7
  !as6
  db 5
  !rest
  db 7,$23
  !as5
  db 5
  !d6
  db 7
  !as6
  db 5
  !rest
  !loop : dw .sub2F83 : db 3
  !dynamicPan,96,0
  db 7,$2F
  !c6
  db 5
  !e6
  db 7
  !c7
  db 5
  !rest
  db 7,$2B
  !c6
  db 5
  !e6
  db 7
  !c7
  db 5
  !rest
  db 7,$27
  !c6
  db 5
  !e6
  db 7
  !c7
  db 5
  !rest
  db 7,$23
  !c6
  db 5
  !e6
  db 7
  !c7
  db 5
  !rest
  db 96
  !rest
  !rest
  !rest

.pattern3_3
  !instr,!instr02
  !volume,114
  !pan,11
  !subtranspose,29
  db 96,$7F
  !d5
  !e5
  db 72
  !f5
  db 24
  !g5
  db 96
  !e5
  !d5
  !e5
  !f5
  !g5
  db 48
  !f5
  db 24
  !e5
  !f5
  !f5
  !f5
  db 48
  !f5
  db 96
  !tie

.pattern3_4
  !instr,!instr02
  !volume,114
  !pan,9
  !subtranspose,29
  db 96,$7F
  !as4
  !c5
  db 72
  !d5
  db 24
  !d5
  db 96
  !c5
  !as4
  !c5
  !d5
  !e5
  db 48
  !d5
  db 24
  !c5
  !d5
  !d5
  !c5
  db 48
  !c5
  db 96
  !tie

.pattern3_5
  db 12,$7F
  !as3
  db 31
  !rest
  db 5
  !f3
  db 7
  !as3
  db 5
  !rest
  db 12
  !f3
  db 24
  !as3
  db 12
  !a3
  db 31
  !rest
  db 5
  !e3
  db 7
  !a3
  db 5
  !rest
  db 12
  !e3
  db 24
  !a3
  db 12
  !g3
  db 31
  !rest
  db 5
  !d3
  db 7
  !g3
  db 5
  !rest
  db 12
  !d3
  db 24
  !g3
  db 12
  !f3
  db 31
  !rest
  db 5
  !c3
  db 7
  !f3
  db 5
  !rest
  db 12
  !g3
  db 7
  !a3
  db 5
  !rest
  db 12
  !c4
  !as3
  db 31
  !rest
  db 5
  !f3
  db 7
  !as3
  db 5
  !rest
  db 12
  !f3
  db 24
  !as3
  db 12
  !a3
  db 31
  !rest
  db 5
  !e3
  db 7
  !a3
  db 5
  !rest
  db 12
  !e3
  db 24
  !a3
  db 12
  !g3
  db 31
  !rest
  db 5
  !d3
  db 12
  !g3
  !f3
  !g3
  !as3
  !c4
  db 31
  !rest
  db 5
  !g3
  db 7
  !c4
  db 5
  !rest
  db 12
  !g3
  db 24
  !c4
  db 12
  !as3
  db 31
  !rest
  db 5
  !as3
  db 7
  !a3
  db 5
  !a3
  db 12
  !c4
  db 7
  !d4
  db 5
  !rest
  db 12
  !a4
  db 7
  !g4
  db 5
  !rest
  db 12
  !g4
  db 7
  !c4
  db 5
  !rest
  db 12
  !c4
  !f4
  db 31
  !rest
  db 5
  !c4
  db 7
  !f4
  db 5
  !d4
  db 12
  !c4
  !a3
  !g3
  db 7
  !f4
  db 5
  !f5
  db 7
  !rest
  db 5
  !c4
  db 12
  !d4
  !e4

.pattern3_6
  db 24,$7F
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 12,$7F
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 19
  !rest
  !loop : dw .sub2FD2 : db 7
  db 24
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 12,$7F
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 12,$7F
  %percNote(!instr06-!instr06)
  %percNote(!instr0A-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 7
  !rest
  db 5
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5
  %percNote(!instr07-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 12,$7F
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 5,$7B
  %percNote(!instr07-!instr06)
  db 7
  !rest
  db 5,$7D
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5,$77
  %percNote(!instr07-!instr06)
  db 5,$7F
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5
  %percNote(!instr07-!instr06)

.pattern3_7
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  !transpose,14
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$75
  %percNote(!instr09-!instr06)
  !transpose,0
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  !transpose,14
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$75
  %percNote(!instr09-!instr06)
  !loop : dw .sub2FE4 : db 8
  !transpose,0
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  !transpose,14
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 7,$7F
  %percNote(!instr0A-!instr06)
  db 5
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$75
  %percNote(!instr09-!instr06)
  !transpose,0
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  !transpose,14
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$75
  %percNote(!instr09-!instr06)
  !transpose,0
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  !transpose,14
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$75
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  %percNote(!instr0A-!instr06)
  %percNote(!instr0A-!instr06)
  %percNote(!instr0A-!instr06)

.pattern4_0
  db 24,$7F
  !a5
  !c6
  db 31
  !g5
  db 5,$75
  !g5
  db 12,$7F
  !c5
  !loop : dw .sub3276 : db 1
  db 24
  !d5
  !f5
  !g5
  db 12
  !f5
  !g5
  db 24
  !a5
  !c6
  db 31
  !g5
  db 5,$75
  !g5
  db 12,$7F
  !c5
  !loop : dw .sub3276 : db 1
  db 24
  !d5
  !f5
  !g5
  !c6
  !end

.pattern4_1
  !instr,!instr04
  !volume,83
  !pan,11
  !subtranspose,54
  db 12
  !rest
  db 7,$7F
  !f6
  db 5
  !f6
  db 7,$75
  !f6
  db 5
  !f6
  db 12,$7F
  !f6
  db 12,$75
  !f6
  db 7,$7F
  !e6
  db 5
  !e6
  db 7,$75
  !e6
  db 5
  !e6
  db 12,$7F
  !e6
  !loop : dw .sub3288 : db 1
  db 12,$75
  !f6
  db 7,$7F
  !f6
  db 5
  !f6
  db 7,$75
  !f6
  db 5
  !f6
  db 12,$7F
  !f6
  db 12,$75
  !f6
  db 7,$7F
  !g6
  db 5
  !g6
  db 7,$75
  !g6
  db 5
  !g6
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 7,$7F
  !f6
  db 5
  !f6
  db 7,$75
  !f6
  db 5
  !f6
  db 12,$7F
  !f6
  db 12,$75
  !f6
  db 7,$7F
  !e6
  db 5
  !e6
  db 7,$75
  !e6
  db 5
  !e6
  db 12,$7F
  !e6
  !loop : dw .sub3288 : db 1
  db 12,$75
  !f6
  db 7,$7F
  !f6
  db 5
  !f6
  db 7,$75
  !f6
  db 5
  !f6
  db 12,$7F
  !f6
  db 12,$75
  !f6
  db 7,$7F
  !g6
  db 5
  !g6
  db 7,$75
  !g6
  db 5
  !g6
  db 12,$7F
  !c7

.pattern4_2
  !instr,!instr03
  !volume,114
  !pan,10
  !subtranspose,29
  !transpose,0
  db 48,$7F
  !a5
  !g5
  !f5
  !e5
  !f5
  !f5
  !f5
  !g5
  !a5
  !g5
  !f5
  !e5
  !f5
  !f5
  !f5
  !g5

.pattern4_3
  !instr,!instr03
  db 48,$7F
  !f5
  !e5
  !d5
  !cs5
  !c5
  !d5
  !d5
  !e5
  !f5
  !e5
  !d5
  !cs5
  !c5
  !d5
  db 24
  !d5
  !f5
  !g5
  !c6

.pattern4_4
  !instr,!instr03
  db 48,$7F
  !c5
  !c5
  !a4
  !a4
  !a4
  !b4
  !as4
  !c5
  !c5
  !c5
  !a4
  !a4
  !a4
  !b4
  db 24
  !as4
  !d5
  !e5
  !g5

.pattern4_5
  db 12,$7F
  !f4
  db 31
  !rest
  db 5
  !c4
  db 7
  !e4
  db 5
  !c4
  db 7
  !e4
  db 29
  !rest
  !loop : dw .sub32C9 : db 1
  !f4
  db 31
  !rest
  db 5
  !c4
  db 7
  !e4
  db 5
  !c4
  db 7
  !e4
  db 29
  !rest
  !loop : dw .sub32C9 : db 1

.pattern4_6
  !loop : dw .sub32FC : db 7
  db 12,$7F
  %percNote(!instr06-!instr06)
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5
  %percNote(!instr08-!instr06)
  db 5,$7F
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5,$75
  %percNote(!instr08-!instr06)
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  db 12,$7F
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 7
  !rest
  %percNote(!instr0A-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 7
  %percNote(!instr0A-!instr06)
  db 5
  %percNote(!instr07-!instr06)

.pattern4_7
  !instr,!instr04
  !volume,83
  !pan,9
  !subtranspose,54
  db 12
  !rest
  db 7,$7F
  !c6
  db 5
  !c6
  db 7,$75
  !c6
  db 5
  !c6
  db 12,$7F
  !c6
  db 12,$75
  !c6
  db 7,$7F
  !c6
  db 5
  !c6
  db 7,$75
  !c6
  db 5
  !c6
  db 12,$7F
  !c6
  !loop : dw .sub332D : db 1
  db 12,$75
  !d6
  db 7,$7F
  !d6
  db 5
  !d6
  db 7,$75
  !d6
  db 5
  !d6
  db 12,$7F
  !d6
  db 12,$75
  !d6
  db 7,$7F
  !e6
  db 5
  !e6
  db 7,$75
  !e6
  db 5
  !e6
  db 12,$7F
  !e6
  db 12,$75
  !e6
  db 7,$7F
  !c6
  db 5
  !c6
  db 7,$75
  !c6
  db 5
  !c6
  db 12,$7F
  !c6
  db 12,$75
  !c6
  db 7,$7F
  !c6
  db 5
  !c6
  db 7,$75
  !c6
  db 5
  !c6
  db 12,$7F
  !c6
  !loop : dw .sub332D : db 1
  db 12,$75
  !d6
  db 7,$7F
  !d6
  db 5
  !d6
  db 7,$75
  !d6
  db 5
  !d6
  db 12,$7F
  !d6
  db 12,$75
  !d6
  db 7,$7F
  !e6
  db 5
  !e6
  db 7,$75
  !e6
  db 5
  !e6
  db 12,$7F
  !g6

.pattern5_0
  !loop : dw .sub30EE : db 1
  db 72
  !g5
  db 18,$75
  !g5
  db 6
  !rest
  !loop : dw .sub30EE : db 1
  db 67
  !g5
  db 5,$75
  !g5
  db 4,$7F
  !as4
  !c5
  !d5
  !e5
  !f5
  !g5
  db 96
  !a5
  !dynamicVolume,96,0
  !tie
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub30E9 : db 5
  !end

.pattern5_1
  !subtranspose,0
  db 96
  !rest
  !loop : dw .sub3114 : db 15
  !instr,!instr05
  !volume,104
  !pan,10
  !subtranspose,10
  db 48,$7F
  !a6
  db 24
  !c7
  !a6
  !loop : dw .sub3013 : db 1
  db 96
  !g6

.pattern5_2
  !instr,!instr03
  !volume,104
  !subtranspose,29
  db 96,$7F
  !ds6
  !loop : dw .sub302F : db 1
  db 96
  !ds6
  !loop : dw .sub302F : db 1
  db 96
  !ds6
  !loop : dw .sub302F : db 1

.pattern5_3
  !instr,!instr03
  !volume,104
  !pan,13
  !subtranspose,29
  db 96,$7F
  !c6
  db 48
  !b5
  !b5
  db 96
  !as5
  !a5
  !c6
  db 48
  !b5
  !b5
  db 96
  !gs5
  db 48
  !c6
  !e6
  db 96
  !c6
  db 48
  !b5
  !b5
  db 96
  !as5
  !a5
  !c6
  db 48
  !b5
  !b5
  db 96
  !gs5
  db 48
  !c6
  !e6
  db 96
  !c6
  db 48
  !b5
  !b5
  db 96
  !as5
  !a5
  !c6
  db 48
  !b5
  !b5
  db 96
  !gs5
  db 48
  !c6
  !e6

.pattern5_4
  !instr,!instr03
  !volume,104
  !pan,7
  !subtranspose,29
  db 96,$7F
  !a5
  !loop : dw .sub303F : db 1
  db 96
  !a5
  !loop : dw .sub303F : db 1
  db 96
  !a5
  !loop : dw .sub303F : db 1

.pattern5_5
  db 12,$7F
  !ds4
  db 36
  !rest
  db 7
  !ds4
  db 5
  !rest
  db 7
  !ds4
  db 29
  !rest
  !loop : dw .sub3116 : db 1
  db 12
  !c4
  db 36
  !rest
  db 7
  !c4
  db 5
  !rest
  db 7
  !c4
  db 29
  !rest
  db 12
  !ds4
  db 36
  !rest
  db 7
  !ds4
  db 5
  !rest
  db 7
  !ds4
  db 29
  !rest
  !loop : dw .sub3116 : db 1
  db 12
  !c4
  db 36
  !rest
  db 7
  !c4
  db 5
  !rest
  db 7
  !c4
  db 5
  !rest
  db 7
  !c4
  db 5
  !d4
  db 12
  !e4
  !loop : dw .sub312F : db 1
  !loop : dw .sub3152 : db 1
  !loop : dw .sub312F : db 1
  !loop : dw .sub3175 : db 1
  !loop : dw .sub312F : db 1
  !loop : dw .sub3152 : db 1
  !loop : dw .sub312F : db 1
  !loop : dw .sub3175 : db 1

.pattern5_6
  db 48,$7F
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 36
  %percNote(!instr06-!instr06)
  !loop : dw .sub3198 : db 6
  db 48
  %percNote(!instr06-!instr06)
  db 7
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5
  %percNote(!instr07-!instr06)
  !loop : dw .sub319F : db 7
  db 12
  %percNote(!instr06-!instr06)
  db 5,$75
  %percNote(!instr07-!instr06)
  db 7
  !rest
  db 5,$7F
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 7,$7F
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 7
  !rest
  db 5
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5
  %percNote(!instr07-!instr06)
  !loop : dw .sub319F : db 7
  db 12
  %percNote(!instr06-!instr06)
  db 5,$75
  %percNote(!instr07-!instr06)
  db 7
  !rest
  db 5,$7F
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 7,$7F
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 7
  !rest
  db 5
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5
  %percNote(!instr07-!instr06)

.pattern5_7
  !volume,198
  !pan,10
  !transpose,14
  !subtranspose,0
  db 7,$74
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  !rest
  db 12,$74
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  db 7
  !rest
  db 5,$74
  %percNote(!instr09-!instr06)
  db 12
  %percNote(!instr09-!instr06)
  !loop : dw .sub31BA : db 4
  db 7,$76
  %percNote(!instr09-!instr06)
  db 5,$74
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  !rest
  db 12,$74
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  db 7
  !rest
  db 5,$74
  %percNote(!instr09-!instr06)
  db 12
  %percNote(!instr09-!instr06)
  !loop : dw .sub31BA : db 2
  !loop : dw .sub31D4 : db 8

.pattern6_1
  db 48,$7F
  !a6
  db 24
  !c7
  !a6
  !loop : dw .sub3013 : db 1
  db 96
  !g6
  !end

.pattern6_2
  db 96,$7F
  !ds6
  !loop : dw .sub302F : db 1

.pattern6_3
  db 96,$7F
  !c6
  db 48
  !b5
  !b5
  db 96
  !as5
  !a5
  !c6
  db 48
  !b5
  !b5
  db 96
  !gs5
  db 48
  !c6
  !e6

.pattern6_4
  db 96,$7F
  !a5
  !loop : dw .sub303F : db 1

.pattern6_5
  db 12,$7F
  !ds4
  !rest
  !c4
  db 7
  !rest
  db 12
  !ds4
  db 5
  !ds4
  db 12
  !c4
  db 7
  !ds4
  db 5
  !rest
  db 12
  !c4
  !d4
  !rest
  !b3
  db 7
  !rest
  db 12
  !d4
  db 5
  !d4
  db 12
  !b3
  db 7
  !d4
  db 5
  !rest
  db 12
  !b3
  !loop : dw .sub3152 : db 1
  !loop : dw .sub312F : db 1
  !loop : dw .sub3175 : db 1

.pattern6_6
  db 12,$7F
  %percNote(!instr06-!instr06)
  db 5,$75
  %percNote(!instr07-!instr06)
  db 7
  !rest
  db 5,$7F
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 7,$7F
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 19
  !rest
  !loop : dw .sub319F : db 6
  db 12
  %percNote(!instr06-!instr06)
  db 5,$75
  %percNote(!instr07-!instr06)
  db 7
  !rest
  db 5,$7F
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 7,$7F
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 7
  !rest
  db 5
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5
  %percNote(!instr07-!instr06)

.pattern6_7
  db 7,$75
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$75
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 7,$79
  %percNote(!instr09-!instr06)
  db 5,$75
  %percNote(!instr09-!instr06)
  !transpose,0
  db 7,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 5,$75
  %percNote(!instr09-!instr06)
  db 12
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$75
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  !transpose,0
  db 5,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 7,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 5,$75
  %percNote(!instr09-!instr06)
  db 12
  %percNote(!instr09-!instr06)
  !loop : dw .sub3225 : db 3

.sub3013
  !g6
  !a6
  db 48
  !f6
  db 24
  !f6
  !g6
  !f6
  !g6
  db 72
  !a6
  db 12
  !f6
  !g6
  db 48
  !a6
  db 24
  !c7
  !a6
  !g6
  !a6
  !f6
  !c6
  !cs6
  !f6
  !g6
  !c7
  !end

.sub302F
  db 48
  !d6
  !d6
  db 96
  !cs6
  !c6
  !ds6
  db 48
  !d6
  !d6
  db 96
  !cs6
  db 48
  !e6
  !g6
  !end

.sub303F
  db 48
  !g5
  !f5
  db 96
  !f5
  !e5
  !a5
  db 48
  !g5
  !f5
  db 96
  !f5
  db 48
  !g5
  !c6
  !end

.sub304F
  db 72
  !rest
  db 10,$7F
  %percNote(!instr09-!instr06)
  db 10,$77
  %percNote(!instr09-!instr06)
  db 4,$72
  %percNote(!instr09-!instr06)
  db 6
  !tie
  db 90
  !rest
  !end

.sub305F
  db 36
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 48
  %percNote(!instr06-!instr06)
  !end

.sub3066
  db 24
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 19
  !rest
  db 7
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 24,$7F
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 12,$7F
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 19
  !rest
  !end

.sub308C
  db 12,$79
  %percNote(!instr08-!instr06)
  db 24
  %percNote(!instr08-!instr06)
  db 7
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  db 12,$79
  %percNote(!instr08-!instr06)
  db 12,$7F
  %percNote(!instr0A-!instr06)
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  !end

.sub30A9
  !f5
  !g5
  !a5
  !a5
  db 24
  !g5
  !c5
  !d5
  !f5
  !g5
  !c6
  db 66
  !a5
  db 6
  !rest
  db 24
  !c6
  db 12
  !d6
  !f6
  !d6
  !a5
  !c6
  db 7
  !d6
  db 5
  !rest
  db 7
  !d6
  db 17
  !rest
  db 12
  !d6
  !f6
  !d6
  !a5
  !c6
  db 7
  !d6
  db 5
  !rest
  db 7
  !d6
  db 5
  !rest
  db 12
  !a5
  !g5
  !a5
  !c6
  !d6
  !c6
  !a5
  !g5
  !f5
  db 24
  !d5
  !f5
  db 12
  !g5
  !a5
  !f5
  !d5
  !end

.sub30E9
  !rest
  !rest
  !rest
  !rest
  !end

.sub2F83
  !dynamicPan,96,0
  db 7,$2F
  !a5
  db 5
  !c6
  db 7
  !a6
  db 5
  !rest
  db 7,$2B
  !a5
  db 5
  !c6
  db 7
  !a6
  db 5
  !rest
  db 7,$27
  !a5
  db 5
  !c6
  db 7
  !a6
  db 5
  !rest
  db 7,$23
  !a5
  db 5
  !c6
  db 7
  !a6
  db 5
  !rest
  !dynamicPan,96,20
  db 7,$2F
  !as5
  db 5
  !d6
  db 7
  !as6
  db 5
  !rest
  db 7,$2B
  !as5
  db 5
  !d6
  db 7
  !as6
  db 5
  !rest
  db 7,$27
  !as5
  db 5
  !d6
  db 7
  !as6
  db 5
  !rest
  db 7,$23
  !as5
  db 5
  !d6
  db 7
  !as6
  db 5
  !rest
  !end

.sub2FD2
  db 24
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 12,$7F
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 19
  !rest
  !end

.sub2FE4
  !transpose,0
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  !transpose,14
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$75
  %percNote(!instr09-!instr06)
  !transpose,0
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  !transpose,14
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$75
  %percNote(!instr09-!instr06)
  !end

.sub3276
  db 24
  !f5
  !a5
  db 43
  !e5
  db 5,$75
  !e5
  db 24,$7F
  !f5
  !a5
  db 12
  !g5
  !f5
  !d5
  !c5
  !end

.sub3288
  db 12,$75
  !e6
  db 7,$7F
  !f6
  db 5
  !f6
  db 7,$75
  !f6
  db 5
  !f6
  db 12,$7F
  !f6
  db 12,$75
  !f6
  db 7,$7F
  !e6
  db 5
  !e6
  db 7,$75
  !e6
  db 5
  !e6
  db 12,$7F
  !e6
  db 12,$75
  !e6
  db 7,$7F
  !f6
  db 5
  !f6
  db 7,$75
  !f6
  db 5
  !f6
  db 12,$7F
  !f6
  db 12,$75
  !f6
  db 7,$7F
  !f6
  db 5
  !f6
  db 7,$75
  !f6
  db 5
  !f6
  db 12,$7F
  !f6
  !end

.sub32C9
  db 12
  !d4
  db 31
  !rest
  db 5
  !a3
  db 7
  !cs4
  db 5
  !a3
  db 7
  !cs4
  db 29
  !rest
  db 12
  !c4
  db 31
  !rest
  db 5
  !g3
  db 7
  !b3
  db 5
  !rest
  db 7
  !d4
  db 5
  !rest
  db 7
  !f4
  db 5
  !rest
  db 7
  !b3
  db 5
  !rest
  db 12
  !as3
  db 31
  !rest
  db 5
  !as3
  db 7
  !c4
  db 5
  !c4
  db 12
  !c4
  !d4
  !e4
  !end

.sub32FC
  db 12,$7F
  %percNote(!instr06-!instr06)
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5
  %percNote(!instr08-!instr06)
  db 5,$7F
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5,$75
  %percNote(!instr08-!instr06)
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  db 7,$7F
  %percNote(!instr06-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  db 7,$7F
  %percNote(!instr06-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  db 5,$7F
  %percNote(!instr07-!instr06)
  db 2
  !rest
  db 5,$75
  %percNote(!instr08-!instr06)
  db 7,$79
  %percNote(!instr08-!instr06)
  db 5,$75
  %percNote(!instr08-!instr06)
  !end

.sub332D
  db 12,$75
  !c6
  db 7,$7F
  !d6
  db 5
  !d6
  db 7,$75
  !d6
  db 5
  !d6
  db 12,$7F
  !d6
  db 12,$75
  !d6
  db 7,$7F
  !cs6
  db 5
  !cs6
  db 7,$75
  !cs6
  db 5
  !cs6
  db 12,$7F
  !cs6
  db 12,$75
  !cs6
  db 7,$7F
  !c6
  db 5
  !c6
  db 7,$75
  !c6
  db 5
  !c6
  db 12,$7F
  !c6
  db 12,$75
  !c6
  db 7,$7F
  !d6
  db 5
  !d6
  db 7,$75
  !d6
  db 5
  !d6
  db 12,$7F
  !d6
  !end

.sub30EE
  db 48,$7F
  !a5
  db 24
  !c6
  !a5
  !g5
  !a5
  db 48
  !f5
  db 24
  !f5
  !g5
  !f5
  !g5
  db 67
  !a5
  db 5,$75
  !a5
  db 12,$7F
  !f5
  !g5
  db 48
  !a5
  db 24
  !c6
  !a5
  !g5
  !a5
  !f5
  !c5
  !cs5
  !f5
  !g5
  !c6
  !end

.sub3114
  !rest
  !end

.sub3116
  db 12
  !d4
  db 36
  !rest
  db 7
  !d4
  db 5
  !rest
  db 7
  !d4
  db 29
  !rest
  db 12
  !cs4
  db 36
  !rest
  db 7
  !cs4
  db 5
  !rest
  db 7
  !cs4
  db 29
  !rest
  !end

.sub312F
  !ds4
  !rest
  !c4
  db 7
  !rest
  db 12
  !ds4
  db 5
  !ds4
  db 12
  !c4
  db 7
  !ds4
  db 5
  !rest
  db 12
  !c4
  !d4
  !rest
  !b3
  db 7
  !rest
  db 12
  !d4
  db 5
  !d4
  db 12
  !b3
  db 7
  !d4
  db 5
  !rest
  db 12
  !b3
  !end

.sub3152
  !cs4
  !rest
  !as3
  db 7
  !rest
  db 12
  !cs4
  db 5
  !cs4
  db 12
  !as3
  db 7
  !cs4
  db 5
  !rest
  db 12
  !as3
  !c4
  !rest
  !a3
  db 7
  !rest
  db 12
  !c4
  db 5
  !c4
  db 12
  !a3
  db 7
  !c4
  db 5
  !rest
  db 12
  !a3
  !end

.sub3175
  !cs4
  !rest
  !gs3
  db 7
  !rest
  db 12
  !cs4
  db 5
  !cs4
  db 12
  !gs3
  db 7
  !cs4
  db 5
  !rest
  db 12
  !gs3
  !c4
  !rest
  !g3
  db 7
  !rest
  db 12
  !c4
  db 5
  !g3
  db 12
  !c4
  db 7
  !d4
  db 5
  !rest
  db 12
  !e4
  !end

.sub3198
  db 48
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 36
  %percNote(!instr06-!instr06)
  !end

.sub319F
  db 12
  %percNote(!instr06-!instr06)
  db 5,$75
  %percNote(!instr07-!instr06)
  db 7
  !rest
  db 5,$7F
  %percNote(!instr07-!instr06)
  db 14
  !rest
  db 5,$75
  %percNote(!instr07-!instr06)
  db 7,$7F
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 5
  %percNote(!instr07-!instr06)
  db 19
  !rest
  !end

.sub31BA
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  !rest
  db 12,$74
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  db 7
  !rest
  db 5,$74
  %percNote(!instr09-!instr06)
  db 12
  %percNote(!instr09-!instr06)
  !end

.sub31D4
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$74
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 7,$79
  %percNote(!instr09-!instr06)
  db 5,$74
  %percNote(!instr09-!instr06)
  !transpose,0
  db 7,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 5,$74
  %percNote(!instr09-!instr06)
  db 12
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$74
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  !transpose,0
  db 5,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 7,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 5,$74
  %percNote(!instr09-!instr06)
  db 12
  %percNote(!instr09-!instr06)
  !end

.sub3225
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$75
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 7,$79
  %percNote(!instr09-!instr06)
  db 5,$75
  %percNote(!instr09-!instr06)
  !transpose,0
  db 7,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 5,$75
  %percNote(!instr09-!instr06)
  db 12
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  db 5
  %percNote(!instr09-!instr06)
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 12,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$75
  %percNote(!instr09-!instr06)
  db 7
  %percNote(!instr09-!instr06)
  !transpose,0
  db 5,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 12,$79
  %percNote(!instr09-!instr06)
  !transpose,0
  db 7,$7F
  %percNote(!instr0A-!instr06)
  !transpose,14
  db 5,$75
  %percNote(!instr09-!instr06)
  db 12
  %percNote(!instr09-!instr06)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
