asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr04 = $17
!instr05 = $18
!instr06 = $19
!instr07 = $1A
!instr12 = $1B
!instr13 = $1C
!instr14 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$F1,$B8,$0C,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr05,$FF,$EE,$B8,$05,$00
  db !instr06,$FF,$E7,$B8,$0D,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+243
  dw Sample04,Sample04+207
  dw Sample05,Sample05+351
  dw Sample06,Sample06+324
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
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
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,100,2
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !tempo,31
  !volume,240
  !instr,!instr04
  db 4,$7E
  !a3
  !pan,15
  db 4,$6E
  !a3
  !pan,12
  db 8,$7E
  !a3
  !pan,8
  db 8,$6E
  !a2
  !pan,10
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 16,$7E
  !a3
  db 8,$5E
  !a3
  db 24,$4E
  !e4
  !end

.pattern0_1
  !vibrato,48,15,20
  !volume,200
  !instr,!instr07
  db 72,$6E
  !e5
  !pitchSlide,12,24 : !a5
  db 8,$4E
  !g5
  !g5
  !g5
  db 48,$7E
  !e5
  db 24,$5E
  !d5
  db 16,$6E
  !d5
  db 8,$4E
  !d5
  db 16,$5E
  !e5
  db 8,$4E
  !e5
  !e5
  !e5
  !e5
  !dynamicPan,48,0
  db 16,$5E
  !e5
  db 8,$4E
  !e5
  !e5
  !e5
  !e5
  !dynamicPan,96,20
  db 16,$5E
  !e5
  db 8,$4E
  !e5
  !e5
  !e5
  !e5
  db 16,$5E
  !e5
  db 8,$4E
  !e5
  !e5
  !e5
  !e5
  !end

.pattern0_2
  !vibrato,48,15,20
  !volume,200
  !instr,!instr07
  db 72,$6E
  !cs5
  !pitchSlide,12,24 : !e5
  db 8,$4E
  !d5
  !d5
  !d5
  db 48,$7E
  !cs5
  db 24,$5E
  !b4
  db 16,$6E
  !b4
  db 8,$4E
  !b4
  db 16,$5E
  !cs5
  db 8,$4E
  !cs5
  !cs5
  !cs5
  !cs5
  !dynamicPan,48,20
  db 16,$5E
  !cs5
  db 8,$4E
  !cs5
  !cs5
  !cs5
  !cs5
  !dynamicPan,48,0
  db 16,$5E
  !cs5
  db 8,$4E
  !cs5
  !cs5
  !cs5
  !cs5
  !pan,10
  db 16,$5E
  !cs5
  db 8,$4E
  !cs5
  !cs5
  !cs5
  !cs5
  !end

.pattern0_3
  !volume,255
  !instr,!instr05
  db 48,$7E
  !a4
  !pitchSlide,12,24 : !a5
  !g5
  !e5
  !d5
  db 96
  !e5
  !instr,!instr06
  !dynamicPan,96,0
  db 8,$7A
  !a5
  !g5
  !fs5
  !g5
  !fs5
  !e5
  !fs5
  !e5
  !d5
  !e5
  !e5
  !cs5
  !end

.pattern0_4
  !instr,!instr05
  !volume,130
  !pan,20
  !subtranspose,55
  db 24
  !rest
  db 48,$7E
  !a4
  !pitchSlide,12,24 : !a5
  !g5
  !e5
  !d5
  db 96
  !e5
  !instr,!instr06
  db 8,$7A
  !a5
  !g5
  !fs5
  !g5
  !fs5
  !e5
  !fs5
  !e5
  !d5
  !end

.pattern0_5
  !pan,20
  db 4,$7E
  %percNote(!instr14-!instr12)
  !pan,15
  %percNote(!instr14-!instr12)
  !pan,12
  db 8
  !d5
  !pan,8
  !b4
  !pan,10
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  !end

.pattern1_0
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  !end

.pattern1_1
  !pan,20
  !dynamicPan,192,0
  db 96,$7E
  !e6
  !pitchSlide,8,88 : !e2
  !e4
  !pitchSlide,8,88 : !e6
  !end

.pattern1_2
  !pan,10
  db 96,$7E
  !cs6
  !pitchSlide,8,88 : !cs3
  !cs4
  !pitchSlide,8,88 : !cs5
  !end

.pattern1_3
  !instr,!instr05
  !pan,10
  db 48,$7E
  !a5
  !g5
  !e5
  !d5
  !end

.pattern1_4
  !instr,!instr05
  db 24
  !rest
  !pan,10
  db 48,$7E
  !a5
  !g5
  !e5
  db 24
  !d5
  !end

.pattern1_5
  db 8,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  !end

.pattern2_0
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a2
  db 8,$7E
  !a2
  db 8,$6E
  !a3
  db 8,$7E
  !a2
  db 8,$6E
  !a3
  db 8,$7E
  !a2
  db 8,$6E
  !a3
  !end

.pattern2_1
  db 16,$7E
  !e5
  db 16,$6E
  !e5
  db 16,$7E
  !e5
  db 8,$6E
  !e5
  db 8,$7E
  !e5
  db 8,$6E
  !e5
  db 8,$7E
  !e5
  db 8,$6E
  !e5
  db 8,$7E
  !e5
  db 96
  !e5
  !end

.pattern2_2
  db 16,$7E
  !cs5
  db 16,$6E
  !cs5
  db 16,$7E
  !cs5
  db 8,$6E
  !cs5
  db 8,$7E
  !cs5
  db 8,$6E
  !cs5
  db 8,$7E
  !cs5
  db 8,$6E
  !cs5
  db 8,$7E
  !cs5
  db 96
  !cs5
  !end

.pattern2_3
  db 96,$7E
  !e5
  !e5
  !end

.pattern2_4
  !instr,!instr01
  db 16,$7E
  !e4
  db 16,$6E
  !e4
  db 16,$7E
  !e4
  db 8,$6E
  !e4
  db 8,$7E
  !e4
  db 8,$6E
  !e4
  db 8,$7E
  !e4
  db 8,$6E
  !e4
  db 8,$7E
  !e4
  db 96
  !e4
  !end

.pattern2_5
  db 8,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 16
  %percNote(!instr13-!instr12)
  db 8
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern3_0
  db 24,$7E
  !as2
  db 24,$4E
  !a2
  db 24,$5E
  !gs2
  db 24,$7E
  !g2
  db 16
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 8,$6E
  !b2
  db 8,$7E
  !b2
  db 16,$6E
  !b2
  db 8,$7E
  !b3
  db 8,$6E
  !b2
  db 8,$7E
  !b3
  db 8,$6E
  !c3
  !dynamicTempo,192,12
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c3
  db 8,$6E
  !c3
  db 8,$7E
  !c4
  db 8,$6E
  !c3
  !volume,255
  db 8,$7E
  !cs3
  db 8,$5E
  !cs3
  db 8,$4E
  !cs3
  db 72,$7E
  !cs4
  !pitchSlide,8,64 : !cs2
  db 24
  !rest
  !end

.pattern3_1
  db 96,$7E
  !f5
  !fs5
  !g5
  !volume,240
  !gs5
  !pitchSlide,12,84 : !gs2
  db 24
  !rest
  !end

.pattern3_2
  db 96,$7E
  !as5
  !b5
  !c6
  !volume,240
  !cs6
  !pitchSlide,12,84 : !cs2
  db 24
  !rest
  !end

.pattern3_3
  db 96,$7E
  !gs5
  !dynamicPan,192,20
  db 8
  !b5
  db 8,$6E
  !fs4
  db 8,$7E
  !ds4
  db 8,$6E
  !b5
  db 8,$7E
  !fs4
  db 8,$6E
  !ds4
  db 8,$7C
  !b5
  db 8,$6C
  !fs4
  db 8,$7C
  !ds4
  db 8,$6C
  !b5
  db 8,$7C
  !fs4
  db 8,$6C
  !ds4
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  !volume,255
  !dynamicPan,96,0
  db 96,$7E
  !gs5
  !pitchSlide,6,90 : !gs2
  db 24
  !rest
  !end

.pattern3_4
  db 24
  !rest
  db 96,$7E
  !gs5
  db 8
  !b5
  db 8,$6E
  !fs4
  db 8,$7E
  !ds4
  db 8,$6E
  !b5
  db 8,$7E
  !fs4
  db 8,$6E
  !ds4
  db 8,$7C
  !b5
  db 8,$6C
  !fs4
  db 8,$7C
  !ds4
  db 8,$6C
  !b5
  db 8,$7C
  !fs4
  db 8,$6C
  !ds4
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  db 8,$7E
  !c4
  db 8,$6E
  !d5
  !volume,255
  db 96,$7B
  !gs5
  !pitchSlide,6,90 : !gs2
  !end

.pattern3_5
  !pan,18
  !dynamicPan,72,6
  db 16,$7E
  %percNote(!instr14-!instr12)
  db 8
  !d5
  db 16
  !c5
  db 8
  !b4
  db 16
  !as4
  db 4
  !g4
  !g4
  !pan,10
  db 8
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  db 16
  %percNote(!instr12-!instr12)
  db 8
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 48
  %percNote(!instr13-!instr12)
  db 24
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
