asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr03 = $17
!instr04 = $18
!instr06 = $19
!instr12 = $1A
!instr13 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$EB,$B8,$02,$00
  db !instr03,$FF,$E0,$B8,$03,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr06,$FF,$E7,$B8,$0D,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1035
  dw Sample03,Sample03+315
  dw Sample04,Sample04+207
  dw Sample06,Sample06+324
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
  Sample06: incbin "Sample06.brr"
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
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern2_4, .pattern3_5, 0, 0

.pattern0_0
  !endEcho
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !volume,220
  !pan,8
  !instr,!instr00
  db 36,$7E
  !cs5
  db 12
  !d5
  db 48
  !tie
  db 36
  !cs5
  db 12
  !d5
  db 48
  !tie
  !dynamicPan,192,10
  db 36
  !fs5
  db 12
  !gs5
  db 48
  !tie
  db 36
  !gs5
  !a5
  db 24
  !b5
  !end

.pattern0_1
  !volume,220
  !pan,8
  !instr,!instr00
  db 36,$7E
  !a4
  db 12
  !b4
  db 48
  !tie
  db 36
  !a4
  db 12
  !b4
  db 48
  !tie
  !dynamicPan,192,10
  db 36
  !d5
  db 12
  !e5
  db 48
  !tie
  db 36
  !e5
  !fs5
  db 24
  !gs5
  !end

.pattern0_2
  !volume,240
  !instr,!instr06
  db 96,$7E
  !fs2
  !pitchSlide,1,192 : !fs4
  !tie
  !tie
  !pitchSlide,1,192 : !fs6
  !tie
  !end

.pattern0_3
  !volume,240
  !instr,!instr06
  !subtranspose,25
  !instr,!instr06
  db 96,$7E
  !fs2
  !pitchSlide,1,192 : !fs4
  !tie
  !tie
  !pitchSlide,1,192 : !fs6
  !tie
  !end

.pattern0_4
  !volume,255
  db 36,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 36
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 36
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr12-!instr12)
  db 36
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern0_5
  !volume,240
  db 24
  !rest
  !pan,20
  !subtranspose,40
  !instr,!instr06
  db 96,$7E
  !fs2
  !pitchSlide,1,192 : !fs4
  !tie
  !tie
  !pitchSlide,1,192 : !fs6
  db 72
  !tie
  !end

.pattern1_0
  !volume,200
  !instr,!instr00
  !pan,5
  db 6,$6E
  !cs6
  !cs6
  db 12
  !fs6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  db 6
  !cs6
  !cs6
  db 12
  !a6
  db 6
  !cs6
  !cs6
  db 12
  !b6
  db 6
  !cs6
  !cs6
  db 12
  !fs6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  db 6
  !cs6
  !cs6
  db 12
  !a6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  db 6
  !cs6
  !cs6
  db 12
  !fs6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  db 6
  !cs6
  !cs6
  db 12
  !a6
  db 6
  !cs6
  !cs6
  db 12
  !b6
  db 6
  !cs6
  !cs6
  db 12
  !fs6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  db 6
  !cs6
  !cs6
  db 12
  !a6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  db 6
  !cs6
  !cs6
  db 12
  !fs6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  db 6
  !cs6
  !cs6
  db 12
  !a6
  db 6
  !cs6
  !cs6
  db 12
  !b6
  db 6
  !cs6
  !cs6
  db 12
  !fs6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  db 6
  !cs6
  !cs6
  db 12
  !a6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  db 6
  !cs6
  !cs6
  db 12
  !fs6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  db 6
  !cs6
  !cs6
  db 12
  !a6
  db 6
  !cs6
  !cs6
  db 12
  !b6
  db 6
  !cs6
  !cs6
  db 12
  !fs6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  db 6
  !cs6
  !cs6
  db 12
  !a6
  db 6
  !cs6
  !cs6
  db 12
  !gs6
  !end

.pattern1_1
  !volume,200
  !instr,!instr00
  !subtranspose,10
  !pan,8
  db 6,$6E
  !a5
  !a5
  db 12
  !d6
  db 6
  !a5
  !a5
  db 12
  !e6
  db 6
  !a5
  !a5
  db 12
  !fs6
  db 6
  !a5
  !a5
  db 12
  !gs6
  db 6
  !a5
  !a5
  db 12
  !d6
  db 6
  !a5
  !a5
  db 12
  !e6
  db 6
  !a5
  !a5
  db 12
  !fs6
  db 6
  !a5
  !a5
  db 12
  !e6
  db 6
  !a5
  !a5
  db 12
  !d6
  db 6
  !a5
  !a5
  db 12
  !e6
  db 6
  !a5
  !a5
  db 12
  !fs6
  db 6
  !a5
  !a5
  db 12
  !gs6
  db 6
  !a5
  !a5
  db 12
  !d6
  db 6
  !a5
  !a5
  db 12
  !e6
  db 6
  !a5
  !a5
  db 12
  !fs6
  db 6
  !a5
  !a5
  db 12
  !e6
  db 6
  !a5
  !a5
  db 12
  !d6
  db 6
  !a5
  !a5
  db 12
  !e6
  db 6
  !a5
  !a5
  db 12
  !fs6
  db 6
  !a5
  !a5
  db 12
  !gs6
  db 6
  !a5
  !a5
  db 12
  !d6
  db 6
  !a5
  !a5
  db 12
  !e6
  db 6
  !a5
  !a5
  db 12
  !fs6
  db 6
  !a5
  !a5
  db 12
  !e6
  db 6
  !a5
  !a5
  db 12
  !d6
  db 6
  !a5
  !a5
  db 12
  !e6
  db 6
  !a5
  !a5
  db 12
  !fs6
  db 6
  !a5
  !a5
  db 12
  !gs6
  db 6
  !a5
  !a5
  db 12
  !d6
  db 6
  !a5
  !a5
  db 12
  !e6
  db 6
  !a5
  !a5
  db 12
  !fs6
  db 6
  !a5
  !a5
  db 12
  !e6
  !end

.pattern1_2
  !volume,230
  !instr,!instr03
  !vibrato,40,20,80
  db 96,$7E
  !fs5
  !cs6
  !b5
  !gs5
  !fs5
  !e6
  !cs6
  !tie
  !end

.pattern1_3
  !volume,230
  !instr,!instr04
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  db 12,$7E
  !cs2
  db 12,$6E
  !fs2
  db 12,$7E
  !gs2
  db 12,$6E
  !a2
  !end

.pattern1_4
  db 6,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
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
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
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
  db 18
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
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
  db 18
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
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
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12,$6E
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  db 18
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  !end

.pattern1_5
  !volume,120
  !pan,20
  !instr,!instr03
  !vibrato,40,20,80
  db 24
  !rest
  db 96,$7E
  !fs5
  !cs6
  !b5
  !gs5
  !fs5
  !e6
  !cs6
  db 72
  !tie
  !end

.pattern2_0
  db 96,$7E
  !fs6
  db 48
  !e6
  !gs6
  db 96
  !a6
  !gs6
  !end

.pattern2_1
  db 96,$7E
  !d6
  db 48
  !cs6
  !e6
  db 96
  !fs6
  !e6
  !end

.pattern2_2
  db 96,$7E
  !fs3
  !tie
  !tie
  !tie
  !end

.pattern2_3
  db 18,$7E
  !fs2
  db 18,$6E
  !fs2
  db 12,$7E
  !fs2
  db 18,$6E
  !fs2
  db 18,$7E
  !fs2
  db 12,$6E
  !fs2
  db 18,$7E
  !gs2
  db 18,$6E
  !gs2
  db 12,$7E
  !gs2
  db 18,$6E
  !gs2
  db 18,$7E
  !gs2
  db 12,$6E
  !gs2
  db 18,$7E
  !a2
  db 18,$6E
  !a2
  db 12,$7E
  !a2
  db 18,$6E
  !a2
  db 18,$7E
  !a2
  db 12,$6E
  !a2
  db 18,$7E
  !b2
  db 18,$6E
  !b2
  db 12,$7E
  !b2
  db 18,$6E
  !b2
  db 18,$7E
  !b2
  db 12,$6E
  !b2
  !end

.pattern2_4
  db 6,$7E
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  !end

.pattern2_5
  db 96,$7E
  !fs3
  !tie
  !tie
  !tie
  !end

.pattern3_0
  db 96,$6E
  !a5
  !gs5
  !cs6
  !b5
  !end

.pattern3_1
  db 96,$6E
  !fs5
  !e5
  !a5
  db 48
  !gs5
  !e5
  !end

.pattern3_2
  db 96,$7E
  !fs4
  !fs5
  !fs6
  db 96,$7B
  !fs7
  !end

.pattern3_3
  db 18,$7E
  !a2
  db 18,$6E
  !a2
  db 12,$7E
  !a2
  db 18,$6E
  !a2
  db 18,$7E
  !a2
  db 12,$6E
  !a2
  db 18,$7E
  !gs2
  db 18,$6E
  !gs2
  db 12,$7E
  !gs2
  db 18,$6E
  !gs2
  db 18,$7E
  !gs2
  db 12,$6E
  !gs2
  db 18,$7E
  !cs2
  db 18,$6E
  !cs3
  db 12,$7E
  !cs3
  db 18,$6E
  !cs2
  db 18,$7E
  !cs3
  db 12,$6E
  !cs3
  db 18,$7E
  !b2
  db 18,$6E
  !b2
  db 12,$7E
  !b2
  db 18,$6E
  !b2
  db 18,$7E
  !b2
  db 12,$6E
  !b2
  !end

.pattern3_5
  db 24
  !rest
  db 96,$7E
  !fs4
  !fs5
  !fs6
  db 72,$7B
  !fs7
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
