asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr13 = $16

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr13,$FE,$F3,$B8,$04,$FF
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample13,Sample13+369
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample13: incbin "Sample_4e4eabd94f1d721abc772633931c5756.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDC7F

TrackerDC7F:
-
  dw .pattern0
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,25
  !musicVolume,220
  !instr,!instr13
  !pan,8
  !volume,220
  !loop : dw .subE098 : db 1
  db 48
  !tie
  !end

.pattern0_1
  !instr,!instr13
  !pan,10
  !volume,220
  !loop : dw .subE0EB : db 1
  db 48
  !tie
  !end

.pattern0_2
  !instr,!instr13
  !pan,12
  !volume,220
  db 6,$3C
  !d5
  !d5
  db 12,$0B
  !e5
  db 12,$2D
  !g5
  db 12,$0B
  !e5
  db 18,$5D
  !g5
  db 30,$0C
  !b5
  !loop : dw .subE11F : db 1
  db 6,$5D
  !c6
  db 6,$6B
  !c6
  db 12,$0B
  !b5
  db 12,$0C
  !g5
  !e5
  db 18,$6E
  !g5
  db 18,$0D
  !g5
  db 12,$7D
  !g5
  db 48
  !tie
  !end

.pattern0_3
  !instr,!instr13
  !pan,4
  !volume,140
  !loop : dw .subE14A : db 1
  db 48
  !tie
  !end

.subE098
  db 6,$2B
  !b4
  db 6,$38
  !b4
  db 12,$0C
  !c5
  db 12,$2C
  !e5
  db 12,$0B
  !c5
  db 18,$4D
  !d5
  db 30,$0D
  !d5
  db 6,$3C
  !e5
  db 18,$2B
  !e5
  db 12,$0C
  !e5
  db 12,$07
  !c5
  db 18,$6D
  !d5
  db 30,$0D
  !c5
  db 6,$2C
  !b4
  db 6,$3A
  !b4
  db 12,$2B
  !c5
  db 12,$2C
  !e5
  db 12,$0B
  !c5
  db 18,$5D
  !d5
  db 30,$0C
  !d5
  db 6,$4D
  !e5
  db 6,$3B
  !e5
  db 12,$07
  !e5
  db 12,$0B
  !e5
  !c5
  db 18,$6E
  !d5
  db 18,$0C
  !c5
  db 12,$7C
  !b4
  !end

.subE0EB
  db 24,$3C
  !g3
  db 24,$0C
  !a3
  db 18,$6C
  !b3
  db 30,$0C
  !c4
  db 24,$3C
  !d4
  db 24,$0C
  !c4
  db 18,$6C
  !b3
  db 30,$0B
  !a3
  db 24,$3D
  !g3
  db 24,$0C
  !a3
  db 18,$6C
  !b3
  db 30,$0C
  !c4
  db 24,$3C
  !d4
  db 24,$0C
  !c4
  db 18,$6C
  !as3
  db 18,$0C
  !gs3
  db 12,$7D
  !g3
  !end

.subE11F
  db 6,$4D
  !c6
  db 6,$7B
  !c6
  db 12,$0B
  !b5
  db 12,$0D
  !g5
  db 12,$0B
  !e5
  db 18,$5D
  !g5
  db 30,$0D
  !g5
  db 6,$2C
  !d5
  db 6,$3C
  !d5
  db 12,$0B
  !e5
  db 12,$2D
  !g5
  db 12,$0B
  !e5
  db 18,$4D
  !g5
  db 30,$0D
  !b5
  !end

.subE14A
  db 4
  !rest
  db 6,$3C
  !d5
  !d5
  db 12,$0B
  !e5
  db 12,$2D
  !g5
  db 12,$0B
  !e5
  db 18,$5D
  !g5
  db 30,$0C
  !b5
  db 6,$4D
  !c6
  db 6,$7B
  !c6
  db 12,$0B
  !b5
  db 12,$0D
  !g5
  db 12,$0B
  !e5
  db 18,$5D
  !g5
  db 30,$0D
  !g5
  db 6,$2C
  !d5
  db 6,$3C
  !d5
  db 12,$0B
  !e5
  db 12,$2D
  !g5
  db 12,$0B
  !e5
  db 18,$4D
  !g5
  db 30,$0D
  !b5
  db 6,$5D
  !c6
  db 6,$6B
  !c6
  db 12,$0B
  !b5
  db 12,$0C
  !g5
  !e5
  db 18,$6E
  !g5
  db 18,$0D
  !g5
  db 8,$7D
  !g5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
