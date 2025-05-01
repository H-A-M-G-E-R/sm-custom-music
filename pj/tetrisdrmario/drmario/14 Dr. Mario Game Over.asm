asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr02 = $17
!instr03 = $18
!instr07 = $19
!instr08 = $1A
!instr0A = $1B
!instr0F = $1C
!instr10 = $1D
!instr13 = $1E
!instr14 = $1F
!instr15 = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E1,$B8,$03,$00
  db !instr02,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr0A,$FF,$FD,$B8,$06,$F0
  db !instr0F,$FF,$E1,$B8,$03,$00
  db !instr10,$FF,$E1,$B8,$08,$F0
  db !instr13,$F8,$E1,$B8,$03,$00
  db !instr14,$FF,$E1,$B8,$04,$70
  db !instr15,$FF,$E1,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+27
  dw Sample02,Sample02+27
  dw Sample03,Sample03+27
  dw Sample07,Sample07+1971
  dw Sample08,Sample08+1332
  dw Sample0A,Sample0A+27
  dw Sample0F,Sample0F+27
  dw Sample10,Sample10+27
  dw Sample13,Sample13+27
  dw Sample14,Sample14+27
  dw Sample15,Sample15+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample02: incbin "Sample02.brr"
  Sample03: incbin "Sample03.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"
  Sample13: incbin "Sample13.brr"
  Sample14: incbin "Sample14.brr"
  Sample15: incbin "Sample15.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerF7F9

TrackerF7F9:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, 0, .pattern2_3, 0, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, 0, .pattern3_3, 0, 0, 0, 0

.pattern0_0
  !tempo,26
  !musicVolume,210;240
  !volume,240
  !instr,!instr15
  !subtranspose,80
  !pan,10
  !echo,%00001111,40,40
  !echoParameters,2,40,2
  !dynamicVolume,40,0
  db 40,$7F
  !a6
  !pitchSlide,0,40 : !a2
  !volume,200
  !musicVolume,175;200
  db 1
  !rest
  !end

.pattern0_1
  !volume,240
  !instr,!instr15
  !pan,10
  !dynamicVolume,40,0
  db 40,$7F
  !d7
  !pitchSlide,0,40 : !d3
  !volume,200
  db 1
  !rest

.pattern0_2
  !volume,240
  !instr,!instr01
  !pan,10
  !instr,!instr07
  db 16,$7F
  !g3
  !instr,!instr0F
  db 8,$2F
  !e3
  !d3
  db 9
  !fs3

.pattern0_3
  !volume,240
  !instr,!instr01
  !pan,10
  db 16
  !rest
  !instr,!instr0F
  db 8,$2F
  !ds3
  !cs3
  db 9
  !f3

.pattern1_0
  !transpose,244
  !volume,50
  !dynamicVolume,168,240
  !vibrato,0,200,245
  !dynamicVibrato,168
  !instr,!instr13
  db 96,$7F
  !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !tie
  !pitchSlide,0,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !transpose,0
  !endVibrato
  !instr,!instr02
  db 7
  !g3
  db 5
  !fs3
  db 7
  !rest
  db 5
  !f3
  db 7
  !rest
  db 5
  !e3
  db 7
  !rest
  db 5
  !ds3
  db 7
  !rest
  db 5
  !d3
  db 7
  !g3
  db 5
  !fs3
  db 7
  !rest
  db 5
  !f3
  db 7
  !rest
  db 5
  !e3
  db 7
  !rest
  db 5
  !ds3
  db 7
  !rest
  db 5
  !d3
  db 7
  !gs3
  db 5
  !gs3
  db 12
  !rest
  db 6
  !g4
  db 21
  !rest
  !instr,!instr03
  db 3,$7B
  !g7
  db 3,$7F
  !gs7
  !end

.pattern1_1
  !transpose,244
  !volume,50
  !dynamicVolume,168,240
  !vibrato,0,150,240
  !dynamicVibrato,144
  !instr,!instr13
  db 96,$7F
  !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !tie
  !pitchSlide,0,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !pitchSlide,5,1 : !f7
  !pitchSlide,5,1 : !e7
  !pitchSlide,5,1 : !ds7
  !pitchSlide,5,1 : !c7
  !transpose,0
  !volume,255
  !endVibrato
  !instr,!instr01
  db 7,$1F
  !g4
  db 5
  !fs4
  db 7
  !rest
  db 5
  !f4
  db 7
  !rest
  db 5
  !e4
  db 7
  !rest
  db 5
  !ds4
  db 7
  !rest
  db 5
  !d4
  db 7
  !g4
  db 5
  !fs4
  db 7
  !rest
  db 5
  !f4
  db 7
  !rest
  db 5
  !e4
  db 7
  !rest
  db 5
  !ds4
  db 7
  !rest
  db 5
  !d4
  db 7
  !gs4
  db 5
  !gs4
  db 12
  !rest
  db 6
  !g5
  db 21
  !rest
  !volume,240
  !instr,!instr03
  db 3,$7B
  !g7
  db 3,$7F
  !gs7

.pattern1_2
  db 96
  !rest
  db 48
  !rest
  !instr,!instr10
  !vibrato,0,220,250
  db 48,$77
  !g5
  !pitchSlide,0,48 : !c2
  !endVibrato
  !instr,!instr07
  db 24,$7F
  !g3
  !instr,!instr08
  !g4
  !instr,!instr07
  !g3
  !instr,!instr08
  !g4
  !instr,!instr07
  !g3
  !instr,!instr08
  db 6
  !g4
  db 18
  !g4
  !instr,!instr07
  db 24
  !g3
  db 9
  !rest

.pattern1_3
  db 96
  !rest
  !instr,!instr14
  db 4,$77
  !d6
  db 6
  !f6
  db 4
  !d6
  db 36
  !f6
  db 4
  !d6
  db 42
  !f6
  !instr,!instr0A
  db 13,$7B
  !g4
  db 11,$77
  !g4
  db 13,$7B
  !g4
  db 11,$77
  !g4
  db 13,$7B
  !g4
  db 11,$77
  !g4
  db 13,$7B
  !g4
  db 11,$77
  !g4
  db 13,$7B
  !g4
  db 11,$77
  !g4
  db 24
  !g4
  db 24,$7B
  !g4
  db 9
  !rest

.pattern1_4
  !volume,200
  db 96
  !rest
  !rest
  !instr,!instr15
  db 40,$75
  !c3
  db 44
  !c4
  db 12
  !c3
  db 30
  !tie
  db 45
  !c4
  db 6
  !rest

.pattern1_5
  !volume,200
  db 96
  !rest
  !rest
  !instr,!instr14
  db 96,$7F
  !a2
  db 60
  !tie
  db 7
  !rest
  !instr,!instr14
  db 10,$77
  !g6
  db 4
  !rest

.pattern2_0
  !instr,!instr01
  !volume,0
  !dynamicVolume,15,200
  db 15,$7F
  !g7
  !pitchSlide,0,53 : !d7
  db 20
  !tie
  !dynamicVolume,13,0
  db 13
  !tie
  !volume,200
  db 24
  !rest
  !end

.pattern2_1
  !instr,!instr01
  !volume,0
  !dynamicVolume,15,200
  db 15,$7F
  !fs7
  !pitchSlide,0,53 : !cs7
  db 20
  !tie
  !dynamicVolume,13,0
  db 13
  !tie
  !volume,200
  db 24
  !rest

.pattern2_3
  !instr,!instr03
  db 45,$7F
  !g5
  !pitchSlide,0,45 : !e5
  !slideOut,4,4,255
  db 9
  !e5
  !e5
  !e5

.pattern3_0
  !tempo,19
  db 7,$02
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$02
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$03
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$04
  !gs7
  db 5
  !g7
  db 7,$05
  !fs7
  db 5
  !ds7
  db 7,$06
  !gs7
  db 5
  !g7
  db 7,$07
  !fs7
  db 5
  !ds7
  db 7,$02
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$02
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$03
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$04
  !gs7
  db 5
  !g7
  db 7,$05
  !fs7
  db 5
  !ds7
  db 7,$06
  !gs7
  db 5
  !g7
  db 7,$07
  !fs7
  db 5
  !ds7
  db 7,$02
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  !end

.pattern3_1
  db 7
  !rest
  db 7,$02
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$02
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$03
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$03
  !gs7
  db 5
  !g7
  db 7,$04
  !fs7
  db 5
  !ds7
  db 7,$05
  !gs7
  db 5
  !g7
  db 7,$06
  !fs7
  db 5
  !ds7
  db 7,$02
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$02
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$03
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7,$03
  !gs7
  db 5
  !g7
  db 7,$04
  !fs7
  db 5
  !ds7
  db 7,$05
  !gs7
  db 5
  !g7
  db 7,$06
  !fs7
  db 5
  !ds7
  db 7,$02
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  db 7
  !fs7
  db 5
  !ds7
  db 7
  !gs7
  db 5
  !g7
  !fs7

.pattern3_3
  db 9,$7F
  !e5
  !e5
  !e5
  db 6
  !e5
  !endSlide
  db 74
  !rest
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  db 13
  !rest
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
