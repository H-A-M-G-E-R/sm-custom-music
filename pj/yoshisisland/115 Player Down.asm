asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr08 = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$EC,$B8,$0A,$02
  db !instr08,$FF,$E0,$B8,$0A,$12
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+288
  dw Sample08,Sample08+1782
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_6b2d9404e8f16fdc424cf2f60f24fe8e.brr"
  Sample08: incbin "Sample_c9c40f868146997acc8be0cb97700a9f.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker264C

Tracker264C:
  dw .pattern0
  dw .pattern1
  dw $0000

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !musicVolume,220
  !tempo,29
  !instr,!instr08
  !volume,200
  db 3,$7F
  !g5
  !a5
  !b5
  db 10
  !rest
  !end

.pattern1_0
  !musicVolume,220
  !tempo,29
  !instr,!instr08
  !volume,200
  db 6,$7F
  !e6
  !d6
  !c6
  db 6,$7D
  !as5
  !gs5
  !fs5
  db 6,$7C
  !e5
  !d5
  !c5
  db 6,$7B
  !as4
  !gs4
  !fs4
  db 6,$7A
  !e4
  !d4
  !c4
  db 6,$79
  !as3
  db 18,$7F
  !ds5
  db 70
  !d5
  !end

.pattern1_1
  !instr,!instr08
  !volume,190
  db 18
  !rest
  db 6,$7F
  !e6
  !d6
  !c6
  db 6,$7D
  !as5
  !gs5
  !fs5
  db 6,$7C
  !e5
  !d5
  !c5
  db 6,$7B
  !as4
  !gs4
  !fs4
  db 6,$7A
  !e4
  db 18,$7F
  !b4
  db 70
  !as4
  !end

.pattern1_2
  !instr,!instr08
  !volume,180
  db 36
  !rest
  db 6,$7F
  !e6
  !d6
  !c6
  db 6,$7D
  !as5
  !gs5
  !fs5
  db 6,$7C
  !e5
  !d5
  !c5
  db 6,$7B
  !as4
  !instr,!instr04
  !volume,230
  db 18,$7F
  !cs3
  db 70
  !c3
  !end

.pattern1_3
  !instr,!instr08
  !volume,170
  db 54
  !rest
  db 6,$7F
  !e6
  !d6
  !c6
  db 6,$7D
  !as5
  !gs5
  !fs5
  db 6,$7C
  !e5
  db 18
  !gs4
  db 70
  !g4
  !end

.pattern1_4
  !instr,!instr08
  !volume,160
  db 72
  !rest
  db 6,$7F
  !e6
  !d6
  !c6
  db 6,$7D
  !as5
  db 18
  !rest
  db 70
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
