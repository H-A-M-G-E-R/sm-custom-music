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
!instr0A = $1F
!instr0B = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$8F,$EB,$B8,$02,$40
  db !instr01,$FF,$E0,$B8,$02,$40
  db !instr02,$8F,$EE,$B8,$07,$F0
  db !instr03,$FF,$E0,$B8,$04,$00
  db !instr04,$FF,$F2,$B8,$03,$30
  db !instr05,$FF,$EC,$B8,$02,$40
  db !instr06,$8F,$E0,$B8,$07,$A0
  db !instr07,$FF,$E0,$B8,$03,$C0
  db !instr08,$FF,$F4,$B8,$03,$90
  db !instr0A,$FF,$E0,$B8,$02,$E0
  db !instr0B,$FF,$E0,$B8,$01,$20
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+801
  dw Sample00_01,Sample00_01+801
  dw Sample02,Sample02+153
  dw Sample03,Sample03+27
  dw Sample04,Sample04+1791
  dw Sample05,Sample05+1386
  dw Sample06,Sample06+1116
  dw Sample07,Sample07+1530
  dw Sample08,Sample08+1152
  dw Sample0A,Sample0A+747
  dw Sample0B,Sample0B+486
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample02: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample03: incbin "Sample_15a53ed7e5bc11650bb7ad55ce820e86.brr"
  Sample04: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample05: incbin "Sample_69ccba18c0744e2d4f5b892690ea0fa2.brr"
  Sample06: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample07: incbin "Sample_c38c118110713ed94b98dc70871a6061.brr"
  Sample08: incbin "Sample_902a1cfa6206b16ff325e6df14f7c7d7.brr"
  Sample0A: incbin "Sample_f11465da9596fdc355f0f3ef8ee79676.brr"
  Sample0B: incbin "Sample_0d959324dbd4ad3bae023b4e0eb99cb7.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2402

Tracker2402:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, .pattern0_2, .pattern0_3, 0, 0, .pattern0_6, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr06
  !musicVolume,255
  !tempo,34
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.pattern0_2
  !instr,!instr02
  !volume,166
  db 24,$6D
  !cs4
  !e4
  !gs4
  db 24,$6D
  !g4
  db 24,$6D
  !fs4

.pattern0_3
  !volume,198
  db 56,$7C
  %percNote(!instr06-!instr06)
  db 8
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 8,$7C
  !g4
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 8,$7F
  %percNote(!instr07-!instr06)
  db 16,$7C
  %percNote(!instr06-!instr06)
  db 8,$7F
  %percNote(!instr07-!instr06)

.pattern0_6
  !volume,198
  db 16
  !rest
  db 8,$7E
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 16,$7E
  !g4
  db 40,$7E
  !c5
  db 8,$7E
  !g4
  db 16,$7D
  !c5
  db 16,$7E
  %percNote(!instr0A-!instr06)

.pattern1_0
  !instr,!instr05
  !volume,125
  !pan,8
  !transpose,12
  db 120,$7A
  !gs5
  db 120,$7B
  !cs5
  db 120,$7A
  !e5
  db 88,$7A
  !ds5
  db 24,$79
  !b4
  db 8,$7B
  !cs5
  db 120
  !tie
  db 120,$68
  !tie
  db 16
  !rest
  db 24,$07
  !cs6
  db 40,$07
  !cs6
  db 40,$07
  !cs6
  db 16
  !rest
  db 24,$07
  !cs6
  db 24,$19
  !cs6
  db 24,$39
  !e6
  db 32,$08
  !cs6
  db 120,$7A
  !gs5
  db 120,$7B
  !b5
  db 120,$7A
  !as5
  db 88,$7A
  !fs5
  db 24,$79
  !as5
  db 8,$7B
  !gs5
  db 120
  !tie
  !tie
  db 16
  !rest
  db 24,$08
  !gs5
  db 40,$09
  !gs5
  !gs5
  db 16
  !rest
  db 24,$09
  !gs5
  db 24,$08
  !gs5
  db 24,$18
  !gs5
  db 24,$08
  !b5
  db 8,$67
  !as5
  db 120,$78
  !c6
  !loop : dw .sub2D54 : db 1
  !tie
  !loop : dw .sub2D5F : db 1
  db 120,$78
  !gs6
  !loop : dw .sub2DA7 : db 7
  db 88
  !rest
  db 32,$78
  !fs5
  !end

.pattern1_1
  !instr,!instr01
  !pan,13
  !vibrato,72,18,64
  !transpose,12
  !volume,52
  !dynamicVolume,156,94
  db 120,$7F
  !cs5
  !tie
  !volume,52
  !dynamicVolume,156,94
  !gs5
  !tie
  !volume,52
  !dynamicVolume,156,94
  !b5
  !tie
  !loop : dw .sub2DA9 : db 1
  !volume,52
  !dynamicVolume,156,94
  db 120
  !cs5
  !tie
  !volume,52
  !dynamicVolume,156,94
  !fs5
  !tie
  !volume,52
  !dynamicVolume,156,94
  !e6
  !tie
  !loop : dw .sub2DA9 : db 1
  !instr,!instr00
  !volume,94
  db 120,$7B
  !c6
  db 48,$7B
  !b5
  db 40,$7B
  !c6
  db 32,$7D
  !d6
  db 120,$7C
  !ds6
  !tie
  !e6
  db 48,$7B
  !ds6
  db 40,$7B
  !e6
  db 32,$7C
  !fs6
  db 120,$7C
  !gs6
  db 120,$7B
  !c7
  db 24,$7B
  !e6
  db 24,$7C
  !ds6
  db 72,$7B
  !cs6
  db 16,$73
  !cs6
  db 24,$7B
  !cs6
  !ds6
  db 24,$7B
  !e6
  db 16,$7C
  !ds6
  db 16,$7C
  !cs6
  db 24,$7D
  !ds6
  db 24,$7C
  !cs6
  db 72,$7B
  !c6
  db 16,$73
  !c6
  db 24,$7C
  !c6
  db 24,$7B
  !cs6
  db 24,$7D
  !ds6
  db 16,$7B
  !cs6
  db 16,$7C
  !ds6
  !tie
  db 24,$7D
  !fs6
  db 24,$7C
  !e6
  db 56,$7C
  !ds6
  db 12
  !tie
  db 4
  !rest
  db 24,$7D
  !ds6
  db 24,$7C
  !e6
  db 24,$7C
  !fs6
  db 16,$7B
  !e6
  db 16,$7C
  !fs6
  db 120,$7B
  !ds6
  db 120,$7A
  !gs6
  db 120,$7D
  !cs7
  !loop : dw .sub2DD9 : db 1
  db 88
  !tie
  db 24,$73
  !e6
  db 8
  !rest

.pattern1_2
  !loop : dw .sub2DFD : db 16
  !loop : dw .sub2E0B : db 2
  !loop : dw .sub2E1D : db 2
  !loop : dw .sub2E0B : db 2
  !loop : dw .sub2E1D : db 2
  !loop : dw .sub2E0B : db 2
  !loop : dw .sub2E1D : db 2
  !loop : dw .sub2E0B : db 2
  !loop : dw .sub2E1D : db 2
  !loop : dw .sub2E2F : db 2
  !loop : dw .sub2E0B : db 2
  !loop : dw .sub2E2F : db 2
  !loop : dw .sub2E0B : db 2

.pattern1_3
  db 56,$7C
  %percNote(!instr06-!instr06)
  db 8
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 8,$7C
  !g4
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 24,$7F
  %percNote(!instr07-!instr06)
  db 8,$7C
  %percNote(!instr06-!instr06)
  !loop : dw .sub2E41 : db 5
  db 16
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 16
  %percNote(!instr06-!instr06)
  db 8
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 16,$7C
  !g4
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  db 24,$7F
  %percNote(!instr07-!instr06)
  db 8,$7C
  %percNote(!instr06-!instr06)
  !loop : dw .sub2E59 : db 4
  db 16
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 16
  %percNote(!instr06-!instr06)
  db 8
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 8,$7C
  !g4
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 8,$7F
  %percNote(!instr07-!instr06)
  db 16,$7C
  %percNote(!instr06-!instr06)
  db 8,$7F
  %percNote(!instr07-!instr06)
  db 24,$7C
  %percNote(!instr06-!instr06)
  db 40,$7F
  %percNote(!instr07-!instr06)
  !instr,!instr08
  !pan,7
  db 16,$7C
  !c5
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 32,$7F
  !g4
  !pan,10
  db 24,$7C
  %percNote(!instr06-!instr06)
  db 32,$7F
  %percNote(!instr07-!instr06)
  db 8,$7C
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,7
  db 8,$7C
  !c5
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 32,$7F
  !g4
  !loop : dw .sub2E8F : db 2
  !pan,10
  db 24,$7C
  %percNote(!instr06-!instr06)
  db 40,$7F
  %percNote(!instr07-!instr06)
  !instr,!instr08
  !pan,7
  db 16,$7C
  !c5
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 32,$7F
  !g4
  !pan,10
  db 24,$7C
  %percNote(!instr06-!instr06)
  db 32,$7F
  %percNote(!instr07-!instr06)
  db 8,$7C
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,7
  db 8,$7C
  !c5
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 32,$7F
  !g4
  !loop : dw .sub2E8F : db 2
  !pan,10
  db 24,$7C
  %percNote(!instr06-!instr06)
  db 40,$7F
  %percNote(!instr07-!instr06)
  !instr,!instr08
  !pan,7
  db 16,$7C
  !c5
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 32,$7F
  !g4
  !pan,10
  db 24,$7C
  %percNote(!instr06-!instr06)
  db 32,$7F
  %percNote(!instr07-!instr06)
  db 8,$7C
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,7
  db 8,$7C
  !c5
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 32,$7F
  !g4
  !loop : dw .sub2E8F : db 2
  !pan,10
  db 24,$7C
  %percNote(!instr06-!instr06)
  db 40,$7F
  %percNote(!instr07-!instr06)
  !instr,!instr08
  !pan,7
  db 16,$7C
  !c5
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 32,$7F
  !g4
  !pan,10
  db 24,$7C
  %percNote(!instr06-!instr06)
  db 32,$7F
  %percNote(!instr07-!instr06)
  db 8,$7C
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,7
  db 8,$7C
  !c5
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 32,$7F
  !g4
  !loop : dw .sub2E8F : db 2
  !pan,10
  db 56,$7C
  %percNote(!instr06-!instr06)
  db 16
  %percNote(!instr06-!instr06)
  db 8
  %percNote(!instr06-!instr06)
  db 16
  %percNote(!instr06-!instr06)
  db 16,$7F
  %percNote(!instr07-!instr06)
  db 8,$7C
  %percNote(!instr06-!instr06)
  !loop : dw .sub2EAF : db 7

.pattern1_4
  !instr,!instr04
  !volume,125
  !pan,7
  !subtranspose,54
  db 16
  !rest
  db 24,$08
  !gs5
  db 24,$09
  !gs5
  db 24,$77
  !g5
  db 24,$08
  !gs5
  db 8,$39
  !gs5
  db 16
  !rest
  db 24,$0A
  !fs5
  db 24,$07
  !g5
  db 24,$59
  !gs5
  db 24,$09
  !e5
  db 8,$3B
  !cs5
  db 16
  !rest
  db 32,$09
  !gs5
  db 32,$09
  !gs5
  db 24,$0A
  !gs5
  db 16,$7A
  !gs5
  db 16,$2A
  !gs5
  db 24,$0A
  !gs5
  db 24,$09
  !gs5
  db 8,$29
  !gs5
  db 16,$37
  !gs5
  db 24,$09
  !g5
  db 8,$2B
  !fs5
  db 16
  !rest
  db 24,$09
  !gs5
  db 24,$0A
  !gs5
  db 24,$6A
  !gs5
  db 24,$09
  !g5
  db 8,$3A
  !fs5
  db 16
  !rest
  db 24,$09
  !gs5
  db 40,$49
  !gs5
  db 24,$08
  !gs5
  db 16,$79
  !gs5
  !rest
  db 24,$09
  !gs5
  db 40,$59
  !gs5
  db 24,$08
  !gs5
  db 16,$78
  !gs5
  db 16,$08
  !gs5
  db 24,$08
  !gs5
  db 32,$59
  !gs5
  db 8,$19
  !gs5
  db 16,$07
  !gs5
  db 16,$08
  !gs5
  db 8,$79
  !gs5
  db 16
  !rest
  db 24,$08
  !gs5
  db 24,$09
  !gs5
  db 24,$77
  !gs5
  db 24,$08
  !g5
  db 8,$39
  !gs5
  db 16
  !rest
  db 24,$1A
  !fs5
  db 24,$07
  !g5
  db 24,$59
  !gs5
  db 32,$59
  !cs6
  db 16
  !rest
  db 32,$09
  !gs5
  db 32,$09
  !gs5
  db 24,$0A
  !gs5
  db 16,$7A
  !gs5
  db 7
  !tie
  db 9
  !rest
  db 24,$0A
  !gs5
  db 24,$09
  !gs5
  db 8,$29
  !gs5
  db 16,$37
  !gs5
  db 24,$09
  !g5
  db 8,$2B
  !gs5
  db 16
  !rest
  db 24,$08
  !gs5
  db 24,$09
  !gs5
  db 24,$77
  !gs5
  db 24,$08
  !g5
  db 8,$39
  !gs5
  db 16
  !rest
  db 24,$1A
  !gs5
  db 24,$07
  !gs5
  db 24,$59
  !g5
  db 32,$59
  !fs5
  db 16
  !rest
  db 32,$09
  !gs5
  db 32,$09
  !gs5
  db 24,$0A
  !gs5
  db 16,$7A
  !gs5
  !rest
  db 24,$0A
  !gs5
  db 32,$09
  !gs5
  db 8,$29
  !gs5
  db 16,$37
  !gs5
  db 16,$09
  !gs5
  db 8,$2B
  !gs5
  db 24,$3A
  !e5
  db 24,$0B
  !e5
  db 8,$08
  !e5
  db 8,$4B
  !a3
  db 24,$08
  !e5
  db 32,$69
  !e5
  db 24,$3A
  !e5
  db 24,$09
  !e5
  db 8,$09
  !e5
  db 8,$1B
  !a3
  db 16,$08
  !e5
  db 8,$6B
  !a3
  db 32,$57
  !e5
  db 24,$5C
  !ds5
  db 24,$09
  !ds5
  db 16,$0B
  !ds5
  db 16,$1B
  !ds5
  db 8,$19
  !gs3
  db 32,$6B
  !ds5
  db 24,$5B
  !ds5
  db 24,$0A
  !ds5
  db 8,$4B
  !ds5
  db 8,$1B
  !gs3
  db 16,$2A
  !ds5
  db 8,$1B
  !gs3
  db 32,$6A
  !ds5
  db 24,$4A
  !e5
  db 24,$0B
  !e5
  db 8,$08
  !e5
  db 8,$4B
  !a3
  db 24,$08
  !e5
  db 32,$69
  !e5
  db 24,$3A
  !e5
  db 24,$09
  !e5
  db 8,$19
  !e5
  db 8,$1B
  !a3
  db 16,$18
  !e5
  db 8,$5B
  !a3
  db 32,$57
  !e5
  db 24,$5C
  !ds5
  db 24,$09
  !ds5
  db 16,$0B
  !ds5
  db 16,$1B
  !ds5
  db 8,$19
  !gs3
  db 32,$6B
  !ds5
  db 24,$5B
  !ds5
  db 24,$0A
  !ds5
  db 8,$3B
  !ds5
  db 8,$1B
  !gs3
  db 16,$2A
  !ds5
  db 8,$2B
  !gs3
  db 32,$6A
  !ds5
  db 24,$3A
  !e5
  db 24,$09
  !e5
  db 8,$19
  !e5
  db 8,$1B
  !a3
  db 16,$08
  !e5
  db 8,$6B
  !a3
  db 32,$57
  !e5
  db 24,$4A
  !e5
  db 16,$09
  !e5
  db 8,$1B
  !a3
  db 8,$1A
  !e5
  db 24,$5C
  !gs5
  db 24,$4C
  !fs5
  db 16,$6C
  !e5
  db 24,$5A
  !ds5
  db 24,$09
  !ds5
  db 8,$1A
  !ds5
  db 8,$1B
  !gs3
  db 16,$09
  !ds5
  db 8,$2C
  !gs3
  db 32,$5A
  !ds5
  db 24,$5A
  !ds5
  db 24,$09
  !ds5
  db 8,$1A
  !ds5
  db 8,$1B
  !gs3
  db 16,$19
  !ds5
  db 8,$1C
  !gs3
  db 32,$5A
  !ds5
  db 24,$4A
  !e5
  db 24,$09
  !e5
  db 8,$1A
  !e5
  db 8,$1B
  !a3
  db 16,$08
  !e5
  db 8,$6B
  !a3
  db 32,$5A
  !e5
  db 24,$4A
  !fs5
  db 24,$09
  !fs5
  db 8,$1A
  !fs5
  db 8,$1B
  !a3
  db 16,$18
  !fs5
  db 8,$6B
  !a3
  db 32,$5A
  !fs5
  db 24,$5A
  !ds5
  db 24,$09
  !ds5
  db 8,$1A
  !ds5
  db 8,$1B
  !ds5
  db 16,$19
  !ds5
  db 8,$1C
  !gs3
  db 32,$5A
  !ds5
  db 24,$5A
  !ds5
  db 24,$09
  !ds5
  db 8,$1A
  !ds5
  db 8,$1B
  !gs3
  db 16,$19
  !ds5
  db 8,$1C
  !gs3
  db 32,$5A
  !ds5
  !loop : dw .sub2EBE : db 1
  db 16
  !rest
  db 24,$0B
  !e5
  db 24,$1C
  !e5
  db 8,$0C
  !e5
  db 16,$0B
  !e5
  db 24,$0B
  !e5
  db 8,$0B
  !e5
  !loop : dw .sub2EBE : db 1
  db 16
  !rest
  db 24,$0B
  !e5
  db 24,$1C
  !e5
  db 8,$0C
  !e5
  db 16,$0B
  !e5
  db 24,$0B
  !e5
  db 8,$1B
  !e5

.pattern1_5
  !instr,!instr03
  !volume,42
  !dynamicVolume,96,73
  !transpose,0
  !subtranspose,0
  !pan,15
  !dynamicPan,192,5
  db 8,$7F
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !loop : dw .sub2EDC : db 1
  !loop : dw .sub2F16 : db 3
  !instr,!instr04
  !volume,125
  !pan,7
  !subtranspose,54
  db 24,$3A
  !a4
  db 24,$0B
  !a4
  db 8,$08
  !a4
  !rest
  db 24,$08
  !a4
  db 32,$69
  !a4
  db 24,$3A
  !a4
  db 24,$09
  !a4
  db 8,$09
  !a4
  !rest
  db 16,$08
  !a4
  db 8
  !rest
  db 32,$57
  !a4
  db 24,$5C
  !gs4
  db 24,$09
  !gs4
  db 16,$0B
  !gs4
  db 16,$1B
  !gs4
  db 8
  !rest
  db 32,$6B
  !gs4
  db 24,$5B
  !gs4
  db 24,$0A
  !gs4
  db 8,$4B
  !gs4
  !rest
  db 16,$2A
  !gs4
  db 8
  !rest
  db 32,$6A
  !gs4
  db 24,$4A
  !a4
  db 24,$0B
  !a4
  db 8,$08
  !a4
  !rest
  db 24,$08
  !a4
  db 32,$69
  !a4
  db 24,$3A
  !a4
  db 24,$09
  !a4
  db 8,$19
  !a4
  !rest
  db 16,$18
  !a4
  db 8
  !rest
  db 32,$57
  !a4
  db 24,$5C
  !gs4
  db 24,$09
  !gs4
  db 16,$0B
  !gs4
  db 16,$1B
  !gs4
  db 8
  !rest
  db 32,$6B
  !gs4
  db 24,$5B
  !gs4
  db 24,$0A
  !gs4
  db 8,$3B
  !gs4
  !rest
  db 16,$2A
  !gs4
  db 8
  !rest
  db 32,$6A
  !gs4
  db 24,$3A
  !a4
  db 24,$09
  !a4
  db 8,$19
  !a4
  !rest
  db 16,$08
  !a4
  db 8
  !rest
  db 32,$57
  !a4
  db 24,$4A
  !a4
  db 16,$09
  !a4
  db 8
  !rest
  db 8,$1A
  !a4
  db 64
  !rest
  db 24,$5A
  !gs4
  db 24,$09
  !gs4
  db 8,$1A
  !gs4
  !rest
  db 16,$09
  !gs4
  db 8
  !rest
  db 32,$5A
  !gs4
  db 24,$5A
  !gs4
  db 24,$09
  !gs4
  db 8,$1A
  !gs4
  !rest
  db 16,$19
  !gs4
  db 8
  !rest
  db 32,$5A
  !gs4
  db 24,$4A
  !a4
  db 24,$09
  !a4
  db 8,$1A
  !a4
  !rest
  db 16,$08
  !a4
  db 8
  !rest
  db 32,$5A
  !a4
  db 24,$4A
  !a4
  db 24,$09
  !a4
  db 8,$1A
  !a4
  !rest
  db 16,$18
  !a4
  db 8
  !rest
  db 32,$5A
  !a4
  !loop : dw .sub2F65 : db 2
  db 24
  !rest
  !instr,!instr00
  !pan,13
  !vibrato,72,18,64
  !transpose,12
  !volume,62
  !subtranspose,8
  db 120,$7D
  !cs7
  !loop : dw .sub2DD9 : db 1
  db 88
  !tie
  db 8,$73
  !e6

.pattern1_6
  db 16
  !rest
  db 8,$7E
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 16,$7E
  !g4
  db 40,$7E
  !c5
  db 8,$7E
  !g4
  db 16,$7D
  !c5
  db 16,$7E
  %percNote(!instr0A-!instr06)
  !loop : dw .sub2F78 : db 4
  !rest
  db 8,$7E
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 24,$7E
  !g4
  db 16,$7E
  !c5
  db 16,$7F
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 8,$7E
  !g4
  db 16,$7D
  !c5
  db 16,$7E
  %percNote(!instr0A-!instr06)
  !loop : dw .sub2FA8 : db 3
  !instr,!instr04
  !volume,125
  !pan,7
  !subtranspose,54
  db 24,$3A
  !c5
  db 24,$0B
  !c5
  db 8,$08
  !c5
  !rest
  db 24,$08
  !c5
  db 32,$69
  !c5
  db 24,$3A
  !c5
  db 24,$09
  !c5
  db 8,$09
  !c5
  !rest
  db 16,$08
  !c5
  db 8
  !rest
  db 32,$57
  !c5
  db 24,$5C
  !c5
  db 24,$09
  !c5
  db 16,$0B
  !c5
  db 16,$1B
  !c5
  db 8
  !rest
  db 32,$6B
  !c5
  db 24,$5B
  !c5
  db 24,$0A
  !c5
  db 8,$4B
  !c5
  !rest
  db 16,$2A
  !c5
  db 8
  !rest
  db 32,$6A
  !c5
  db 24,$4A
  !c5
  db 24,$0B
  !c5
  db 8,$08
  !c5
  !rest
  db 24,$08
  !c5
  db 32,$69
  !c5
  db 24,$3A
  !c5
  db 24,$09
  !c5
  db 8,$19
  !c5
  !rest
  db 16,$18
  !c5
  db 8
  !rest
  db 32,$57
  !c5
  db 24,$5C
  !c5
  db 24,$09
  !c5
  db 16,$0B
  !c5
  db 16,$1B
  !c5
  db 8
  !rest
  db 32,$6B
  !c5
  db 24,$5B
  !c5
  db 24,$0A
  !c5
  db 8,$3B
  !c5
  !rest
  db 16,$2A
  !c5
  db 8
  !rest
  db 32,$6A
  !c5
  db 24,$3A
  !cs5
  db 24,$09
  !cs5
  db 8,$19
  !cs5
  !rest
  db 16,$08
  !cs5
  db 8
  !rest
  db 32,$57
  !cs5
  db 24,$4A
  !cs5
  db 16,$09
  !cs5
  db 8
  !rest
  db 8,$1A
  !cs5
  db 24,$5C
  !cs5
  db 24,$4C
  !cs5
  db 16,$6C
  !cs5
  db 24,$5A
  !c5
  db 24,$09
  !c5
  db 8,$1A
  !c5
  !rest
  db 16,$09
  !c5
  db 8
  !rest
  db 32,$5A
  !c5
  db 24,$5A
  !c5
  db 24,$09
  !c5
  db 8,$1A
  !c5
  !rest
  db 16,$19
  !c5
  db 8
  !rest
  db 32,$5A
  !c5
  db 24,$4A
  !cs5
  db 24,$09
  !cs5
  db 8,$1A
  !cs5
  !rest
  db 16,$08
  !cs5
  db 8
  !rest
  db 32,$5A
  !cs5
  db 24,$4A
  !cs5
  db 24,$09
  !cs5
  db 8,$1A
  !cs5
  !rest
  db 16,$18
  !cs5
  db 8
  !rest
  db 32,$5A
  !cs5
  !loop : dw .sub2FD8 : db 2
  !volume,198
  !pan,10
  !subtranspose,0
  db 16,$7E
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 16,$7B
  !g4
  db 16,$7D
  !c5
  db 8
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 16,$7B
  !g4
  db 16,$7C
  !c5
  db 16,$7E
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 16,$7D
  !g4
  !loop : dw .sub2FEB : db 7

.pattern1_7
  !instr,!instr05
  !volume,125
  !pan,12
  !transpose,12
  !subtranspose,0
  db 120,$7A
  !cs5
  db 120,$7B
  !gs4
  db 120,$7A
  !b4
  db 88,$7A
  !as4
  db 24,$79
  !fs4
  db 8,$7B
  !gs4
  db 120
  !tie
  db 120,$68
  !tie
  db 40
  !rest
  !volume,83
  !subtranspose,8
  db 24,$07
  !cs6
  db 40,$07
  !cs6
  db 40,$07
  !cs6
  db 16
  !rest
  db 24,$07
  !cs6
  db 24,$19
  !cs6
  db 24,$39
  !e6
  db 8,$48
  !cs6
  !volume,125
  !subtranspose,0
  db 120,$7A
  !cs5
  db 120,$7B
  !e5
  db 120,$7A
  !ds5
  db 88,$7A
  !b4
  db 24,$79
  !ds5
  db 8,$7B
  !cs5
  db 120
  !tie
  !tie
  db 40
  !rest
  !volume,83
  !subtranspose,8
  db 24,$08
  !gs5
  db 40,$09
  !gs5
  !gs5
  db 16
  !rest
  db 24,$09
  !gs5
  db 24,$08
  !gs5
  db 24,$18
  !gs5
  db 8,$58
  !b5
  db 24
  !rest
  db 120,$78
  !c6
  !loop : dw .sub2D54 : db 1
  !tie
  !loop : dw .sub2D5F : db 1
  db 96,$78
  !gs6
  !instr,!instr04
  !volume,125
  !pan,7
  !subtranspose,54
  db 48,$4A
  !cs5
  db 48,$0B
  !cs5
  db 24,$0B
  !cs5
  !loop : dw .sub3009 : db 1
  db 16
  !rest
  db 24,$0B
  !cs5
  db 24,$1C
  !cs5
  db 8,$0C
  !cs5
  db 16,$0B
  !cs5
  db 24,$0B
  !cs5
  db 8,$0B
  !cs5
  db 48,$4A
  !cs5
  db 48,$0B
  !cs5
  db 24,$0B
  !cs5
  !loop : dw .sub3009 : db 1
  db 16
  !rest
  db 24,$0B
  !cs5
  db 24,$1C
  !cs5
  db 8,$0C
  !cs5
  db 16,$0B
  !cs5
  db 24,$0B
  !cs5
  db 8,$1B
  !cs5

.sub2D54
  db 48,$68
  !b5
  db 40,$78
  !c6
  db 32
  !d6
  db 120
  !ds6
  !end

.sub2D5F
  db 120,$78
  !e6
  db 48,$78
  !ds6
  db 40,$78
  !e6
  db 32
  !fs6
  db 120,$77
  !gs6
  db 120,$76
  !c7
  db 64
  !rest
  db 24,$29
  !e6
  db 24,$19
  !ds6
  db 8,$79
  !cs6
  db 120,$08
  !tie
  db 64
  !rest
  db 24,$49
  !ds6
  db 24,$39
  !cs6
  db 8,$79
  !c6
  db 120,$08
  !tie
  db 64
  !rest
  db 24,$49
  !fs6
  db 24,$29
  !e6
  db 8,$79
  !ds6
  db 120,$08
  !tie
  db 96,$7A
  !ds6
  db 8,$77
  !e6
  db 8,$79
  !f6
  db 8,$77
  !fs6
  !end

.sub2DA7
  !rest
  !end

.sub2DA9
  db 24
  !tie
  !volume,52
  !dynamicVolume,108,94
  db 6
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !dynamicVolume,108,52
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !as5
  !b5
  !end

.sub2DD9
  db 72
  !tie
  db 16,$7D
  !c7
  db 16,$7C
  !b6
  db 16,$7D
  !as6
  db 120,$7C
  !a6
  db 88
  !tie
  db 32,$7B
  !b6
  db 120
  !gs6
  db 72
  !tie
  db 16,$7D
  !g6
  db 16,$7C
  !fs6
  db 16,$7D
  !f6
  db 120,$7C
  !e6
  !end

.sub2DFD
  db 24,$6F
  !cs4
  db 24,$6D
  !e4
  !gs4
  db 24,$6D
  !g4
  db 24,$6D
  !fs4
  !end

.sub2E0B
  db 24,$7F
  !a3
  db 24,$7E
  !e4
  db 24,$7D
  !ds4
  db 16
  !d4
  db 16,$7F
  !cs4
  db 16,$7D
  !c4
  !end

.sub2E1D
  db 24,$7F
  !gs3
  db 24,$7E
  !ds4
  db 24,$7D
  !d4
  db 16
  !cs4
  db 16,$7F
  !c4
  db 16,$7D
  !b3
  !end

.sub2E2F
  db 24,$7F
  !cs4
  db 24,$7E
  !gs4
  db 24,$7D
  !g4
  db 16
  !fs4
  db 16,$7F
  !f4
  db 16,$7D
  !e4
  !end

.sub2E41
  db 56
  %percNote(!instr06-!instr06)
  db 8
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 8,$7C
  !g4
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 24,$7F
  %percNote(!instr07-!instr06)
  db 8,$7C
  %percNote(!instr06-!instr06)
  !end

.sub2E59
  db 16
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 16
  %percNote(!instr06-!instr06)
  db 8
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 8,$7C
  !g4
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 24,$7F
  %percNote(!instr07-!instr06)
  db 8,$7C
  %percNote(!instr06-!instr06)
  db 16
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 16
  %percNote(!instr06-!instr06)
  db 8
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 16,$7C
  !g4
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  db 24,$7F
  %percNote(!instr07-!instr06)
  db 8,$7C
  %percNote(!instr06-!instr06)
  !end

.sub2E8F
  !pan,10
  db 24,$7C
  %percNote(!instr06-!instr06)
  db 24,$7F
  %percNote(!instr07-!instr06)
  db 16,$7C
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,7
  db 8,$7C
  !c5
  !pan,10
  db 8,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,13
  db 32,$7F
  !g4
  !end

.sub2EAF
  db 56
  %percNote(!instr06-!instr06)
  db 16
  %percNote(!instr06-!instr06)
  db 8
  %percNote(!instr06-!instr06)
  db 16
  %percNote(!instr06-!instr06)
  db 16,$7F
  %percNote(!instr07-!instr06)
  db 8,$7C
  %percNote(!instr06-!instr06)
  !end

.sub2EBE
  db 48,$4A
  !e5
  db 48,$0B
  !e5
  db 24,$0B
  !e5
  db 16
  !rest
  db 48,$4B
  !e5
  db 24,$0B
  !e5
  db 32,$58
  !e5
  db 72,$5B
  !e5
  db 24,$0D
  !e5
  db 24,$6D
  !e5
  !end

.sub2EDC
  !dynamicVolume,96,42
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !dynamicVolume,96,73
  !dynamicPan,192,15
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !dynamicVolume,96,42
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !end

.sub2F16
  !dynamicVolume,96,73
  !dynamicPan,192,5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !dynamicVolume,96,42
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !dynamicVolume,96,73
  !dynamicPan,192,15
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !dynamicVolume,96,42
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !cs6
  !cs7
  !cs6
  !gs5
  !end

.sub2F65
  db 24,$5A
  !gs4
  db 24,$09
  !gs4
  db 8,$1A
  !gs4
  !rest
  db 16,$19
  !gs4
  db 8
  !rest
  db 32,$5A
  !gs4
  !end

.sub2F78
  !rest
  db 8,$7E
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 16,$7E
  !g4
  db 24,$7E
  !c5
  db 16,$7F
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 8,$7E
  !g4
  db 16,$7D
  !c5
  db 16,$7E
  %percNote(!instr0A-!instr06)
  !rest
  db 8,$7E
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 16,$7E
  !g4
  db 40,$7E
  !c5
  db 8,$7E
  !g4
  db 16,$7D
  !c5
  db 16,$7E
  %percNote(!instr0A-!instr06)
  !end

.sub2FA8
  !rest
  db 8,$7E
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 16,$7E
  !g4
  db 40,$7E
  !c5
  db 8,$7E
  !g4
  db 16,$7D
  !c5
  db 16,$7E
  %percNote(!instr0A-!instr06)
  !rest
  db 8,$7E
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 24,$7E
  !g4
  db 16,$7E
  !c5
  db 16,$7F
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 8,$7E
  !g4
  db 16,$7D
  !c5
  db 16,$7E
  %percNote(!instr0A-!instr06)
  !end

.sub2FD8
  db 24,$5A
  !c5
  db 24,$09
  !c5
  db 8,$1A
  !c5
  !rest
  db 16,$19
  !c5
  db 8
  !rest
  db 32,$5A
  !c5
  !end

.sub2FEB
  db 16,$7E
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 16,$7B
  !g4
  db 16,$7D
  !c5
  db 8
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 16,$7B
  !g4
  db 16,$7C
  !c5
  db 16,$7E
  %percNote(!instr0A-!instr06)
  !instr,!instr0B
  db 16,$7D
  !g4
  !end

.sub3009
  db 16
  !rest
  db 48,$4B
  !cs5
  db 24,$0B
  !cs5
  db 32,$58
  !cs5
  db 72,$5B
  !cs5
  db 24,$0D
  !cs5
  db 24,$6D
  !cs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
