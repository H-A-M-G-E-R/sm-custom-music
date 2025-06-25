asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr0A = $16
!instr11 = $17
!instr19 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr0A,$FF,$E0,$B8,$03,$74
  db !instr11,$8F,$F1,$B8,$07,$A8
  db !instr19,$FF,$E0,$B8,$03,$CD
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample0A,Sample0A+882
  dw Sample11,Sample11+1683
  dw Sample19,Sample19+3627
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample0A: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample11: incbin "Sample_f3af6328bd01ba69fad6d210dcfe9d7c.brr"
  Sample19: incbin "Sample_c8b8c6add41c5686ca628b1b33b3be95.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerE98E

TrackerE98E:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,21
  !musicVolume,255
  !instr,!instr0A
  !pan,14
  !volume,250
  !vibrato,16,23,30
  db 12
  !rest
  db 6,$4F
  !d6
  !d6
  db 12,$3F
  !d6
  !f6
  db 12,$7F
  !f6
  db 6
  !e6
  !d6
  db 24
  !e6
  db 24,$6F
  !c6
  db 18,$4C
  !ds6
  db 6,$3B
  !c6
  db 24,$6C
  !d6
  db 18,$3F
  !ds6
  db 6
  !f6
  db 48,$7B
  !g6
  !dynamicMusicVolume,80,140
  db 96
  !tie
  !end

.pattern0_1
  !instr,!instr0A
  !pan,12
  !volume,250
  !vibrato,18,25,20
  db 12
  !rest
  db 6,$4F
  !as4
  !as4
  db 12,$3F
  !as4
  !d5
  db 12,$7F
  !d5
  db 6
  !c5
  !as4
  db 24
  !c5
  db 24,$6F
  !g4
  db 18,$4C
  !c5
  db 6,$3B
  !gs4
  db 24,$6C
  !as4
  db 18,$3F
  !c5
  db 6
  !d5
  db 48,$7B
  !e5
  db 96
  !tie
  !end

.pattern0_2
  !instr,!instr0A
  !pan,10
  !volume,250
  !vibrato,16,28,20
  db 12
  !rest
  db 6,$4F
  !d5
  !d5
  db 12,$3F
  !d5
  !f5
  db 12,$7F
  !f5
  db 6
  !e5
  !d5
  db 24
  !e5
  db 24,$6F
  !c5
  db 18,$4C
  !ds5
  db 6,$3B
  !c5
  db 24,$6C
  !d5
  db 18,$3F
  !ds5
  db 6
  !f5
  db 48,$7B
  !g5
  db 96
  !tie
  !end

.pattern0_3
  !instr,!instr11
  !pan,9
  !volume,200
  db 4,$7D
  !gs4
  db 4,$7B
  !gs4
  db 4,$79
  !gs4
  db 4,$77
  !gs4
  db 4,$79
  !gs4
  db 4,$7A
  !gs4
  db 4,$7B
  !gs4
  db 4,$7C
  !gs4
  db 4,$7D
  !gs4
  db 12,$7F
  !gs4
  !gs4
  db 6
  !gs4
  !gs4
  db 4
  !gs4
  db 4,$7D
  !gs4
  db 4,$7B
  !gs4
  db 4,$79
  !gs4
  !gs4
  !gs4
  db 4,$77
  !gs4
  db 4,$79
  !gs4
  db 4,$7A
  !gs4
  db 4,$7B
  !gs4
  !gs4
  !gs4
  db 9,$7F
  !gs4
  !gs4
  db 6
  !gs4
  db 4
  !gs4
  !gs4
  db 4,$7D
  !gs4
  db 4,$7B
  !gs4
  db 4,$79
  !gs4
  db 4,$77
  !gs4
  db 9,$7F
  !gs4
  !gs4
  db 6
  !gs4
  db 4,$7A
  !gs4
  db 4,$7B
  !gs4
  !gs4
  db 4,$7C
  !gs4
  !gs4
  db 4,$7D
  !gs4
  !gs4
  db 4,$7F
  !gs4
  !gs4
  db 4,$7B
  !gs4
  db 4,$79
  !gs4
  db 4,$77
  !gs4
  db 4,$75
  !gs4
  db 4,$73
  !gs4
  db 4,$72
  !gs4
  db 4,$71
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  db 6
  !gs4
  db 58
  !rest
  !end

.pattern0_4
  !instr,!instr0A
  !pan,6
  !volume,180
  !vibrato,16,24,30
  db 96,$7F
  !c3
  db 24
  !tie
  db 72
  !as2
  db 96
  !c3
  db 48
  !tie
  !end

.pattern0_5
  !instr,!instr0A
  !pan,8
  !volume,250
  !vibrato,14,23,25
  db 12
  !rest
  db 6,$4F
  !f5
  !f5
  db 12,$3F
  !f5
  !as5
  db 12,$7F
  !as5
  db 6
  !g5
  !g5
  db 24
  !g5
  db 24,$6F
  !e5
  db 18,$4C
  !gs4
  db 6,$3B
  !ds5
  db 24,$6C
  !f5
  db 18,$3F
  !gs5
  db 6
  !as5
  db 48,$7B
  !c6
  db 96
  !tie
  !end

.pattern0_6
  !instr,!instr11
  !pan,9
  !volume,200
  db 2
  !rest
  db 4,$7D
  !gs4
  db 4,$7B
  !gs4
  db 4,$79
  !gs4
  db 4,$77
  !gs4
  db 4,$79
  !gs4
  db 4,$7A
  !gs4
  db 4,$7B
  !gs4
  db 4,$7C
  !gs4
  db 2,$7D
  !gs4
  db 12,$7F
  !gs4
  !gs4
  db 6
  !gs4
  db 8
  !gs4
  db 4
  !gs4
  db 4,$7D
  !gs4
  db 4,$7B
  !gs4
  db 4,$79
  !gs4
  !gs4
  !gs4
  db 4,$77
  !gs4
  db 4,$79
  !gs4
  db 4,$7A
  !gs4
  db 4,$7B
  !gs4
  !gs4
  db 2
  !gs4
  db 9,$7F
  !gs4
  !gs4
  db 8
  !gs4
  db 4
  !gs4
  !gs4
  db 4,$7D
  !gs4
  db 4,$7B
  !gs4
  db 4,$79
  !gs4
  db 2,$77
  !gs4
  db 9,$7F
  !gs4
  !gs4
  db 8
  !gs4
  db 4,$7A
  !gs4
  db 4,$7B
  !gs4
  !gs4
  db 4,$7C
  !gs4
  !gs4
  db 4,$7D
  !gs4
  !gs4
  db 4,$7F
  !gs4
  !gs4
  db 4,$7B
  !gs4
  db 4,$79
  !gs4
  db 4,$77
  !gs4
  db 4,$75
  !gs4
  db 4,$73
  !gs4
  db 4,$72
  !gs4
  db 4,$71
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  db 6
  !gs4
  db 56
  !rest
  !end

.pattern0_7
  !instr,!instr19
  !pan,4
  !volume,250
  db 72,$7F
  !a4
  db 24
  !rest
  db 24,$7A
  !a4
  !a4
  !rest
  !a4
  db 96,$7F
  !a4
  db 48
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
