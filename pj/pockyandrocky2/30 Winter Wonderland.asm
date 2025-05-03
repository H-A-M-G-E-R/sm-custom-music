asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr03 = $19
!instr05 = $1A
!instr06 = $1B
!instr07 = $1C
!instr08 = $1D
!instr09 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$EB,$B8,$01,$C0
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$FF,$EC,$B8,$02,$40
  db !instr03,$FF,$F6,$B8,$04,$00
  db !instr05,$FF,$F2,$B8,$03,$30
  db !instr06,$8F,$E0,$B8,$07,$A0
  db !instr07,$FF,$E0,$B8,$04,$B0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr09,$8F,$E0,$B8,$03,$F0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1917
  dw Sample01,Sample01+153
  dw Sample02,Sample02+1386
  dw Sample03_04,Sample03_04+2421
  dw Sample05,Sample05+1791
  dw Sample06,Sample06+1116
  dw Sample07,Sample07+1773
  dw Sample08,Sample08+522
  dw Sample09,Sample09+1782
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_78d4418a22588a299a724b5a7fc922a7.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_69ccba18c0744e2d4f5b892690ea0fa2.brr"
  Sample03_04: incbin "Sample_ad13fd1d1be59b4022dd8f5a20195d63.brr"
  Sample05: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample06: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample07: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample08: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"
  Sample09: incbin "Sample_598a5e5565155fbc911d460e5c6c7419.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2402

Tracker2402:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr06
  !tempo,25
  !musicVolume,255
  !instr,!instr00
  !volume,166
  !subtranspose,28
  !vibrato,24,36,48
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$7A
  !g5
  db 6,$73
  !g5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$7B
  !e6
  db 6,$73
  !e6
  db 12,$7C
  !e6
  db 3,$73
  !e6
  db 3,$77
  !a5
  db 3,$78
  !b5
  db 3,$7A
  !c6
  db 12,$7C
  !d6
  db 6,$78
  !c6
  !b5
  !a5
  db 6,$73
  !a5
  db 6,$79
  !g5
  db 6,$73
  !g5
  db 24,$7A
  !a5
  !e5
  db 6
  !a5
  db 6,$73
  !a5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$7A
  !g5
  db 6,$73
  !g5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$7B
  !e6
  db 6,$73
  !e6
  db 12,$7C
  !e6
  db 3,$73
  !e6
  db 3,$77
  !a5
  db 3,$78
  !b5
  db 3,$7A
  !c6
  db 12,$7C
  !d6
  db 6,$78
  !c6
  !b5
  !a5
  db 6,$73
  !a5
  db 6,$79
  !g5
  db 6,$73
  !g5
  db 48,$79
  !a5
  !pitchSlide,12,12 : !a6
  !end

.pattern0_1
  !instr,!instr05
  !volume,104
  !pan,5
  !subtranspose,54
  db 24
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 24
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !d6
  db 6,$75
  !d6
  db 12
  !rest
  db 6,$7F
  !b5
  db 6,$75
  !b5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 12
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 24
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 12
  !rest
  db 6,$7F
  !b5
  db 6,$75
  !b5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 12
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5

.pattern0_2
  !instr,!instr01
  !volume,187
  db 36,$29
  !a3
  db 12
  !a3
  db 36,$4A
  !f3
  db 9
  !f3
  db 3
  !rest
  db 36,$59
  !g3
  db 7,$69
  !g3
  db 5
  !rest
  db 24,$59
  !a3
  db 24,$78
  !a4
  db 18,$79
  !a3
  !rest
  db 12,$29
  !a3
  db 36,$4A
  !f3
  db 9
  !f3
  db 3
  !rest
  db 36,$59
  !g3
  db 7,$69
  !g3
  db 5
  !rest
  db 24,$59
  !a3
  db 24,$78
  !a4

.pattern0_3
  !volume,198
  !transpose,253
  db 24,$7F
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  !loop : dw .sub3008 : db 2
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)

.pattern0_4
  !instr,!instr03
  !volume,146
  !pan,15
  db 12,$0A
  !a6
  db 12,$09
  !a6
  db 12,$0A
  !a6
  db 12,$09
  !g6
  db 12,$0A
  !a6
  db 12,$0B
  !e7
  db 15,$0C
  !e7
  db 3,$77
  !a6
  db 2,$78
  !b6
  db 1
  !rest
  db 3,$7A
  !c7
  db 4,$7B
  !d7
  db 8
  !rest
  db 6,$59
  !c7
  db 4,$78
  !b6
  db 2
  !rest
  db 12,$09
  !a6
  db 12,$0A
  !g6
  db 24,$2A
  !a6
  db 24,$4A
  !e6
  db 4,$5A
  !a6
  db 8
  !rest
  db 12,$09
  !a6
  !a6
  db 12,$08
  !g6
  db 12,$0A
  !a6
  db 12,$0B
  !e7
  db 15,$2B
  !e7
  db 3,$77
  !a6
  db 2,$78
  !b6
  db 1
  !rest
  db 3,$7A
  !c7
  db 3,$7B
  !d7
  db 9
  !rest
  db 6,$29
  !c7
  !b6
  db 6,$28
  !a6
  !rest
  db 12,$0A
  !g6
  db 16
  !a6
  db 8
  !rest
  db 24,$0C
  !a7

.pattern0_5
  !instr,!instr05
  !volume,104
  !pan,7
  !subtranspose,54
  db 24
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 24
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 12
  !rest
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 24
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 12
  !rest
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5

.pattern0_7
  !volume,198
  db 12,$75
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  !loop : dw .sub3012 : db 3

.pattern1_0
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$79
  !a5
  db 6,$73
  !a5
  db 6,$79
  !a5
  db 6,$73
  !a5
  db 6,$7A
  !g5
  db 6,$73
  !g5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 36
  !rest
  db 6,$7B
  !a5
  db 6,$73
  !a5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$79
  !a5
  db 6,$73
  !a5
  db 6,$79
  !g5
  db 6,$73
  !g5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 36
  !rest
  db 6,$7B
  !c6
  db 6,$73
  !c6
  db 6,$79
  !c6
  db 6,$73
  !c6
  db 6,$79
  !c6
  db 6,$73
  !c6
  db 6,$7A
  !c6
  db 6,$73
  !c6
  db 6,$7B
  !b5
  db 6,$73
  !b5
  db 12
  !rest
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$79
  !g5
  db 6,$73
  !g5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 36
  !rest
  db 6,$7A
  !e5
  db 6,$73
  !e5
  db 36
  !rest
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$79
  !a5
  db 6,$73
  !a5
  db 6,$79
  !a5
  db 6,$73
  !a5
  db 6,$79
  !g5
  db 6,$73
  !g5
  db 6,$79
  !a5
  db 6,$73
  !a5
  db 36
  !rest
  db 6,$79
  !a5
  db 6,$73
  !a5
  db 6,$79
  !a5
  db 6,$73
  !a5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 6,$79
  !g5
  db 6,$73
  !g5
  db 6,$7A
  !a5
  db 6,$73
  !a5
  db 36
  !rest
  db 6,$7A
  !c6
  db 6,$73
  !c6
  db 6,$79
  !c6
  db 6,$73
  !c6
  db 6,$79
  !c6
  db 6,$73
  !c6
  db 6,$7A
  !c6
  db 6,$73
  !c6
  db 6,$7B
  !b5
  db 6,$73
  !b5
  db 6,$78
  !c6
  db 6,$7A
  !b5
  !a5
  db 6,$73
  !a5
  db 6,$7A
  !g5
  db 6,$73
  !g5
  db 36,$7B
  !a5
  db 6,$73
  !a5
  !rest
  db 12,$7A
  !a5
  db 6,$73
  !a5
  !rest
  db 12,$7A
  !a5
  db 6
  !c6
  db 6,$7B
  !d6
  db 72,$7C
  !e6
  db 12,$7B
  !e6
  db 6,$78
  !a6
  db 6,$79
  !g6
  db 72,$7A
  !a6
  db 24
  !a6
  db 72
  !g6
  db 24,$7C
  !b6
  db 72,$7A
  !e6
  db 12
  !a5
  db 6,$79
  !c6
  !d6
  db 66,$7B
  !e6
  db 6,$73
  !e6
  db 12,$7A
  !e6
  db 6,$79
  !a6
  !g6
  db 72
  !a6
  db 6,$73
  !a6
  !rest
  db 12,$79
  !a6
  db 30
  !g6
  db 6,$73
  !g6
  db 24,$7C
  !d7
  db 24,$7B
  !b6
  db 12,$7A
  !g6
  db 84,$79
  !a6
  db 4,$77
  !g6
  db 4,$78
  !a6
  db 4,$79
  !b6
  db 6,$7C
  !c7
  db 6,$73
  !c7
  db 6,$7A
  !c7
  db 6,$73
  !c7
  db 6,$7A
  !c7
  db 6,$73
  !c7
  db 6,$7B
  !d7
  db 6,$73
  !d7
  db 6,$7B
  !b6
  db 6,$73
  !b6
  db 6,$7A
  !g6
  db 6,$73
  !g6
  db 6,$7A
  !e6
  db 6,$73
  !e6
  db 6,$7A
  !g6
  db 6,$73
  !g6
  db 6,$7A
  !a6
  db 6,$73
  !a6
  db 6,$79
  !g6
  db 6,$73
  !g6
  db 6,$7A
  !a6
  db 6,$73
  !a6
  db 6,$7A
  !c7
  db 6,$73
  !c7
  db 30,$7A
  !a6
  db 6,$73
  !a6
  db 4,$77
  !g6
  db 4,$78
  !a6
  db 4,$79
  !b6
  db 6,$7B
  !c7
  db 6,$73
  !c7
  db 6,$7A
  !c7
  db 6,$73
  !c7
  db 6,$7A
  !c7
  db 6,$73
  !c7
  db 6,$7A
  !d7
  db 6,$73
  !d7
  db 6,$79
  !b6
  db 6,$73
  !b6
  db 6,$79
  !g6
  db 6,$73
  !g6
  db 6,$7A
  !e6
  db 6,$73
  !e6
  db 6,$79
  !g6
  db 6,$73
  !g6
  db 72,$79
  !a6
  db 12,$73
  !a6
  db 4,$77
  !g6
  db 4,$78
  !a6
  db 4,$79
  !b6
  db 6,$7B
  !c7
  db 6,$73
  !c7
  db 6,$7A
  !c7
  db 6,$73
  !c7
  db 6,$7A
  !c7
  db 6,$73
  !c7
  db 6,$79
  !d7
  db 6,$73
  !d7
  db 6,$7A
  !b6
  db 6,$73
  !b6
  db 6,$78
  !g6
  db 6,$73
  !g6
  db 6,$79
  !e6
  db 6,$73
  !e6
  db 6,$79
  !g6
  db 6,$73
  !g6
  db 6,$79
  !a6
  db 6,$73
  !a6
  db 6,$79
  !g6
  db 6,$73
  !g6
  db 6,$79
  !a6
  db 6,$73
  !a6
  db 6,$7A
  !c7
  db 6,$73
  !c7
  db 24,$7A
  !a6
  db 12,$73
  !a6
  db 6,$7A
  !a6
  db 6,$73
  !a6
  db 6,$7B
  !c7
  db 6,$73
  !c7
  db 6,$7A
  !c7
  db 6,$73
  !c7
  db 6,$7A
  !c7
  db 6,$73
  !c7
  db 6,$7A
  !d7
  db 6,$73
  !d7
  db 6,$79
  !b6
  db 6,$73
  !b6
  db 6,$79
  !g6
  db 6,$73
  !g6
  db 6,$7A
  !e6
  db 6,$73
  !e6
  db 6,$78
  !g6
  db 6,$73
  !g6
  db 78,$79
  !a6
  db 6,$73
  !a6
  db 12,$7A
  !g6
  db 90,$79
  !a6
  db 6,$73
  !a6
  !end

.pattern1_1
  !loop : dw .sub301B : db 2
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 12
  !rest
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 24
  !rest
  db 6,$7F
  !c6
  db 6,$75
  !c6
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 24
  !rest
  db 6,$7F
  !c6
  db 6,$75
  !c6
  db 6,$7F
  !c6
  db 6,$75
  !c6
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 12
  !rest
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  !a5
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$73
  !a5
  db 6,$7F
  !a5
  db 6,$73
  !a5
  db 6,$7F
  !a5
  db 6,$73
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  !a5
  !g5
  db 6,$73
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  !a5
  !c6
  db 6,$75
  !c6
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  !a5
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  !a5
  !c6
  db 6,$75
  !c6
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !d6
  db 6,$75
  !d6
  db 6,$7F
  !b5
  db 6,$75
  !b5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  !a5
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  !loop : dw .sub303A : db 1
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !c6
  db 6,$75
  !c6
  db 6,$7F
  !c6
  db 6,$75
  !c6
  db 6,$7F
  !a5
  db 6,$75
  !a5
  !loop : dw .sub303A : db 1
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5

.pattern1_2
  db 6,$79
  !a3
  db 30
  !rest
  db 12,$2A
  !a3
  db 24
  !a3
  db 12
  !rest
  db 12,$29
  !a3
  db 24,$2A
  !f3
  db 12
  !rest
  !f3
  db 24
  !f3
  db 12
  !rest
  db 12,$7A
  !f3
  db 12,$78
  !g3
  db 24
  !rest
  db 12,$29
  !g3
  db 24,$2A
  !g3
  db 12
  !rest
  db 12,$29
  !g3
  db 24,$2A
  !a3
  db 12
  !rest
  db 12,$29
  !a3
  db 24,$2A
  !a3
  db 12
  !rest
  db 12,$29
  !a3
  db 24,$2A
  !a3
  db 12
  !rest
  !a3
  db 24
  !a3
  db 12
  !rest
  db 12,$7A
  !a3
  !f3
  db 24
  !rest
  db 12,$2A
  !f3
  db 24
  !f3
  db 12
  !rest
  db 12,$7A
  !f3
  db 12,$79
  !g3
  db 24
  !rest
  db 12,$29
  !g3
  db 24,$2A
  !g3
  db 12
  !rest
  db 12,$28
  !g3
  db 24,$2A
  !a3
  db 12
  !rest
  db 12,$28
  !a3
  db 24,$2A
  !a3
  db 24,$5A
  !a3
  db 8
  !a3
  db 16
  !rest
  db 12,$78
  !a4
  db 6,$7A
  !a3
  db 18
  !rest
  db 24,$09
  !a3
  db 12,$79
  !a3
  db 6,$7A
  !f3
  db 18
  !rest
  db 12
  !f4
  db 6
  !f3
  db 18
  !rest
  db 24,$2A
  !f3
  db 12
  !f3
  db 12,$2B
  !g3
  !rest
  db 12,$7A
  !g4
  db 6
  !g3
  db 18
  !rest
  db 24,$0A
  !g3
  db 12,$79
  !g3
  db 6,$7A
  !a3
  db 18
  !rest
  db 12,$79
  !a4
  db 6,$7A
  !a3
  db 18
  !rest
  db 12,$2A
  !a3
  db 12,$29
  !a3
  !a3
  db 12,$2A
  !a3
  !rest
  db 12,$78
  !a4
  db 6,$7A
  !a3
  db 18
  !rest
  db 24,$09
  !a3
  db 12,$7A
  !a3
  db 6
  !f3
  db 18
  !rest
  db 12
  !f4
  db 12,$78
  !f3
  !rest
  db 24,$2B
  !f3
  db 12,$2A
  !f3
  db 24
  !g3
  db 12,$79
  !g4
  db 12,$7A
  !g3
  !rest
  db 24,$5A
  !g3
  db 12,$79
  !g3
  db 6,$7A
  !a3
  db 18
  !rest
  db 12,$78
  !a4
  db 18,$7A
  !a3
  db 6
  !rest
  db 12,$29
  !a3
  db 12,$28
  !a3
  db 12,$29
  !a3
  db 24,$2A
  !f3
  db 12
  !rest
  !f3
  db 24,$29
  !g3
  db 12
  !rest
  db 12,$7A
  !g3
  db 6
  !a3
  db 18
  !rest
  db 12,$79
  !a4
  db 6,$7A
  !a3
  db 18
  !rest
  db 12
  !a3
  db 12,$79
  !a4
  db 12,$78
  !a3
  db 12,$7B
  !f3
  db 24
  !rest
  db 12
  !f3
  db 12,$7A
  !g3
  db 24
  !rest
  db 12
  !g3
  db 6
  !a3
  db 18
  !rest
  db 12
  !a4
  db 6
  !a3
  db 18
  !rest
  db 24,$0A
  !a3
  db 12,$7A
  !a3
  db 12,$7B
  !f3
  db 24
  !rest
  db 12,$7A
  !f3
  !g3
  db 24
  !rest
  db 12,$79
  !g3
  db 6,$7A
  !a3
  db 18
  !rest
  db 12,$79
  !a4
  db 6,$7A
  !a3
  db 18
  !rest
  db 24,$09
  !a4
  db 12,$2A
  !a3
  db 24
  !f3
  db 12
  !rest
  !f3
  db 24
  !g3
  db 12
  !rest
  db 12,$79
  !g3
  db 6,$7A
  !a3
  db 18
  !rest
  db 12,$78
  !a4
  db 6,$7A
  !a3
  db 18
  !rest
  db 24,$0A
  !a3
  db 12,$29
  !a3
  db 12,$2A
  !a3
  !rest
  db 12,$78
  !a4
  db 6,$7A
  !a3
  db 18
  !rest
  db 24,$0A
  !a3
  db 6,$79
  !a3
  !rest

.pattern1_3
  db 24,$7F
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  !loop : dw .sub30C3 : db 1
  !loop : dw .sub30D7 : db 2
  !loop : dw .sub30C3 : db 1
  !loop : dw .sub30E2 : db 3
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  !loop : dw .sub30E2 : db 3
  !loop : dw .sub30ED : db 2
  !loop : dw .sub3114 : db 2

.pattern1_4
  !instr,!instr02
  !volume,125
  !subtranspose,10
  db 60,$77
  !a5
  db 12
  !g5
  !a5
  !g5
  !loop : dw .sub311F : db 1
  db 24
  !tie
  db 72
  !rest

.pattern1_5
  !loop : dw .sub31B4 : db 2
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 12
  !rest
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !b4
  db 6,$75
  !b4
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  !loop : dw .sub31D3 : db 2
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 12
  !rest
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !b4
  db 6,$75
  !b4
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  !e5
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  !e5
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  !loop : dw .sub31F6 : db 3
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  !e5
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  !loop : dw .sub3223 : db 4
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5

.pattern1_6
  !instr,!instr02
  !instr,!instr02
  !volume,83
  !pan,12
  !subtranspose,8
  db 12
  !rest
  db 60,$77
  !a5
  db 12
  !g5
  !a5
  !g5
  !loop : dw .sub311F : db 1
  db 24
  !tie
  db 48
  !rest
  db 12
  !rest

.pattern1_7
  db 12,$75
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr09-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  !loop : dw .sub3012 : db 3
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr09-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  !loop : dw .sub3012 : db 19

.sub3008
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  !end

.sub3012
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  !end

.sub301B
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 24
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  !end

.sub303A
  db 6,$7F
  !f5
  db 6,$75
  !f5
  db 6,$7F
  !f5
  db 6,$75
  !f5
  db 6,$7F
  !f5
  db 6,$75
  !f5
  db 6,$7F
  !f5
  db 6,$75
  !f5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 12
  !rest
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !f5
  db 6,$75
  !f5
  db 6,$7F
  !f5
  db 6,$75
  !f5
  db 6,$7F
  !f5
  db 6,$75
  !f5
  db 6,$7F
  !f5
  db 6,$75
  !f5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  !end

.sub30C3
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  !end

.sub30D7
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  !end

.sub30E2
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  !end

.sub30ED
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  !end

.sub3114
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  !end

.sub311F
  db 60,$76
  !a5
  db 12,$77
  !g5
  !a5
  !g5
  db 72
  !a5
  db 12
  !e5
  !g5
  db 96
  !a5
  db 72
  !a5
  db 12
  !c6
  db 12,$78
  !d6
  db 72,$77
  !e6
  db 24
  !a5
  db 36,$78
  !d6
  db 24
  !g6
  db 12
  !d6
  db 12,$77
  !c6
  !b5
  db 96
  !a5
  db 36
  !a6
  db 36,$79
  !e7
  db 24,$78
  !c7
  db 36
  !b6
  db 36,$77
  !a6
  db 24,$79
  !c7
  db 72,$77
  !b6
  db 24,$78
  !d7
  db 36
  !c7
  db 36,$77
  !b6
  db 24,$78
  !a6
  db 36,$77
  !a6
  db 36,$78
  !e7
  db 24
  !a7
  db 36
  !e7
  !c7
  db 24
  !e7
  db 36,$77
  !d7
  db 24,$78
  !b6
  db 24,$77
  !g6
  db 12
  !d6
  db 60
  !e6
  db 12,$79
  !a5
  db 12,$78
  !c6
  !e6
  db 48
  !f6
  !g6
  db 96
  !a6
  db 36
  !f6
  db 24,$7A
  !d7
  db 24,$79
  !b6
  db 12,$7A
  !g6
  db 36,$79
  !c7
  !b6
  db 24,$78
  !a6
  db 48,$79
  !f6
  !e7
  db 36,$7A
  !d7
  db 36,$79
  !c7
  db 24,$78
  !b6
  db 48,$7A
  !c7
  db 48,$79
  !b6
  db 96,$78
  !a6
  !end

.sub31B4
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 24
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  !end

.sub31D3
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 24
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  !end

.sub31F6
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  !e5
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  !end

.sub3223
  db 6,$7F
  !c5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !c5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 12
  !rest
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  db 6,$7F
  !e5
  db 6,$75
  !e5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
