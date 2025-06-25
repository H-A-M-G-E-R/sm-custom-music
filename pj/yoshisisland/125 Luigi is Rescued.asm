asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr0A = $18
!instr0E = $19
!instr12 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$D6
  db !instr01,$FF,$E0,$B8,$03,$CC
  db !instr0A,$FF,$E0,$B8,$03,$74
  db !instr0E,$8F,$19,$B8,$03,$00
  db !instr12,$8B,$E0,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+18
  dw Sample01,Sample01+5481
  dw Sample0A,Sample0A+882
  dw Sample0E,Sample0E+225
  dw Sample12,Sample12+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_f1be695e39af7d255ffd053d8da0148e.brr"
  Sample01: incbin "Sample_98beefc5209049e3498f94204c743f33.brr"
  Sample0A: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample0E: incbin "Sample_505e12daa82598571573216fa31be57e.brr"
  Sample12: incbin "Sample_abbecaee7661b5cc7135b099e2035f4d.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerEBC1

TrackerEBC1:
  dw .pattern0
  dw .pattern1
  dw .pattern2
-
  dw .pattern3
  dw .pattern4
  dw .pattern3
  dw .pattern4
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, 0, 0, 0, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,25
  !musicVolume,200
  !instr,!instr12
  !volume,220
  !pan,4
  !dynamicPan,48,16
  !vibrato,0,1,90
  db 48,$7D
  !d5
  !pitchSlide,24,24 : !g4
  !dynamicPan,48,4
  !tie
  !pitchSlide,0,48 : !d5
  db 96
  !tie
  !pitchSlide,0,80 : !d6
  !dynamicVolume,200,30
  !dynamicPan,180,10
  !tie
  !tie
  db 24
  !tie
  !end

.pattern0_1
  !instr,!instr12
  !volume,220
  !pan,4
  !dynamicPan,48,16
  !vibrato,0,18,90
  !loop : dw .subEF10 : db 1
  db 24
  !tie
  !end

.pattern0_2
  !instr,!instr01
  !volume,240
  !pan,4
  db 60
  !rest
  db 5,$7D
  !g5
  !g5
  !f5
  !c6
  db 8
  !d5
  !g4
  !pan,10
  !volume,120
  db 60
  !rest
  db 5
  !a5
  !a5
  !g5
  !d6
  db 8
  !e5
  !a4
  db 5
  !a5
  !a5
  !g5
  !d6
  db 8
  !e5
  !a4
  db 60
  !rest
  !pan,10
  !volume,100
  db 5
  !as5
  !as5
  !gs5
  !ds6
  db 8
  !f5
  !as4
  db 5
  !as5
  !as5
  !gs5
  !ds6
  db 8
  !f5
  !as4
  db 24
  !rest
  !rest
  !end

.pattern0_3
  !instr,!instr00
  !volume,120
  !pan,4
  !dynamicPan,48,16
  !vibrato,0,18,90
  !loop : dw .subEF10 : db 1
  db 24
  !tie
  !end

.pattern1_0
  !musicVolume,180
  !tempo,23
  !instr,!instr0A
  !volume,200
  !pan,6
  !endVibrato
  db 60,$7D
  !g3
  db 12,$3D
  !g4
  !g4
  !g4
  !dynamicMusicVolume,40,200
  db 60,$7D
  !g3
  db 12,$3D
  !g4
  !g4
  !g4
  !dynamicMusicVolume,40,240
  !dynamicTempo,180,11
  db 60,$7D
  !g3
  db 12,$3D
  !g4
  !g4
  !g4
  !dynamicMusicVolume,40,255
  db 48,$7D
  !g3
  !g4
  db 24
  !tie
  !dynamicMusicVolume,40,120
  db 72
  !tie
  !end

.pattern1_1
  !instr,!instr0A
  !volume,220
  !vibrato,18,28,30
  db 12
  !rest
  db 12,$4D
  !d5
  !d5
  !e5
  !e5
  db 36
  !f5
  !loop : dw .subEEF7 : db 1
  db 96
  !tie
  !end

.pattern1_2
  !instr,!instr0A
  !volume,220
  !vibrato,18,28,30
  !pan,12
  db 12
  !rest
  db 12,$4D
  !b4
  !b4
  !c5
  !c5
  db 36
  !d5
  db 12
  !rest
  !d5
  !d5
  !e5
  !e5
  db 36
  !f5
  db 12
  !rest
  !f5
  !f5
  !g5
  !g5
  !a5
  !a5
  !b5
  !b5
  !c6
  !c6
  !d6
  db 48,$7D
  !d6
  db 96
  !tie
  !end

.pattern1_3
  !instr,!instr0A
  !volume,200
  !vibrato,18,28,30
  !pan,8
  db 12
  !rest
  db 12,$4D
  !a4
  !a4
  !b4
  !b4
  db 36
  !c5
  db 12
  !rest
  !c5
  !c5
  !d5
  !d5
  db 36
  !e5
  db 12
  !rest
  !e5
  !e5
  !f5
  !f5
  !g5
  !g5
  !a5
  !a5
  !b5
  !b5
  !c6
  db 48,$7D
  !b5
  db 96
  !tie
  !end

.pattern1_7
  !instr,!instr0A
  !volume,140
  !vibrato,18,28,30
  !pan,4
  db 18
  !rest
  db 12,$4D
  !d5
  !d5
  !e5
  !e5
  db 36
  !f5
  !loop : dw .subEEF7 : db 1
  db 90
  !tie
  !end

.pattern2_0
  !tempo,14
  !dynamicTempo,80,21
  !musicVolume,200
  !instr,!instr0E
  !volume,200
  !endVibrato
  !loop : dw .subEE3E : db 1
  !loop : dw .subEE77 : db 1
  !end

.pattern2_1
  !loop : dw .subEE84 : db 1
  !end

.pattern2_2
  !loop : dw .subEEA6 : db 1
  !end

.pattern2_3
  !loop : dw .subEECA : db 1
  !end

.pattern2_4
  !instr,!instr0E
  !volume,200
  !endVibrato
  !loop : dw .subEE64 : db 1
  !end

.pattern3_0
  !loop : dw .subEE3E : db 1
  !f6
  !d6
  !f6
  !d6
  db 94
  !rest
  db 1
  !rest
  !end

.pattern3_1
  db 2
  !rest
  db 12,$7D
  !c5
  db 48
  !c5
  db 36
  !e5
  db 24
  !f5
  db 36
  !f5
  db 24
  !e5
  db 12
  !rest
  db 48
  !d5
  db 46
  !g5
  db 12
  !rest
  db 24
  !g5
  db 36
  !g5
  db 24
  !rest
  db 1
  !rest
  !end

.pattern3_2
  db 25
  !rest
  db 24,$5D
  !b6
  !b6
  !rest
  !rest
  db 24,$5D
  !g6
  db 48
  !g6
  db 12
  !rest
  db 24,$6D
  !e6
  !e6
  !e6
  db 12
  !c6
  db 96
  !c6
  !end

.pattern3_3
  !loop : dw .subEE52 : db 1
  db 12,$5D
  !tie
  db 12,$7D
  !f5
  db 24
  !a5
  db 12,$5D
  !tie
  db 12,$7D
  !f5
  db 24
  !b5
  !c5
  !e5
  db 48
  !c5
  db 1
  !rest
  !end

.pattern3_4
  !loop : dw .subEE64 : db 1
  db 1
  !rest
  !end

.pattern4_0
  !tempo,21
  !musicVolume,200
  !instr,!instr0E
  !volume,200
  !endVibrato
  !loop : dw .subEE3E : db 1
  !loop : dw .subEE77 : db 1
  !end

.subEF10
  db 48,$7D
  !g6
  !pitchSlide,24,24 : !c6
  !dynamicPan,48,4
  !tie
  !pitchSlide,0,48 : !g6
  !dynamicPan,50,6
  db 96
  !tie
  !pitchSlide,0,80 : !g7
  !dynamicPan,50,10
  !dynamicVolume,200,30
  !tie
  !dynamicPan,50,12
  !tie
  !end

.subEEF7
  db 12
  !rest
  !f5
  !f5
  !g5
  !g5
  db 36
  !a5
  db 12
  !rest
  !a5
  !a5
  !b5
  !b5
  !c6
  !c6
  !d6
  !d6
  !e6
  !e6
  !f6
  db 48,$7D
  !g6
  !end

.subEE3E
  db 2
  !rest
  db 36,$5D
  !c7
  db 24
  !c7
  db 12
  !rest
  db 24,$7D
  !g6
  db 36,$5D
  !a6
  !a6
  db 24,$6D
  !c6
  !end

.subEE77
  db 36
  !f6
  !f6
  db 24
  !c6
  !d6
  db 24,$7D
  !b5
  !g5
  db 22
  !e5
  !end

.subEE84
  !instr,!instr0E
  !volume,190
  !pan,12
  !endVibrato
  db 12,$7D
  !c5
  db 48
  !c5
  db 36
  !e5
  db 24
  !f5
  db 36
  !f5
  db 24
  !e5
  db 12
  !rest
  db 48
  !d5
  !e5
  db 12
  !rest
  db 48
  !a4
  db 24
  !a5
  db 12
  !f5
  !end

.subEEA6
  !instr,!instr0E
  !volume,200
  !endVibrato
  db 26
  !rest
  db 24,$5D
  !b6
  !b6
  !rest
  !rest
  db 24,$5D
  !g6
  db 48
  !g6
  db 24
  !rest
  db 24,$6D
  !e6
  db 48
  !e6
  db 12
  !rest
  db 24
  !c6
  db 24,$7D
  !a5
  !f5
  db 10
  !d5
  !end

.subEECA
  !instr,!instr0E
  !volume,190
  !pan,8
  !endVibrato
  db 24
  !rest
  db 48,$7D
  !g5
  db 24
  !g5
  db 12,$5D
  !tie
  db 24,$7D
  !c5
  db 36
  !a5
  db 24
  !g5
  db 12,$5D
  !tie
  db 12,$7D
  !f5
  db 24
  !a5
  db 12,$5D
  !tie
  db 12,$7D
  !g5
  db 24
  !a5
  !fs5
  !d5
  !b5
  !g5
  !end

.subEE64
  db 24,$4D
  !e6
  !e6
  db 48
  !rest
  db 24
  !f6
  !f6
  db 48
  !rest
  db 24
  !c6
  !c6
  db 48
  !rest
  db 96
  !rest
  !end

.subEE52
  db 24
  !rest
  db 48,$7D
  !g5
  db 24
  !g5
  db 12,$5D
  !tie
  db 24,$7D
  !c5
  db 36
  !a5
  db 24
  !g5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
