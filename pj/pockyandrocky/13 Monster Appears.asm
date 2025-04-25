asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr07 = $17
!instr0A = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr0A,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample07,Sample07+1584
  dw Sample0A,Sample0A+2268
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample07: incbin "Sample07.brr"
  Sample0A: incbin "Sample0A.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerC380

TrackerC380:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, 0, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, 0, 0, 0, 0

.pattern0_0
  !echo,%11111111,70,70
  !echoParameters,6,72,3
  !tempo,22
  !musicVolume,200;255
  !end

.pattern1_0
  !instr,!instr04
  !volume,220
  !vibrato,12,24,64
  db 8,$7F
  !e6
  db 4,$70
  !f6
  db 4,$71
  !e6
  db 4,$72
  !f6
  db 4,$73
  !e6
  db 4,$75
  !f6
  db 4,$77
  !e6
  db 4,$79
  !f6
  db 4,$7B
  !e6
  db 4,$7D
  !f6
  db 4,$7F
  !e6
  db 8
  !f6
  db 4,$70
  !g6
  db 4,$71
  !f6
  db 4,$72
  !g6
  db 4,$73
  !f6
  db 4,$75
  !g6
  db 4,$77
  !f6
  db 4,$79
  !g6
  db 4,$7B
  !f6
  db 4,$7D
  !g6
  db 4,$7F
  !f6
  db 8
  !e6
  db 4,$70
  !f6
  db 4,$71
  !e6
  db 4,$72
  !f6
  db 4,$73
  !e6
  db 4,$75
  !f6
  db 4,$77
  !e6
  db 4,$79
  !f6
  db 4,$7B
  !e6
  db 4,$7D
  !f6
  db 4,$7F
  !e6
  db 8
  !f6
  db 4,$70
  !g6
  db 4,$71
  !f6
  db 4,$72
  !g6
  db 4,$73
  !e6
  db 4,$75
  !f6
  db 4,$77
  !g6
  db 4,$79
  !a6
  db 4,$7B
  !b6
  db 4,$7D
  !c7
  db 4,$7F
  !d7
  !end

.pattern1_1
  !instr,!instr0A
  !pan,13
  !vibrato,12,36,96
  !loop : dw .subC508 : db 1

.pattern1_2
  !instr,!instr07
  !volume,255
  db 48,$7F
  !a2
  !as2
  !a2
  !g2

.pattern1_3
  !instr,!instr0A
  !pan,7
  !vibrato,12,36,96
  !loop : dw .subC523 : db 1

.pattern2_0
  db 8,$7F
  !e7
  db 4,$70
  !f7
  db 4,$71
  !e7
  db 4,$72
  !f7
  db 4,$73
  !e7
  db 4,$75
  !f7
  db 4,$77
  !e7
  db 4,$79
  !f7
  db 4,$7B
  !e7
  db 4,$7D
  !f7
  db 4,$7F
  !e7
  db 8
  !f7
  db 4,$70
  !g7
  db 4,$71
  !f7
  db 4,$72
  !g7
  db 4,$73
  !f7
  db 4,$75
  !g7
  db 4,$77
  !f7
  db 4,$79
  !g7
  db 4,$7B
  !f7
  db 4,$7D
  !g7
  db 4,$7F
  !f7
  db 8
  !e7
  db 4,$70
  !f7
  db 4,$71
  !e7
  db 4,$72
  !f7
  db 4,$73
  !e7
  db 4,$75
  !f7
  db 4,$77
  !e7
  db 4,$79
  !f7
  db 4,$7B
  !e7
  db 4,$7D
  !f7
  db 4,$7F
  !e7
  db 8
  !d7
  db 4,$70
  !e7
  db 4,$71
  !d7
  db 4,$72
  !e7
  db 4,$73
  !d7
  db 4,$75
  !e7
  db 4,$77
  !d7
  db 4,$79
  !e7
  db 4,$7B
  !d7
  db 4,$7D
  !e7
  db 4,$7F
  !d7
  !end

.pattern2_1
  !loop : dw .subC508 : db 1

.pattern2_2
  db 48,$7F
  !a2
  !as2
  !a2
  !g2

.pattern2_3
  !loop : dw .subC523 : db 1

.subC508
  !volume,80
  !dynamicVolume,48,180
  db 48,$7F
  !e5
  !volume,80
  !dynamicVolume,48,180
  !f5
  !volume,80
  !dynamicVolume,48,180
  !e5
  !volume,80
  !dynamicVolume,48,180
  !f5
  !end

.subC523
  !volume,80
  !dynamicVolume,48,180
  db 48,$7F
  !c5
  !volume,80
  !dynamicVolume,48,180
  !d5
  !volume,80
  !dynamicVolume,48,180
  !c5
  !volume,80
  !dynamicVolume,48,180
  !d5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
