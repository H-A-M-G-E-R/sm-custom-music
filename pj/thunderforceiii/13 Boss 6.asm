asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr04 = $18
!instr07 = $19
!instr12 = $1A
!instr13 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$F1,$B8,$0C,$00
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+243
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
  Sample07: incbin "Sample07.brr"
  Sample12: incbin "Sample12.brr"
  Sample13: incbin "Sample13.brr"

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
  dw .pattern2
  dw .pattern3
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern1_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern0_3, .pattern5_4, .pattern0_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,100,2
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,34
  !instr,!instr07
  db 12,$7E
  !b3
  db 24
  !rest
  db 60
  !rest
  db 12
  !b3
  db 24
  !rest
  db 12
  !a3
  db 48
  !rest
  db 12
  !b3
  db 24
  !rest
  db 60
  !rest
  !instr,!instr03
  db 42
  !a2
  !pitchSlide,1,95 : !a6
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern0_1
  !instr,!instr04
  !volume,230
  db 36,$7E
  !e2
  db 36,$6E
  !e2
  db 24,$7E
  !e2
  db 36
  !e2
  db 60,$6E
  !d2
  db 36,$7E
  !e2
  db 36,$6E
  !e2
  db 24,$7E
  !e2
  db 36
  !e2
  db 36,$6E
  !d2
  db 6,$7E
  !d2
  db 6,$6E
  !d2
  db 6,$7E
  !d2
  db 6,$6E
  !d2
  !end

.pattern0_2
  !volume,240
  !instr,!instr01
  db 12,$6E
  !g4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 12
  !fs4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 24
  !b4
  db 12
  !a4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 60
  !d4
  !pitchSlide,30,30 : !d3
  db 12
  !g4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 12
  !fs4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 24
  !b4
  db 12
  !a4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 60
  !d4
  !pitchSlide,30,30 : !d3
  !end

.pattern0_3
  !volume,160
  !pan,20
  !subtranspose,5
  !instr,!instr01
  db 12,$6E
  !g4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 12
  !fs4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 24
  !b4
  db 12
  !a4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 60
  !d4
  !pitchSlide,30,30 : !d3
  db 12
  !g4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 12
  !fs4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 24
  !b4
  db 12
  !a4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 60
  !d4
  !pitchSlide,30,30 : !d3
  !end

.pattern0_4
  !volume,255
  !instr,!instr07
  db 12,$7E
  !b5
  db 24
  !rest
  db 60
  !rest
  db 12
  !b5
  db 24
  !rest
  db 12
  !a5
  db 48
  !rest
  db 12
  !b5
  db 24
  !rest
  db 60
  !rest
  !instr,!instr07
  db 96
  !d2
  !pitchSlide,1,95 : !d6
  !end

.pattern0_5
  !pan,10
  !subtranspose,40
  !volume,120
  db 24
  !rest
  !instr,!instr07
  db 12,$7E
  !b5
  db 24
  !rest
  db 60
  !rest
  db 12
  !b5
  db 24
  !rest
  db 12
  !a5
  db 48
  !rest
  db 12
  !b5
  db 24
  !rest
  db 60
  !rest
  !instr,!instr07
  db 72
  !d2
  !pitchSlide,1,95 : !d6
  !end

.pattern1_0
  db 12,$7E
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
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !end

.pattern1_1
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  !end

.pattern1_2
  db 12,$6E
  !g4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 12
  !g4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 24
  !b4
  !pitchSlide,12,12 : !b3
  db 12
  !g4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 12
  !fs4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 24
  !e4
  !pitchSlide,12,12 : !e3
  !end

.pattern1_3
  !subtranspose,45
  !volume,115
  !pan,20
  db 24
  !rest
  !instr,!instr07
  !vibrato,24,25,70
  db 12,$6E
  !e5
  !fs5
  !g5
  !a5
  !g5
  !fs5
  !e5
  !fs5
  !tie
  !e5
  !fs5
  !g5
  !a5
  !g5
  !end

.pattern1_4
  !volume,180
  !instr,!instr01
  db 12,$6E
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 6
  !b3
  !b3
  !end

.pattern1_5
  !volume,220
  !pan,10
  !instr,!instr07
  !vibrato,24,25,70
  db 12,$6E
  !e5
  !fs5
  !g5
  !a5
  !g5
  !fs5
  !e5
  !fs5
  !tie
  !e5
  !fs5
  !g5
  !a5
  !g5
  db 24
  !fs5
  !end

.pattern2_0
  db 12,$7E
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
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern2_1
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !d2
  db 6,$7E
  !d2
  db 12
  !d2
  db 6,$6E
  !d2
  db 6,$7E
  !d2
  !end

.pattern2_2
  db 12,$6E
  !g4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 12
  !fs4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 24
  !b4
  !pitchSlide,12,12 : !b3
  db 12
  !a4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 60
  !d3
  !pitchSlide,30,30 : !d2
  !end

.pattern2_3
  db 24
  !rest
  db 12,$6E
  !e5
  !fs5
  !g5
  !a5
  !g5
  !fs5
  !e5
  !fs5
  !tie
  !e5
  !fs5
  db 36
  !a5
  !pitchSlide,30,30 : !a2
  !end

.pattern2_4
  db 12,$6E
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 6
  !b3
  !b3
  db 12
  !e3
  db 60
  !a4
  !pitchSlide,30,30 : !a3
  !end

.pattern2_5
  db 12,$6E
  !e5
  !fs5
  !g5
  !a5
  !g5
  !fs5
  !e5
  !fs5
  !tie
  !e5
  !fs5
  db 60
  !a5
  !pitchSlide,30,30 : !a2
  !end

.pattern3_1
  db 12,$7E
  !d2
  db 6,$6E
  !d3
  db 6,$7E
  !d3
  db 12
  !d2
  db 6,$6E
  !d3
  db 6,$7E
  !d3
  db 12
  !d2
  db 6,$6E
  !d3
  db 6,$7E
  !d3
  db 12
  !d2
  db 6,$6E
  !d3
  db 6,$7E
  !d3
  db 12
  !cs2
  db 6,$6E
  !cs3
  db 6,$7E
  !cs3
  db 12
  !cs2
  db 6,$6E
  !cs3
  db 6,$7E
  !cs3
  db 12
  !cs2
  db 6,$6E
  !cs3
  db 6,$7E
  !cs3
  db 12
  !cs2
  db 6,$6E
  !cs3
  db 6,$7E
  !cs3
  !end

.pattern3_2
  db 12,$6E
  !a4
  db 6
  !b3
  !a3
  !g3
  !fs3
  db 12
  !d4
  db 6
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  db 12
  !gs4
  db 6
  !cs3
  !cs3
  !cs3
  !cs3
  db 12
  !cs4
  db 6
  !cs3
  !cs3
  !cs3
  !cs3
  !cs3
  !cs3
  !cs3
  !cs3
  !end

.pattern3_3
  db 24
  !rest
  db 72,$6E
  !a5
  db 24
  !d5
  db 72
  !cs5
  !end

.pattern3_4
  db 12,$6E
  !d3
  db 6
  !a3
  !a3
  db 12
  !d3
  db 6
  !a3
  !a3
  db 12
  !d3
  db 6
  !a3
  !a3
  db 12
  !d3
  db 6
  !a3
  !a3
  db 12
  !cs3
  db 6
  !gs3
  !gs3
  db 12
  !cs3
  db 6
  !gs3
  !gs3
  db 12
  !cs3
  db 6
  !gs3
  !gs3
  db 12
  !cs3
  db 6
  !gs3
  !gs3
  !end

.pattern3_5
  db 72,$6E
  !a5
  db 24
  !d5
  db 72
  !cs5
  db 24
  !e5
  !end

.pattern4_0
  db 12,$7E
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
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern4_1
  db 12,$7E
  !d3
  db 6,$6E
  !d3
  db 6,$7E
  !d3
  db 12
  !d3
  db 6,$6E
  !d3
  db 6,$7E
  !d3
  db 12
  !d3
  db 6,$6E
  !d3
  db 6,$7E
  !d3
  db 12
  !d3
  db 6,$6E
  !d3
  db 6,$7E
  !d3
  db 12
  !e3
  db 6,$6E
  !e3
  db 6,$7E
  !e3
  db 12
  !e3
  db 6,$6E
  !e3
  db 6,$7E
  !e3
  db 12
  !e3
  db 6,$6E
  !e3
  db 6,$7E
  !e3
  db 12
  !e3
  db 6,$6E
  !e3
  db 6,$7E
  !e3
  !end

.pattern4_2
  db 12,$6E
  !a4
  db 6
  !d3
  !d3
  !d3
  !d3
  db 12
  !fs4
  db 6
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  !d3
  db 12
  !e4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 12
  !g4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 24
  !e5
  !pitchSlide,12,12 : !e3
  !end

.pattern4_3
  db 24
  !rest
  db 96,$6E
  !a5
  db 72
  !b5
  !end

.pattern4_4
  db 12,$6E
  !a3
  db 6
  !a3
  !a3
  db 12
  !a3
  db 6
  !a3
  !a3
  db 12
  !a3
  db 6
  !a3
  !a3
  db 12
  !a3
  db 6
  !a3
  !a3
  db 12
  !e4
  db 6
  !b3
  !b3
  db 12
  !e4
  db 6
  !b3
  !b3
  db 12
  !e4
  db 6
  !b3
  !b3
  db 12
  !e4
  db 6
  !b3
  !b3
  !end

.pattern4_5
  db 96,$6E
  !a5
  !b5
  !end

.pattern5_0
  db 12,$7E
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
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern5_1
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  !e2
  db 12,$7E
  !e2
  db 6,$6E
  !d2
  !d2
  db 12,$7E
  !d2
  db 6,$6E
  !d2
  !d2
  db 12,$7E
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !e2
  db 6,$7E
  !e2
  db 12
  !e2
  db 6,$6E
  !d2
  db 6,$7E
  !d2
  db 12
  !d2
  db 6,$6E
  !d2
  db 6,$7E
  !d2
  !end

.pattern5_2
  !instr,!instr01
  db 12,$6E
  !g4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 12
  !fs4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 24
  !b4
  db 12
  !a4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 60
  !d4
  !pitchSlide,30,30 : !d3
  db 12
  !g4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 12
  !fs4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 24
  !b4
  db 12
  !a4
  db 6
  !e3
  !e3
  !e3
  !e3
  db 60
  !d4
  !pitchSlide,30,30 : !d3
  !end

.pattern5_4
  !volume,240
  !instr,!instr07
  db 12,$7E
  !b5
  db 24
  !rest
  db 60
  !rest
  db 12
  !b5
  db 24
  !rest
  db 12
  !a5
  db 48
  !rest
  db 12
  !b5
  db 24
  !rest
  db 60
  !rest
  !instr,!instr07
  db 96
  !d2
  !pitchSlide,1,95 : !d6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
