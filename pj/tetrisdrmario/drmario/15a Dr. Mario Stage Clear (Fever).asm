asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr02 = $16
!instr03 = $17
!instr05 = $18
!instr07 = $19
!instr0D = $1A
!instr10 = $1B
!instr13 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr10,$FF,$E1,$B8,$08,$F0
  db !instr13,$F8,$E1,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+27
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample07,Sample07+1971
  dw Sample0D,Sample0D+441
  dw Sample10,Sample10+27
  dw Sample13,Sample13+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample02.brr"
  Sample03: incbin "Sample03.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample10: incbin "Sample10.brr"
  Sample13: incbin "Sample13.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerED48

TrackerED48:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7

.pattern0_0
  !musicVolume,210;240
  !tempo,30
  !volume,200
  !pan,10
  !echo,%11111111,20,20
  !echoParameters,4,80,0
  db 40
  !rest
  !instr,!instr0D
  db 24,$7F
  !e5
  db 48
  !f5
  !instr,!instr02
  !volume,150
  db 8
  !rest
  !slideIn,0,2,255
  !loop : dw .subEEFC : db 1
  !dynamicMusicVolume,240,131;150
  !loop : dw .subEF45 : db 3
  !dynamicMusicVolume,240,88;100
  !loop : dw .subEF45 : db 1
  db 16,$09
  !c7
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  !end

.pattern0_1
  !volume,200
  !pan,10
  db 40
  !rest
  !instr,!instr0D
  db 24,$7F
  !b5
  db 48
  !c6
  !instr,!instr02
  !slideIn,0,2,255
  !loop : dw .subEEFC : db 1
  !loop : dw .subEF45 : db 4
  db 16,$09
  !c7
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  !rest
  !end

.pattern0_2
  !volume,200
  !pan,10
  db 40
  !rest
  !instr,!instr0D
  !subtranspose,10
  db 24,$7F
  !gs6
  db 48
  !a6
  !volume,200
  !instr,!instr13
  db 8
  !rest
  db 96,$73
  !b6
  !d7
  !b6
  !d6
  !tie
  !dynamicVolume,192,0
  !tie
  !tie
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .subEF76 : db 4
  !end

.pattern0_3
  !volume,200
  !pan,10
  !instr,!instr10
  db 24,$7F
  !d3
  !pitchSlide,0,16 : !e4
  db 8,$5B
  !e4
  db 8,$57
  !e4
  db 8,$55
  !e4
  db 8,$53
  !e4
  db 8,$52
  !e4
  db 48
  !rest
  !volume,200
  !instr,!instr13
  db 96,$73
  !b6
  !d7
  !b6
  !d6
  !tie
  !dynamicVolume,192,0
  !tie
  !tie
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .subEF76 : db 4
  db 8
  !rest
  !end

.pattern0_4
  !volume,200
  !pan,10
  !instr,!instr10
  db 24,$7F
  !fs3
  !pitchSlide,0,16 : !g4
  db 8,$5B
  !g4
  db 8,$57
  !g4
  db 8,$55
  !g4
  db 8,$53
  !g4
  db 10,$32
  !g4
  !instr,!instr03
  db 104,$77
  !b4
  !pitchSlide,0,4 : !g7
  !pitchSlide,0,100 : !g2
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .subEF76 : db 10
  !rest
  db 22
  !rest
  !end

.pattern0_5
  !volume,200
  !pan,10
  !instr,!instr10
  db 24,$7F
  !b3
  !pitchSlide,0,16 : !c5
  db 8,$5B
  !c5
  db 8,$57
  !c5
  db 8,$55
  !c5
  db 8,$53
  !c5
  db 8,$52
  !c5
  db 48
  !rest
  !instr,!instr05
  db 24
  !rest
  db 24,$4F
  !g2
  db 48
  !rest
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .subEF76 : db 10
  db 8
  !rest
  !end

.pattern0_6
  !volume,200
  !pan,10
  db 40
  !rest
  db 72
  !rest
  db 24
  !rest
  !instr,!instr07
  db 24,$7F
  !g3
  db 48
  !rest
  db 96
  !rest
  db 24
  !rest
  !g3
  db 48
  !rest
  db 72
  !rest
  db 24
  !g3
  db 48
  !rest
  db 24
  !g3
  !rest
  db 96
  !rest
  !rest
  db 48
  !rest
  db 24
  !g3
  !rest
  db 96
  !rest
  !rest
  db 48
  !rest
  db 24
  !g3
  !rest
  db 96
  !rest
  db 8
  !rest
  !end

.pattern0_7
  !volume,200
  !pan,10
  db 40
  !rest
  !instr,!instr0D
  !slideIn,0,4,252
  db 24,$7F
  !gs6
  db 48
  !a6
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .subEF76 : db 11
  db 8
  !rest
  !end

.subEEFC
  db 16,$09
  !d7
  db 8,$19
  !g6
  db 16,$09
  !g6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !c7
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d7
  db 8,$19
  !g6
  db 16,$09
  !g6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  !end

.subEF45
  db 16,$09
  !c7
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d7
  db 8,$19
  !g6
  db 16,$09
  !g6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  db 16,$09
  !d6
  db 8,$19
  !g6
  !end

.subEF76
  !rest
  !rest
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
