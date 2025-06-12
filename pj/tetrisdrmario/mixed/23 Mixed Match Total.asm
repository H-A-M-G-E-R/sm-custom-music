asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr03 = $17
!instr05 = $18
!instr07 = $19
!instr08 = $1A
!instr0C = $1B
!instr10 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr0C,$FF,$E1,$B8,$07,$F0
  db !instr10,$FF,$E1,$B8,$08,$F0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+27
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample07,Sample07+1971
  dw Sample08,Sample08+1332
  dw Sample0C,Sample0C+27
  dw Sample10,Sample10+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample03: incbin "Sample03.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample10: incbin "Sample10.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerE337

TrackerE337:
  dw .pattern0
-
  dw .pattern1
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !tempo,32
  !musicVolume,44;50
  !dynamicMusicVolume,240,210;240
  !volume,240
  !pan,10
  !echo,%00011111,20,20
  !echoParameters,4,80,0
  db 48
  !rest
  !instr,!instr07
  db 12,$7F
  !g3
  !g2
  !instr,!instr08
  !g4
  !instr,!instr07
  !g2
  !g3
  !g2
  !instr,!instr08
  !g4
  !instr,!instr07
  !g2
  !loop : dw .subE55D : db 2
  !instr,!instr0C
  db 5
  !g6
  !f6
  !d6
  !b5
  !g5
  !f5
  !c5
  !g4
  !d4
  !a3
  !e3
  !b2
  !fs2
  db 10,$2F
  !cs2
  db 10,$2B
  !cs2
  db 11,$27
  !cs2
  !end

.pattern0_1
  !volume,240
  !instr,!instr05
  !pan,10
  db 48
  !rest
  db 12,$7F
  !g2
  db 12,$5F
  !g2
  !rest
  db 12,$7F
  !g2
  !f2
  db 12,$5F
  !f2
  !rest
  db 12,$7F
  !f2
  !loop : dw .subE570 : db 2
  db 96
  !rest
  !end

.pattern0_2
  !volume,200
  !instr,!instr01
  !pan,10
  db 48
  !rest
  db 6,$2B
  !g3
  !g3
  !g4
  !g4
  !g3
  !g3
  !g4
  !g4
  !f3
  !f3
  !f4
  !f4
  !f3
  !f3
  !f4
  !f4
  !loop : dw .subE581 : db 2
  db 96
  !rest
  !end

.pattern0_3
  !volume,200
  !instr,!instr03
  !pan,10
  db 48
  !rest
  db 6,$77
  !a7
  !f7
  !d7
  !as6
  !a6
  !f6
  !d6
  !as5
  !a5
  !f5
  !d5
  !as4
  !a4
  !f4
  !d4
  !as3
  !instr,!instr10
  db 96,$7B
  !g2
  !pitchSlide,0,96 : !c3
  db 36
  !tie
  !pitchSlide,0,36 : !g3
  db 6
  !tie
  !pitchSlide,0,6 : !g5
  db 54
  !tie
  !pitchSlide,0,150 : !c2
  db 96
  !tie
  !end

.pattern0_4
  !volume,200
  !pan,10
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .subE592 : db 3
  !rest
  !rest
  !end

.pattern1_0
  !tempo,25
  !volume,208
  !instr,!instr05
  db 40,$2F
  !c3
  db 8,$7F
  !c3
  db 40,$2F
  !g2
  db 8,$7F
  !g2
  db 40,$2F
  !d3
  db 8,$7F
  !d3
  db 40,$2F
  !a2
  db 8,$7F
  !a2
  db 40,$2F
  !f2
  db 8,$7F
  !f2
  db 40,$2F
  !c3
  db 8,$7F
  !c3
  db 40,$2F
  !ds2
  db 8,$7F
  !ds2
  db 40,$2F
  !as2
  db 8,$7F
  !as2
  !end

.pattern1_1
  !instr,!instr03
  !volume,200
  !slideIn,0,2,244
  db 8,$73
  !b6
  !rest
  !e6
  !b6
  !rest
  !e6
  !b6
  !rest
  !e6
  !b6
  !rest
  !e6
  !c7
  !rest
  !fs6
  !c7
  !rest
  !fs6
  !c7
  !rest
  !fs6
  !c7
  !rest
  !fs6
  !e7
  !rest
  !a6
  !e7
  !rest
  !a6
  !e7
  !rest
  !a6
  !e7
  !rest
  !a6
  !d7
  !rest
  !g6
  !d7
  !rest
  !g6
  !d7
  !rest
  !g6
  !d7
  !rest
  !g6
  !end

.pattern1_2
  !instr,!instr03
  !volume,200
  !slideIn,0,2,244
  db 8,$73
  !g6
  db 16
  !rest
  db 8
  !g6
  db 16
  !rest
  db 8
  !g6
  db 16
  !rest
  db 8
  !g6
  db 16
  !rest
  db 8
  !a6
  db 16
  !rest
  db 8
  !a6
  db 16
  !rest
  db 8
  !a6
  db 16
  !rest
  db 8
  !a6
  db 16
  !rest
  db 8
  !c7
  db 16
  !rest
  db 8
  !c7
  db 16
  !rest
  db 8
  !c7
  db 16
  !rest
  db 8
  !c7
  db 16
  !rest
  db 8
  !as6
  db 16
  !rest
  db 8
  !as6
  db 16
  !rest
  db 8
  !as6
  db 16
  !rest
  db 8
  !as6
  db 16
  !rest
  !end

.pattern1_3
  !instr,!instr07
  !volume,200
  !loop : dw .subE5A3 : db 5
  !g6
  !g5
  !g3
  !end

.pattern1_4
  !volume,200
  db 96
  !rest
  !rest
  !instr,!instr03
  !vibrato,0,20,40
  db 40
  !rest
  db 8,$77
  !g7
  !pitchSlide,0,2 : !a7
  db 40,$57
  !g7
  db 8,$77
  !g7
  !pitchSlide,0,2 : !a7
  db 96,$27
  !g7
  !end

.subE55D
  !instr,!instr07
  !g3
  !g2
  !instr,!instr08
  !g4
  !instr,!instr07
  !g2
  !g3
  !g2
  !instr,!instr08
  !g4
  !instr,!instr07
  !g2
  !end

.subE570
  !g2
  db 12,$5F
  !g2
  !rest
  db 12,$7F
  !g2
  !f2
  db 12,$5F
  !f2
  !rest
  db 12,$7F
  !f2
  !end

.subE581
  !g3
  !g3
  !g4
  !g4
  !g3
  !g3
  !g4
  !g4
  !f3
  !f3
  !f4
  !f4
  !f3
  !f3
  !f4
  !f4
  !end

.subE592
  !rest
  !rest
  !rest
  !rest
  !end

.subE5A3
  db 16,$7B
  !c4
  !c4
  db 8,$7F
  !g2
  !g2
  db 16
  !g2
  db 8
  !g2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
