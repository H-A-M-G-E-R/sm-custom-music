asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr11 = $16
!instr12 = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr11,$8F,$F1,$B8,$07,$A8
  db !instr12,$8B,$E0,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample11,Sample11+1683
  dw Sample12,Sample12+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample11: incbin "Sample_f3af6328bd01ba69fad6d210dcfe9d7c.brr"
  Sample12: incbin "Sample_abbecaee7661b5cc7135b099e2035f4d.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerE9CC

TrackerE9CC:
-
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, .pattern1_7
.pattern2: dw .pattern1_0, .pattern2_1, .pattern1_2, .pattern1_3, .pattern2_4, 0, 0, .pattern2_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !tempo,25
  !musicVolume,240
  !echo,%11111111,0,0
  !echoParameters,2,30,2
  !dynamicEcho,60,40,40
  !instr,!instr12
  !volume,200
  !pan,14
  !vibrato,23,28,24
  !loop : dw .subEB3C : db 1
  !c3
  !c3
  !end

.pattern0_1
  !instr,!instr12
  !volume,160
  !dynamicVolume,180,230
  !pan,6
  !vibrato,22,18,28
  db 96,$7F
  !c5
  !ds5
  !dynamicVolume,180,160
  !d5
  !cs5
  !end

.pattern0_2
  !instr,!instr11
  !volume,240
  !pan,20
  !loop : dw .subEB41 : db 4
  !end

.pattern0_3
  !instr,!instr11
  !volume,240
  !pan,0
  db 12
  !rest
  db 24,$79
  !c3
  db 24,$75
  !c3
  db 24,$72
  !c3
  db 24,$70
  !c3
  !loop : dw .subEB4E : db 2
  db 24,$79
  !c3
  db 24,$75
  !c3
  db 24,$72
  !c3
  db 12,$70
  !c3
  !end

.pattern0_4
  !instr,!instr12
  !volume,160
  !dynamicVolume,180,230
  !pan,10
  !vibrato,22,16,23
  db 96,$7F
  !ds4
  !g4
  !dynamicVolume,180,160
  !fs4
  !f4
  !end

.pattern0_7
  !instr,!instr12
  !volume,100
  !dynamicVolume,180,140
  !pan,16
  !vibrato,22,22,20
  db 6
  !rest
  db 96,$7F
  !c5
  !ds5
  !dynamicVolume,180,100
  !d5
  db 90
  !cs5
  !end

.pattern1_0
  !loop : dw .subEB3C : db 1
  !c3
  !c3
  !end

.pattern1_1
  !volume,160
  !dynamicVolume,180,230
  db 96,$7F
  !c5
  !ds5
  !dynamicVolume,180,160
  !d5
  !f5
  !end

.pattern1_2
  !loop : dw .subEB41 : db 4
  !end

.pattern1_3
  db 12
  !rest
  db 24,$79
  !c3
  db 24,$75
  !c3
  db 24,$72
  !c3
  db 24,$70
  !c3
  !loop : dw .subEB4E : db 2
  db 24,$79
  !c3
  db 24,$75
  !c3
  db 24,$72
  !c3
  db 12,$70
  !c3
  !end

.pattern1_4
  !volume,160
  !dynamicVolume,180,230
  db 96,$7F
  !ds4
  !g4
  !dynamicVolume,180,160
  !fs4
  !b4
  !end

.pattern1_7
  !volume,100
  !dynamicVolume,180,140
  db 6
  !rest
  db 96,$7F
  !c5
  !ds5
  !dynamicVolume,180,100
  !d5
  db 90
  !f5
  !end

.pattern2_1
  !dynamicVolume,200,230
  db 96,$7F
  !ds5
  !g5
  !fs5
  !a5
  !end

.pattern2_4
  !dynamicVolume,200,230
  db 96,$7F
  !g4
  !b4
  !as4
  !c5
  !end

.pattern2_7
  !dynamicVolume,200,140
  db 6
  !rest
  db 96,$7F
  !ds5
  !g5
  !fs5
  db 90
  !a5
  !end

.subEB3C
  db 96,$7F
  !c3
  !c3
  !end

.subEB41
  db 24,$7F
  !c3
  db 24,$77
  !c3
  db 24,$73
  !c3
  db 24,$71
  !c3
  !end

.subEB4E
  db 24,$79
  !c3
  db 24,$75
  !c3
  db 24,$72
  !c3
  db 24,$70
  !c3
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
