asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr00 = $16
!instr01 = $17
!instr07 = $18
!instr08 = $19
!instr09 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$ED,$B8,$15,$00
  db !instr01,$FF,$E0,$B8,$03,$0C
  db !instr07,$FF,$E0,$B8,$03,$D4
  db !instr08,$FF,$E0,$B8,$05,$59
  db !instr09,$FF,$E0,$B8,$04,$95
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+333
  dw Sample01,Sample01+36
  dw Sample07,Sample07+0
  dw Sample08,Sample08+0
  dw Sample09,Sample09+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample01: incbin "Sample01.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample09: incbin "Sample09.brr"

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
  dw $0002,-
  dw .pattern2
  dw .pattern3
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,100,2
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr07
  !tempo,19
  !instr,!instr01
  !volume,230
  !echo,%00111111,20,20
  !echoParameters,2,100,2
  db 12,$6E
  !d5
  !e5
  !f5
  db 24,$7E
  !a5
  !c6
  db 12,$6E
  !as5
  !a5
  !a5
  db 72,$7E
  !tie
  db 12,$6E
  !a5
  !a5
  !as5
  db 24,$7E
  !c6
  !d6
  db 12,$6E
  !f6
  db 24,$7E
  !d6
  db 72
  !c6
  db 24
  !a5
  db 12,$6E
  !as5
  db 24,$7E
  !c6
  db 60
  !d6
  db 36
  !c6
  db 12,$6E
  !a5
  db 24,$7E
  !f5
  db 12,$6E
  !f5
  !g5
  db 72,$7E
  !gs5
  db 24
  !e5
  db 72
  !a5
  db 12,$6E
  !d5
  !e5
  !end

.pattern0_1
  !instr,!instr01
  db 24
  !rest
  db 24,$7E
  !d3
  !d3
  !d3
  !d3
  !c3
  !c3
  !c3
  !c3
  !as2
  !as2
  !as2
  !as2
  !a2
  !a2
  !a2
  !a2
  !g2
  !g2
  !g2
  !g2
  !f2
  !f2
  !f2
  !f2
  !e2
  !e2
  !e2
  !e2
  !a2
  !a2
  !a2
  !a2
  !end

.pattern0_2
  !subtranspose,10
  !volume,150
  !instr,!instr01
  db 24
  !rest
  db 96,$7E
  !a5
  !a5
  !as5
  !a5
  !g5
  !f5
  !gs5
  db 48
  !a5
  !volume,255
  !echo,%11111001,20,20
  !pan,20
  !dynamicPan,48,0
  db 3
  %percNote(!instr09-!instr07)
  !f5
  db 6
  %percNote(!instr09-!instr07)
  %percNote(!instr09-!instr07)
  %percNote(!instr09-!instr07)
  db 3
  !f5
  !f5
  db 6
  !e5
  !e5
  !e5
  !end

.pattern0_3
  !subtranspose,20
  !volume,150
  !instr,!instr01
  !pan,20
  db 24
  !rest
  db 96,$7E
  !f5
  !e5
  !f5
  !f5
  !d5
  !c5
  !e5
  !e5
  !end

.pattern0_4
  !subtranspose,30
  !volume,150
  !instr,!instr01
  !pan,0
  db 24
  !rest
  db 96,$7E
  !d5
  !c5
  !d5
  !c5
  !as4
  !a4
  !b4
  !cs5
  !end

.pattern0_5
  !pan,20
  !subtranspose,50
  !volume,120
  db 24
  !rest
  !instr,!instr01
  db 12,$6E
  !d5
  !e5
  !f5
  db 24,$7E
  !a5
  !c6
  db 12,$6E
  !as5
  !a5
  !a5
  db 72,$7E
  !tie
  db 12,$6E
  !a5
  !a5
  !as5
  db 24,$7E
  !c6
  !d6
  db 12,$6E
  !f6
  db 24,$7E
  !d6
  db 72
  !c6
  db 24
  !a5
  db 12,$6E
  !as5
  db 24,$7E
  !c6
  db 60
  !d6
  db 36
  !c6
  db 12,$6E
  !a5
  db 24,$7E
  !f5
  db 12,$6E
  !f5
  !g5
  db 72,$7E
  !gs5
  db 24
  !e5
  db 72
  !a5
  !end

.pattern1_0
  !tempo,26
  !instr,!instr01
  db 12,$6E
  !f5
  db 24,$7E
  !a5
  !c6
  db 12,$6E
  !as5
  !a5
  !a5
  db 72,$7E
  !tie
  db 12,$6E
  !a5
  !a5
  !as5
  db 24,$7E
  !c6
  !d6
  db 12,$6E
  !f6
  db 24,$7E
  !d6
  db 72
  !c6
  db 24
  !a5
  db 12,$6E
  !as5
  db 24,$7E
  !c6
  db 60
  !d6
  db 36
  !c6
  db 12,$6E
  !a5
  db 24,$7E
  !f5
  db 12,$6E
  !f5
  !g5
  db 72,$7E
  !gs5
  db 24
  !e5
  db 72
  !a5
  db 12,$6E
  !d5
  !e5
  !end

.pattern1_1
  !subtranspose,0
  !instr,!instr00
  !volume,210
  db 12,$7F
  !d3
  db 6,$5F
  !d4
  db 6,$3F
  !d4
  db 12,$7F
  !d3
  db 6,$5F
  !d4
  db 6,$3F
  !d4
  db 12,$7F
  !d3
  db 6,$5F
  !d4
  db 6,$3F
  !d4
  db 12,$7F
  !d3
  db 6,$5F
  !d4
  db 6,$3F
  !d4
  db 12,$7F
  !c3
  db 6,$5F
  !c4
  db 6,$3F
  !c4
  db 12,$7F
  !c3
  db 6,$5F
  !c4
  db 6,$3F
  !c4
  db 12,$7F
  !c3
  db 6,$5F
  !c4
  db 6,$3F
  !c4
  db 12,$7F
  !c3
  db 6,$5F
  !c4
  db 6,$3F
  !c4
  db 12,$7F
  !as2
  db 6,$5F
  !as3
  db 6,$3F
  !as3
  db 12,$7F
  !as2
  db 6,$5F
  !as3
  db 6,$3F
  !as3
  db 12,$7F
  !as2
  db 6,$5F
  !as3
  db 6,$3F
  !as3
  db 12,$7F
  !as2
  db 6,$5F
  !as3
  db 6,$3F
  !as3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !g2
  db 6,$5F
  !g3
  db 6,$3F
  !g3
  db 12,$7F
  !g2
  db 6,$5F
  !g3
  db 6,$3F
  !g3
  db 12,$7F
  !g2
  db 6,$5F
  !g3
  db 6,$3F
  !g3
  db 12,$7F
  !g2
  db 6,$5F
  !g3
  db 6,$3F
  !g3
  db 12,$7F
  !f2
  db 6,$5F
  !f3
  db 6,$3F
  !f3
  db 12,$7F
  !f2
  db 6,$5F
  !f3
  db 6,$3F
  !f3
  db 12,$7F
  !f2
  db 6,$5F
  !f3
  db 6,$3F
  !f3
  db 12,$7F
  !f2
  db 6,$5F
  !f3
  db 6,$3F
  !f3
  db 12,$7F
  !e2
  db 6,$5F
  !e3
  db 6,$3F
  !e3
  db 12,$7F
  !e2
  db 6,$5F
  !e3
  db 6,$3F
  !e3
  db 12,$7F
  !e2
  db 6,$5F
  !e3
  db 6,$3F
  !e3
  db 12,$7F
  !gs2
  db 6,$5F
  !gs3
  db 6,$3F
  !gs3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  !end

.pattern1_2
  !subtranspose,0
  !pan,10
  !volume,255
  db 12,$7F
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  !end

.pattern1_3
  db 12,$6E
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !end

.pattern1_4
  db 12,$6E
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !as4
  !as4
  !as4
  !as4
  !as4
  !as4
  !as4
  !as4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !cs5
  !cs5
  !cs5
  !cs5
  !cs5
  !cs5
  !cs5
  !cs5
  !end

.pattern1_5
  !pan,20
  !subtranspose,50
  !volume,140
  db 24
  !rest
  !instr,!instr01
  db 12,$6E
  !f5
  db 24,$7E
  !a5
  !c6
  db 12,$6E
  !as5
  !a5
  !a5
  db 72,$7E
  !tie
  db 12,$6E
  !a5
  !a5
  !as5
  db 24,$7E
  !c6
  !d6
  db 12,$6E
  !f6
  db 24,$7E
  !d6
  db 72
  !c6
  db 24
  !a5
  db 12,$6E
  !as5
  db 24,$7E
  !c6
  db 60
  !d6
  db 36
  !c6
  db 12,$6E
  !a5
  db 24,$7E
  !f5
  db 12,$6E
  !f5
  !g5
  db 72,$7E
  !gs5
  db 24
  !e5
  db 72
  !a5
  !end

.pattern2_0
  !instr,!instr01
  db 12,$6E
  !f5
  db 24,$7E
  !a5
  !c6
  db 12,$6E
  !as5
  !a5
  !a5
  db 72,$7E
  !tie
  db 12,$6E
  !a5
  !a5
  !as5
  db 24,$7E
  !c6
  !d6
  db 12,$6E
  !f6
  db 24,$7E
  !d6
  db 72
  !c6
  db 24
  !a5
  db 12,$6E
  !as5
  db 24,$7E
  !c6
  db 60
  !d6
  db 36
  !c6
  db 12,$6E
  !a5
  db 24,$7E
  !f5
  db 12,$6E
  !f5
  !g5
  db 72,$7E
  !gs5
  db 24
  !e5
  db 96
  !a5
  !end

.pattern2_1
  !subtranspose,0
  !instr,!instr00
  !volume,200
  db 12,$7F
  !d3
  db 6,$5F
  !d4
  db 6,$3F
  !d4
  db 12,$7F
  !d3
  db 6,$5F
  !d4
  db 6,$3F
  !d4
  db 12,$7F
  !d3
  db 6,$5F
  !d4
  db 6,$3F
  !d4
  db 12,$7F
  !d3
  db 6,$5F
  !d4
  db 6,$3F
  !d4
  db 12,$7F
  !c3
  db 6,$5F
  !c4
  db 6,$3F
  !c4
  db 12,$7F
  !c3
  db 6,$5F
  !c4
  db 6,$3F
  !c4
  db 12,$7F
  !c3
  db 6,$5F
  !c4
  db 6,$3F
  !c4
  db 12,$7F
  !c3
  db 6,$5F
  !c4
  db 6,$3F
  !c4
  db 12,$7F
  !as2
  db 6,$5F
  !as3
  db 6,$3F
  !as3
  db 12,$7F
  !as2
  db 6,$5F
  !as3
  db 6,$3F
  !as3
  db 12,$7F
  !as2
  db 6,$5F
  !as3
  db 6,$3F
  !as3
  db 12,$7F
  !as2
  db 6,$5F
  !as3
  db 6,$3F
  !as3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !g2
  db 6,$5F
  !g3
  db 6,$3F
  !g3
  db 12,$7F
  !g2
  db 6,$5F
  !g3
  db 6,$3F
  !g3
  db 12,$7F
  !g2
  db 6,$5F
  !g3
  db 6,$3F
  !g3
  db 12,$7F
  !g2
  db 6,$5F
  !g3
  db 6,$3F
  !g3
  db 12,$7F
  !f2
  db 6,$5F
  !f3
  db 6,$3F
  !f3
  db 12,$7F
  !f2
  db 6,$5F
  !f3
  db 6,$3F
  !f3
  db 12,$7F
  !f2
  db 6,$5F
  !f3
  db 6,$3F
  !f3
  db 12,$7F
  !f2
  db 6,$5F
  !f3
  db 6,$3F
  !f3
  db 12,$7F
  !e2
  db 6,$5F
  !e3
  db 6,$3F
  !e3
  db 12,$7F
  !e2
  db 6,$5F
  !e3
  db 6,$3F
  !e3
  db 12,$7F
  !e2
  db 6,$5F
  !e3
  db 6,$3F
  !e3
  db 12,$7F
  !gs2
  db 6,$5F
  !gs3
  db 6,$3F
  !gs3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  db 12,$7F
  !a2
  db 6,$5F
  !a3
  db 6,$3F
  !a3
  !end

.pattern2_2
  !subtranspose,0
  !pan,10
  !volume,255
  db 12,$7F
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  !end

.pattern3_0
  !dynamicTempo,192,12
  db 96,$7E
  !b5
  !b5
  !dynamicMusicVolume,192,0
  !c6
  !tie
  db 24
  !rest
  !end

.pattern3_1
  db 12,$7F
  !b2
  db 6,$5F
  !b3
  db 6,$3F
  !b3
  db 12,$7F
  !b2
  db 6,$5F
  !b3
  db 6,$3F
  !b3
  db 12,$7F
  !b2
  db 6,$5F
  !b3
  db 6,$3F
  !b3
  db 12,$7F
  !b2
  db 6,$5F
  !b3
  db 6,$3F
  !b3
  db 12,$7F
  !b2
  db 6,$5F
  !b3
  db 6,$3F
  !b3
  db 12,$7F
  !b2
  db 6,$5F
  !b3
  db 6,$3F
  !b3
  db 12,$7F
  !b2
  db 6,$5F
  !b3
  db 6,$3F
  !b3
  db 12,$7F
  !b2
  db 6,$5F
  !b3
  db 6,$3F
  !b3
  !instr,!instr01
  db 96,$7F
  !c3
  !tie
  db 24
  !rest
  !end

.pattern3_2
  db 12,$7F
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 24
  %percNote(!instr08-!instr07)
  db 72
  !rest
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.pattern3_3
  db 12,$6E
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  db 96,$7E
  !e5
  !tie
  db 24
  !rest
  !end

.pattern3_4
  db 12,$6E
  !fs5
  !fs5
  !fs5
  !fs5
  !fs5
  !fs5
  !fs5
  !fs5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  db 96,$7E
  !g5
  !tie
  db 24
  !rest
  !end

.pattern3_5
  db 24
  !rest
  db 96,$7E
  !b5
  !b5
  !c6
  !c6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
