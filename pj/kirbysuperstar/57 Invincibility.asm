asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr22 = $17
!instr2C = $18
!instr30 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample22,Sample22+315
  dw Sample2C,Sample2C+1476
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"

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
  !percBase,!instr2C
  !echo,%00011100,35,35
  !echoParameters,4,50,0
  !pan,10
  !volume,255
  !musicVolume,255
  !tempo,51
  !loop : dw .sub5070 : db 3
  db 8,$78
  %percNote(!instr2C-!instr2C)
  db 8,$71
  %percNote(!instr30-!instr2C)
  db 8,$77
  %percNote(!instr30-!instr2C)
  db 8,$72
  %percNote(!instr30-!instr2C)
  db 8,$78
  %percNote(!instr2C-!instr2C)
  db 8,$71
  %percNote(!instr30-!instr2C)
  db 8,$77
  %percNote(!instr30-!instr2C)
  db 8,$72
  %percNote(!instr30-!instr2C)
  db 8,$78
  %percNote(!instr2C-!instr2C)
  db 8,$71
  %percNote(!instr30-!instr2C)
  db 8,$77
  %percNote(!instr30-!instr2C)
  db 8,$72
  %percNote(!instr30-!instr2C)
  db 8,$78
  %percNote(!instr30-!instr2C)
  db 8,$71
  %percNote(!instr30-!instr2C)
  db 8,$78
  %percNote(!instr30-!instr2C)
  db 8,$72
  %percNote(!instr30-!instr2C)
  !end

.pattern0_1
  !volume,255
  !instr,!instr05
  db 24,$58
  !as3
  db 8,$46
  !as3
  db 8,$42
  !as4
  db 16,$36
  !as3
  db 8,$42
  !as4
  db 16,$18
  !f3
  db 24,$36
  !f3
  db 16
  !c4
  db 8,$46
  !f3
  db 16,$18
  !ds3
  db 16,$36
  !ds3
  db 8,$45
  !ds4
  db 16,$36
  !ds3
  db 8,$45
  !ds4
  db 24,$48
  !f3
  db 8,$46
  !f3
  db 8,$45
  !f4
  db 16,$36
  !f3
  db 8,$45
  !f4
  db 16,$18
  !as3
  db 16,$32
  !as4
  db 8,$46
  !as3
  db 16,$32
  !as4
  db 8,$46
  !as3
  db 16,$18
  !as3
  db 16,$32
  !as4
  db 8,$46
  !as3
  db 16,$32
  !as4
  db 8,$46
  !as3
  db 16,$19
  !ds3
  db 16,$36
  !ds3
  db 8,$44
  !ds4
  db 16,$36
  !ds3
  db 8,$44
  !ds4
  db 8,$49
  !ds3
  db 8,$44
  !ds4
  db 16,$58
  !ds3
  db 8,$56
  !ds4
  db 16,$77
  !ds3
  db 8,$45
  !ds4

.pattern0_2
  !instr,!instr22
  !volume,165
  !pan,12
  db 8,$66
  !f5
  !as5
  !f5
  !as5
  !f5
  !as5
  !f5
  !as5
  !a5
  !c6
  !a5
  !c6
  !c5
  !f5
  !c5
  !f5
  !as5
  !d6
  !as5
  !d6
  !g5
  !as5
  !as5
  !d6
  !a5
  !c6
  !a5
  !c6
  !c5
  !f5
  !c5
  !f5
  db 8,$77
  !f6
  db 8,$75
  !d6
  db 8,$74
  !d6
  !f6
  db 8,$77
  !d6
  db 8,$75
  !d6
  db 8,$74
  !as5
  !d6
  db 8,$77
  !d6
  db 8,$75
  !as5
  db 8,$74
  !as5
  !as5
  db 8,$77
  !d6
  db 8,$75
  !as5
  db 8,$74
  !as5
  !d6
  db 8,$66
  !g5
  !as5
  !g5
  !as5
  !g5
  !as5
  !g5
  !as5
  !g6
  !as6
  !g6
  !as6
  !g6
  !as6
  !g6
  !as6

.pattern0_3
  !instr,!instr22
  !volume,160
  !pan,8
  db 40,$66
  !d6
  !endSlide
  db 16,$65
  !d6
  db 8
  !d6
  db 32,$66
  !f6
  db 32,$65
  !a5
  db 16,$16
  !ds6
  db 24,$65
  !ds6
  db 16
  !ds6
  db 8
  !ds6
  db 32,$66
  !f6
  db 32,$65
  !a5
  db 8,$77
  !a6
  db 8,$75
  !g6
  db 8,$74
  !f6
  !a6
  db 8,$77
  !g6
  db 8,$75
  !f6
  db 8,$74
  !d6
  !g6
  db 8,$77
  !f6
  db 8,$75
  !d6
  db 8,$74
  !d6
  !f6
  db 8,$77
  !d6
  db 8,$75
  !d6
  db 8,$74
  !d6
  !f6
  db 65,$76
  !cs6
  !slideIn,2,14,1
  db 63,$75
  !cs7

.pattern0_4
  !instr,!instr22
  !volume,175
  !pan,10
  db 40,$66
  !g6
  !endSlide
  db 16,$65
  !f6
  db 8
  !g6
  db 32,$66
  !a6
  db 32,$65
  !c6
  db 16,$16
  !g6
  db 24,$65
  !g6
  db 16
  !f6
  db 8
  !g6
  db 32,$66
  !a6
  db 32,$65
  !c6
  db 8,$77
  !c7
  db 8,$75
  !as6
  db 8,$74
  !a6
  !c7
  db 8,$77
  !as6
  db 8,$75
  !a6
  db 8,$74
  !g6
  !as6
  db 8,$77
  !a6
  db 8,$75
  !g6
  db 8,$74
  !f6
  !a6
  db 8,$77
  !g6
  db 8,$75
  !f6
  db 8,$74
  !g6
  !a6
  db 65,$76
  !f6
  !slideIn,2,14,1
  db 63,$75
  !f7

.sub5070
  db 8,$78
  %percNote(!instr2C-!instr2C)
  db 8,$71
  %percNote(!instr30-!instr2C)
  db 8,$77
  %percNote(!instr30-!instr2C)
  db 8,$72
  %percNote(!instr30-!instr2C)
  db 8,$78
  %percNote(!instr2C-!instr2C)
  db 8,$71
  %percNote(!instr30-!instr2C)
  db 8,$77
  %percNote(!instr30-!instr2C)
  db 8,$72
  %percNote(!instr30-!instr2C)
  db 8,$78
  %percNote(!instr2C-!instr2C)
  db 8,$71
  %percNote(!instr30-!instr2C)
  db 8,$77
  %percNote(!instr30-!instr2C)
  db 8,$72
  %percNote(!instr30-!instr2C)
  db 8,$78
  %percNote(!instr2C-!instr2C)
  db 8,$71
  %percNote(!instr30-!instr2C)
  db 8,$77
  %percNote(!instr30-!instr2C)
  db 8,$72
  %percNote(!instr30-!instr2C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
