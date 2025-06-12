asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr02 = $17
!instr03 = $18
!instr05 = $19
!instr07 = $1A
!instr08 = $1B
!instr0A = $1C
!instr0F = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E1,$B8,$03,$00
  db !instr02,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr0A,$FF,$FD,$B8,$06,$F0
  db !instr0F,$FF,$E1,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+27
  dw Sample02,Sample02+27
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample07,Sample07+1971
  dw Sample08,Sample08+1332
  dw Sample0A,Sample0A+27
  dw Sample0F,Sample0F+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample02: incbin "Sample02.brr"
  Sample03: incbin "Sample03.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0F: incbin "Sample0F.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerF138

TrackerF138:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, 0

.pattern0_0
  !musicVolume,175;200
  !musicTranspose,2
  !tempo,30
  !volume,200
  !instr,!instr01
  !pan,10
  !echo,%00100111,20,20
  !echoParameters,4,80,0
  db 8,$7F
  !ds6
  !c6
  !ds6
  db 48
  !f6
  !pitchSlide,36,12 : !f4
  !instr,!instr0F
  !slideIn,0,3,253
  db 12
  !rest
  db 12,$2F
  !c6
  !d6
  !c6
  !end

.pattern0_1
  !volume,200
  !instr,!instr01
  !pan,10
  !subtranspose,10
  db 8,$7F
  !c7
  !gs6
  !c7
  db 48
  !d7
  !pitchSlide,36,12 : !d5
  !instr,!instr0F
  !subtranspose,10
  db 12
  !rest
  db 12,$2F
  !c6
  !d6
  !c6
  !end

.pattern0_2
  !volume,200
  !instr,!instr01
  !pan,10
  db 8,$7F
  !gs6
  !gs6
  !gs6
  db 48
  !as6
  !pitchSlide,36,12 : !as4
  !instr,!instr05
  db 12
  !rest
  !c3
  !d3
  !c3
  !end

.pattern0_3
  !volume,240
  !pan,10
  !instr,!instr08
  db 8,$7F
  !c5
  !c5
  !c5
  db 48
  !c5
  !rest
  !end

.pattern0_4
  !volume,200
  !pan,10
  !instr,!instr01
  !slideIn,0,6,255
  db 8,$7F
  !c7
  !gs6
  !c7
  db 48
  !d7
  !pitchSlide,36,12 : !d5
  !endSlide
  !rest
  !end

.pattern0_5
  !volume,200
  !pan,10
  db 72
  !rest
  db 48
  !rest
  !end

.pattern1_0
  !loop : dw .subF425 : db 1
  !end

.pattern1_1
  !loop : dw .subF425 : db 1
  !end

.pattern1_2
  !loop : dw .subF462 : db 1
  db 36,$1F
  !g2
  db 12,$7F
  !as2
  !b2
  !d3
  db 24,$2F
  !e3
  !loop : dw .subF479 : db 2
  db 36,$1F
  !f2
  db 12,$7F
  !gs2
  !a2
  !c3
  db 24,$2F
  !d3
  !loop : dw .subF485 : db 1
  !end

.pattern1_3
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr08
  db 12
  !c4
  !instr,!instr07
  db 12,$77
  !g3
  db 12,$7F
  !g3
  db 12,$77
  !g3
  !instr,!instr08
  db 24,$7F
  !c4
  !loop : dw .subF49C : db 7
  !end

.pattern1_4
  !instr,!instr0A
  !loop : dw .subF4B4 : db 8
  !end

.pattern1_5
  !instr,!instr03
  db 96
  !rest
  !rest
  !rest
  db 12
  !rest
  db 2,$79
  !c6
  !pitchSlide,0,2 : !c7
  db 22,$58
  !tie
  !pitchSlide,9,2 : !c6
  db 12
  !rest
  db 12,$29
  !c6
  !pitchSlide,0,2 : !c7
  db 36
  !rest
  db 96
  !rest
  !rest
  !rest
  db 24
  !rest
  db 24,$59
  !c6
  !pitchSlide,11,2 : !c7
  db 48
  !rest
  !end

.pattern2_0
  !loop : dw .subF4CD : db 1
  db 96
  !rest
  !end

.pattern2_1
  !loop : dw .subF4CD : db 1
  db 96
  !rest
  !end

.pattern2_2
  !loop : dw .subF502 : db 1
  db 36,$1F
  !c2
  db 12,$7F
  !ds2
  db 24,$2F
  !e2
  !c3
  !loop : dw .subF502 : db 1
  db 12,$1F
  !g2
  db 12,$7F
  !g2
  !g2
  !g2
  db 48
  !rest
  !end

.pattern2_3
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr08
  db 12
  !c4
  !instr,!instr07
  db 12,$77
  !g3
  db 12,$7F
  !g3
  db 12,$77
  !g3
  !instr,!instr08
  db 24,$7F
  !c4
  !loop : dw .subF49C : db 6
  !instr,!instr08
  db 12
  !c4
  !c4
  !c4
  db 24
  !c4
  !instr,!instr07
  db 12
  !g3
  !instr,!instr08
  !c4
  !instr,!instr07
  !g3
  !end

.pattern2_4
  !loop : dw .subF4B4 : db 7
  db 12,$7B
  !g4
  db 12,$77
  !g4
  db 12,$7F
  !g4
  db 12,$77
  !g4
  db 24
  !rest
  db 24,$7F
  !g4
  !end

.pattern2_5
  db 96
  !rest
  !rest
  !rest
  !instr,!instr02
  !rest
  db 60
  !rest
  db 12,$0F
  !gs7
  !g7
  !gs7
  db 96
  !rest
  !rest
  !rest
  !end

.pattern3_0
  db 96
  !rest
  !rest
  !rest
  !rest
  !end

.pattern3_1
  db 96
  !rest
  !rest
  !rest
  !rest
  !end

.pattern3_2
  !loop : dw .subF462 : db 1
  !loop : dw .subF485 : db 1
  !end

.pattern3_3
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr08
  db 12
  !c4
  !instr,!instr07
  db 12,$77
  !g3
  db 12,$7F
  !g3
  db 12,$77
  !g3
  !instr,!instr08
  db 24,$7F
  !c4
  !loop : dw .subF49C : db 3
  !end

.pattern3_4
  !loop : dw .subF4B4 : db 4
  !end

.pattern3_5
  !instr,!instr03
  db 96
  !rest
  db 2,$79
  !c6
  !pitchSlide,0,2 : !c7
  db 22,$58
  !tie
  !pitchSlide,9,2 : !c6
  db 12
  !rest
  db 12,$29
  !c6
  !pitchSlide,0,2 : !c7
  db 48
  !rest
  db 96
  !rest
  db 12
  !rest
  db 2,$79
  !c6
  !pitchSlide,0,2 : !c7
  db 22,$58
  !tie
  !pitchSlide,9,2 : !c6
  db 12
  !rest
  db 12,$29
  !c6
  !pitchSlide,0,2 : !c7
  db 36
  !rest
  !end

.pattern4_0
  db 96
  !rest
  !rest
  !rest
  !rest
  !end

.pattern4_1
  db 96
  !rest
  !rest
  !rest
  !rest
  !end

.pattern4_2
  !loop : dw .subF462 : db 1
  !loop : dw .subF485 : db 1
  !end

.pattern4_3
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr08
  db 12
  !c4
  !instr,!instr07
  db 12,$77
  !g3
  db 12,$7F
  !g3
  db 12,$77
  !g3
  !instr,!instr08
  db 24,$7F
  !c4
  !loop : dw .subF49C : db 3
  !end

.pattern4_4
  !loop : dw .subF4B4 : db 4
  !end

.pattern4_5
  !instr,!instr03
  db 96
  !rest
  db 2,$79
  !c6
  !pitchSlide,0,2 : !c7
  db 22,$58
  !tie
  !pitchSlide,9,2 : !c6
  db 12
  !rest
  db 12,$29
  !c6
  !pitchSlide,0,2 : !c7
  db 48
  !rest
  db 96
  !rest
  db 12
  !rest
  db 2,$79
  !c6
  !pitchSlide,0,2 : !c7
  db 22,$58
  !tie
  !pitchSlide,9,2 : !c6
  db 12
  !rest
  db 12,$29
  !c6
  !pitchSlide,0,2 : !c7
  db 36
  !rest
  !end

.pattern5_0
  db 96
  !rest
  !loop : dw .subF521 : db 7
  !end

.pattern5_1
  db 96
  !rest
  !loop : dw .subF521 : db 7
  !end

.pattern5_2
  !loop : dw .subF502 : db 1
  db 36,$1F
  !c2
  db 12,$7F
  !ds2
  db 24,$2F
  !e2
  !c3
  !loop : dw .subF502 : db 1
  db 12,$1F
  !g2
  db 12,$7F
  !g2
  !g2
  !g2
  db 48
  !rest
  !end

.pattern5_3
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr08
  db 12
  !c4
  !instr,!instr07
  db 12,$77
  !g3
  db 12,$7F
  !g3
  db 12,$77
  !g3
  !instr,!instr08
  db 24,$7F
  !c4
  !loop : dw .subF49C : db 6
  !instr,!instr08
  db 12
  !c4
  !c4
  !c4
  db 24
  !c4
  !instr,!instr07
  db 12
  !g3
  !instr,!instr08
  !c4
  !instr,!instr07
  !g3
  !end

.pattern5_4
  !loop : dw .subF4B4 : db 7
  db 12,$7B
  !g4
  db 12,$77
  !g4
  db 12,$7F
  !g4
  db 12,$77
  !g4
  db 24
  !rest
  db 24,$7F
  !g4
  !end

.pattern5_5
  !instr,!instr02
  !transpose,12
  db 60
  !rest
  db 12,$0F
  !a6
  !g6
  !rest
  !loop : dw .subF523 : db 2
  db 72
  !rest
  db 12
  !c7
  !rest
  !loop : dw .subF523 : db 3
  !gs6
  !gs6
  !gs6
  !gs6
  !transpose,0
  db 48
  !rest
  !end

.subF425
  db 12,$2F
  !a6
  !rest
  !g6
  !rest
  !e6
  !ds6
  !d6
  !c6
  !d6
  !c6
  !rest
  !c6
  db 36
  !rest
  db 12
  !c6
  !d6
  !d6
  !d6
  !c6
  !e6
  !c6
  !rest
  !c6
  db 72
  !rest
  db 12
  !c6
  !c6
  !a6
  !a6
  !g6
  !g6
  !ds6
  !ds6
  !d6
  !c6
  !d6
  !c6
  !rest
  !a5
  db 36
  !rest
  db 12
  !g5
  !d6
  !d6
  !d6
  !c6
  !e6
  !c6
  !rest
  !c6
  db 72
  !rest
  db 12
  !c6
  !as5
  !end

.subF462
  db 36,$1F
  !c3
  db 12,$7F
  !ds3
  !e3
  !g3
  db 24,$2F
  !a3
  db 36,$1F
  !f2
  db 12,$7F
  !gs2
  !a2
  !c3
  db 24,$2F
  !d3
  !end

.subF479
  db 36,$1F
  !c3
  db 12,$7F
  !ds3
  !e3
  !g3
  db 24,$2F
  !a3
  !end

.subF485
  db 36,$1F
  !g2
  db 12,$7F
  !as2
  !b2
  !d3
  db 24,$2F
  !e3
  db 36,$1F
  !c3
  db 12,$7F
  !ds3
  !e3
  !g3
  db 24,$2F
  !a3
  !end

.subF49C
  !instr,!instr07
  !g3
  !instr,!instr08
  db 12
  !c4
  !instr,!instr07
  db 12,$77
  !g3
  db 12,$7F
  !g3
  db 12,$77
  !g3
  !instr,!instr08
  db 24,$7F
  !c4
  !end

.subF4B4
  db 12,$7B
  !g4
  db 12,$77
  !g4
  db 12,$7F
  !g4
  db 12,$77
  !g4
  db 12,$7B
  !g4
  db 12,$77
  !g4
  db 12,$7F
  !g4
  db 12,$77
  !g4
  !end

.subF4CD
  db 12,$2F
  !a5
  !c6
  !rest
  !c6
  db 48
  !rest
  db 12
  !c5
  !c6
  !rest
  !c6
  db 48
  !rest
  db 12
  !f5
  !c6
  !rest
  !c6
  db 48
  !rest
  db 12
  !e5
  !c6
  !rest
  !c6
  db 48
  !rest
  db 12
  !a5
  !c6
  !rest
  !c6
  db 48
  !rest
  db 12
  !g5
  !c6
  !rest
  !c6
  db 48
  !rest
  db 12
  !f5
  !c6
  !rest
  !c6
  db 36
  !rest
  db 12
  !g5
  !end

.subF502
  db 36,$1F
  !f2
  db 12,$7F
  !gs2
  db 24,$2F
  !a2
  !c3
  db 36,$1F
  !e2
  db 12,$7F
  !fs2
  db 24,$2F
  !g2
  !c3
  db 36,$1F
  !d2
  db 12,$7F
  !f2
  db 24,$2F
  !a2
  !c3
  !end

.subF521
  !rest
  !end

.subF523
  db 60
  !rest
  db 12
  !a6
  !g6
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
