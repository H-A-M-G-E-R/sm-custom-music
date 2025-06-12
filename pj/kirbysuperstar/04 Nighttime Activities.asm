asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr09 = $17
!instr0B = $18
!instr0F = $19
!instr13 = $1A
!instr26 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr09,$8F,$F2,$B8,$01,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr0F,$8F,$E0,$B8,$02,$80
  db !instr13,$FF,$E0,$B8,$03,$90
  db !instr26,$FF,$E0,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample08_09,Sample08_09+90
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample0C_0D_0E_0F,Sample0C_0D_0E_0F+522
  dw Sample11_12_13,Sample11_12_13+27
  dw Sample26,Sample26+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample0C_0D_0E_0F: incbin "Sample_8d4615259210c4eb3093dde046a5d3c0.brr"
  Sample11_12_13: incbin "Sample_6c7fe9ffa3b0e176fc82c19308fbb5a4.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echo,%00011111,15,15
  !echoParameters,5,166,1
  !musicVolume,255
  !tempo,51
  !vibrato,0,1,244
  !instr,!instr13
  !volume,65
  !dynamicVolume,255,130
  !pan,20
  db 72,$76
  !g3
  !tie
  !loop : dw .sub529A : db 8
  !dynamicEcho,117,1,1
  !dynamicVolume,117,50
  !tie
  db 45
  !tie
  !dynamicVolume,117,85
  db 72
  !g4
  db 45
  !tie
  db 72
  !tie
  !tie
  !loop : dw .sub529A : db 8
  !end

.pattern0_1
  !pan,0
  !endTremolo
  !vibrato,0,1,244
  !instr,!instr13
  !volume,65
  !dynamicVolume,255,130
  db 72,$76
  !gs3
  !tie
  !loop : dw .sub529A : db 8
  !dynamicVolume,117,50
  !tie
  db 45
  !tie
  !dynamicVolume,117,85
  db 72
  !a4
  db 45
  !tie
  db 72
  !tie
  !tie
  !loop : dw .sub529A : db 8
  !end

.pattern0_2
  !transpose,1
  !instr,!instr09
  !volume,60
  !dynamicVolume,27,200
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 49,$70
  !b7
  !dynamicVolume,22,40
  db 22
  !tie
  db 60
  !rest
  !transpose,1
  !instr,!instr09
  !volume,60
  !dynamicVolume,27,200
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 49,$71
  !b7
  !dynamicVolume,22,40
  db 22
  !tie
  db 60
  !rest
  !transpose,1
  !instr,!instr09
  !volume,60
  !dynamicVolume,27,200
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 49,$72
  !b7
  !dynamicVolume,22,40
  db 22
  !tie
  db 60
  !rest
  !transpose,1
  !instr,!instr09
  !volume,60
  !dynamicVolume,27,200
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 49,$73
  !b7
  !dynamicVolume,22,40
  db 22
  !tie
  db 60
  !rest
  !transpose,1
  !instr,!instr09
  !volume,60
  !dynamicVolume,27,200
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 49,$74
  !b7
  !dynamicVolume,22,40
  db 22
  !tie
  db 60
  !rest
  !transpose,1
  !instr,!instr09
  !volume,60
  !dynamicVolume,27,200
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 49,$75
  !b7
  !dynamicVolume,22,40
  db 22
  !tie
  db 60
  !rest
  !transpose,1
  !instr,!instr09
  !volume,60
  !dynamicVolume,27,200
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 49,$76
  !b7
  !dynamicVolume,22,40
  db 22
  !tie
  db 60
  !rest
  !transpose,1
  !instr,!instr09
  !volume,60
  !dynamicVolume,27,200
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 49,$77
  !b7
  !dynamicVolume,22,40
  db 22
  !tie
  db 60
  !rest
  !transpose,1
  !instr,!instr09
  !volume,60
  !dynamicVolume,27,200
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 49,$78
  !b7
  !dynamicVolume,22,40
  db 22
  !tie
  db 60
  !rest
  !transpose,1
  !instr,!instr09
  !volume,60
  !dynamicVolume,27,200
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 49,$76
  !b7
  !dynamicVolume,22,40
  db 22
  !tie
  db 60
  !rest
  !transpose,1
  !instr,!instr09
  !volume,60
  !dynamicVolume,27,200
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 49,$72
  !b7
  !dynamicVolume,22,40
  db 22
  !tie
  db 32
  !rest
  db 72
  !rest
  db 45
  !rest
  !endVibrato
  !endTremolo
  !pan,0
  !instr,!instr26
  !transpose,13
  !volume,75
  !vibrato,0,70,243
  db 3,$29
  !g7
  db 4
  !g7
  !gs7
  db 3
  !fs7
  db 4
  !g7
  db 3
  !fs7
  db 4
  !g7
  db 3
  !fs7
  !slideOut,2,7,246
  db 10,$46
  !b6
  !pan,20
  !vibrato,0,70,243
  db 3,$26
  !g7
  db 4
  !g7
  !slideOut,2,7,246
  db 12,$43
  !b6
  db 87
  !rest
  !volume,75
  !vibrato,0,70,243
  db 3,$29
  !g7
  db 4
  !g7
  !slideOut,2,7,246
  db 10,$46
  !b6
  !pan,4
  !vibrato,0,70,243
  db 3,$29
  !g7
  db 4
  !g7
  !slideOut,2,7,246
  db 12,$46
  !b6
  db 20
  !rest
  !pan,13
  db 3,$26
  !g7
  db 4
  !g7
  !slideOut,2,7,246
  db 12,$43
  !b6
  db 69
  !rest
  !pan,12
  !vibrato,0,70,243
  db 3,$29
  !g7
  db 4
  !g7
  db 3
  !gs7
  db 4
  !fs7
  db 3
  !g7
  db 4
  !fs7
  db 3
  !g7
  db 4
  !fs7
  db 3
  !g7
  db 4
  !fs7
  !slideOut,1,6,246
  db 6,$46
  !b6
  db 8
  !b6
  !pan,2
  !vibrato,0,70,243
  db 3,$29
  !g7
  db 4
  !g7
  !slideOut,2,7,246
  db 12,$46
  !b6
  db 20
  !rest
  !pan,13
  db 3,$25
  !g7
  db 4
  !g7
  db 12,$22
  !g7
  db 37
  !rest
  db 72
  !rest
  !rest
  !loop : dw .sub529D : db 5
  !end

.pattern0_3
  !pan,8
  !instr,!instr0B
  !volume,60
  !dynamicVolume,22,170
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 33,$70
  !cs7
  !dynamicVolume,18,40
  db 18
  !tie
  !pan,8
  !instr,!instr0B
  !volume,60
  !dynamicVolume,22,170
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 33,$71
  !cs7
  !dynamicVolume,18,40
  db 18
  !tie
  !pan,8
  !instr,!instr0B
  !volume,60
  !dynamicVolume,22,170
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 33,$72
  !cs7
  !dynamicVolume,18,40
  db 18
  !tie
  !pan,8
  !instr,!instr0B
  !volume,60
  !dynamicVolume,22,170
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 33,$73
  !cs7
  !dynamicVolume,18,40
  db 18
  !tie
  !loop : dw .sub52A0 : db 10
  !pan,8
  !instr,!instr0B
  !volume,60
  !dynamicVolume,22,170
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 33
  !cs7
  !dynamicVolume,18,40
  db 18
  !tie
  !pan,8
  !instr,!instr0B
  !volume,60
  !dynamicVolume,22,170
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 33,$72
  !cs7
  !dynamicVolume,18,40
  db 18
  !tie
  !pan,8
  !instr,!instr0B
  !volume,60
  !dynamicVolume,22,170
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 33,$71
  !cs7
  !dynamicVolume,18,40
  db 18
  !tie
  !pan,8
  !instr,!instr0B
  !volume,60
  !dynamicVolume,22,170
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 23,$70
  !cs7
  !dynamicVolume,13,40
  db 13
  !tie
  db 72
  !rest
  db 45
  !rest
  db 72
  !rest
  !rest
  !instr,!instr05
  !transpose,13
  !endTremolo
  !endVibrato
  !volume,50
  !pan,12
  !vibrato,0,70,243
  db 3,$29
  !g7
  db 4
  !g7
  db 3
  !gs7
  db 4
  !fs7
  db 3
  !g7
  db 4
  !fs7
  db 3
  !g7
  db 4
  !fs7
  db 3
  !g7
  db 4
  !fs7
  !slideOut,1,6,246
  db 6,$46
  !b6
  db 8
  !b6
  !pan,2
  !vibrato,0,70,243
  db 3,$29
  !g7
  db 4
  !g7
  !slideOut,2,7,246
  db 12,$46
  !b6
  db 20
  !rest
  !pan,13
  db 3,$25
  !g7
  db 4
  !g7
  db 12,$22
  !g7
  db 37
  !rest
  db 72
  !rest
  !rest
  !loop : dw .sub529D : db 6
  !end

.pattern0_4
  !pan,12
  !instr,!instr0F
  !volume,60
  !dynamicVolume,30,135
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 41,$70
  !a6
  !dynamicVolume,20,40
  db 20
  !tie
  !pan,12
  !instr,!instr0F
  !volume,60
  !dynamicVolume,30,135
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 41,$71
  !a6
  !dynamicVolume,20,40
  db 20
  !tie
  !pan,12
  !instr,!instr0F
  !volume,60
  !dynamicVolume,30,135
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 41,$72
  !a6
  !dynamicVolume,20,40
  db 20
  !tie
  !pan,12
  !instr,!instr0F
  !volume,60
  !dynamicVolume,30,135
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 41,$73
  !a6
  !dynamicVolume,20,40
  db 20
  !tie
  !loop : dw .sub52D1 : db 9
  !pan,12
  !instr,!instr0F
  !volume,60
  !dynamicVolume,30,135
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 41,$72
  !a6
  !dynamicVolume,20,40
  db 20
  !tie
  db 10
  !rest
  db 72
  !rest
  db 45
  !rest
  db 72
  !rest
  !rest
  !loop : dw .sub529D : db 8
  !end

.sub529A
  !tie
  !tie
  !end

.sub529D
  !rest
  !rest
  !end

.sub52A0
  !pan,8
  !instr,!instr0B
  !volume,60
  !dynamicVolume,22,170
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 33
  !cs7
  !dynamicVolume,18,40
  db 18
  !tie
  !pan,8
  !instr,!instr0B
  !volume,60
  !dynamicVolume,22,170
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 33
  !cs7
  !dynamicVolume,18,40
  db 18
  !tie
  !end

.sub52D1
  !pan,12
  !instr,!instr0F
  !volume,60
  !dynamicVolume,30,135
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 41
  !a6
  !dynamicVolume,20,40
  db 20
  !tie
  !pan,12
  !instr,!instr0F
  !volume,60
  !dynamicVolume,30,135
  !vibrato,0,70,230
  !tremolo,0,110,200
  db 41
  !a6
  !dynamicVolume,20,40
  db 20
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
