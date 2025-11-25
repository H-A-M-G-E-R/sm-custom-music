asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr07 = $19
!instr08 = $1A
!instr09 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$ED,$B8,$15,$00
  db !instr01,$FF,$E0,$B8,$03,$0C
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr07,$FF,$E0,$B8,$03,$D4
  db !instr08,$FF,$E0,$B8,$05,$59
  db !instr09,$FF,$E0,$B8,$04,$95
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+333
  dw Sample01,Sample01+36
  dw Sample02,Sample02+0
  dw Sample07,Sample07+0
  dw Sample08,Sample08+0
  dw Sample09,Sample09+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample00.brr"
  Sample01: incbin "Sample01.brr"
  Sample02: incbin "Sample02.brr"
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
  dw .pattern1
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,-99,0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr07
  !tempo,37
  !instr,!instr02
  db 24
  !rest
  db 24,$7E
  !a6
  !end

.pattern0_1
  !instr,!instr02
  db 24
  !rest
  db 24,$7E
  !a4
  !end

.pattern0_2
  !instr,!instr02
  db 24
  !rest
  db 24,$7E
  !a3
  !end

.pattern0_3
  !pan,20
  !dynamicPan,24,0
  db 6,$7F
  %percNote(!instr09-!instr07)
  %percNote(!instr09-!instr07)
  %percNote(!instr09-!instr07)
  %percNote(!instr09-!instr07)
  !pan,10
  db 24
  !b4
  !end

.pattern0_4
  !volume,120
  !pan,20
  !subtranspose,50
  !instr,!instr02
  db 12
  !rest
  db 24
  !rest
  db 12,$7E
  !a4
  !end

.pattern0_5
  !volume,120
  !pan,0
  !subtranspose,50
  !instr,!instr02
  db 36
  !rest
  db 12,$7E
  !a3
  !end

.pattern1_0
  !echo,%00111111,20,20
  !echoParameters,2,157,0
  !tempo,37
  !volume,220
  !vibrato,36,20,1
  !instr,!instr01
  db 60,$7E
  !a4
  !pitchSlide,6,20 : !a5
  db 36
  !b5
  !e6
  !d6
  db 24
  !b5
  db 60
  !a4
  !pitchSlide,6,20 : !a5
  db 36
  !b5
  !c6
  !d6
  db 12
  !c6
  !b5
  db 72
  !a5
  db 12
  !e5
  !f5
  db 48
  !g5
  !b5
  db 96
  !c6
  !b5
  db 36
  !a5
  !a5
  db 12
  !g5
  db 108
  !a5
  db 48,$08
  !tie
  db 24
  !rest
  !end

.pattern1_1
  !instr,!instr01
  !volume,230
  !vibrato,48,20,1
  db 60,$7E
  !e2
  !pitchSlide,6,20 : !e3
  db 36
  !e4
  !b4
  !b4
  db 24
  !g4
  db 60
  !f3
  !pitchSlide,6,20 : !e4
  db 36
  !f4
  !g4
  !b4
  db 12
  !g4
  !g4
  db 72
  !e4
  db 12
  !c4
  !d4
  db 48
  !d4
  !g4
  db 96
  !a4
  !g4
  db 36
  !e4
  !e4
  db 12
  !e4
  db 108
  !e4
  db 48,$08
  !tie
  db 24
  !rest
  !end

.pattern1_2
  !volume,230
  !instr,!instr00
  db 12,$4F
  !a2
  !a2
  db 12,$5F
  !a3
  db 12,$7F
  !a2
  db 24
  !a2
  db 12,$0F
  !a3
  db 12,$2F
  !a3
  db 12,$4F
  !g2
  !g2
  db 12,$5F
  !g3
  db 12,$7F
  !g2
  !g2
  db 24,$0F
  !g3
  db 12,$2F
  !g3
  db 12,$4F
  !f2
  !f2
  db 12,$5F
  !f3
  !f2
  db 24
  !f2
  db 12,$0F
  !f3
  db 12,$2F
  !f3
  db 12,$4F
  !g2
  !g2
  db 12,$5F
  !g3
  db 12,$7F
  !g2
  db 24
  !g2
  db 12,$0F
  !g3
  db 12,$2F
  !g3
  db 12,$5F
  !a2
  !a2
  db 12,$4F
  !a3
  db 12,$7F
  !a2
  !a2
  db 24
  !a2
  db 12,$0F
  !a3
  db 12,$2F
  !a3
  db 24,$5F
  !g2
  db 12,$4F
  !g3
  db 12,$7F
  !g2
  !g2
  db 24,$0F
  !g3
  db 12,$5F
  !f2
  !f2
  db 12,$4F
  !f3
  db 12,$7F
  !f2
  !f2
  db 24
  !f2
  db 12,$4F
  !f3
  !e2
  db 24,$5F
  !e2
  db 12,$4F
  !e3
  db 12,$7F
  !e2
  !e2
  db 24
  !e3
  db 12,$4F
  !a2
  !a2
  db 12,$5F
  !a3
  db 24
  !a2
  db 12,$0F
  !a3
  db 12,$7F
  !g2
  db 108
  !a3
  !pitchSlide,72,34 : !a2
  db 48,$08
  !tie
  db 24
  !rest
  !end

.pattern1_3
  !volume,255
  db 12,$7F
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 18
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 24
  %percNote(!instr08-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 24
  %percNote(!instr08-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 24
  %percNote(!instr08-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 24
  %percNote(!instr08-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 24
  %percNote(!instr08-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  db 24
  %percNote(!instr08-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  db 24
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  db 24
  %percNote(!instr07-!instr07)
  db 12
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  db 6
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  db 12
  %percNote(!instr09-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr08-!instr07)
  %percNote(!instr07-!instr07)
  db 84
  %percNote(!instr08-!instr07)
  !pan,15
  db 6
  %percNote(!instr09-!instr07)
  !pan,8
  db 6
  %percNote(!instr09-!instr07)
  !pan,10
  db 60
  %percNote(!instr08-!instr07)
  db 24
  !rest
  !end

.pattern1_4
  !instr,!instr01
  !pan,20
  db 24
  !rest
  !volume,100
  !vibrato,36,20,1
  !subtranspose,45
  db 60,$7E
  !a4
  !pitchSlide,6,20 : !a5
  db 36
  !b5
  !e6
  !d6
  db 24
  !b5
  db 60
  !a4
  !pitchSlide,6,20 : !a5
  db 36
  !b5
  !c6
  !d6
  db 12
  !c6
  !b5
  db 72
  !a5
  db 12
  !e5
  !f5
  db 48
  !g5
  !b5
  db 96
  !c6
  !b5
  db 36
  !a5
  !a5
  db 12
  !g5
  db 108,$79
  !a5
  db 48,$08
  !tie
  !end

.pattern1_5
  !instr,!instr01
  !volume,100
  !pan,0
  !subtranspose,45
  db 24
  !rest
  !vibrato,48,20,1
  db 60,$7F
  !e2
  !pitchSlide,6,20 : !e3
  db 36
  !e4
  !b4
  !b4
  db 24
  !g4
  db 60
  !f3
  !pitchSlide,6,20 : !e4
  db 36
  !f4
  !g4
  !b4
  db 12
  !g4
  !g4
  db 72
  !e4
  db 12
  !c4
  !d4
  db 48
  !d4
  !g4
  db 96
  !a4
  !g4
  db 36
  !e4
  !e4
  db 12
  !e4
  db 108,$79
  !e4
  db 48,$08
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
