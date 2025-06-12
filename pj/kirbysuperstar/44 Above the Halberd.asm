asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr06 = $17
!instr30 = $18
!instr32 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr06,$BF,$D4,$B8,$0F,$00
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr32,$FF,$E0,$B8,$02,$50
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+1098
  dw Sample06_07,Sample06_07+558
  dw Sample30,Sample30+2196
  dw Sample32,Sample32+2502
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample32: incbin "Sample_8d56d18ccf40f82419c6f6881e3b1271.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
-
  dw .pattern0
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr30
  !musicVolume,255
  !tempo,51
  !echoParameters,5,60,0
  !echo,%00011110,45,45
  !instr,!instr06
  !volume,248
  db 27,$76
  !a2
  !volume,122
  !dynamicVolume,150,175
  db 9,$71
  %percNote(!instr30-!instr30)
  db 18,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$77
  %percNote(!instr30-!instr30)
  !instr,!instr06
  !volume,248
  db 27,$76
  !a2
  !volume,122
  !dynamicVolume,150,175
  db 9,$71
  %percNote(!instr30-!instr30)
  db 18,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$77
  %percNote(!instr30-!instr30)
  !loop : dw .sub51CB : db 2
  !loop : dw .sub5214 : db 2
  !volume,146
  !dynamicVolume,180,224
  db 9,$7A
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$77
  %percNote(!instr30-!instr30)
  !loop : dw .sub525D : db 2
  !volume,146
  !dynamicVolume,180,224
  db 9,$7A
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$77
  %percNote(!instr30-!instr30)
  !end

.pattern0_1
  !instr,!instr32
  !volume,219
  db 108,$66
  !a4
  !instr,!instr04
  db 36
  !e2
  !a2
  !as2
  !instr,!instr32
  db 108
  !a4
  !instr,!instr04
  db 36
  !e2
  !a2
  !as2
  !loop : dw .sub52A6 : db 2
  !loop : dw .sub52B1 : db 2
  db 54
  !cs3
  db 72
  !d3
  db 54
  !e3
  !loop : dw .sub52BE : db 2
  db 54
  !fs3
  db 54,$67
  !g3
  db 36,$68
  !d3
  db 36,$6A
  !g2
  !end

.pattern0_2
  !instr,!instr04
  !volume,165
  !pan,12
  db 36,$26
  !e4
  db 12
  !e4
  !e4
  !e4
  db 36,$16
  !fs4
  !e4
  db 18,$26
  !e4
  !e4
  db 36,$46
  !g4
  db 36,$26
  !e4
  db 12
  !e4
  !fs4
  !e4
  db 36,$16
  !g4
  !e4
  db 18,$26
  !e4
  !fs4
  db 36,$46
  !g4
  db 36,$26
  !fs4
  db 12
  !fs4
  !fs4
  !fs4
  db 36,$16
  !gs4
  !fs4
  db 18,$26
  !fs4
  !fs4
  db 36,$46
  !a4
  db 36,$26
  !fs4
  db 12
  !fs4
  !gs4
  !fs4
  db 36,$16
  !a4
  !fs4
  db 18,$26
  !fs4
  !gs4
  db 36,$46
  !a4
  db 36,$26
  !gs4
  db 12
  !gs4
  !gs4
  !gs4
  db 36,$16
  !as4
  !gs4
  db 18,$26
  !gs4
  !gs4
  db 36,$46
  !b4
  db 36,$26
  !gs4
  db 12
  !gs4
  !as4
  !gs4
  db 36,$16
  !b4
  !gs4
  db 18,$26
  !gs4
  !as4
  !b4
  !gs4
  !gs4
  db 36
  !b4
  db 18
  !gs4
  !gs4
  db 36
  !b4
  db 18
  !gs4
  !b4
  !gs4
  db 36
  !cs5
  db 12
  !cs5
  !cs5
  !cs5
  db 36,$16
  !ds5
  !cs5
  db 18,$26
  !cs5
  !cs5
  db 36,$46
  !e5
  db 36,$26
  !cs5
  db 12
  !cs5
  !cs5
  !cs5
  db 36,$16
  !ds5
  !cs5
  db 18,$57
  !cs5
  !ds5
  db 18,$37
  !e5
  db 18,$23
  !cs5
  db 18,$26
  !cs5
  db 36
  !e5
  db 18
  !cs5
  !e5
  !cs5
  !b4
  !fs4
  !b3
  !d4
  !end

.pattern0_3
  !instr,!instr04
  !volume,165
  !pan,8
  db 36,$26
  !a4
  db 12
  !a4
  !a4
  !a4
  db 36,$16
  !a4
  !a4
  db 18,$26
  !a4
  !a4
  db 36,$46
  !c5
  db 36,$26
  !a4
  db 12
  !a4
  !a4
  !a4
  db 36,$16
  !a4
  !a4
  db 18,$26
  !a4
  !a4
  db 36,$46
  !c5
  !loop : dw .sub52CB : db 2
  db 36,$26
  !cs5
  db 12
  !cs5
  !cs5
  !cs5
  db 36,$16
  !cs5
  !cs5
  db 18,$26
  !cs5
  !cs5
  db 36,$46
  !e5
  db 36,$26
  !cs5
  db 12
  !cs5
  !cs5
  !cs5
  db 36,$16
  !cs5
  !cs5
  db 18,$26
  !cs5
  !cs5
  !e5
  !cs5
  !cs5
  db 36
  !e5
  db 18
  !cs5
  !cs5
  db 36
  !e5
  db 18
  !cs5
  !e5
  !cs5
  db 36
  !fs5
  db 12
  !fs5
  !fs5
  !fs5
  db 36,$16
  !fs5
  !fs5
  db 18,$26
  !fs5
  !fs5
  db 36,$46
  !a5
  db 36,$26
  !fs5
  db 12
  !fs5
  !fs5
  !fs5
  db 36,$16
  !fs5
  !fs5
  db 18,$26
  !fs5
  !fs5
  !a5
  db 18,$23
  !fs5
  db 18,$26
  !fs5
  db 36
  !a5
  db 18
  !fs5
  !a5
  !fs5
  !e5
  !b4
  !e4
  !g4
  !end

.pattern0_4
  !instr,!instr04
  !volume,165
  !pan,10
  db 36,$26
  !d5
  db 12
  !d5
  !d5
  !d5
  db 36,$16
  !d5
  !d5
  db 18,$26
  !d5
  !d5
  db 36,$46
  !f5
  db 36,$26
  !d5
  db 12
  !d5
  !d5
  !d5
  db 36,$16
  !d5
  !d5
  db 18,$26
  !d5
  !d5
  db 36,$46
  !f5
  !loop : dw .sub52DE : db 2
  db 36,$26
  !fs5
  db 12
  !fs5
  !fs5
  !fs5
  db 36,$16
  !fs5
  !fs5
  db 18,$26
  !fs5
  !fs5
  db 36,$46
  !a5
  db 36,$26
  !fs5
  db 12
  !fs5
  !fs5
  !fs5
  db 36,$16
  !fs5
  !fs5
  db 18,$26
  !fs5
  !fs5
  !a5
  !fs5
  !fs5
  db 36
  !a5
  db 18
  !fs5
  !fs5
  !a5
  db 36
  !fs5
  db 18
  !a5
  !fs5
  db 36
  !b5
  db 12
  !b5
  !b5
  !b5
  db 36,$16
  !b5
  !b5
  db 18,$26
  !b5
  !b5
  db 36,$46
  !d6
  db 36,$26
  !b5
  db 12
  !b5
  !b5
  !b5
  db 36,$16
  !b5
  !b5
  db 18,$26
  !b5
  !b5
  !d6
  db 18,$23
  !b5
  db 18,$26
  !b5
  db 36
  !d6
  db 18
  !b5
  !d6
  !b5
  !a5
  !e5
  !a4
  !c5
  !end

.sub51CB
  !instr,!instr06
  !volume,248
  db 27,$76
  !b2
  !volume,122
  !dynamicVolume,150,175
  db 9,$71
  %percNote(!instr30-!instr30)
  db 18,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$77
  %percNote(!instr30-!instr30)
  !end

.sub5214
  !instr,!instr06
  !volume,248
  db 27,$76
  !cs3
  !volume,122
  !dynamicVolume,150,175
  db 9,$71
  %percNote(!instr30-!instr30)
  db 18,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$77
  %percNote(!instr30-!instr30)
  !end

.sub525D
  !instr,!instr06
  !volume,248
  db 27,$79
  !fs2
  !volume,122
  !dynamicVolume,150,175
  db 9,$71
  %percNote(!instr30-!instr30)
  db 18,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$77
  %percNote(!instr30-!instr30)
  !end

.sub52A6
  !instr,!instr32
  db 108
  !b4
  !instr,!instr04
  db 36
  !fs2
  !b2
  !c3
  !end

.sub52B1
  !instr,!instr32
  db 108,$65
  !cs5
  !instr,!instr04
  db 36,$66
  !gs2
  !cs3
  !d3
  !end

.sub52BE
  !instr,!instr32
  db 108,$67
  !fs4
  !instr,!instr04
  db 36,$66
  !cs3
  !fs3
  !g3
  !end

.sub52CB
  db 36,$26
  !b4
  db 12
  !b4
  !b4
  !b4
  db 36,$16
  !b4
  !b4
  db 18,$26
  !b4
  !b4
  db 36,$46
  !d5
  !end

.sub52DE
  db 36,$26
  !e5
  db 12
  !e5
  !e5
  !e5
  db 36,$16
  !e5
  !e5
  db 18,$26
  !e5
  !e5
  db 36,$46
  !g5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
