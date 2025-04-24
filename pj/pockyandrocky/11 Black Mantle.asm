asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr09 = $17
!instr0A = $18
!instr0C = $19
!instr0D = $1A
!instr0F = $1B
!instr10 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr09,$8F,$EF,$B8,$01,$00
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0F,$8F,$E0,$B8,$07,$A0
  db !instr10,$8F,$E0,$B8,$07,$10
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample09,Sample09+27
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0F,Sample0F+729
  dw Sample10,Sample10+3375
endspcblock

spcblock $B210-($6E00-!p_sampleData) nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample09: incbin "Sample09.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2FB4

Tracker2FB4:
  dw .pattern0
  dw .pattern1
  dw .pattern2
-
  dw .pattern3
  dw .pattern4
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, .pattern1_6, .pattern1_7
.pattern2: dw 0, .pattern2_1, .pattern2_2, 0, .pattern2_4, 0, .pattern2_6, .pattern2_7
.pattern3: dw 0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, .pattern3_6, .pattern3_7
.pattern4: dw 0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, .pattern4_6, .pattern4_7

.pattern0_0
  !percBase,!instr0C
  !echo,%11111111,50,50
  !echoParameters,6,72,3
  !tempo,31
  !musicVolume,200;255
  !end

.pattern1_0
  !instr,!instr04
  !volume,180
  !vibrato,12,24,96
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub30E8 : db 3
  !end

.pattern1_1
  !instr,!instr0A
  !volume,200
  !subtranspose,4
  db 96,$7F
  !d3
  !tie
  !c3
  !tie

.pattern1_2
  !instr,!instr0A
  !volume,200
  db 96,$7F
  !d3
  !tie
  !c3
  !tie

.pattern1_3
  !volume,255
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub30E8 : db 3

.pattern1_4
  !instr,!instr09
  !volume,130
  !pan,8
  !transpose,12
  !loop : dw .sub30ED : db 4

.pattern1_6
  !instr,!instr09
  !volume,130
  !pan,12
  !subtranspose,6
  !loop : dw .sub30ED : db 4

.pattern1_7
  !volume,255
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub30E8 : db 3

.pattern2_1
  db 96,$7F
  !as2
  !tie
  !c3
  !tie
  !end

.pattern2_2
  db 96,$7F
  !as2
  !tie
  !c3
  !tie

.pattern2_4
  !loop : dw .sub30ED : db 4

.pattern2_6
  !loop : dw .sub30ED : db 4

.pattern2_7
  db 96
  !rest
  !rest
  !rest
  db 72
  !rest
  db 24,$75
  %percNote(!instr10-!instr0C)

.pattern3_1
  db 96,$7F
  !d3
  !tie
  !c3
  !tie
  !end

.pattern3_2
  db 96,$7F
  !d3
  !tie
  !c3
  !tie

.pattern3_3
  !loop : dw .sub3106 : db 1
  db 60
  !rest
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)

.pattern3_4
  !loop : dw .sub30ED : db 4

.pattern3_6
  !loop : dw .sub30ED : db 4

.pattern3_7
  !loop : dw .sub3118 : db 1
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)

.pattern4_1
  db 96,$7F
  !as2
  !tie
  !c3
  !tie
  !end

.pattern4_2
  db 96,$7F
  !as2
  !tie
  !c3
  !tie

.pattern4_3
  !loop : dw .sub3106 : db 1
  db 36
  !rest
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern4_4
  !loop : dw .sub30ED : db 4

.pattern4_6
  !loop : dw .sub30ED : db 4

.pattern4_7
  !loop : dw .sub3118 : db 1
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)

.sub30E8
  !rest
  !rest
  !rest
  !rest
  !end

.sub30ED
  db 12,$2F
  !a6
  db 12,$25
  !a6
  db 12,$2F
  !d7
  db 12,$25
  !d7
  db 12,$2F
  !g6
  db 12,$25
  !g6
  db 12,$2F
  !c7
  db 12,$25
  !c7
  !end

.sub3106
  db 12,$7F
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 72
  !rest
  db 60
  !rest
  db 12
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0D-!instr0C)
  db 12
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 72
  !rest
  !end

.sub3118
  db 48,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
