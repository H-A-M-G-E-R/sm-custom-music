asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr04 = $18
!instr06 = $19
!instr12 = $1A
!instr13 = $1B
!instr14 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$EB,$B8,$02,$00
  db !instr01,$FF,$F1,$B8,$0C,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr06,$FF,$E7,$B8,$0D,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1035
  dw Sample01,Sample01+243
  dw Sample04,Sample04+207
  dw Sample06,Sample06+324
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock !p_songSpecificData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample01: incbin "Sample01.brr"
  Sample04: incbin "Sample04.brr"
  Sample06: incbin "Sample06.brr"
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
  dw .pattern3
  dw .pattern3
  dw .pattern4
  dw .pattern4
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern2_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern2_3, .pattern4_4, .pattern4_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,100,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !volume,230
  !tempo,41
  db 96
  !rest
  !rest
  !end

.pattern0_1
  !volume,230
  !instr,!instr06
  !pan,20
  db 48,$7E
  !d2
  !pitchSlide,1,47 : !d3
  !d2
  !pitchSlide,1,47 : !d3
  !d2
  !pitchSlide,1,47 : !d3
  !d2
  !pitchSlide,1,47 : !d3
  !end

.pattern0_2
  !volume,230
  !instr,!instr06
  !pan,20
  db 48,$7E
  !as2
  !pitchSlide,1,47 : !as3
  !as2
  !pitchSlide,1,47 : !as3
  !as2
  !pitchSlide,1,47 : !as3
  !as2
  !pitchSlide,1,47 : !as3
  !end

.pattern0_3
  !volume,230
  !instr,!instr06
  db 48,$7E
  !g2
  !pitchSlide,1,47 : !g3
  !g2
  !pitchSlide,1,47 : !g3
  !g2
  !pitchSlide,1,47 : !g3
  !g2
  !pitchSlide,1,47 : !g3
  !end

.pattern0_4
  !volume,230
  !pan,10
  db 96
  !rest
  db 72
  !rest
  db 6,$7E
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern0_5
  !volume,230
  db 96
  !rest
  !rest
  !end

.pattern1_0
  !volume,200
  !instr,!instr00
  db 96,$7E
  !gs7
  !pitchSlide,192,12 : !a7
  !tie
  !tie
  db 96,$68
  !tie
  !end

.pattern1_1
  !volume,220
  !instr,!instr00
  !pan,10
  !vibrato,48,20,65
  db 96,$7E
  !gs5
  db 48
  !a5
  db 24
  !b5
  !a5
  db 96
  !gs5
  db 48
  !fs5
  db 24
  !e5
  !fs5
  !end

.pattern1_2
  !volume,110
  !instr,!instr00
  db 24
  !rest
  !subtranspose,40
  !pan,20
  !vibrato,48,20,65
  db 96,$7E
  !gs5
  db 48
  !a5
  db 24
  !b5
  !a5
  db 96
  !gs5
  db 48
  !fs5
  db 24
  !e5
  !end

.pattern1_3
  !volume,240
  !instr,!instr04
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !b2
  db 12,$7E
  !cs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !cs2
  db 12,$6E
  !e2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  !end

.pattern1_4
  !volume,255
  !pan,10
  db 12,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  db 6
  %percNote(!instr14-!instr12)
  !pan,15
  !c5
  !pan,5
  db 12
  !b4
  !pan,10
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  db 6
  %percNote(!instr14-!instr12)
  !pan,15
  !c5
  !pan,5
  db 12
  !b4
  !pan,10
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  db 6
  %percNote(!instr14-!instr12)
  !pan,15
  !c5
  !pan,5
  db 12
  !b4
  !pan,10
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  db 6
  %percNote(!instr14-!instr12)
  !pan,15
  !c5
  !pan,5
  db 12
  !b4
  !pan,10
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  !end

.pattern1_5
  !volume,210
  !pan,20
  !instr,!instr01
  !dynamicPan,192,0
  db 12,$7E
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !dynamicPan,192,20
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !end

.pattern2_0
  db 96,$7E
  !gs7
  !pitchSlide,192,36 : !a7
  !tie
  !tie
  db 96,$68
  !tie
  !end

.pattern2_1
  db 96,$7E
  !gs5
  db 48
  !a5
  db 24
  !b5
  !a5
  db 96
  !gs5
  db 48
  !fs5
  db 24
  !e5
  !fs5
  !end

.pattern2_2
  db 24
  !rest
  db 96,$7E
  !gs5
  db 48
  !a5
  db 24
  !b5
  !a5
  db 96
  !gs5
  db 48
  !fs5
  db 24
  !e5
  !end

.pattern2_3
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !b2
  db 12,$7E
  !cs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !gs2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !cs2
  db 12,$6E
  !e2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  !end

.pattern2_4
  db 12,$6E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  db 6
  %percNote(!instr14-!instr12)
  !pan,15
  !e5
  !pan,5
  db 12
  !d5
  !pan,10
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  db 6
  %percNote(!instr14-!instr12)
  !pan,15
  !e5
  !pan,5
  db 12
  !d5
  !pan,10
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  db 6
  %percNote(!instr14-!instr12)
  !pan,15
  !e5
  !pan,5
  db 12
  !d5
  !pan,10
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  !pan,20
  db 6
  %percNote(!instr14-!instr12)
  !pan,15
  !e5
  !pan,5
  db 12
  !c5
  !pan,10
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern2_5
  !dynamicPan,192,0
  db 12,$6E
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !dynamicPan,192,20
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !end

.pattern3_0
  !volume,255
  !instr,!instr06
  db 96,$7E
  !c2
  !pitchSlide,1,191 : !c4
  !tie
  !tie
  !pitchSlide,1,191 : !c6
  db 96,$68
  !tie
  !end

.pattern3_1
  db 96,$7E
  !gs6
  db 48
  !a6
  db 24
  !b6
  !a6
  db 96
  !gs6
  db 48
  !fs6
  db 24
  !e6
  !fs6
  !end

.pattern3_2
  db 24
  !rest
  db 96,$7E
  !gs6
  db 48
  !a6
  db 24
  !b6
  !a6
  db 96
  !gs6
  db 48
  !fs6
  db 24
  !e6
  !end

.pattern3_4
  db 6,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
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
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 6,$6E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
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
  %percNote(!instr12-!instr12)
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

.pattern3_5
  !dynamicPan,192,0
  db 12,$7E
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !dynamicPan,192,20
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !cs4
  !fs4
  !gs4
  !cs5
  !end

.pattern4_0
  !volume,200
  !instr,!instr06
  db 96,$7B
  !gs5
  db 48
  !a5
  db 24
  !b5
  !a5
  db 96
  !gs5
  db 48
  !fs5
  db 24
  !e5
  !fs5
  !end

.pattern4_1
  !pan,0
  db 12,$6F
  !gs6
  !pan,20
  db 12,$6E
  !gs6
  !pan,0
  db 12,$6D
  !gs6
  !pan,20
  db 12,$6C
  !gs6
  !pan,0
  db 12,$6B
  !gs6
  !pan,20
  db 12,$6A
  !gs6
  !pan,0
  db 12,$69
  !gs6
  !pan,20
  db 12,$68
  !gs6
  !pan,0
  db 12,$67
  !gs6
  !pan,20
  db 12,$66
  !gs6
  !pan,0
  db 12,$65
  !gs6
  !pan,20
  db 12,$64
  !gs6
  !pan,0
  db 12,$63
  !gs6
  !pan,20
  db 12,$62
  !gs6
  !pan,0
  db 12,$61
  !gs6
  !pan,20
  db 12,$60
  !gs6
  !pan,0
  db 12,$6F
  !a6
  !pan,20
  db 12,$6E
  !a6
  !pan,0
  db 12,$6D
  !a6
  !pan,20
  db 12,$6C
  !a6
  !pan,0
  db 12,$6B
  !a6
  !pan,20
  db 12,$6A
  !a6
  !pan,0
  db 12,$69
  !a6
  !pan,20
  db 12,$68
  !a6
  !pan,0
  db 12,$67
  !a6
  !pan,20
  db 12,$66
  !a6
  !pan,0
  db 12,$65
  !a6
  !pan,20
  db 12,$64
  !a6
  !pan,0
  db 12,$63
  !a6
  !pan,20
  db 12,$62
  !a6
  !pan,0
  db 12,$61
  !a6
  !pan,20
  db 12,$60
  !a6
  !end

.pattern4_2
  db 24
  !rest
  !instr,!instr06
  db 96,$7B
  !gs5
  db 48
  !a5
  db 24
  !b5
  !a5
  db 96
  !gs5
  db 48
  !fs5
  db 24
  !e5
  !end

.pattern4_4
  !pan,10
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,24,0
  db 6
  %percNote(!instr14-!instr12)
  !c5
  !b4
  !g4
  !end

.pattern4_5
  !dynamicPan,192,0
  db 12,$7E
  !gs4
  !a4
  !gs4
  !a4
  !gs4
  !a4
  !gs4
  !a4
  !gs4
  !a4
  !gs4
  !a4
  !gs4
  !a4
  !gs4
  !a4
  !dynamicPan,192,20
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
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
