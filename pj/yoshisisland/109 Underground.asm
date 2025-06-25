asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr04 = $17
!instr07 = $18
!instr0A = $19
!instr0E = $1A
!instr10 = $1B
!instr11 = $1C
!instr18 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr04,$FF,$EC,$B8,$0A,$02
  db !instr07,$FF,$E0,$B8,$05,$40
  db !instr0A,$FF,$E0,$B8,$03,$74
  db !instr0E,$8F,$19,$B8,$03,$00
  db !instr10,$8D,$E0,$B8,$03,$00
  db !instr11,$8F,$F1,$B8,$07,$A8
  db !instr18,$FF,$E0,$B8,$07,$A8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample04,Sample04+288
  dw Sample07,Sample07+981
  dw Sample0A,Sample0A+882
  dw Sample0E,Sample0E+225
  dw Sample10,Sample10+27
  dw Sample11,Sample11+1683
  dw Sample18,Sample18+837
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample04: incbin "Sample_6b2d9404e8f16fdc424cf2f60f24fe8e.brr"
  Sample07: incbin "Sample_54413ae5a61dbdb96f0648494ef0edf9.brr"
  Sample0A: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample0E: incbin "Sample_505e12daa82598571573216fa31be57e.brr"
  Sample10: incbin "Sample_57baebb26796008057e695fab7d3fd38.brr"
  Sample11: incbin "Sample_f3af6328bd01ba69fad6d210dcfe9d7c.brr"
  Sample18: incbin "Sample_84ecbfd5a3396d1864db1a473ec3479e.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDC7F

TrackerDC7F:
  dw .pattern0
-
  dw .pattern1
  dw .pattern1
  dw .pattern2
  dw .pattern2
  dw .pattern3
  dw .pattern1
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern3_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern1_2, .pattern4_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern2_5, .pattern2_6, .pattern5_7
.pattern6: dw .pattern6_0, .pattern5_1, .pattern5_2, .pattern6_3, .pattern6_4, .pattern2_5, .pattern2_6, .pattern6_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !tempo,20
  !musicVolume,200
  !echo,%11111111,0,0
  !echoParameters,2,30,2
  !dynamicEcho,40,70,70
  !instr,!instr0E
  !pan,13
  !volume,200
  db 36
  !rest
  db 3,$7D
  !g7
  db 3,$7B
  !f7
  db 3,$79
  !e7
  db 3,$77
  !d7
  db 3,$75
  !f7
  db 3,$77
  !e7
  db 3,$75
  !d7
  db 3,$73
  !c7
  db 4,$79
  !e7
  db 4,$77
  !d7
  db 4,$75
  !c7
  db 4,$73
  !b6
  db 4,$72
  !d7
  db 4,$71
  !c7
  db 5
  !b6
  !a6
  db 2
  !d7
  !end

.pattern0_1
  !instr,!instr0E
  !pan,2
  !volume,200
  db 37
  !rest
  db 3,$77
  !e7
  db 3,$75
  !d7
  db 3,$73
  !c7
  db 3,$79
  !e7
  db 3,$77
  !d7
  db 3,$75
  !c7
  db 3,$73
  !b6
  db 4,$72
  !d7
  db 4,$71
  !c7
  !b6
  !a6
  !d7
  db 5
  !c7
  !b6
  !a6
  db 3
  !b6
  !end

.pattern0_2
  !instr,!instr04
  !pan,10
  !volume,200
  db 48,$2D
  !d3
  db 12,$5D
  !d3
  db 24,$7D
  !c3
  db 12,$59
  !d4
  !pitchSlide,2,8 : !d3
  !end

.pattern0_3
  !instr,!instr0A
  !pan,8
  !volume,200
  db 12
  !rest
  db 12,$09
  !a5
  db 6,$1A
  !f5
  db 6,$1B
  !d5
  db 12,$7A
  !a4
  db 12,$37
  !f5
  db 36,$78
  !e5
  !end

.pattern0_4
  !instr,!instr02
  !pan,4
  !volume,200
  db 6
  !rest
  !rest
  !rest
  !rest
  db 12,$7D
  !a4
  db 12,$1A
  !c6
  !pan,14
  db 12,$7D
  !a4
  db 24
  !b3
  db 12
  !a4
  !end

.pattern0_5
  !instr,!instr0A
  !pan,12
  !volume,200
  db 12
  !rest
  db 12,$09
  !f5
  db 6,$1A
  !d5
  db 6,$1B
  !a4
  db 12,$7A
  !f4
  db 12,$37
  !d4
  db 36,$78
  !c5
  !end

.pattern0_6
  !instr,!instr11
  !pan,16
  !volume,200
  db 24
  !rest
  db 24,$7F
  !b2
  db 12,$7B
  !f3
  db 36
  !b2
  !end

.pattern0_7
  !instr,!instr0E
  !pan,10
  !volume,200
  db 38
  !rest
  db 3,$7D
  !b7
  db 3,$7B
  !a7
  db 3,$79
  !g7
  db 3,$77
  !f7
  db 3,$7B
  !b7
  db 3,$79
  !a7
  db 3,$77
  !g7
  db 3,$75
  !f7
  db 3,$79
  !b7
  db 3,$77
  !a7
  db 3,$75
  !g7
  db 3,$73
  !f7
  db 3,$72
  !b7
  db 3,$75
  !a7
  db 3,$73
  !g7
  db 3,$72
  !f7
  db 3,$71
  !b7
  !b7
  db 4
  !b7
  !end

.pattern1_0
  !musicVolume,200
  !instr,!instr04
  !pan,10
  !volume,200
  !loop : dw .subE01D : db 1
  !end

.pattern1_1
  !instr,!instr0E
  !pan,15
  !volume,180
  !loop : dw .subE030 : db 1
  !rest
  !end

.pattern1_2
  !instr,!instr02
  !pan,4
  !volume,200
  !loop : dw .subE084 : db 1
  !end

.pattern1_3
  !instr,!instr0A
  !pan,8
  !volume,200
  db 13,$5A
  !a4
  db 35,$09
  !d5
  db 18,$1A
  !a4
  db 19,$1B
  !d5
  db 11,$7A
  !c5
  db 71,$37
  !tie
  db 11
  !a4
  db 4,$78
  !c5
  db 10
  !rest
  !end

.pattern1_4
  !instr,!instr0A
  !pan,12
  !volume,200
  !loop : dw .subE0BB : db 1
  !end

.pattern1_5
  !instr,!instr11
  !pan,16
  !volume,220
  !loop : dw .subE0D5 : db 1
  !end

.pattern1_6
  !instr,!instr18
  !pan,2
  !volume,200
  !loop : dw .subE0EB : db 2
  !end

.pattern1_7
  !instr,!instr0E
  !pan,5
  !volume,180
  !loop : dw .subE104 : db 1
  !end

.pattern2_0
  !loop : dw .subE01D : db 1
  !end

.pattern2_1
  !loop : dw .subE030 : db 1
  !rest
  !end

.pattern2_2
  !loop : dw .subE084 : db 1
  !end

.pattern2_3
  db 18,$5A
  !f5
  db 18,$59
  !a4
  db 12,$3A
  !e5
  db 48,$5B
  !d5
  db 18,$5A
  !e5
  db 18,$59
  !g4
  db 12,$3A
  !e5
  db 42,$5B
  !d5
  db 6
  !c5
  !end

.pattern2_4
  !loop : dw .subE0BB : db 1
  !end

.pattern2_5
  !loop : dw .subE0D5 : db 1
  !end

.pattern2_6
  !loop : dw .subE0EB : db 2
  !end

.pattern2_7
  !loop : dw .subE104 : db 1
  !end

.pattern3_3
  db 96,$5A
  !d5
  !rest
  !end

.pattern4_0
  db 48,$2D
  !as2
  db 18,$4F
  !as2
  db 19,$1B
  !as2
  db 11,$7D
  !a2
  db 71,$3F
  !tie
  db 25,$7F
  !a2
  !end

.pattern4_1
  !instr,!instr07
  !volume,200
  !pan,18
  !loop : dw .subE15A : db 2
  !end

.pattern4_3
  db 13,$5A
  !as4
  db 35,$09
  !d5
  db 18,$1A
  !as4
  db 19,$1B
  !d5
  db 11,$7A
  !e5
  db 84,$38
  !tie
  !instr,!instr10
  !pan,8
  db 6,$7B
  !e6
  !f6
  !end

.pattern4_7
  !instr,!instr10
  !pan,13
  !volume,160
  db 96
  !rest
  db 88
  !rest
  db 6,$7B
  !e6
  db 2
  !f6
  !end

.pattern5_0
  db 48,$2D
  !d3
  db 18,$4F
  !d3
  db 19,$1B
  !d3
  db 11,$7D
  !d3
  db 71,$5D
  !e3
  db 25,$7F
  !e3
  !end

.pattern5_1
  !loop : dw .subE15A : db 2
  !end

.pattern5_2
  !pan,4
  !loop : dw .subE084 : db 1
  !end

.pattern5_3
  db 48,$5A
  !d6
  db 18,$59
  !d6
  db 18,$5A
  !e6
  db 12,$5B
  !f6
  db 84,$6B
  !g6
  db 6,$7B
  !e5
  !f6
  !end

.pattern5_4
  !instr,!instr10
  !pan,12
  !volume,200
  db 48,$5A
  !a5
  db 18,$59
  !a5
  db 18,$3A
  !a5
  db 12,$7A
  !as5
  db 84,$6B
  !b5
  db 12,$37
  !b5
  !end

.pattern5_7
  db 4
  !rest
  db 48,$5A
  !d6
  db 18,$59
  !d6
  db 18,$5A
  !e6
  db 12,$5B
  !f6
  db 84,$6B
  !g6
  db 6,$7B
  !e5
  db 2
  !f6
  !end

.pattern6_0
  db 48,$2D
  !f3
  db 18,$4F
  !f3
  db 19,$1B
  !f3
  db 11,$7D
  !f3
  db 48
  !g3
  db 36,$7F
  !a3
  db 12,$37
  !a4
  !pitchSlide,6,8 : !a3
  !end

.pattern6_3
  db 48,$5A
  !d6
  db 18,$59
  !d6
  db 18,$5A
  !e6
  db 12,$5B
  !f6
  db 72,$6B
  !g6
  db 12,$7B
  !f6
  !e6
  !end

.pattern6_4
  db 48,$5A
  !a5
  db 18,$09
  !a5
  db 18,$1A
  !a5
  db 12,$1B
  !as5
  db 72,$6B
  !b5
  db 12
  !a5
  !g5
  !end

.pattern6_7
  db 4
  !rest
  db 48,$5A
  !d6
  db 18,$59
  !d6
  db 18,$5A
  !e6
  db 12,$5B
  !f6
  db 72,$6B
  !g6
  db 12,$7B
  !f6
  db 8
  !e6
  !end

.subE01D
  db 48,$2D
  !d3
  db 18,$4F
  !d3
  db 19,$1B
  !d3
  db 11,$7D
  !c3
  db 71,$3F
  !tie
  db 25,$7F
  !c3
  !end

.subE030
  db 6,$7D
  !e6
  db 6,$7B
  !g6
  db 6,$79
  !a6
  db 6,$77
  !d7
  db 6,$7B
  !e6
  db 6,$79
  !g6
  db 6,$77
  !a6
  db 6,$75
  !d7
  db 6,$79
  !e6
  db 6,$77
  !g6
  db 6,$75
  !a6
  db 6,$73
  !d7
  db 6,$77
  !e6
  db 6,$75
  !g6
  db 6,$73
  !a6
  db 6,$72
  !d7
  db 6,$75
  !e6
  db 6,$73
  !g6
  db 6,$72
  !a6
  !d7
  db 6,$73
  !e6
  db 6,$72
  !g6
  !a6
  !d7
  db 6,$73
  !e6
  db 6,$72
  !g6
  !a6
  !d7
  db 6,$73
  !e6
  db 6,$72
  !g6
  !a6
  db 3
  !d7
  !end

.subE084
  db 6,$18
  !c6
  db 6,$0A
  !c6
  db 6,$29
  !c6
  db 6,$45
  !c6
  db 12,$7D
  !a4
  db 12,$1A
  !c6
  !pan,14
  db 12,$7D
  !a4
  !b3
  db 24
  !a4
  !pan,4
  db 6,$18
  !c6
  db 6,$0A
  !c6
  db 6,$29
  !c6
  db 6,$45
  !c6
  db 12,$7D
  !a4
  db 12,$1A
  !c6
  !pan,14
  db 12,$7D
  !a4
  !b3
  db 24
  !a4
  !end

.subE0BB
  db 13,$5A
  !f4
  db 35,$09
  !f4
  db 18,$1A
  !f4
  db 19,$1B
  !f4
  db 11,$7A
  !e4
  db 71,$37
  !tie
  db 11
  !e4
  db 4,$78
  !e4
  db 10
  !rest
  !end

.subE0D5
  db 24
  !rest
  db 24,$7F
  !b2
  db 12,$7B
  !f3
  !f3
  db 24,$7F
  !b2
  !tie
  !b2
  db 12,$7B
  !f3
  !f3
  db 24,$7F
  !b2
  !end

.subE0EB
  db 12,$7D
  !ds5
  db 12,$79
  !ds5
  db 12,$7B
  !ds5
  db 12,$79
  !ds5
  db 12,$7D
  !ds5
  db 12,$79
  !ds5
  db 12,$7B
  !ds5
  db 12,$79
  !ds5
  !end

.subE104
  db 4
  !rest
  db 6,$7D
  !e6
  db 6,$7B
  !g6
  db 6,$79
  !a6
  db 6,$77
  !d7
  db 6,$7B
  !e6
  db 6,$79
  !g6
  db 6,$77
  !a6
  db 6,$75
  !d7
  db 6,$79
  !e6
  db 6,$77
  !g6
  db 6,$75
  !a6
  db 6,$73
  !d7
  db 6,$77
  !e6
  db 6,$75
  !g6
  db 6,$73
  !a6
  db 6,$72
  !d7
  db 6,$75
  !e6
  db 6,$73
  !g6
  db 6,$72
  !a6
  !d7
  db 6,$73
  !e6
  db 6,$72
  !g6
  !a6
  !d7
  db 6,$73
  !e6
  db 6,$72
  !g6
  !a6
  !d7
  db 6,$73
  !e6
  db 6,$72
  !g6
  !a6
  db 2
  !d7
  !end

.subE15A
  db 24,$79
  !g5
  !g5
  db 12,$7B
  !g5
  db 12,$7F
  !g5
  !g5
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
