asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr0B = $17
!instr27 = $18
!instr2F = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr27,$8F,$E0,$B8,$03,$00
  db !instr2F,$FF,$E0,$B8,$05,$50
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample27,Sample27+45
  dw Sample2F,Sample2F+1080
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample27: incbin "Sample_55365c24760b7ccb8bdcacbb9417c216.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
-
  dw .pattern1
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,255
  !tempo,52
  !instr,!instr05
  !volume,220
  !echo,%00011100,23,23
  !echoParameters,4,30,0
  db 24,$08
  !c4
  db 12,$26
  !g4
  db 24,$02
  !e5
  db 12,$74
  !g4
  db 12,$47
  !gs4
  db 12,$45
  !ds4
  db 12,$46
  !gs4
  db 24,$57
  !c5
  db 12,$35
  !gs4
  db 12,$47
  !g4
  db 120
  !rest
  db 12
  !rest
  !end

.pattern0_1
  !instr,!instr2F
  !pan,11
  !volume,255
  db 24,$7A
  !c7
  !pan,9
  db 12,$78
  !g6
  !pan,11
  db 12,$7A
  !c7
  db 12,$72
  !c7
  !pan,9
  db 12,$76
  !g6
  !pan,11
  db 12,$7A
  !c7
  db 12,$72
  !c7
  !pan,9
  db 12,$76
  !g6
  !pan,11
  db 12,$7A
  !c7
  db 12,$72
  !c7
  !pan,9
  db 12,$77
  !g6
  !pan,11
  db 12,$78
  !c7
  db 120
  !rest
  db 12
  !rest
  !end

.pattern0_2
  !volume,182
  !pan,20
  !subtranspose,15
  !instr,!instr27
  db 24,$07
  !c7
  db 12,$26
  !b6
  db 24,$07
  !as6
  db 12,$25
  !a6
  db 24,$06
  !gs6
  db 36,$66
  !ds6
  db 12,$46
  !gs6
  !g6
  db 60
  !rest
  !slideIn,3,1,1
  db 17,$37
  !g7
  db 55
  !rest
  !end

.pattern0_3
  !volume,182
  !pan,0
  !subtranspose,30
  !instr,!instr27
  db 24,$07
  !c7
  db 12,$26
  !b6
  db 24,$07
  !as6
  db 12,$25
  !a6
  db 24,$06
  !gs6
  db 36,$66
  !ds6
  db 12,$46
  !gs6
  !g6
  db 60
  !rest
  !slideIn,3,1,1
  db 17,$37
  !g7
  db 55
  !rest
  !end

.pattern0_4
  !volume,182
  !pan,10
  !instr,!instr0B
  db 24,$07
  !c7
  db 12,$26
  !b6
  db 24,$07
  !as6
  db 12,$25
  !a6
  db 24,$06
  !gs6
  db 6,$78
  !ds6
  !gs6
  db 24,$68
  !ds6
  db 12,$46
  !gs6
  !g6
  db 60
  !rest
  db 3,$56
  !fs7
  db 13,$57
  !g7
  db 56
  !rest
  !end

.pattern1_0
  db 72
  !rest
  !rest
  !loop : dw .sub4FA7 : db 10
  !end

.sub4FA7
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
