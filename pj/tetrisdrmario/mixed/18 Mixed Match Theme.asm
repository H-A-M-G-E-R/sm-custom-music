asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr03 = $16
!instr05 = $17
!instr07 = $18
!instr10 = $19
!instr15 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr10,$FF,$E1,$B8,$08,$F0
  db !instr15,$FF,$E1,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample07,Sample07+1971
  dw Sample10,Sample10+27
  dw Sample15,Sample15+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample03.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample10: incbin "Sample10.brr"
  Sample15: incbin "Sample15.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
-
  dw .pattern1
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0

.pattern0_0
  !musicVolume,210
  !tempo,28
  !volume,200
  !pan,10
  !endEcho
  db 24
  !rest
  !end

.pattern0_1
  !volume,200
  !pan,10
  !tremolo,0,40,250
  db 24
  !rest
  !end

.pattern0_2
  !volume,200
  !pan,10
  db 24
  !rest
  !end

.pattern0_3
  !volume,240
  !pan,10
  db 24
  !rest
  !end

.pattern0_4
  !volume,200
  !pan,10
  db 24
  !rest
  !end

.pattern0_5
  !volume,200
  !pan,10
  db 24
  !rest
  !end

.pattern1_0
  !instr,!instr07
  db 48,$79
  !c5
  db 24,$7F
  !c4
  !instr,!instr15
  db 24,$29
  !g3
  !instr,!instr07
  db 36,$79
  !c5
  db 12
  !c5
  db 24,$7F
  !c4
  !instr,!instr15
  db 24,$79
  !g2
  !instr,!instr07
  db 48
  !c5
  db 24,$7F
  !c4
  !instr,!instr15
  db 24,$29
  !g3
  !instr,!instr07
  db 36,$79
  !c5
  db 12,$7F
  !c5
  db 24
  !c4
  !instr,!instr15
  db 24,$79
  !g2
  !instr,!instr07
  db 48
  !c5
  db 24,$7F
  !c4
  !instr,!instr15
  db 24,$29
  !g3
  !instr,!instr07
  db 36,$79
  !c5
  db 24
  !c4
  db 12,$7F
  !c4
  !instr,!instr15
  db 12,$79
  !g3
  !instr,!instr07
  db 12,$7F
  !c4
  !instr,!instr07
  db 48,$79
  !c5
  db 24,$7F
  !c4
  !instr,!instr15
  db 24,$29
  !g3
  !instr,!instr07
  db 36,$79
  !c5
  db 24,$7F
  !c4
  db 12
  !c4
  db 24
  !rest
  db 96
  !rest
  !end

.pattern1_1
  !instr,!instr03
  db 36,$75
  !f7
  !fs7
  db 24
  !f7
  db 12
  !tie
  db 36
  !fs7
  !f7
  db 12
  !fs7
  db 24
  !tie
  db 36
  !f7
  !fs7
  !f7
  !fs7
  db 24
  !f7
  db 12
  !tie
  db 36
  !fs7
  db 36,$78
  !f7
  db 12,$79
  !fs7
  db 24
  !tie
  db 36,$7A
  !f7
  db 36,$7B
  !fs7
  db 36,$7C
  !f7
  db 36,$7D
  !fs7
  db 24,$7E
  !f7
  db 12
  !tie
  db 36,$7F
  !fs7
  db 36,$7D
  !f7
  db 12,$7B
  !fs7
  db 24
  !tie
  db 36,$79
  !f7
  db 36,$77
  !fs7
  !end

.pattern1_2
  db 96
  !rest
  !rest
  !rest
  !rest
  !rest
  !instr,!instr03
  db 84
  !rest
  db 10,$1B
  !d5
  db 10,$15
  !d5
  db 10,$1B
  !a5
  db 10,$15
  !a5
  db 10,$1B
  !fs5
  db 10,$15
  !fs5
  db 10,$1B
  !g5
  db 10,$15
  !g5
  db 2
  !rest
  db 10,$1B
  !b5
  db 10,$15
  !b5
  db 4
  !rest
  db 10,$1B
  !d6
  db 10,$15
  !d6
  db 6
  !rest
  db 10,$1B
  !fs6
  db 10,$15
  !fs6
  db 8
  !rest
  db 10,$1B
  !a6
  db 10,$15
  !a6
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.pattern1_3
  !instr,!instr05
  db 12,$39
  !a2
  db 12,$79
  !a2
  !c3
  !cs3
  db 12,$39
  !a2
  db 36
  !rest
  !loop : dw .subD1B7 : db 3
  !loop : dw .subD1C4 : db 5
  !end

.pattern1_4
  !loop : dw .subD1D7 : db 1
  !rest
  !rest
  db 24
  !rest
  db 24,$07
  !fs5
  !rest
  !fs5
  !rest
  !fs5
  !rest
  !fs5
  !rest
  !fs5
  !rest
  !fs5
  !rest
  !fs5
  db 26
  !rest
  db 24
  !fs5
  db 28
  !rest
  db 24
  !fs5
  !rest
  db 18
  !rest
  !end

.pattern1_5
  !loop : dw .subD1D7 : db 1
  !rest
  !rest
  db 24
  !rest
  db 24,$07
  !d5
  !rest
  !d5
  !rest
  !d5
  !rest
  !d5
  !rest
  !d5
  !rest
  !d5
  !rest
  !d5
  db 26
  !rest
  db 24
  !d5
  db 28
  !rest
  db 24
  !d5
  !rest
  db 18
  !rest
  !end

.subD1B7
  db 12
  !a2
  db 12,$79
  !a2
  !c3
  !cs3
  db 12,$39
  !a2
  db 36
  !rest
  !end

.subD1C4
  db 12,$7F
  !d2
  db 24,$0F
  !d2
  db 12,$3F
  !d2
  db 12,$7F
  !d2
  db 24,$0F
  !d2
  db 12,$3F
  !d2
  !end

.subD1D7
  !instr,!instr10
  !subtranspose,50
  db 96
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
