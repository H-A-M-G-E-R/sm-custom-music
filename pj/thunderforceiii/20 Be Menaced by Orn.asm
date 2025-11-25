asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr03 = $18
!instr04 = $19
!instr06 = $1A
!instr07 = $1B
!instr12 = $1C
!instr13 = $1D
!instr14 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$EB,$B8,$02,$00
  db !instr01,$FF,$F1,$B8,$0C,$00
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr06,$FF,$E7,$B8,$0D,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1035
  dw Sample01,Sample01+243
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample06,Sample06+324
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample01: incbin "Sample01.brr"
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
  Sample06: incbin "Sample06.brr"
  Sample07: incbin "Sample07.brr"
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
  dw .pattern2
  dw .pattern1
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern4
  dw .pattern5
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern1_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern2_2, .pattern3_3, .pattern1_4, .pattern2_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,37
  !instr,!instr01
  db 6,$6E
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !end

.pattern0_1
  !volume,180
  db 24
  !rest
  !subtranspose,20
  !pan,20
  !instr,!instr06
  db 96,$7E
  !cs2
  db 72
  !tie
  !volume,255
  !subtranspose,0
  !pan,10
  !instr,!instr07
  db 96
  !cs7
  !pitchSlide,1,191 : !cs2
  !tie
  !end

.pattern0_2
  !instr,!instr06
  db 96,$7E
  !e2
  !tie
  !volume,155
  !pan,0
  !subtranspose,40
  db 24
  !rest
  !instr,!instr07
  db 96
  !cs7
  !pitchSlide,1,191 : !cs2
  db 72
  !tie
  !end

.pattern0_3
  !instr,!instr06
  db 96,$7E
  !cs2
  !tie
  !tie
  !tie
  !end

.pattern0_4
  db 48,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  !end

.pattern0_5
  !volume,145
  !subtranspose,10
  !pan,20
  db 12
  !rest
  !instr,!instr01
  db 6,$6E
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !a4
  !cs5
  !cs4
  !fs4
  !gs4
  !a4
  !e4
  !gs4
  !end

.pattern1_0
  !volume,250
  !instr,!instr03
  !vibrato,36,30,80
  db 84,$6E
  !e5
  db 6
  !e5
  !ds5
  db 48
  !cs5
  db 18
  !cs5
  !ds5
  db 12
  !e5
  db 36
  !a5
  !gs5
  db 24
  !a5
  db 36
  !a5
  !gs5
  db 24
  !a5
  !end

.pattern1_1
  !volume,240
  !vibrato,36,30,80
  !instr,!instr00
  db 84,$6E
  !cs5
  db 6
  !cs5
  !b4
  db 48
  !gs4
  db 18
  !gs4
  !b4
  db 12
  !cs5
  db 36
  !fs5
  db 60
  !e5
  db 36
  !fs5
  db 60
  !e5
  !end

.pattern1_2
  !pan,10
  !subtranspose,0
  !volume,220
  !instr,!instr04
  db 6,$6E
  !cs2
  !cs3
  db 12
  !cs3
  !cs3
  db 6
  !cs2
  !cs3
  db 12
  !cs3
  !cs3
  db 6
  !cs2
  !cs2
  !cs2
  !cs2
  !cs2
  !cs3
  db 12
  !cs3
  !cs3
  db 6
  !cs2
  !cs3
  db 12
  !cs3
  !cs3
  db 6
  !cs2
  !cs2
  !cs2
  !cs2
  !e2
  !e3
  db 12
  !e3
  !e3
  db 6
  !e2
  !e3
  db 12
  !e3
  !e3
  db 6
  !e2
  !e2
  !e2
  !e2
  !e2
  !e3
  db 12
  !e3
  !e3
  db 6
  !e2
  !e3
  db 12
  !e3
  !e3
  db 6
  !e2
  !e2
  !e2
  !e2
  !end

.pattern1_3
  !volume,160
  !instr,!instr06
  !pan,20
  !dynamicPan,96,0
  db 6,$6E
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !dynamicPan,96,20
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !dynamicPan,96,0
  !e5
  !gs5
  !b5
  !b5
  !e5
  !gs5
  !b5
  !b5
  !e5
  !gs5
  !b5
  !b5
  !e5
  !gs5
  !b5
  !b5
  !dynamicPan,96,20
  !e5
  !gs5
  !b5
  !b5
  !e5
  !gs5
  !b5
  !b5
  !e5
  !gs5
  !b5
  !b5
  !e5
  !gs5
  !b5
  !b5
  !end

.pattern1_4
  db 6,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  !end

.pattern1_5
  !pan,20
  !volume,150
  !subtranspose,50
  db 24
  !rest
  !instr,!instr03
  !vibrato,36,30,80
  db 84,$6E
  !e5
  db 6
  !e5
  !ds5
  db 48
  !cs5
  db 18
  !cs5
  !ds5
  db 12
  !e5
  db 36
  !a5
  !gs5
  db 24
  !a5
  db 36
  !a5
  !gs5
  !end

.pattern2_0
  !instr,!instr03
  !vibrato,36,30,80
  db 84,$6E
  !e5
  db 6
  !e5
  !ds5
  db 48
  !cs5
  db 18
  !cs5
  !ds5
  db 12
  !e5
  db 96
  !fs4
  !pitchSlide,6,12 : !fs5
  db 48
  !gs5
  !fs5
  !end

.pattern2_1
  db 84,$6E
  !cs5
  db 6
  !cs5
  !b4
  db 48
  !gs4
  db 18
  !gs4
  !b4
  db 12
  !cs5
  db 96
  !ds4
  !pitchSlide,6,12 : !ds5
  db 48
  !e5
  !ds5
  !end

.pattern2_2
  !pan,10
  !subtranspose,0
  !volume,220
  !instr,!instr04
  db 6,$6E
  !cs2
  !cs3
  db 12
  !cs3
  !cs3
  db 6
  !cs2
  !cs3
  db 12
  !cs3
  !cs3
  db 6
  !cs2
  !cs2
  !cs2
  !cs2
  !cs2
  !cs3
  db 12
  !cs3
  !cs3
  db 6
  !cs2
  !cs3
  db 12
  !cs3
  !cs3
  db 6
  !cs2
  !cs2
  !cs2
  !cs2
  !gs2
  !gs3
  db 12
  !gs3
  !gs3
  db 6
  !gs2
  !gs3
  db 12
  !gs3
  !gs3
  db 6
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs3
  db 12
  !gs3
  !gs3
  db 6
  !gs2
  !gs3
  db 12
  !gs3
  !gs3
  db 6
  !gs2
  !gs2
  !gs2
  !gs2
  !end

.pattern2_3
  !dynamicPan,96,0
  db 6,$6E
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !dynamicPan,96,20
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !dynamicPan,96,0
  !gs4
  !b4
  !e5
  !gs5
  !gs4
  !b4
  !e5
  !gs5
  !gs4
  !b4
  !e5
  !gs5
  !gs4
  !b4
  !e5
  !gs5
  !dynamicPan,96,20
  !gs4
  !b4
  !e5
  !gs5
  !gs4
  !b4
  !e5
  !gs5
  !gs4
  !b4
  !e5
  !gs5
  !gs4
  !b4
  !e5
  !gs5
  !end

.pattern2_5
  db 24
  !rest
  !instr,!instr03
  !vibrato,36,30,80
  db 84,$6E
  !e5
  db 6
  !e5
  !ds5
  db 48
  !cs5
  db 18
  !cs5
  !ds5
  db 12
  !e5
  db 96
  !fs4
  !pitchSlide,6,12 : !fs5
  db 48
  !gs5
  db 24
  !fs5
  !end

.pattern3_0
  !instr,!instr03
  !vibrato,36,30,80
  db 84,$6E
  !e5
  db 6
  !e5
  !ds5
  db 48
  !cs5
  db 18
  !cs5
  !ds5
  db 12
  !e5
  db 96
  !fs4
  !pitchSlide,6,12 : !fs5
  db 48
  !gs5
  db 24
  !fs5
  !ds5
  !end

.pattern3_1
  db 84,$6E
  !cs5
  db 6
  !cs5
  !b4
  db 48
  !gs4
  db 18
  !gs4
  !b4
  db 12
  !cs5
  db 96
  !ds4
  !pitchSlide,6,12 : !ds5
  db 48
  !e5
  db 24
  !ds5
  !b4
  !end

.pattern3_3
  !dynamicPan,96,0
  db 6,$6E
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !dynamicPan,96,20
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !cs5
  !fs5
  !gs5
  !cs6
  !dynamicPan,96,0
  !gs4
  !b4
  !e5
  !gs5
  !gs4
  !b4
  !e5
  !gs5
  !gs4
  !b4
  !e5
  !gs5
  !gs4
  !b4
  !e5
  !gs5
  !volume,255
  !pan,10
  db 96,$7E
  !e2
  !pitchSlide,1,95 : !e6
  !end

.pattern4_0
  db 18,$6E
  !cs5
  !gs5
  db 12
  !a5
  db 18
  !cs5
  !b5
  db 12
  !a5
  db 18
  !cs5
  !gs5
  db 12
  !fs5
  db 18
  !cs5
  !e5
  db 12
  !ds5
  db 18
  !cs5
  !gs5
  db 12
  !a5
  db 18
  !cs5
  !b5
  db 12
  !a5
  db 18
  !gs5
  !fs5
  db 12
  !e5
  db 24
  !fs5
  !gs5
  !end

.pattern4_1
  db 18,$6E
  !a4
  !e5
  db 12
  !fs5
  db 18
  !a4
  !gs5
  db 12
  !fs5
  db 18
  !a4
  !e5
  db 12
  !ds5
  db 18
  !a4
  !cs5
  db 12
  !b4
  db 18
  !a4
  !e5
  db 12
  !fs5
  db 18
  !a4
  !gs5
  db 12
  !fs5
  db 18
  !e5
  !ds5
  db 12
  !cs5
  db 24
  !ds5
  !e5
  !end

.pattern4_2
  db 18,$6E
  !e3
  !e3
  db 12
  !e3
  db 18
  !e3
  !e3
  db 12
  !e3
  db 18
  !ds3
  !ds3
  db 12
  !ds3
  db 18
  !ds3
  !ds3
  db 12
  !ds3
  db 18
  !e3
  !e3
  db 12
  !e3
  db 18
  !e3
  !e3
  db 12
  !e3
  db 18
  !fs3
  !fs3
  db 12
  !fs3
  db 18
  !fs3
  !fs3
  db 12
  !fs3
  !end

.pattern4_3
  !volume,160
  !pan,20
  !dynamicPan,96,0
  db 8,$6E
  !e5
  !ds5
  !cs5
  !e5
  !ds5
  !cs5
  !e5
  !ds5
  !cs5
  !e5
  !ds5
  !cs5
  !dynamicPan,96,20
  !fs5
  !e5
  !ds5
  !fs5
  !e5
  !ds5
  !fs5
  !e5
  !ds5
  !fs5
  !e5
  !ds5
  !dynamicPan,96,0
  !e5
  !ds5
  !cs5
  !e5
  !ds5
  !cs5
  !e5
  !ds5
  !cs5
  !e5
  !ds5
  !cs5
  !pan,10
  db 18
  !ds5
  !e5
  db 12
  !fs5
  db 24
  !a5
  !b5
  !end

.pattern4_4
  !pan,20
  !dynamicPan,36,0
  db 6,$7E
  %percNote(!instr14-!instr12)
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,20
  !dynamicPan,36,0
  db 6
  !c5
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,10
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,36,0
  db 6
  %percNote(!instr14-!instr12)
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,20
  !dynamicPan,36,0
  db 6
  !c5
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,10
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,36,0
  db 6
  %percNote(!instr14-!instr12)
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,20
  !dynamicPan,36,0
  db 6
  !c5
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,10
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,36,0
  db 6
  %percNote(!instr14-!instr12)
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,20
  !dynamicPan,36,0
  db 6
  !c5
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,10
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !end

.pattern4_5
  db 24
  !rest
  db 18,$6E
  !cs5
  !gs5
  db 12
  !a5
  db 18
  !cs5
  !b5
  db 12
  !a5
  db 18
  !cs5
  !gs5
  db 12
  !fs5
  db 18
  !cs5
  !e5
  db 12
  !ds5
  db 18
  !cs5
  !gs5
  db 12
  !a5
  db 18
  !cs5
  !b5
  db 12
  !a5
  db 18
  !gs5
  !fs5
  db 12
  !e5
  db 24
  !fs5
  !end

.pattern5_0
  db 18,$6E
  !cs5
  !gs5
  db 12
  !a5
  db 18
  !cs5
  !b5
  db 12
  !a5
  db 18
  !cs5
  !gs5
  db 12
  !fs5
  db 18
  !cs5
  !e5
  db 12
  !ds5
  db 18
  !gs5
  !fs5
  db 12
  !e5
  db 48
  !ds5
  db 18
  !fs5
  !e5
  db 12
  !ds5
  db 24
  !cs5
  !b4
  !end

.pattern5_1
  db 18,$6E
  !a4
  !e5
  db 12
  !fs5
  db 18
  !a4
  !gs5
  db 12
  !fs5
  db 18
  !a4
  !e5
  db 12
  !ds5
  db 18
  !a4
  !cs5
  db 12
  !b4
  db 18
  !e5
  !ds5
  db 12
  !cs5
  db 48
  !b4
  db 18
  !ds5
  !cs5
  db 12
  !b4
  db 24
  !a4
  !gs4
  !end

.pattern5_2
  db 18,$6E
  !e3
  !e3
  db 12
  !e3
  db 18
  !e3
  !e3
  db 12
  !e3
  db 18
  !ds3
  !ds3
  db 12
  !ds3
  db 18
  !ds3
  !ds3
  db 12
  !ds3
  db 18
  !e3
  !e3
  db 12
  !e3
  db 18
  !e3
  !e3
  db 12
  !e3
  db 18
  !b2
  !b2
  db 12
  !b2
  db 18
  !b2
  !b2
  db 12
  !b2
  !end

.pattern5_3
  !pan,20
  !dynamicPan,96,0
  db 8,$6E
  !e5
  !ds5
  !cs5
  !e5
  !ds5
  !cs5
  !e5
  !ds5
  !cs5
  !e5
  !ds5
  !cs5
  !fs5
  !e5
  !ds5
  !fs5
  !e5
  !ds5
  !fs5
  !e5
  !ds5
  !fs5
  !e5
  !ds5
  db 36
  !e5
  db 60
  !ds5
  db 48
  !cs5
  !b4
  !end

.pattern5_4
  !pan,20
  !dynamicPan,36,0
  db 6,$7E
  %percNote(!instr14-!instr12)
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,20
  !dynamicPan,36,0
  db 6
  !c5
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,10
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,36,0
  db 6
  %percNote(!instr14-!instr12)
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,20
  !dynamicPan,36,0
  db 6
  !c5
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,10
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,36,0
  db 6
  %percNote(!instr14-!instr12)
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,20
  !dynamicPan,36,0
  db 6
  !c5
  !c5
  !b4
  !b4
  db 12
  !g4
  !pan,10
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  !dynamicPan,48,0
  db 18
  %percNote(!instr14-!instr12)
  !c5
  db 12
  !b4
  !pan,10
  db 6,$6E
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  !end

.pattern5_5
  db 24
  !rest
  db 18,$6E
  !cs5
  !gs5
  db 12
  !a5
  db 18
  !cs5
  !b5
  db 12
  !a5
  db 18
  !cs5
  !gs5
  db 12
  !fs5
  db 18
  !cs5
  !e5
  db 12
  !ds5
  db 18
  !gs5
  !fs5
  db 12
  !e5
  db 48
  !ds5
  db 18
  !fs5
  !e5
  db 12
  !ds5
  db 24
  !cs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
