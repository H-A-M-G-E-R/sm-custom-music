asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr05 = $18
!instr08 = $19
!instr0A = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$05,$3D
  db !instr03,$FF,$F0,$B8,$02,$00
  db !instr05,$FF,$E0,$B8,$08,$02
  db !instr08,$FF,$E0,$B8,$03,$74
  db !instr0A,$FF,$F0,$B8,$07,$7F
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1773
  dw Sample03,Sample03+198
  dw Sample05,Sample05+1053
  dw Sample08,Sample08+882
  dw Sample0A,Sample0A+6435
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_f023e6c660ff8249116ec94187ed7b11.brr"
  Sample03: incbin "Sample_8075ac6d2ef16475bfa46ecdab1656a7.brr"
  Sample05: incbin "Sample_e1308e6a6bdda4b8dbb04128e738f11a.brr"
  Sample08: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample0A: incbin "Sample_4a0c755c9567ad1789d21d858f57317e.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerE079

TrackerE079:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,23
  !musicVolume,200
  !instr,!instr03
  !pan,10
  !volume,200
  !musicTranspose,255
  db 29
  !rest
  db 23,$7A
  !e4
  db 22,$7C
  !c4
  db 22,$7B
  !c4
  db 23
  !e4
  db 26,$7C
  !e4
  db 35,$7D
  !a4
  db 12
  !b3
  db 25
  !tie
  db 22,$7C
  !c5
  db 21,$7B
  !b4
  db 21,$7C
  !f4
  db 7,$7D
  !d5
  db 15
  !tie
  db 34,$7B
  !f4
  db 37,$75
  !a3
  db 10,$7C
  !e3
  db 15
  !tie
  db 22,$7A
  !b4
  db 22,$7B
  !c5
  db 23,$7C
  !e4
  db 14,$7D
  !c5
  db 10
  !tie
  db 27,$79
  !ds4
  db 31,$7D
  !c5
  db 28,$7A
  !gs4
  db 4
  !tie
  db 28,$78
  !d4
  db 21,$7A
  !d4
  db 21,$7C
  !f4
  db 22
  !g4
  db 2
  !tie
  db 27,$79
  !f4
  db 25,$75
  !f4
  db 31,$77
  !d4
  db 6,$78
  !f4
  db 5
  !tie
  db 29
  !tie
  !end

.pattern0_1
  !instr,!instr03
  !pan,10
  !volume,200
  !subtranspose,0
  db 28
  !rest
  db 14,$79
  !c4
  db 21,$7A
  !g3
  db 22,$79
  !a3
  db 11
  !b3
  db 13
  !tie
  db 35,$77
  !a3
  db 24,$7C
  !e4
  db 24,$7B
  !e4
  db 25
  !tie
  db 22,$7A
  !d4
  db 21,$7B
  !d4
  db 21,$7D
  !c5
  db 7,$7A
  !g4
  db 15
  !tie
  db 22,$7C
  !c5
  db 35,$7A
  !b4
  db 24,$77
  !b3
  db 14
  !tie
  db 23
  !e4
  db 22,$7A
  !e4
  db 23,$7B
  !g4
  db 12,$7C
  !g4
  db 2,$7B
  !c4
  db 24
  !tie
  db 43
  !c4
  db 29,$7A
  !f4
  db 4
  !tie
  db 27,$7B
  !g4
  db 22,$77
  !c4
  db 21,$7B
  !c4
  db 22,$7A
  !c4
  db 1
  !tie
  db 15,$75
  !d4
  db 25,$7A
  !b3
  db 27,$79
  !b3
  db 28
  !g3
  db 2
  !tie
  db 27,$77
  !b3
  !end

.pattern0_2
  !instr,!instr03
  !pan,10
  !volume,200
  !subtranspose,0
  db 29,$7C
  !c3
  db 23
  !g4
  db 22,$7B
  !e4
  db 22,$7C
  !e4
  db 1
  !tie
  db 22,$7D
  !g4
  db 37,$7C
  !b4
  db 36,$79
  !b3
  db 2
  !tie
  db 23,$7C
  !d3
  !f4
  db 30,$7B
  !f4
  db 11,$7A
  !d4
  db 7,$7B
  !b4
  db 25
  !tie
  db 36,$79
  !b3
  db 35,$7C
  !c5
  db 2
  !tie
  db 13,$7A
  !b3
  db 23,$7E
  !d5
  db 21,$7A
  !g4
  db 24,$7C
  !d5
  db 13,$7D
  !g5
  db 10
  !tie
  db 29,$7E
  !f5
  db 42,$7A
  !ds4
  db 15
  !c4
  db 5
  !tie
  db 27,$78
  !d3
  db 22,$7C
  !f4
  db 20,$77
  !d4
  db 18,$7A
  !d4
  db 4
  !tie
  db 3
  !tie
  db 26
  !a4
  db 27,$75
  !d4
  db 30,$79
  !f4
  db 6,$78
  !b4
  db 4
  !tie
  db 29
  !tie
  !end

.pattern0_3
  !instr,!instr03
  !pan,10
  !volume,200
  !subtranspose,0
  db 16
  !rest
  db 15,$79
  !e3
  db 22,$7A
  !b4
  db 22,$7B
  !a4
  db 21,$7C
  !b4
  db 2
  !tie
  db 35
  !c5
  db 35,$7B
  !g3
  db 24,$7C
  !b4
  db 13
  !tie
  db 24,$7A
  !a3
  db 20
  !b3
  db 31
  !c4
  db 8,$79
  !f4
  db 3
  !tie
  db 34,$7C
  !c4
  db 24,$7B
  !f4
  db 35
  !f4
  db 14
  !tie
  db 12
  !g4
  db 21,$7A
  !d4
  db 23
  !b3
  db 13,$79
  !d4
  db 13,$7B
  !ds3
  db 10
  !tie
  db 43,$7A
  !g4
  db 25,$76
  !c4
  db 18
  !tie
  db 3
  !tie
  db 14,$7A
  !c4
  db 26,$79
  !a3
  db 20,$77
  !a3
  db 21,$78
  !a3
  db 12,$77
  !a3
  db 3
  !tie
  db 26,$78
  !g3
  db 28,$7A
  !b4
  db 30,$7B
  !c5
  db 7,$7C
  !d5
  db 2
  !tie
  db 29
  !tie
  !end

.pattern1_0
  !musicVolume,140
  !dynamicMusicVolume,200,220
  !tempo,15
  !instr,!instr05
  !volume,200
  !vibrato,10,30,30
  !pan,11
  db 24,$6D
  !e5
  db 36
  !g4
  db 12
  !g4
  db 8
  !g4
  !g4
  !e5
  !e5
  !g5
  !f5
  !tempo,12
  db 48
  !c6
  db 24
  !gs5
  !dynamicTempo,80,15
  !dynamicMusicVolume,90,150
  db 12
  !g5
  !g4
  !g4
  !a4
  !a4
  !b4
  !b4
  !d5
  db 54,$38
  !tie
  !end

.pattern1_1
  !instr,!instr03
  !volume,200
  db 8,$7D
  !c3
  db 40
  !g4
  db 8
  !as2
  db 40
  !g4
  db 8
  !a2
  db 40
  !a3
  db 8
  !gs2
  db 40
  !gs3
  db 12
  !g2
  !b3
  !d4
  !f4
  !f4
  !f5
  !f5
  !f6
  db 54
  !tie
  !end

.pattern1_2
  !instr,!instr03
  !volume,200
  db 2
  !rest
  db 8,$7D
  !g3
  db 40
  !c5
  db 8
  !g3
  db 38
  !c5
  db 2
  !tie
  db 8
  !f3
  db 40
  !c5
  db 8
  !f3
  db 38
  !c5
  db 3
  !rest
  db 12
  !d3
  !f3
  !f4
  !a4
  !a4
  !a5
  !a5
  db 9
  !a6
  db 54
  !tie
  !end

.pattern1_3
  !instr,!instr03
  !volume,200
  db 4
  !rest
  db 48,$7D
  !c4
  db 44
  !as3
  db 4
  !tie
  db 48
  !c4
  db 44
  !c4
  db 6
  !rest
  db 12
  !f3
  !a3
  !a4
  !b4
  !b4
  !b4
  !b5
  db 6
  !b5
  db 54
  !tie
  !end

.pattern1_4
  !instr,!instr03
  !volume,200
  db 6
  !rest
  db 48,$7D
  !e4
  db 42
  !e4
  db 6
  !tie
  db 48
  !f4
  db 42
  !f4
  db 9
  !rest
  db 12
  !a3
  !b3
  !d4
  !d5
  !d5
  !d5
  !d6
  db 3,$79
  !d7
  db 54
  !tie
  !end

.pattern1_5
  !instr,!instr01
  !volume,200
  !pan,8
  !vibrato,16,40,40
  db 48,$7F
  !c4
  !as3
  !a3
  !gs3
  db 96,$7D
  !g3
  db 54,$68
  !tie
  !end

.pattern1_7
  !instr,!instr05
  !volume,120
  !vibrato,10,30,30
  !pan,4
  db 6
  !rest
  db 24,$6D
  !e5
  db 36
  !g4
  db 12
  !g4
  db 8
  !g4
  !g4
  !e5
  !e5
  !g5
  !f5
  !tempo,12
  db 48
  !c6
  db 24
  !gs5
  !dynamicTempo,80,16
  db 12
  !g5
  !g4
  !g4
  !a4
  !a4
  !b4
  !b4
  db 6
  !d5
  db 54
  !tie
  !end

.pattern2_0
  !dynamicMusicVolume,120,200
  !instr,!instr0A
  !volume,200
  !endVibrato
  !tempo,19
  db 8,$7D
  !g4
  !c5
  !e5
  !g5
  !c6
  !e6
  db 24
  !g6
  !e6
  db 8
  !gs4
  !c5
  !ds5
  !gs5
  !c6
  !ds6
  db 24
  !gs6
  !ds6
  !dynamicTempo,90,8
  db 8
  !as4
  !d5
  !f5
  !as5
  !d6
  !f6
  db 24
  !as6
  db 8
  !as6
  !as6
  !as6
  !tempo,19
  db 48
  !c7
  !dynamicTempo,40,27
  db 40
  !tie
  !dynamicTempo,10,12
  db 8,$58
  !tie
  db 48,$78
  !tie
  !dynamicMusicVolume,48,50
  db 48,$28
  !tie
  !end

.pattern2_1
  !instr,!instr03
  db 48,$7D
  !g3
  db 24
  !e4
  !g4
  db 48
  !gs3
  db 24
  !ds4
  !gs4
  db 48
  !as3
  db 24
  !f4
  !as4
  db 12
  !tie
  db 24
  !c3
  !g4
  !c6
  db 12
  !e6
  db 96
  !tie
  !end

.pattern2_2
  !instr,!instr03
  db 3
  !rest
  db 48,$7D
  !c4
  db 24
  !g4
  db 21
  !c5
  db 3
  !tie
  db 48
  !c4
  db 24
  !gs4
  db 21
  !c5
  db 3
  !tie
  db 48
  !d4
  db 24
  !as4
  db 21
  !d5
  db 12
  !tie
  db 6
  !rest
  db 24
  !g3
  !c5
  !e5
  db 6
  !g6
  db 96
  !tie
  !end

.pattern2_3
  !instr,!instr03
  db 6
  !rest
  db 48,$7D
  !e4
  db 24
  !c5
  db 18
  !e5
  db 6
  !rest
  db 48
  !ds4
  db 24
  !c5
  db 18
  !ds5
  db 6
  !rest
  db 48
  !f4
  db 24
  !d5
  db 18
  !f5
  db 24
  !tie
  !c4
  !e5
  !g5
  db 96
  !c7
  !end

.pattern2_4
  !instr,!instr03
  db 96
  !rest
  !rest
  !rest
  db 30,$7D
  !tie
  db 24
  !e4
  !g5
  db 18
  !c6
  db 6
  !tie
  db 90
  !e7
  !end

.pattern2_5
  !instr,!instr08
  !volume,200
  !vibrato,10,40,40
  !pan,8
  db 96,$7D
  !c3
  !gs2
  !as2
  db 36
  !c3
  !tie
  db 24
  !c4
  db 96
  !tie
  !end

.pattern2_6
  !instr,!instr08
  !volume,200
  !pan,6
  !vibrato,16,40,40
  db 96
  !rest
  !rest
  !rest
  db 36
  !rest
  db 60,$7D
  !g3
  db 36
  !tie
  db 60,$7F
  !c3
  !end

.pattern2_7
  !instr,!instr0A
  !volume,120
  !endVibrato
  !pan,16
  db 4
  !rest
  db 8,$7D
  !g4
  !c5
  !e5
  !g5
  !c6
  !e6
  db 24
  !g6
  !e6
  db 8
  !gs4
  !c5
  !ds5
  !gs5
  !c6
  !ds6
  db 24
  !gs6
  !ds6
  db 8
  !as4
  !d5
  !f5
  !as5
  !d6
  !f6
  db 24
  !as6
  db 8
  !as6
  !as6
  !as6
  db 96
  !c7
  db 92
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
