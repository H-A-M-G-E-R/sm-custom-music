asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr05 = $16
!instr08 = $17
!instr11 = $18
!instr12 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr11,$F8,$E1,$B8,$03,$00
  db !instr12,$F9,$E1,$B8,$07,$F0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample08,Sample08+1332
  dw Sample11,Sample11+27
  dw Sample12,Sample12+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample05.brr"
  Sample08: incbin "Sample08.brr"
  Sample11: incbin "Sample11.brr"
  Sample12: incbin "Sample12.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDFD1

TrackerDFD1:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, 0

.pattern0_0
  !tempo,31
  !musicVolume,210;240
  !volume,200
  !pan,10
  !echo,%00011111,30,30
  !echoParameters,4,80,0
  db 12
  !rest
  !end

.pattern0_1
  !volume,200
  !pan,10
  db 12
  !rest

.pattern0_2
  !volume,200
  !pan,10
  db 12
  !rest

.pattern0_3
  !volume,200
  !pan,10
  db 12
  !rest

.pattern0_4
  !volume,200
  !pan,10
  db 12
  !rest

.pattern0_5
  !volume,200
  !pan,10
  !instr,!instr08
  db 4,$75
  !g4
  !g4
  !g4

.pattern0_6
  !volume,200
  !pan,10
  db 12
  !rest

.pattern1_0
  !instr,!instr12
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !b5
  db 12,$3F
  !fs5
  !g5
  !dynamicVolume,48,150
  db 24,$7F
  !a5
  db 12,$5F
  !g5
  !fs5
  !loop : dw .subE48B : db 1
  !end

.pattern1_1
  !instr,!instr12
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !fs5
  db 12,$3F
  !ds5
  !ds5
  !dynamicVolume,48,150
  db 24,$7F
  !ds5
  db 12,$3F
  !ds5
  !ds5
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !b4
  db 12,$3F
  !b4
  !e5
  db 24,$7F
  !g5
  !dynamicVolume,24,150
  db 12,$3F
  !fs5
  !e5
  !volume,200
  !dynamicVolume,24,100
  db 36,$7F
  !ds5
  db 12,$3F
  !e5
  !dynamicVolume,48,150
  db 24,$7F
  !fs5
  !g5
  !dynamicVolume,24,50
  !e5
  !volume,150
  !dynamicVolume,24,50
  !b4
  !volume,150
  !dynamicVolume,36,50
  db 48,$3F
  !b4
  db 12
  !rest
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !e5
  db 12,$3F
  !a5
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !c6
  db 12,$3F
  !b5
  !a5
  !volume,200
  !dynamicVolume,24,100
  db 36,$7F
  !g5
  db 12,$3F
  !d5
  !dynamicVolume,48,150
  db 24,$7F
  !g5
  db 12,$3F
  !fs5
  !d5
  !dynamicVolume,24,100
  db 36,$7F
  !ds5
  !dynamicVolume,12,200
  db 12,$3F
  !e5
  !dynamicVolume,24,100
  db 24,$7F
  !fs5
  !fs5
  !volume,200
  !dynamicVolume,24,100
  !e5
  !volume,200
  !dynamicVolume,24,100
  !b4
  !volume,200
  !dynamicVolume,24,100
  db 48,$3F
  !b4

.pattern1_2
  !instr,!instr12
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !ds5
  db 12,$3F
  !a4
  !b4
  !dynamicVolume,48,150
  db 24,$7F
  !c5
  db 12,$3F
  !b4
  !a4
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !g4
  db 12,$3F
  !g4
  !b4
  db 24,$7F
  !e5
  !dynamicVolume,24,150
  db 12,$3F
  !c5
  !b4
  !volume,200
  !dynamicVolume,24,100
  db 36,$7F
  !a4
  db 12,$3F
  !b4
  !dynamicVolume,48,150
  db 24,$7F
  !c5
  !ds5
  !dynamicVolume,24,50
  !b4
  !volume,150
  !dynamicVolume,24,50
  !g4
  db 48,$3F
  !g4
  db 12
  !rest
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !c5
  db 12,$3F
  !e5
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !a5
  db 12
  !rest
  !e5
  !volume,200
  !dynamicVolume,24,100
  db 36
  !d5
  db 12,$3F
  !b4
  !dynamicVolume,48,150
  db 24,$7F
  !d5
  db 12,$3F
  !c5
  !b4
  !dynamicVolume,24,100
  db 36,$7F
  !a4
  !dynamicVolume,12,200
  db 12,$3F
  !b4
  !dynamicVolume,24,100
  db 24,$7F
  !c5
  !ds5
  !volume,200
  !dynamicVolume,24,100
  !b4
  !volume,200
  !dynamicVolume,24,100
  !g4
  !volume,200
  !dynamicVolume,24,100
  db 48,$3F
  !g4

.pattern1_3
  !instr,!instr12
  !subtranspose,20
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !b5
  db 12,$3F
  !fs5
  !g5
  !dynamicVolume,48,150
  db 24,$7F
  !a5
  db 12,$5F
  !g5
  !fs5
  !loop : dw .subE48B : db 1

.pattern1_4
  !volume,200
  !pan,10
  !instr,!instr05
  db 24,$3F
  !b2
  !fs2
  !b2
  !fs2
  !loop : dw .subE51D : db 1

.pattern1_5
  !loop : dw .subE547 : db 3
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  !loop : dw .subE547 : db 3
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 12,$7F
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 24,$7F
  !e4

.pattern1_6
  db 96
  !rest
  !loop : dw .subE559 : db 7

.pattern2_0
  !loop : dw .subE55B : db 1
  !end

.pattern2_1
  !volume,200
  !dynamicVolume,24,100
  db 6,$7F
  !g5
  !a5
  !g5
  !a5
  !g5
  !a5
  !g5
  !a5
  !e5
  !fs5
  !e5
  !fs5
  !e5
  !fs5
  !e5
  !fs5
  !loop : dw .subE598 : db 1
  !volume,200
  !dynamicVolume,96,100
  !e5
  !fs5
  !e5
  !fs5
  !e5
  !fs5
  !e5
  !fs5
  !b4
  !c4
  !b4
  !c4
  !b4
  !c4
  !b4
  !c4
  !volume,200
  !dynamicVolume,96,100
  !b4
  !c5
  !b4
  !c5
  !b4
  !c5
  !b4
  !c5
  !b4
  !c5
  !b4
  !c5
  !b4
  !c5
  !b4
  !c5
  !g5
  !a5
  !g5
  !a5
  !g5
  !a5
  !g5
  !a5
  !e5
  !fs5
  !e5
  !fs5
  !e5
  !fs5
  !e5
  !fs5
  !loop : dw .subE598 : db 1
  !volume,200
  !dynamicVolume,24,100
  !e5
  !fs5
  !e5
  !fs5
  !g5
  !a5
  !g5
  !a5
  !b5
  !c6
  !b5
  !c6
  !b5
  !c6
  !b5
  !c6
  !volume,200
  !dynamicVolume,72,100
  !b5
  !c6
  !b5
  !c6
  !b5
  !c6
  !b5
  !c6
  !b5
  db 42
  !rest

.pattern2_2
  !volume,150
  !dynamicVolume,24,100
  db 48,$7F
  !g5
  !e5
  !dynamicVolume,96,100
  !fs5
  !ds5
  !volume,150
  !dynamicVolume,24,100
  !e5
  !dynamicVolume,48,150
  !b4
  !volume,150
  !dynamicVolume,96,100
  db 96
  !b4
  db 48
  !g5
  !e5
  !dynamicVolume,96,100
  !fs5
  !ds5
  !volume,150
  !dynamicVolume,24,100
  db 24
  !e5
  !g5
  !dynamicVolume,48,200
  db 48
  !g5
  !volume,150
  !dynamicVolume,72,100
  db 96,$5F
  !fs5

.pattern2_3
  !loop : dw .subE55B : db 1

.pattern2_4
  db 12,$3F
  !e2
  !e2
  !e2
  !e2
  !e2
  !e2
  !e2
  !e2
  db 6
  !b2
  !b2
  db 12
  !b2
  !b2
  !b2
  !b2
  !b2
  !b2
  !b2
  !loop : dw .subE5AC : db 3

.pattern2_5
  !loop : dw .subE547 : db 3
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  !loop : dw .subE547 : db 3
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 12,$7F
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 24,$7F
  !e4

.pattern2_6
  !pan,10
  !transpose,244
  !instr,!instr12
  !loop : dw .subE55B : db 1

.pattern3_0
  !instr,!instr12
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !b5
  db 12,$3F
  !fs5
  !g5
  !dynamicVolume,48,150
  db 24,$7F
  !a5
  db 12,$5F
  !g5
  !fs5
  !loop : dw .subE48B : db 1
  !end

.pattern3_1
  !instr,!instr12
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !fs5
  db 12,$3F
  !ds5
  !ds5
  !dynamicVolume,48,150
  db 24,$7F
  !ds5
  db 12,$3F
  !ds5
  !ds5
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !b4
  db 12,$3F
  !b4
  !e5
  db 24,$7F
  !g5
  !dynamicVolume,24,150
  db 12,$3F
  !fs5
  !e5
  !volume,200
  !dynamicVolume,24,100
  db 36,$7F
  !ds5
  db 12,$3F
  !e5
  !dynamicVolume,48,150
  db 24,$7F
  !fs5
  !g5
  !dynamicVolume,24,50
  !e5
  !volume,150
  !dynamicVolume,24,50
  !b4
  !volume,150
  !dynamicVolume,36,50
  db 48,$3F
  !b4
  db 12
  !rest
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !e5
  db 12,$3F
  !a5
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !c6
  db 12,$3F
  !b5
  !a5
  !volume,200
  !dynamicVolume,24,100
  db 36,$7F
  !g5
  db 12,$3F
  !d5
  !dynamicVolume,48,150
  db 24,$7F
  !g5
  db 12,$3F
  !fs5
  !d5
  !dynamicVolume,24,100
  db 36,$7F
  !ds5
  !dynamicVolume,12,200
  db 12,$3F
  !e5
  !dynamicVolume,24,100
  db 24,$7F
  !fs5
  !fs5
  !volume,200
  !dynamicVolume,24,100
  !e5
  !volume,200
  !dynamicVolume,24,100
  !b4
  !volume,200
  !dynamicVolume,24,100
  db 48,$3F
  !b4

.pattern3_2
  !instr,!instr12
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !ds5
  db 12,$3F
  !a4
  !b4
  !dynamicVolume,48,150
  db 24,$7F
  !c5
  db 12,$3F
  !b4
  !a4
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !g4
  db 12,$3F
  !g4
  !b4
  db 24,$7F
  !e5
  !dynamicVolume,24,150
  db 12,$3F
  !c5
  !b4
  !volume,200
  !dynamicVolume,24,100
  db 36,$7F
  !a4
  db 12,$3F
  !b4
  !dynamicVolume,48,150
  db 24,$7F
  !c5
  !ds5
  !dynamicVolume,24,50
  !b4
  !volume,150
  !dynamicVolume,24,50
  !g4
  db 48,$3F
  !g4
  db 12
  !rest
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !c5
  db 12,$3F
  !e5
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !a5
  db 12
  !rest
  !e5
  !volume,200
  !dynamicVolume,24,100
  db 36
  !d5
  db 12,$3F
  !b4
  !dynamicVolume,48,150
  db 24,$7F
  !d5
  db 12,$3F
  !c5
  !b4
  !dynamicVolume,24,100
  db 36,$7F
  !a4
  !dynamicVolume,12,200
  db 12,$3F
  !b4
  !dynamicVolume,24,100
  db 24,$7F
  !c5
  !ds5
  !volume,200
  !dynamicVolume,24,100
  !b4
  !volume,200
  !dynamicVolume,24,100
  !g4
  !volume,200
  !dynamicVolume,24,100
  db 48,$3F
  !g4

.pattern3_3
  !instr,!instr12
  !subtranspose,20
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !b5
  db 12,$3F
  !fs5
  !g5
  !dynamicVolume,48,150
  db 24,$7F
  !a5
  db 12,$5F
  !g5
  !fs5
  !loop : dw .subE48B : db 1

.pattern3_4
  !volume,200
  !pan,10
  !instr,!instr05
  db 24,$3F
  !b2
  !fs2
  !b2
  !fs2
  !loop : dw .subE51D : db 1

.pattern3_5
  !loop : dw .subE547 : db 3
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  !loop : dw .subE547 : db 3
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 12,$7F
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 24,$7F
  !e4

.pattern3_6
  db 96
  !rest
  !loop : dw .subE559 : db 7

.pattern4_0
  !volume,200
  !instr,!instr11
  !loop : dw .subE5C3 : db 1
  !loop : dw .subE5E7 : db 1
  !end

.pattern4_1
  !volume,200
  db 12
  !rest
  db 12,$27
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !g4
  !rest
  !g4
  !rest
  !g4
  !rest
  !g4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !a4
  !rest
  !g4
  !rest
  !g4
  !rest
  !g4
  !rest
  !g4
  !dynamicVolume,24,100
  db 72,$77
  !e5
  !dynamicVolume,24,150
  db 24
  !tie
  !volume,200
  !dynamicVolume,36,100
  db 96
  !d5
  !volume,200
  !dynamicVolume,24,100
  db 72
  !c5
  !dynamicVolume,24,150
  db 24
  !tie
  !volume,200
  !dynamicVolume,36,100
  db 36
  !b4
  !dynamicVolume,12,150
  db 12
  !tie
  !volume,200
  !dynamicVolume,46,50
  db 46
  !tie
  !transpose,0
  db 2
  !rest

.pattern4_2
  !volume,200
  !instr,!instr11
  !transpose,244
  !loop : dw .subE5C3 : db 1
  !transpose,0
  !dynamicVolume,24,100
  db 6,$7B
  !c7
  !d7
  !c7
  !d7
  !c7
  !d7
  !c7
  !d7
  !c7
  !d7
  !c7
  !d7
  !c7
  !d7
  !c7
  !d7
  !b6
  !c7
  !b6
  !c7
  !b6
  !c7
  !b6
  !c7
  !dynamicVolume,48,150
  !b6
  !c7
  !b6
  !c7
  !b6
  !c7
  !b6
  !c7
  !volume,200
  !dynamicVolume,24,100
  !a6
  !b6
  !a6
  !b6
  !a6
  !b6
  !a6
  !b6
  !a6
  !b6
  !a6
  !b6
  !a6
  !b6
  !a6
  !b6
  !g6
  !a6
  !g6
  !a6
  !g6
  !a6
  !g6
  !a6
  !g6
  !a6
  !g6
  !a6
  !g6
  db 18
  !rest

.pattern4_3
  !volume,200
  !instr,!instr11
  !loop : dw .subE5C3 : db 1
  !loop : dw .subE5E7 : db 1

.pattern4_4
  !volume,200
  !pan,10
  !instr,!instr05
  db 24,$3F
  !b2
  !fs2
  !b2
  !fs2
  !loop : dw .subE51D : db 1

.pattern4_5
  !loop : dw .subE547 : db 3
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  !loop : dw .subE547 : db 3
  db 12,$7F
  !e4
  db 24,$79
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 12,$7F
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  db 24,$7F
  !e4

.pattern4_6
  db 96
  !rest
  !loop : dw .subE559 : db 7

.subE48B
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !e5
  db 12,$3F
  !e5
  !g5
  db 24,$7F
  !b5
  !dynamicVolume,24,150
  db 12,$3F
  !a5
  !g5
  !volume,200
  !dynamicVolume,24,100
  db 36,$7F
  !fs5
  db 12,$3F
  !g5
  !dynamicVolume,48,150
  db 24,$7F
  !a5
  !b5
  !dynamicVolume,24,50
  !g5
  !volume,150
  !dynamicVolume,24,50
  !e5
  !volume,150
  !dynamicVolume,36,50
  db 48,$3F
  !e5
  db 12
  !rest
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !a5
  db 12,$3F
  !c6
  !volume,200
  !dynamicVolume,24,100
  db 24,$7F
  !e6
  db 12,$3F
  !d6
  !c6
  !volume,200
  !dynamicVolume,24,100
  db 36,$7F
  !b5
  db 12,$3F
  !g5
  !dynamicVolume,48,150
  db 24,$7F
  !b5
  db 12,$3F
  !a5
  !g5
  !dynamicVolume,24,100
  db 36,$7F
  !fs5
  !dynamicVolume,12,200
  db 12,$3F
  !g5
  !dynamicVolume,24,100
  db 24,$7F
  !a5
  !volume,200
  !b5
  !volume,200
  !dynamicVolume,24,100
  !g5
  !volume,200
  !dynamicVolume,24,100
  !e5
  !volume,200
  !dynamicVolume,24,100
  db 48,$3F
  !e5
  !end

.subE51D
  !e3
  !b2
  !e3
  !b2
  !b2
  !fs2
  !b2
  !fs2
  !e3
  !b2
  db 24,$7F
  !e2
  db 12
  !fs2
  !g2
  db 24,$3F
  !a2
  !e2
  !a2
  !e2
  !g2
  !d2
  !g2
  !d2
  !b2
  !fs2
  !b2
  !fs2
  !e3
  !b2
  db 12,$5F
  !e2
  db 6
  !e2
  !e2
  db 24,$3F
  !e2
  !end

.subE547
  db 12,$7F
  !e4
  db 24,$79
  !e4
  !e4
  !e4
  db 4,$75
  !e4
  db 4,$77
  !e4
  db 4,$79
  !e4
  !end

.subE559
  !rest
  !end

.subE55B
  !volume,200
  !dynamicVolume,24,100
  db 48,$7B
  !b5
  !g5
  !dynamicVolume,96,150
  !a5
  !fs5
  !volume,200
  !dynamicVolume,24,100
  !g5
  !dynamicVolume,48,150
  !e5
  !volume,200
  !dynamicVolume,96,100
  db 96
  !ds5
  db 48
  !b5
  !g5
  !dynamicVolume,96,150
  !a5
  !fs5
  !volume,200
  !dynamicVolume,24,100
  db 24
  !g5
  !b5
  !dynamicVolume,48,200
  db 48
  !e6
  !volume,200
  !dynamicVolume,72,100
  db 96,$5B
  !ds6
  !end

.subE598
  !dynamicVolume,96,150
  !fs5
  !g5
  !fs5
  !g5
  !fs5
  !g5
  !fs5
  !g5
  !ds5
  !e5
  !ds5
  !e5
  !ds5
  !e5
  !ds5
  !e5
  !end

.subE5AC
  db 6
  !e2
  !e2
  db 12
  !e2
  !e2
  !e2
  !e2
  !e2
  !e2
  !e2
  db 6
  !b2
  !b2
  db 12
  !b2
  !b2
  !b2
  !b2
  !b2
  !b2
  !b2
  !end

.subE5C3
  db 12
  !rest
  db 12,$27
  !fs6
  !rest
  !fs6
  !rest
  !fs6
  !rest
  !fs6
  !rest
  !e6
  !rest
  !e6
  !rest
  !e6
  !rest
  !e6
  !rest
  !fs6
  !rest
  !fs6
  !rest
  !fs6
  !rest
  !fs6
  !rest
  !e6
  !rest
  !e6
  !rest
  !e6
  !rest
  !e6
  !end

.subE5E7
  !dynamicVolume,24,100
  db 72,$77
  !c7
  !dynamicVolume,24,150
  db 24
  !tie
  !volume,200
  !dynamicVolume,36,100
  db 96
  !b6
  !volume,200
  !dynamicVolume,24,100
  db 72
  !a6
  !dynamicVolume,24,150
  db 24
  !tie
  !volume,200
  !dynamicVolume,36,100
  db 36
  !g6
  !dynamicVolume,12,150
  db 12
  !tie
  !volume,200
  !dynamicVolume,46,50
  db 46
  !tie
  db 2
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
