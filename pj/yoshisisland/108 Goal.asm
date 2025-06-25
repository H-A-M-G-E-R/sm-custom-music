asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr0A = $16
!instr12 = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr0A,$FF,$E0,$B8,$03,$74
  db !instr12,$8B,$E0,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample0A,Sample0A+882
  dw Sample12,Sample12+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample0A: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample12: incbin "Sample_abbecaee7661b5cc7135b099e2035f4d.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2AE8

Tracker2AE8:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, 0, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,31
  !musicVolume,220
  !dynamicMusicVolume,88,240
  !instr,!instr0A
  !pan,14
  !volume,220
  !subtranspose,0
  !vibrato,16,23,30
  db 22,$4A
  !d5
  db 23
  !f5
  db 21
  !as5
  db 22,$3C
  !d6
  db 8,$4F
  !f6
  db 32
  !rest
  db 32,$7B
  !g6
  !dynamicMusicVolume,100,140
  !tie
  !tie
  !tie
  db 32,$58
  !tie
  !end

.pattern0_1
  !instr,!instr0A
  !pan,12
  !volume,220
  !subtranspose,0
  !vibrato,18,25,20
  db 21,$4A
  !f4
  db 23,$4C
  !as4
  db 21,$4B
  !d5
  db 25,$3C
  !f5
  db 6,$6F
  !c6
  db 36
  !rest
  db 60,$7B
  !d6
  db 32
  !tie
  !tie
  db 32,$58
  !tie
  !end

.pattern0_2
  !instr,!instr0A
  !pan,10
  !volume,222
  !subtranspose,0
  !vibrato,16,28,20
  db 21,$5A
  !as4
  db 23,$4A
  !d5
  !f5
  db 21,$4D
  !as5
  db 8,$5F
  !d5
  db 33
  !rest
  db 63,$7C
  !e5
  db 32
  !tie
  !tie
  db 32,$58
  !tie
  !end

.pattern0_4
  !instr,!instr12
  !pan,6
  !volume,140
  !vibrato,16,24,30
  db 88,$7F
  !as4
  db 8
  !a4
  db 32
  !rest
  db 64
  !g4
  db 32
  !tie
  !tie
  db 32,$58
  !tie
  !end

.pattern0_5
  !instr,!instr0A
  !pan,8
  !volume,220
  !vibrato,14,23,25
  db 22,$2B
  !g4
  db 23,$2C
  !g4
  db 22,$1C
  !g4
  db 21,$2C
  !g4
  db 8,$2F
  !d4
  db 6
  !rest
  db 12,$1B
  !d4
  db 13,$1C
  !cs4
  db 65,$7A
  !c4
  db 32
  !tie
  !tie
  db 32,$58
  !tie
  !end

.pattern0_6
  !instr,!instr12
  !pan,13
  !volume,140
  !vibrato,20,23,40
  db 88,$7F
  !g4
  db 8
  !f4
  db 32
  !rest
  db 64
  !e4
  db 32
  !tie
  !tie
  db 32,$58
  !tie
  !end

.pattern0_7
  !instr,!instr0A
  !pan,7
  !volume,160
  !subtranspose,0
  !vibrato,14,23,30
  db 4
  !rest
  db 22,$4A
  !d5
  db 23
  !f5
  db 21
  !as5
  db 22,$3C
  !d6
  db 8,$4F
  !f6
  db 32
  !rest
  db 64,$7B
  !g6
  db 32
  !tie
  !tie
  db 28,$58
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
