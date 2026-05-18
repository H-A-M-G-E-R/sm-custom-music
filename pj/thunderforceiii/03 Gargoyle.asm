asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr03 = $16
!instr04 = $17
!instr05 = $18
!instr06 = $19
!instr09 = $1A
!instr12 = $1B
!instr13 = $1C
!instr14 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr05,$FF,$EE,$B8,$05,$00
  db !instr06,$FF,$E7,$B8,$0D,$00
  db !instr09,$FF,$E0,$B8,$07,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample05,Sample05+351
  dw Sample06,Sample06+324
  dw Sample09,Sample09+153
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock !p_songSpecificData nspc ; sample data
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample06: incbin "Sample06.brr"
  Sample09: incbin "Sample09.brr"
  Sample12: incbin "Sample12.brr"
  Sample13: incbin "Sample13.brr"
  Sample14: incbin "Sample14.brr"

NoteLengthTable: ; note length table
  db $32,$65,$7F,$98,$B2,$CB,$E5,$FC
  db $32,$4C,$65,$72,$7F,$8C,$98,$A5,$B2,$BF,$CB,$D8,$E5,$F2,$F4,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
-
  dw .pattern1
  dw .pattern1
  dw .pattern2
  dw .pattern1
  dw .pattern1
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,100,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,28
  !instr,!instr04
  !volume,220
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 6,$4E
  !c3
  db 12,$7E
  !c4
  db 6,$4E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 6,$4E
  !c3
  db 12,$7E
  !c4
  db 6,$4E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 12,$7E
  !as2
  db 12,$6E
  !as3
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 6,$4E
  !c3
  db 12,$7E
  !c4
  db 6,$4E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 12,$7E
  !c3
  db 12,$6E
  !c3
  db 12,$7E
  !c3
  db 12,$6E
  !c4
  db 6,$4E
  !c3
  db 12,$7E
  !c4
  db 6,$4E
  !c3
  db 12,$7E
  !c4
  db 12,$6E
  !as3
  db 12,$7E
  !g3
  db 12,$6E
  !f3
  !end

.pattern0_1
  !instr,!instr05
  !volume,255
  db 24,$7E
  !c4
  db 12
  !ds4
  db 6
  !c4
  db 12
  !f4
  db 6
  !c4
  db 24
  !g4
  db 12
  !c4
  db 24
  !c4
  db 12
  !ds4
  db 6
  !c4
  db 12
  !f4
  db 6
  !c4
  db 12
  !g4
  db 24
  !as3
  !c4
  db 12
  !ds4
  db 6
  !c4
  db 12
  !f4
  db 6
  !c4
  db 24
  !g4
  db 12
  !c4
  db 24
  !c4
  db 12
  !ds4
  db 6
  !c4
  !f4
  db 12
  !c5
  !as4
  !g4
  !f4
  !end

.pattern0_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern0_3
  !volume,240
  !instr,!instr06
  db 96,$7E
  !c2
  !pitchSlide,1,191 : !c4
  !tie
  !c2
  !pitchSlide,1,191 : !g6
  !tie
  !end

.pattern0_4
  !volume,130
  !instr,!instr05
  !pan,20
  !subtranspose,12
  db 24
  !rest
  db 24,$7E
  !c4
  db 12
  !ds4
  db 6
  !c4
  db 12
  !f4
  db 6
  !c4
  db 24
  !g4
  db 12
  !c4
  db 24
  !c4
  db 12
  !ds4
  db 6
  !c4
  db 12
  !f4
  db 6
  !c4
  db 12
  !g4
  db 24
  !as3
  !c4
  db 12
  !ds4
  db 6
  !c4
  db 12
  !f4
  db 6
  !c4
  db 24
  !g4
  db 12
  !c4
  db 24
  !c4
  db 12
  !ds4
  db 6
  !c4
  !f4
  db 12
  !c5
  !as4
  !end

.pattern0_5
  !volume,120
  !subtranspose,20
  !instr,!instr06
  !pan,0
  db 24
  !rest
  db 96,$7E
  !c2
  !pitchSlide,1,167 : !c4
  db 72
  !tie
  db 24
  !rest
  db 96
  !c2
  !pitchSlide,1,167 : !g6
  !pan,10
  db 72
  !tie
  !end

.pattern1_0
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !as2
  db 6,$6E
  !as3
  db 6,$7E
  !as2
  db 6,$6E
  !as3
  db 6,$7E
  !as2
  db 6,$6E
  !as3
  db 6,$7E
  !as2
  db 6,$6E
  !as3
  db 6,$7E
  !gs2
  db 6,$6E
  !gs3
  db 6,$7E
  !gs2
  db 6,$6E
  !gs3
  db 6,$7E
  !gs2
  db 6,$6E
  !gs3
  db 6,$7E
  !gs2
  db 6,$6E
  !gs3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  !end

.pattern1_1
  db 6,$7E
  !c4
  !c4
  !c5
  db 12
  !c4
  db 6
  !c4
  db 12
  !c5
  db 6
  !as3
  !as3
  !as4
  db 12
  !as3
  db 6
  !as3
  db 12
  !as4
  db 6
  !gs3
  !gs3
  !gs4
  db 12
  !gs3
  db 6
  !gs3
  db 12
  !gs4
  db 6
  !g3
  !g3
  !g4
  db 12
  !g3
  db 6
  !g3
  db 12
  !g4
  !end

.pattern1_2
  !pan,10
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern1_3
  !volume,170
  !instr,!instr09
  db 6,$7E
  !c5
  !c5
  !g5
  !g5
  !f5
  !f5
  !ds5
  !ds5
  !d5
  !d5
  !as4
  !as4
  !d5
  !d5
  !f5
  !f5
  !c5
  !c5
  !g5
  !g5
  !f5
  !f5
  !ds5
  !ds5
  !d5
  !d5
  !as4
  !as4
  !d5
  !d5
  !f5
  !f5
  !end

.pattern1_4
  db 24
  !rest
  db 6,$7E
  !c4
  !c4
  !c5
  db 12
  !c4
  db 6
  !c4
  db 12
  !c5
  db 6
  !as3
  !as3
  !as4
  db 12
  !as3
  db 6
  !as3
  db 12
  !as4
  db 6
  !gs3
  !gs3
  !gs4
  db 12
  !gs3
  db 6
  !gs3
  db 12
  !gs4
  db 6
  !g3
  !g3
  !g4
  !g3
  !end

.pattern1_5
  !pan,0
  !volume,110
  !subtranspose,40
  !instr,!instr09
  db 24
  !rest
  db 6,$7E
  !c5
  !c5
  !g5
  !g5
  !f5
  !f5
  !ds5
  !ds5
  !d5
  !d5
  !as4
  !as4
  !d5
  !d5
  !f5
  !f5
  !c5
  !c5
  !g5
  !g5
  !f5
  !f5
  !ds5
  !ds5
  !d5
  !d5
  !as4
  !as4
  !end

.pattern2_0
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  !end

.pattern2_1
  db 6,$7E
  !f3
  !f3
  !f4
  db 12
  !f3
  db 6
  !f3
  db 12
  !f4
  db 6
  !f3
  !f3
  !f4
  db 12
  !f3
  db 6
  !f3
  db 12
  !f4
  db 6
  !g3
  !g3
  !g4
  db 12
  !g3
  db 6
  !g3
  db 12
  !g4
  db 6
  !g3
  !g3
  !g4
  db 12
  !g3
  db 6
  !g3
  db 12
  !g4
  !end

.pattern2_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern2_3
  db 6,$7E
  !f5
  !gs5
  !c6
  !f5
  !gs5
  !c6
  !f5
  !gs5
  !c6
  !f5
  !gs5
  !c6
  !f5
  !gs5
  !c6
  !f6
  !f5
  !b5
  !d6
  !f5
  !b5
  !d6
  !f5
  !b5
  !d6
  !f5
  !b5
  !d6
  !f5
  !b5
  !d6
  !g6
  !end

.pattern2_4
  db 24
  !rest
  db 6,$7E
  !f3
  !f3
  !f4
  db 12
  !f3
  db 6
  !f3
  db 12
  !f4
  db 6
  !f3
  !f3
  !f4
  db 12
  !f3
  db 6
  !f3
  db 12
  !f4
  db 6
  !g3
  !g3
  !g4
  db 12
  !g3
  db 6
  !g3
  db 12
  !g4
  db 6
  !g3
  !g3
  !g4
  !g3
  !end

.pattern2_5
  db 24
  !rest
  db 6,$7E
  !f5
  !gs5
  !c6
  !f5
  !gs5
  !c6
  !f5
  !gs5
  !c6
  !f5
  !gs5
  !c6
  !f5
  !gs5
  !c6
  !f6
  !f5
  !b5
  !d6
  !f5
  !b5
  !d6
  !f5
  !b5
  !d6
  !f5
  !b5
  !d6
  !end

.pattern3_0
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !f2
  db 6,$6E
  !f3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !g2
  db 6,$6E
  !g3
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  db 6,$7E
  !c3
  db 6,$6E
  !c4
  !end

.pattern3_1
  db 6,$7E
  !f3
  !f3
  !f4
  db 12
  !f3
  db 6
  !f3
  db 12
  !f4
  db 6
  !g3
  !g3
  !g4
  db 12
  !g3
  db 6
  !g3
  db 12
  !g4
  db 6
  !c4
  !c4
  !c5
  db 12
  !c4
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  !c4
  !c5
  db 12
  !c4
  db 6
  !c4
  db 12
  !c5
  !end

.pattern3_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,36,0
  db 4
  %percNote(!instr14-!instr12)
  !e5
  !c5
  db 6
  !b4
  !e5
  db 4
  !d5
  !c5
  !b4
  !pan,10
  db 12
  %percNote(!instr13-!instr12)
  !end

.pattern3_3
  db 6,$6E
  !f4
  !gs4
  !c5
  !f4
  !gs4
  !c5
  !f5
  !gs5
  !f4
  !b4
  !d5
  !f4
  !b4
  !d5
  !g5
  !b5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c6
  !end

.pattern3_4
  db 24
  !rest
  db 6,$7E
  !f3
  !f3
  !f4
  db 12
  !f3
  db 6
  !f3
  db 12
  !f4
  db 6
  !g3
  !g3
  !g4
  db 12
  !g3
  db 6
  !g3
  db 12
  !g4
  db 6
  !c4
  !c4
  !c5
  db 12
  !c4
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  !c4
  !c5
  !c4
  !end

.pattern3_5
  db 24
  !rest
  db 6,$6E
  !f4
  !gs4
  !c5
  !f4
  !gs4
  !c5
  !f5
  !fs5
  !f4
  !b4
  !d5
  !f4
  !b4
  !d5
  !g5
  !b5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !end

.pattern4_0
  db 6,$7E
  !as2
  db 6,$6E
  !as2
  db 6,$7E
  !f3
  db 6,$6E
  !as2
  db 6,$7E
  !ds3
  db 6,$6E
  !as2
  db 6,$7E
  !d3
  db 6,$6E
  !as2
  db 6,$7E
  !c3
  db 6,$6E
  !as2
  db 6,$7E
  !d3
  db 6,$6E
  !as2
  db 6,$7E
  !f3
  db 6,$6E
  !as2
  db 6,$7E
  !as3
  db 6,$6E
  !as2
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !g3
  db 6,$6E
  !c3
  db 6,$7E
  !f3
  db 6,$6E
  !c3
  db 6,$7E
  !ds3
  db 6,$6E
  !c3
  db 6,$7E
  !d3
  db 6,$6E
  !c3
  db 6,$7E
  !ds3
  db 6,$6E
  !c3
  db 6,$7E
  !g3
  db 6,$6E
  !c3
  db 6,$7E
  !c4
  db 6,$6E
  !c3
  db 6,$7E
  !d3
  db 6,$6E
  !d3
  db 6,$7E
  !gs3
  db 6,$6E
  !d3
  db 6,$7E
  !g3
  db 6,$6E
  !d3
  db 6,$7E
  !f3
  db 6,$6E
  !d3
  db 6,$7E
  !ds3
  db 6,$6E
  !d3
  db 6,$7E
  !f3
  db 6,$6E
  !d3
  db 6,$7E
  !gs3
  db 6,$6E
  !d3
  db 6,$7E
  !d4
  db 6,$6E
  !d3
  db 6,$7E
  !ds3
  db 6,$6E
  !ds3
  db 6,$7E
  !as3
  db 6,$6E
  !ds3
  db 6,$7E
  !gs3
  db 6,$6E
  !ds3
  db 6,$7E
  !g3
  db 6,$6E
  !ds3
  db 6,$7E
  !f3
  db 6,$6E
  !f3
  db 6,$7E
  !c4
  db 6,$6E
  !f3
  db 6,$7E
  !as3
  db 6,$6E
  !f3
  db 6,$7E
  !gs3
  db 6,$6E
  !f3
  !end

.pattern4_1
  db 18,$7E
  !as3
  !as3
  db 12
  !as3
  db 18
  !as3
  !as3
  db 12
  !as3
  db 18
  !c4
  !c4
  db 12
  !c4
  db 18
  !c4
  !c4
  db 12
  !c4
  db 18
  !d4
  !d4
  db 12
  !d4
  db 18
  !d4
  !d4
  db 12
  !d4
  db 18
  !ds4
  !ds4
  db 12
  !ds4
  db 18
  !f4
  !f4
  db 12
  !f4
  !end

.pattern4_2
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,48,0
  db 6
  %percNote(!instr14-!instr12)
  !e5
  !d5
  !c5
  !b4
  !b4
  !g4
  !g4
  !end

.pattern4_3
  !instr,!instr03
  !volume,200
  !vibrato,18,30,65
  db 18,$7E
  !f5
  !g5
  db 12
  !gs5
  db 18
  !as5
  !gs5
  db 12
  !f5
  db 18
  !g5
  !gs5
  db 12
  !as5
  db 18
  !c6
  !as5
  db 12
  !g5
  db 18
  !gs5
  !as5
  db 12
  !c6
  db 18
  !d6
  !ds6
  db 12
  !d6
  db 48
  !ds6
  !f6
  !end

.pattern4_4
  db 24
  !rest
  db 18,$7E
  !as3
  !as3
  db 12
  !as3
  db 18
  !as3
  !as3
  db 12
  !as3
  db 18
  !c4
  !c4
  db 12
  !c4
  db 18
  !c4
  !c4
  db 12
  !c4
  db 18
  !d4
  !d4
  db 12
  !d4
  db 18
  !d4
  !d4
  db 12
  !d4
  db 18
  !ds4
  !ds4
  db 12
  !ds4
  db 18
  !f4
  db 6
  !f4
  !end

.pattern4_5
  !pan,0
  !instr,!instr03
  !subtranspose,10
  db 24
  !rest
  !volume,110
  !vibrato,18,30,65
  db 18,$7E
  !f5
  !g5
  db 12
  !gs5
  db 18
  !as5
  !gs5
  db 12
  !f5
  db 18
  !g5
  !gs5
  db 12
  !as5
  db 18
  !c6
  !as5
  db 12
  !g5
  db 18
  !gs5
  !as5
  db 12
  !c6
  db 18
  !d6
  !ds6
  db 12
  !d6
  db 48
  !ds6
  db 24
  !f6
  !end

.pattern5_0
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c4
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !as3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !gs3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !g3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c4
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !as3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !gs3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !g3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c4
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c4
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c4
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c3
  db 6,$6E
  !c3
  db 6,$7E
  !c4
  db 6,$6E
  !as3
  db 6,$7E
  !gs3
  db 6,$6E
  !g3
  db 6,$7E
  !f3
  db 6,$6E
  !ds3
  !end

.pattern5_1
  db 6,$7E
  !c4
  !c4
  db 12
  !c5
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  !c4
  !c4
  db 12
  !as4
  db 6
  !c4
  db 12
  !as4
  db 6
  !c4
  !c4
  !c4
  db 12
  !gs4
  db 6
  !c4
  db 12
  !gs4
  db 6
  !c4
  !c4
  !c4
  db 12
  !g4
  db 6
  !c4
  db 12
  !g4
  db 6
  !c4
  !c4
  !c4
  db 12
  !c5
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  !c4
  !c4
  db 12
  !as4
  db 6
  !c4
  db 12
  !as4
  db 6
  !c4
  !c4
  !c4
  db 12
  !gs4
  db 6
  !c4
  db 12
  !gs4
  db 6
  !c4
  !c4
  !c4
  db 12
  !g4
  db 6
  !c4
  db 12
  !g4
  db 6
  !c4
  !c4
  !c4
  db 12
  !c5
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  !c4
  !c4
  db 12
  !c5
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  !c4
  !c4
  db 12
  !c5
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  db 48
  !as3
  !end

.pattern5_2
  !pan,10
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,48,0
  %percNote(!instr14-!instr12)
  !e5
  !c5
  !b4
  !a4
  !gs5
  !g4
  !f4
  !end

.pattern5_3
  db 6,$7E
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !as4
  !d5
  !f5
  !as4
  !d5
  !f5
  !as4
  !d5
  !gs4
  !c5
  !ds5
  !gs4
  !c5
  !ds5
  !gs4
  !c5
  !g4
  !b4
  !d5
  !g4
  !b4
  !d5
  !g4
  !b4
  !c5
  !ds5
  !g5
  !c6
  !ds6
  !c6
  !g5
  !ds5
  !as4
  !d5
  !f5
  !as5
  !d6
  !as5
  !f5
  !d5
  !gs4
  !c5
  !ds5
  !gs5
  !c6
  !gs5
  !ds5
  !c5
  !g4
  !b4
  !d5
  !f5
  !g5
  !b5
  !d6
  !f6
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !f5
  db 96
  !c6
  !pitchSlide,48,48 : !as5
  !end

.pattern5_4
  db 24
  !rest
  db 6,$7E
  !c4
  !c4
  db 12
  !c5
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  !c4
  !c4
  db 12
  !as4
  db 6
  !c4
  db 12
  !as4
  db 6
  !c4
  !c4
  !c4
  db 12
  !gs4
  db 6
  !c4
  db 12
  !gs4
  db 6
  !c4
  !c4
  !c4
  db 12
  !g4
  db 6
  !c4
  db 12
  !g4
  db 6
  !c4
  !c4
  !c4
  db 12
  !c5
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  !c4
  !c4
  db 12
  !as4
  db 6
  !c4
  db 12
  !as4
  db 6
  !c4
  !c4
  !c4
  db 12
  !gs4
  db 6
  !c4
  db 12
  !gs4
  db 6
  !c4
  !c4
  !c4
  db 12
  !g4
  db 6
  !c4
  db 12
  !g4
  db 6
  !c4
  !c4
  !c4
  db 12
  !c5
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  !c4
  !c4
  db 12
  !c5
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  !c4
  !c4
  db 12
  !c5
  db 6
  !c4
  db 12
  !c5
  db 6
  !c4
  db 24
  !as3
  !end

.pattern5_5
  db 24
  !rest
  db 6,$7E
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !as4
  !d5
  !f5
  !as4
  !d5
  !f5
  !as4
  !d5
  !gs4
  !c5
  !ds5
  !gs4
  !c5
  !ds5
  !gs4
  !c5
  !g4
  !b4
  !d5
  !g4
  !b4
  !d5
  !g4
  !b4
  !c5
  !ds5
  !g5
  !c6
  !ds6
  !c6
  !g5
  !ds5
  !as4
  !d5
  !f5
  !as5
  !d6
  !as5
  !f5
  !d5
  !gs4
  !c5
  !ds5
  !gs5
  !c6
  !gs5
  !ds5
  !c5
  !g4
  !b4
  !d5
  !f5
  !g5
  !b5
  !d6
  !f6
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !c5
  !ds5
  !g5
  !f5
  db 72
  !c6
  !pitchSlide,48,24 : !as5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
