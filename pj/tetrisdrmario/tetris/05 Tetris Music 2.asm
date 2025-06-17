asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr03 = $16
!instr05 = $17
!instr07 = $18
!instr08 = $19
!instr09 = $1A
!instr0D = $1B
!instr10 = $1C
!instr13 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr09,$F8,$E1,$B8,$03,$00
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr10,$FF,$E1,$B8,$08,$F0
  db !instr13,$FA,$E1,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample07,Sample07+1971
  dw Sample08,Sample08+1332
  dw Sample09,Sample09+27
  dw Sample0D,Sample0D+441
  dw Sample10,Sample10+27
  dw Sample13,Sample13+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample03.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample09: incbin "Sample09.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample10: incbin "Sample10.brr"
  Sample13: incbin "Sample13.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerE61B

TrackerE61B:
  dw .pattern0
-
  dw .pattern1
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7

.pattern0_0
  !musicVolume,210
  !tempo,30
  !volume,50
  !pan,10
  !echo,%00010011,20,20
  !echoParameters,4,80,0
  !dynamicVolume,192,200
  !instr,!instr03
  db 96,$7F
  !g3
  !pitchSlide,0,144 : !g4
  db 48
  !tie
  !tie
  !pitchSlide,0,48 : !g7
  !end

.pattern0_1
  !volume,200
  !pan,10
  !instr,!instr09
  db 6,$7F
  !ds7
  !c7
  !b6
  !g6
  !fs6
  !e6
  !ds6
  !c6
  !b5
  !g5
  !fs5
  !e5
  !ds5
  !c5
  !b4
  !g4
  !fs4
  !e4
  !ds4
  !c4
  !b3
  db 66
  !rest
  !end

.pattern0_2
  !instr,!instr05
  !volume,200
  !pan,10
  db 12,$2F
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !b2
  !b2
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !b2
  !b2
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !b2
  !b2
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !b2
  !b2
  !end

.pattern0_3
  !volume,200
  !pan,10
  !loop : dw .subEF0E : db 1
  !end

.pattern0_4
  !volume,200
  !pan,10
  !instr,!instr10
  !transpose,232
  db 6,$75
  !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !ds6
  !end

.pattern0_5
  !volume,240
  !pan,10
  db 96
  !rest
  !rest
  !end

.pattern0_6
  !volume,200
  !pan,10
  db 96
  !rest
  !rest
  !end

.pattern0_7
  !volume,200
  !pan,10
  db 96
  !rest
  !rest
  !end

.pattern1_0
  !instr,!instr0D
  db 12,$2B
  !e5
  db 12,$2F
  !b5
  db 12,$2B
  !e6
  db 12,$2F
  !ds6
  db 12,$2B
  !e6
  db 12,$2F
  !b5
  db 12,$2B
  !c6
  db 12,$2F
  !a5
  db 12,$2B
  !b5
  db 12,$2F
  !g5
  db 12,$2B
  !a5
  db 12,$2F
  !fs5
  db 12,$2B
  !g5
  db 12,$2F
  !e5
  db 12,$2B
  !fs5
  db 12,$2F
  !ds5
  db 12,$2B
  !e5
  db 12,$2F
  !b4
  db 12,$2B
  !c5
  db 12,$2F
  !ds5
  db 12,$2B
  !e5
  db 12,$2F
  !b4
  db 12,$2B
  !c5
  db 12,$2F
  !fs5
  !end

.pattern1_1
  !instr,!instr0D
  db 12,$29
  !b4
  db 12,$2D
  !g5
  db 12,$29
  !b5
  db 12,$2D
  !a5
  db 12,$29
  !g5
  db 12,$2D
  !g5
  db 12,$29
  !a5
  db 12,$2D
  !fs5
  db 12,$29
  !g5
  db 12,$2D
  !e5
  db 12,$29
  !fs5
  db 12,$2D
  !ds5
  db 12,$29
  !e5
  db 12,$2D
  !b4
  db 12,$29
  !a4
  db 12,$2D
  !a4
  db 12,$29
  !g4
  db 12,$2D
  !g4
  db 12,$29
  !a4
  db 12,$2D
  !a4
  db 12,$29
  !g4
  db 12,$2D
  !g4
  db 12,$29
  !a4
  db 12,$2D
  !a4
  !end

.pattern1_2
  db 12,$2F
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !b2
  !b2
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !b2
  !b2
  !loop : dw .subEF51 : db 2
  !end

.pattern1_3
  !loop : dw .subEF0E : db 1
  !instr,!instr07
  !g3
  !instr,!instr08
  db 12,$7B
  !c4
  !instr,!instr07
  db 12,$7F
  !g3
  !instr,!instr08
  db 12,$7B
  !c4
  !instr,!instr07
  db 12,$7F
  !g3
  !instr,!instr08
  !c4
  !instr,!instr07
  !g3
  !instr,!instr08
  !c4
  !end

.pattern1_4
  db 6,$73
  !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !ds6
  !loop : dw .subEF64 : db 2
  !end

.pattern1_5
  !instr,!instr13
  !dynamicVolume,36,0
  db 36,$7F
  !e4
  db 60
  !rest
  db 96
  !rest
  !rest
  !end

.pattern1_6
  !instr,!instr13
  !dynamicVolume,24,0
  db 24,$7F
  !e7
  db 72
  !rest
  db 96
  !rest
  !rest
  !end

.pattern1_7
  !instr,!instr13
  !dynamicVolume,24,0
  db 24,$7F
  !e5
  db 72
  !rest
  db 96
  !rest
  !rest
  !end

.pattern2_0
  db 12,$2B
  !e5
  db 60
  !rest
  db 12
  !fs5
  db 12,$2F
  !ds5
  db 12,$2B
  !e5
  db 60
  !rest
  db 24,$1B
  !fs5
  db 12,$2B
  !g5
  db 6,$7F
  !g5
  !g5
  db 12,$2B
  !a5
  db 12,$2F
  !fs5
  db 12,$2B
  !g5
  db 6,$7F
  !g5
  !g5
  db 12,$2B
  !a5
  db 12,$2F
  !fs5
  db 12,$2B
  !g5
  db 60
  !rest
  db 24,$1B
  !a5
  db 12,$2B
  !b5
  db 6,$7F
  !b5
  !b5
  db 12,$2B
  !c6
  db 12,$2F
  !a5
  db 12,$2B
  !b5
  db 6,$7F
  !b5
  !b5
  db 12,$2B
  !c6
  db 12,$2F
  !a5
  db 12,$2B
  !b5
  db 60
  !rest
  db 24,$1B
  !cs6
  !loop : dw .subEFB5 : db 2
  db 12,$2B
  !d6
  db 6,$7F
  !d6
  !d6
  db 12,$2B
  !d6
  db 12,$2F
  !d6
  db 12,$2B
  !cs6
  db 6,$7F
  !cs6
  !cs6
  db 12,$2B
  !cs6
  db 12,$2F
  !cs6
  db 12,$2B
  !c6
  db 6,$7F
  !c6
  !c6
  db 12,$2B
  !c6
  db 12,$2F
  !a5
  db 12,$2B
  !fs5
  db 12,$2F
  !g5
  db 12,$2B
  !a5
  db 12,$2F
  !d5
  db 12,$2B
  !a5
  db 6,$7F
  !g5
  !g5
  db 12,$2B
  !d5
  db 24,$0F
  !g5
  db 6,$7F
  !d5
  !e5
  db 12,$2B
  !d5
  db 12,$2F
  !b4
  db 12,$2B
  !a5
  db 6,$7F
  !g5
  !g5
  db 12,$2B
  !d5
  db 24,$0F
  !g5
  db 6,$7F
  !d5
  !e5
  db 12,$2B
  !d5
  db 12,$2F
  !as4
  db 12,$2B
  !d5
  db 84
  !rest
  db 96
  !rest
  !end

.pattern2_1
  db 12,$29
  !g4
  db 60
  !rest
  db 12
  !a4
  db 12,$2D
  !a4
  db 12,$29
  !g4
  db 60
  !rest
  db 24,$19
  !c5
  db 12,$29
  !b4
  db 6,$7D
  !b4
  !b4
  db 12,$29
  !c5
  db 12,$2D
  !a4
  db 12,$29
  !b4
  db 6,$7D
  !b4
  !b4
  db 12,$29
  !c5
  db 12,$2D
  !a4
  db 12,$29
  !b4
  db 60
  !rest
  db 24,$19
  !c5
  db 12,$29
  !d5
  db 6,$7D
  !d5
  !d5
  db 12,$29
  !e5
  db 12,$2D
  !c5
  db 12,$29
  !d5
  db 6,$7D
  !d5
  !d5
  db 12,$29
  !e5
  db 12,$2D
  !c5
  db 12,$29
  !d5
  db 60
  !rest
  db 24,$19
  !e5
  db 12,$29
  !fs5
  db 6,$7D
  !g5
  !a5
  db 12,$29
  !fs5
  db 12,$2D
  !a5
  db 12,$29
  !b5
  db 12,$2D
  !b5
  db 12,$29
  !b5
  db 12,$2D
  !e5
  db 12,$29
  !fs5
  db 6,$7D
  !g5
  !a5
  db 12,$29
  !fs5
  db 12,$2D
  !a5
  db 12,$29
  !as5
  db 12,$2D
  !as5
  db 12,$29
  !as5
  db 12,$2D
  !e5
  db 12,$29
  !fs5
  db 6,$7D
  !g5
  !a5
  db 12,$29
  !fs5
  db 12,$2D
  !a5
  db 12,$29
  !e5
  db 6,$7D
  !fs5
  !g5
  db 12,$29
  !e5
  db 12,$2D
  !g5
  db 12,$29
  !e5
  db 6,$7D
  !fs5
  !g5
  db 12,$29
  !fs5
  db 12,$2D
  !fs5
  db 12,$29
  !a4
  db 12,$2D
  !e5
  db 12,$29
  !fs5
  db 12,$2D
  !fs4
  db 12,$29
  !b4
  db 6,$7D
  !b4
  !b4
  db 12,$29
  !b4
  db 24,$0D
  !b4
  db 6,$79
  !b4
  db 6,$7D
  !cs5
  db 12,$29
  !b4
  db 12,$2D
  !g4
  db 12,$29
  !as4
  db 6,$7D
  !as4
  !as4
  db 12,$29
  !as4
  db 24,$0D
  !as4
  db 6,$7D
  !as4
  !c5
  db 12,$29
  !as4
  db 12,$2D
  !g4
  db 12,$29
  !fs4
  db 84
  !rest
  db 96
  !rest
  !end

.pattern2_2
  db 12,$2F
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !b2
  !b2
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !b2
  !b2
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !b2
  !b2
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !d3
  !d3
  !loop : dw .subEFCF : db 3
  !g2
  db 6,$7F
  !g2
  !g2
  db 12,$2F
  !d2
  !d2
  !g2
  db 6,$7F
  !g2
  !g2
  db 12,$2F
  !a2
  !a2
  !loop : dw .subEFE2 : db 2
  !loop : dw .subEFF5 : db 2
  !loop : dw .subEF51 : db 2
  !loop : dw .subF008 : db 2
  !end

.pattern2_3
  !loop : dw .subEF0E : db 1
  !loop : dw .subF01B : db 12
  !end

.pattern2_4
  db 6,$73
  !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !ds6
  !loop : dw .subF03C : db 2
  !a6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !g6
  !a7
  !tie
  !pitchSlide,0,1 : !b7
  !tie
  !pitchSlide,0,1 : !a7
  !tie
  !pitchSlide,0,1 : !fs7
  !tie
  !pitchSlide,0,1 : !g7
  !tie
  !pitchSlide,0,1 : !a7
  !tie
  !pitchSlide,0,1 : !g7
  !tie
  !pitchSlide,0,1 : !e7
  !tie
  !pitchSlide,0,1 : !fs7
  !tie
  !pitchSlide,0,1 : !g7
  !tie
  !pitchSlide,0,1 : !fs7
  !tie
  !pitchSlide,0,1 : !d7
  !tie
  !pitchSlide,0,1 : !e7
  !tie
  !pitchSlide,0,1 : !fs7
  !tie
  !pitchSlide,0,1 : !e7
  !tie
  !pitchSlide,0,1 : !cs7
  !tie
  !pitchSlide,0,1 : !d7
  !tie
  !pitchSlide,0,1 : !e7
  !tie
  !pitchSlide,0,1 : !d7
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !d7
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !fs6
  !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !ds6
  !d6
  !tie
  !pitchSlide,0,1 : !gs5
  !tie
  !pitchSlide,0,1 : !a5
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !gs5
  !tie
  !pitchSlide,0,1 : !a5
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !gs5
  !tie
  !pitchSlide,0,1 : !a5
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !gs5
  !tie
  !pitchSlide,0,1 : !a5
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !cs6
  !end

.pattern3_0
  db 96
  !rest
  db 72
  !rest
  db 12,$7F
  !ds5
  !rest
  !end

.pattern3_1
  db 96
  !rest
  db 72
  !rest
  db 12,$7F
  !a4
  !rest
  !end

.pattern3_2
  db 12,$2F
  !d3
  db 6,$7F
  !d3
  !d3
  db 12,$2F
  !a2
  !a2
  !d3
  db 6,$7F
  !d3
  !d3
  db 12,$2F
  !a2
  !a2
  !d3
  db 6,$7F
  !d3
  !d3
  db 12,$2F
  !a2
  !a2
  !d3
  db 6,$7F
  !d3
  !d3
  db 12,$2F
  !b2
  !b2
  !end

.pattern3_3
  !loop : dw .subEF0E : db 1
  !end

.pattern3_4
  db 6,$73
  !d6
  !tie
  !pitchSlide,0,1 : !gs5
  !tie
  !pitchSlide,0,1 : !a5
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !gs5
  !tie
  !pitchSlide,0,1 : !a5
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !gs5
  !tie
  !pitchSlide,0,1 : !a5
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !gs5
  !tie
  !pitchSlide,0,1 : !a5
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !cs6
  !end

.pattern3_5
  db 96
  !rest
  db 72
  !rest
  !volume,240
  !dynamicVolume,22,0
  db 22,$7F
  !ds4
  !volume,240
  db 2
  !rest
  !end

.pattern3_6
  db 96
  !rest
  db 72
  !rest
  !volume,200
  !dynamicVolume,20,0
  db 20,$7F
  !ds7
  !volume,200
  db 4
  !rest
  !end

.pattern3_7
  db 96
  !rest
  db 72
  !rest
  !volume,200
  !dynamicVolume,20,0
  db 20,$7F
  !ds5
  !volume,200
  db 4
  !rest
  !end

.subEF0E
  !instr,!instr07
  db 12,$7F
  !g3
  !instr,!instr08
  db 12,$7B
  !c4
  !instr,!instr07
  db 12,$7F
  !g3
  !instr,!instr08
  db 12,$7B
  !c4
  !instr,!instr07
  db 12,$7F
  !g3
  !instr,!instr08
  !c4
  !instr,!instr07
  !g3
  !instr,!instr08
  !c4
  !instr,!instr07
  !g3
  !instr,!instr08
  db 12,$7B
  !c4
  !instr,!instr07
  db 12,$7F
  !g3
  !instr,!instr08
  db 12,$7B
  !c4
  !instr,!instr07
  db 12,$7F
  !g3
  !instr,!instr08
  !c4
  !instr,!instr07
  !g3
  !instr,!instr08
  !c4
  !end

.subEF51
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !b2
  !b2
  !e3
  db 6,$7F
  !e3
  !e3
  db 12,$2F
  !b2
  !b2
  !end

.subEF64
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b5
  !tie
  !pitchSlide,0,1 : !c6
  !tie
  !pitchSlide,0,1 : !ds6
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !ds6
  !end

.subEFB5
  db 12,$2B
  !d6
  db 6,$7F
  !d6
  !d6
  db 12,$2B
  !d6
  db 12,$2F
  !d6
  db 12,$2B
  !e6
  db 12,$2F
  !d6
  db 12,$2B
  !d6
  db 12,$2F
  !cs6
  !end

.subEFCF
  !g2
  db 6,$7F
  !g2
  !g2
  db 12,$2F
  !d2
  !d2
  !g2
  db 6,$7F
  !g2
  !g2
  db 12,$2F
  !d2
  !d2
  !end

.subEFE2
  !d2
  db 6,$7F
  !d3
  !d3
  db 12,$2F
  !d2
  !d3
  !g2
  db 6,$7F
  !g3
  !g3
  db 12,$2F
  !g2
  !g3
  !end

.subEFF5
  !d2
  db 6,$7F
  !d3
  !d3
  db 12,$2F
  !d2
  !d3
  !d2
  db 6,$7F
  !d3
  !d3
  db 12,$2F
  !d2
  !d3
  !end

.subF008
  !d3
  db 6,$7F
  !d3
  !d3
  db 12,$2F
  !a2
  !a2
  !d3
  db 6,$7F
  !d3
  !d3
  db 12,$2F
  !a2
  !a2
  !end

.subF01B
  !instr,!instr07
  !g3
  !instr,!instr08
  db 12,$7B
  !c4
  !instr,!instr07
  db 12,$7F
  !g3
  !instr,!instr08
  db 12,$7B
  !c4
  !instr,!instr07
  db 12,$7F
  !g3
  !instr,!instr08
  !c4
  !instr,!instr07
  !g3
  !instr,!instr08
  !c4
  !end

.subF03C
  !g6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !cs6
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !fs6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !c7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !b6
  !tie
  !pitchSlide,0,1 : !g6
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !fs6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
