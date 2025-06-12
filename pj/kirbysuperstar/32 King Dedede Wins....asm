asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr19 = $17
!instr1B = $18
!instr22 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr22,$FF,$E0,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+1098
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample22,Sample22+315
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"

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
  !echoParameters,5,176,0
  !echo,%00011111,30,30
  !musicVolume,255
  !tempo,51
  !volume,160
  !instr,!instr19
  !subtranspose,60
  db 81,$78
  !g2
  !tie
  db 120,$79
  !fs2
  db 100
  !tie
  db 120,$76
  !b2
  db 117
  !tie
  db 90
  !tie
  !dynamicVolume,81,50
  db 81
  !tie
  !end

.pattern0_1
  !instr,!instr04
  !volume,160
  !vibrato,0,8,24
  db 54,$78
  !g3
  db 54,$76
  !d4
  db 54,$74
  !g4
  db 60,$78
  !fs3
  db 75,$74
  !cs4
  db 85,$73
  !e4
  db 120,$74
  !b3
  db 117
  !tie
  db 90
  !tie
  !dynamicVolume,81,50
  db 81
  !tie
  !end

.pattern0_2
  !instr,!instr22
  !volume,165
  !vibrato,0,12,10
  !tremolo,27,8,100
  !slideIn,10,15,2
  db 54,$76
  !fs5
  !endSlide
  !a5
  db 54,$77
  !b5
  db 60,$75
  !d6
  db 75,$73
  !e6
  db 85,$72
  !cs6
  db 120,$73
  !b5
  db 117
  !tie
  db 90
  !tie
  !dynamicVolume,81,50
  db 81
  !tie
  !end

.pattern0_3
  !instr,!instr1B
  !subtranspose,58
  !volume,155
  !pan,13
  db 81,$66
  !b4
  !d5
  db 70,$76
  !b4
  db 65,$64
  !tie
  db 85
  !as4
  db 125
  !e5
  db 48
  !d5
  db 64,$65
  !cs5
  db 90,$73
  !d5
  !dynamicVolume,81,70
  db 81
  !tie
  !end

.pattern0_4
  !instr,!instr1B
  !subtranspose,58
  !volume,155
  !pan,7
  db 81,$66
  !d5
  !fs5
  db 70,$76
  !cs4
  db 65,$64
  !tie
  db 85
  !e5
  db 120,$73
  !fs5
  db 117
  !tie
  db 90
  !tie
  !dynamicVolume,81,70
  db 81
  !tie
  !end

.pattern1_0
  db 72
  !rest
  !rest
  !loop : dw .sub4F78 : db 10
  !end

.sub4F78
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
