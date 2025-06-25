asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr0A = $16
!instr11 = $17
!instr12 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr0A,$FF,$E0,$B8,$03,$74
  db !instr11,$8F,$F1,$B8,$07,$A8
  db !instr12,$8B,$E0,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample0A,Sample0A+882
  dw Sample11,Sample11+1683
  dw Sample12,Sample12+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample0A: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample11: incbin "Sample_f3af6328bd01ba69fad6d210dcfe9d7c.brr"
  Sample12: incbin "Sample_abbecaee7661b5cc7135b099e2035f4d.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerEB5B

TrackerEB5B:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,29
  !musicVolume,220
  !dynamicMusicVolume,88,240
  !instr,!instr0A
  !pan,14
  !volume,220
  !subtranspose,0
  !vibrato,16,23,30
  !loop : dw .subED1E : db 2
  !d6
  db 24
  !rest
  !tempo,25
  db 12,$7B
  !d6
  !ds6
  !f6
  db 40
  !g6
  !dynamicMusicVolume,100,140
  db 32
  !tie
  db 24
  !tie
  !tie
  db 24,$58
  !tie
  !end

.pattern0_1
  !instr,!instr0A
  !pan,12
  !volume,220
  !vibrato,18,25,20
  !loop : dw .subED2D : db 2
  !as4
  db 24
  !rest
  db 12,$7B
  !as4
  !c5
  !d5
  db 40
  !e5
  db 32
  !tie
  db 24
  !tie
  !tie
  db 24,$58
  !tie
  !end

.pattern0_2
  !instr,!instr0A
  !pan,10
  !volume,220
  !vibrato,16,28,20
  !loop : dw .subED3C : db 2
  !f5
  db 24
  !rest
  db 12,$7B
  !f5
  !gs5
  !as5
  db 40
  !c6
  db 32
  !tie
  db 24
  !tie
  !tie
  db 24,$58
  !tie
  !end

.pattern0_3
  !instr,!instr11
  !pan,9
  !volume,200
  !loop : dw .subED4B : db 2
  db 36,$7B
  !gs4
  db 12
  !gs4
  !gs4
  !gs4
  db 2,$7D
  !gs4
  db 4,$7B
  !gs4
  db 4,$79
  !gs4
  db 4,$77
  !gs4
  db 4,$75
  !gs4
  db 4,$76
  !gs4
  db 4,$77
  !gs4
  db 4,$78
  !gs4
  db 4,$79
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
  db 24
  !rest
  !end

.pattern0_4
  !instr,!instr12
  !pan,6
  !volume,180
  !vibrato,16,24,30
  db 12,$7F
  !as4
  !gs4
  !g4
  !f4
  !ds4
  !d4
  !as4
  !gs4
  !g4
  !f4
  !ds4
  !d4
  db 36
  !d4
  db 12
  !d4
  !ds4
  !f4
  db 40
  !g4
  db 32
  !tie
  db 24
  !tie
  !tie
  !tie
  !end

.pattern0_5
  !instr,!instr0A
  !pan,8
  !volume,220
  !vibrato,14,23,25
  db 36,$7B
  !as3
  db 12
  !as3
  !gs3
  !c4
  db 36
  !as3
  db 12
  !as3
  !gs3
  !c4
  db 36
  !as3
  db 24
  !as3
  db 12
  !as3
  db 40
  !c4
  db 32
  !tie
  db 24
  !tie
  !tie
  !tie
  !end

.pattern0_6
  !instr,!instr11
  !pan,10
  !volume,200
  !loop : dw .subED6C : db 2
  db 36,$7B
  !gs4
  db 12
  !gs4
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
  db 4,$75
  !gs4
  db 4,$76
  !gs4
  db 4,$77
  !gs4
  db 4,$78
  !gs4
  db 4,$79
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
  !gs4
  db 24
  !rest
  !end

.pattern0_7
  !instr,!instr0A
  !pan,4
  !volume,120
  !vibrato,16,23,30
  db 4
  !rest
  db 12,$4A
  !d6
  db 6
  !d6
  !d6
  db 12,$3C
  !d6
  !d6
  db 12,$4F
  !c6
  !ds6
  db 12,$4A
  !d6
  db 6
  !d6
  !d6
  db 12,$3C
  !d6
  !d6
  db 12,$4F
  !c6
  !ds6
  !d6
  db 24
  !rest
  db 12,$7B
  !d6
  !ds6
  !f6
  db 40
  !g6
  db 32
  !tie
  db 24
  !tie
  !tie
  db 20,$58
  !tie
  !end

.subED1E
  db 12,$4A
  !d6
  db 6
  !d6
  !d6
  db 12,$3C
  !d6
  !d6
  db 12,$4F
  !c6
  !ds6
  !end

.subED2D
  db 12,$4A
  !as4
  db 6
  !as4
  !as4
  db 12,$3C
  !as4
  !as4
  db 12,$4F
  !as4
  !as4
  !end

.subED3C
  db 12,$4A
  !f5
  db 6
  !f5
  !f5
  db 12,$3C
  !f5
  !f5
  db 12,$4F
  !ds5
  !g5
  !end

.subED4B
  db 2,$7D
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
  db 6,$7D
  !gs4
  db 12,$7F
  !gs4
  !gs4
  !gs4
  !end

.subED6C
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
  !gs4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
