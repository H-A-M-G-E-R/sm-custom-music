asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$FF,$E0,$B8,$03,$C8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+1080
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample_68738a4b61e2d066954b4dc1cc1a6428.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker271C

Tracker271C:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !musicVolume,230
  !dynamicMusicVolume,96,100
  !tempo,21
  !instr,!instr05
  !volume,200
  !pan,8
  db 12,$7F
  !c5
  !pitchSlide,2,4 : !c6
  db 6
  !c5
  !pitchSlide,0,5 : !f5
  !c5
  !pitchSlide,0,5 : !e5
  !c5
  !pitchSlide,0,5 : !ds5
  !c5
  !pitchSlide,0,5 : !d5
  !c5
  !pitchSlide,0,5 : !cs5
  !c5
  !pitchSlide,0,5 : !c5
  !c5
  !pitchSlide,0,5 : !b4
  !c5
  !pitchSlide,0,5 : !as4
  !c5
  !pitchSlide,0,5 : !a4
  !c5
  !pitchSlide,0,5 : !gs4
  !c5
  !pitchSlide,0,5 : !g4
  !c5
  !pitchSlide,0,5 : !fs4
  !end

.pattern0_1
  !instr,!instr05
  !volume,200
  !pan,4
  db 8
  !rest
  db 12,$7F
  !e5
  !pitchSlide,2,4 : !e6
  db 7
  !e5
  !pitchSlide,0,5 : !a5
  db 4
  !e5
  !pitchSlide,0,4 : !a5
  db 5
  !e5
  !pitchSlide,0,5 : !a5
  db 8
  !e5
  !pitchSlide,0,6 : !a5
  db 4
  !e5
  !pitchSlide,0,4 : !a5
  db 3
  !e5
  !pitchSlide,0,3 : !a5
  db 6
  !e5
  !pitchSlide,0,5 : !a5
  db 7
  !e5
  !pitchSlide,0,5 : !a5
  db 5
  !e5
  !pitchSlide,0,5 : !a5
  db 4
  !e5
  !pitchSlide,0,4 : !a5
  db 6
  !e5
  !pitchSlide,0,5 : !a5
  db 5
  !rest
  !end

.pattern0_2
  !instr,!instr05
  !volume,200
  !pan,18
  db 4
  !rest
  db 6,$7F
  !fs4
  !pitchSlide,2,4 : !g4
  !fs4
  !pitchSlide,0,5 : !a4
  db 8
  !fs4
  !pitchSlide,0,5 : !as4
  db 6
  !fs4
  !pitchSlide,0,5 : !b4
  db 8
  !fs4
  !pitchSlide,0,5 : !c5
  db 6
  !fs4
  !pitchSlide,0,5 : !cs5
  db 8
  !fs4
  !pitchSlide,0,5 : !d5
  db 6
  !fs4
  !pitchSlide,0,5 : !ds5
  !fs4
  !pitchSlide,0,5 : !e5
  db 8
  !fs4
  !pitchSlide,0,5 : !f5
  db 6
  !fs4
  !pitchSlide,0,5 : !fs5
  !fs4
  !pitchSlide,0,5 : !g5
  !end

.pattern0_3
  !instr,!instr05
  !volume,200
  !pan,12
  db 2
  !rest
  db 4,$7F
  !gs5
  !pitchSlide,2,4 : !e6
  db 7
  !gs5
  !pitchSlide,0,5 : !a5
  db 4
  !gs5
  !pitchSlide,0,4 : !f5
  db 5
  !gs5
  !pitchSlide,0,5 : !a5
  db 8
  !gs5
  !pitchSlide,0,6 : !f5
  db 4
  !gs5
  !pitchSlide,0,4 : !a5
  db 3
  !gs5
  !pitchSlide,0,3 : !f5
  db 6
  !gs5
  !pitchSlide,0,5 : !a5
  db 7
  !gs5
  !pitchSlide,0,5 : !f5
  db 5
  !gs5
  !pitchSlide,0,5 : !a5
  db 4
  !gs5
  !pitchSlide,0,4 : !f5
  db 6
  !gs5
  !pitchSlide,0,5 : !a5
  db 19
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
