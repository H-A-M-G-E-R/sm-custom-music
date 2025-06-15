asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr08 = $17
!instr10 = $18
!instr1C = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$AF,$B2,$B8,$0E,$F0
  db !instr08,$EA,$54,$B8,$04,$00
  db !instr10,$FF,$E0,$B8,$03,$B0
  db !instr1C,$FB,$E0,$B8,$03,$D0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+27
  dw Sample07_08_09,Sample07_08_09+360
  dw Sample10,Sample10+27
  dw Sample1C,Sample1C+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_1086e6fe5f17482c7f004cd2924d0b6b.brr"
  Sample07_08_09: incbin "Sample_38e63eed215c29c5a4534a9767604a6d.brr"
  Sample10: incbin "Sample_00909a2c7ac12f30a998285388a5259c.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
-
  dw .pattern0
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,255
  !tempo,46
  !echo,%00011110,42,42
  !echoParameters,4,60,0
  !pan,10
  !instr,!instr02
  !volume,165
  db 105,$57
  !g3
  db 21
  !d3
  db 63
  !g3
  !g3
  db 105
  !f3
  db 21
  !c3
  db 42
  !f3
  db 21
  !c3
  db 42
  !f3
  db 21
  !c3
  !loop : dw .sub4A7E : db 3
  db 105
  !e3
  db 21
  !b2
  db 42
  !e3
  db 21,$55
  !b2
  db 42,$57
  !e3
  db 21,$55
  !b2
  db 105,$57
  !d3
  db 21
  !a2
  db 42
  !d3
  db 21,$55
  !a2
  db 42,$57
  !d3
  db 21,$55
  !a2
  db 63,$57
  !c3
  db 42
  !c3
  db 21
  !g2
  db 63
  !d3
  db 42
  !d3
  db 21
  !a2
  db 63
  !e3
  db 42
  !e3
  db 21
  !b2
  db 105
  !f3
  db 21
  !c3
  db 63
  !f3
  db 42,$55
  !f3
  db 21
  !c3
  db 42,$57
  !f3
  db 21,$55
  !c3
  db 42
  !f3
  db 21
  !c3
  !end

.pattern0_1
  !instr,!instr10
  !volume,125
  !pan,5
  db 21,$77
  !g3
  !d4
  !g4
  !as4
  !d5
  !f5
  !g3
  !f4
  !g4
  !as4
  !cs5
  !f5
  !f3
  !c4
  !f4
  !a4
  !c5
  !e5
  !f3
  !c4
  !f4
  !a4
  !c5
  !d5
  !loop : dw .sub4A92 : db 3
  !b3
  !e4
  !g4
  !b4
  !e5
  !g5
  !b3
  !e4
  !g4
  !b4
  !d5
  !g5
  !a3
  !d4
  !f4
  !a4
  !c5
  !f5
  !a3
  !d4
  !f4
  !a4
  !c5
  !f5
  !g3
  !c4
  !e4
  !g4
  !b4
  !e5
  !a3
  !d4
  !f4
  !a4
  !c5
  !f5
  !b3
  !e4
  !g4
  !b4
  !d5
  !g5
  !f3
  !f4
  !a4
  !c5
  !e5
  !a5
  !f3
  !f4
  !a4
  !c5
  !d5
  !a5
  !f3
  !f4
  !a4
  !c5
  !g5
  !a5
  !end

.pattern0_2
  !instr,!instr1C
  !volume,155
  !tremolo,1,15,80
  db 42,$78
  !f6
  db 42,$77
  !g6
  db 42,$76
  !a6
  db 42,$78
  !g6
  db 42,$77
  !f6
  db 42,$75
  !g6
  db 42,$77
  !e6
  db 42,$75
  !a5
  !e6
  db 126,$54
  !d6
  db 42,$77
  !f6
  !g6
  !a6
  db 42,$75
  !c7
  db 42,$77
  !a6
  !g6
  !volume,100
  !dynamicVolume,70,155
  db 84,$78
  !a6
  db 42,$76
  !e6
  db 126,$63
  !d6
  db 42,$77
  !f6
  !g6
  db 42,$76
  !a6
  db 42,$78
  !g6
  db 42,$77
  !f6
  db 42,$75
  !g6
  !e6
  !a5
  !e6
  db 84,$64
  !d6
  db 42,$76
  !e6
  db 42,$78
  !f6
  db 42,$77
  !g6
  db 42,$76
  !a6
  !c7
  db 42,$74
  !a6
  db 42,$73
  !g6
  !volume,90
  !dynamicVolume,70,155
  db 84,$79
  !a6
  db 42,$77
  !c7
  db 42,$67
  !a6
  db 42,$78
  !a6
  db 42,$7A
  !c7
  !volume,90
  !dynamicVolume,70,155
  db 84
  !d7
  db 42,$77
  !g6
  db 42,$76
  !g6
  db 42,$75
  !d7
  db 42,$77
  !g6
  db 42,$76
  !c7
  !a6
  db 42,$74
  !f6
  db 84,$76
  !e6
  db 42,$73
  !d6
  db 42,$77
  !e6
  db 42,$74
  !g5
  db 42,$75
  !e6
  db 42,$77
  !c6
  db 42,$74
  !e6
  db 42,$73
  !f6
  db 42,$76
  !g6
  db 42,$74
  !d6
  db 42,$75
  !g6
  !volume,100
  !dynamicVolume,100,155
  db 84,$68
  !a6
  db 42,$64
  !a6
  db 1
  !rest
  !volume,100
  !dynamicVolume,120,165
  db 126,$77
  !a6
  db 55
  !tie
  !dynamicVolume,50,100
  db 50
  !tie
  db 20
  !rest
  !end

.pattern0_3
  !vibrato,0,20,20
  !instr,!instr08
  !pan,8
  !volume,210
  db 21,$59
  !g4
  db 21,$57
  !d5
  !f5
  !d5
  !f5
  !d5
  db 21,$59
  !g4
  db 21,$57
  !cs5
  !f5
  !cs5
  !f5
  !cs5
  db 21,$59
  !f4
  db 21,$57
  !c5
  !e5
  !c5
  !e5
  !c5
  db 21,$59
  !f4
  db 21,$57
  !a4
  !d5
  !a4
  !d5
  !a4
  db 21,$59
  !g4
  db 21,$57
  !d5
  !f5
  !d5
  !f5
  !d5
  db 21,$59
  !g4
  db 21,$57
  !cs5
  !f5
  !cs5
  !f5
  !cs5
  db 21,$59
  !f4
  db 21,$57
  !c5
  !e5
  !c5
  !e5
  !c5
  db 21,$59
  !f4
  db 21,$57
  !c5
  !d5
  !c5
  !d5
  !c5
  !loop : dw .sub4AAB : db 2
  db 21,$59
  !g4
  db 21,$57
  !d5
  !g5
  !d5
  !g5
  !d5
  db 21,$59
  !g4
  db 21,$57
  !d5
  !g5
  !d5
  !g5
  !d5
  db 21,$59
  !f4
  db 21,$57
  !c5
  !f5
  !c5
  !f5
  !c5
  db 21,$59
  !f4
  db 21,$57
  !c5
  !f5
  !c5
  !f5
  !c5
  db 21,$59
  !e4
  db 21,$57
  !b4
  !e5
  !b4
  !d5
  !b4
  db 21,$59
  !f4
  db 21,$57
  !c5
  !f5
  !c5
  !f5
  !c5
  db 21,$59
  !g4
  db 21,$57
  !d5
  !g5
  !d5
  !g5
  !d5
  db 21,$59
  !a4
  db 21,$57
  !e5
  !a5
  !e5
  !a5
  !e5
  db 21,$59
  !a4
  db 21,$57
  !e5
  !a5
  !e5
  !d5
  !e5
  db 21,$59
  !a4
  db 21,$57
  !e5
  !a5
  !e5
  !d5
  !e5
  !end

.pattern0_4
  !vibrato,0,20,20
  !instr,!instr08
  !pan,12
  !volume,210
  db 21,$59
  !as4
  db 21,$57
  !f5
  !as5
  !f5
  !as5
  !f5
  db 21,$59
  !as4
  db 21,$57
  !f5
  !as5
  !f5
  !as5
  !f5
  db 21,$59
  !a4
  db 21,$57
  !e5
  !a5
  !e5
  !a5
  !e5
  db 21,$59
  !a4
  db 21,$57
  !d5
  !g5
  !d5
  !g5
  !d5
  db 21,$59
  !as4
  db 21,$57
  !f5
  !as5
  !f5
  !as5
  !f5
  db 21,$59
  !as4
  db 21,$57
  !f5
  !as5
  !f5
  !as5
  !f5
  db 21,$59
  !a4
  db 21,$57
  !e5
  !a5
  !e5
  !a5
  !e5
  db 21,$59
  !a4
  db 21,$57
  !d5
  !g5
  !d5
  !g5
  !d5
  !loop : dw .sub4AD4 : db 2
  db 21,$59
  !b4
  db 21,$57
  !g5
  !b5
  !g5
  !b5
  !g5
  db 21,$59
  !b4
  db 21,$57
  !g5
  !b5
  !g5
  !b5
  !g5
  db 21,$59
  !a4
  db 21,$57
  !f5
  !a5
  !f5
  !a5
  !f5
  db 21,$59
  !a4
  db 21,$57
  !f5
  !a5
  !f5
  !a5
  !f5
  db 21,$59
  !g4
  db 21,$57
  !e5
  !g5
  !e5
  !g5
  !e5
  db 21,$59
  !a4
  db 21,$57
  !f5
  !a5
  !f5
  !a5
  !f5
  db 21,$59
  !b4
  db 21,$57
  !g5
  !b5
  !g5
  !b5
  !g5
  db 21,$59
  !c5
  db 21,$57
  !a5
  !c6
  !a5
  !c6
  !a5
  db 21,$59
  !c5
  db 21,$57
  !a5
  !c6
  !a5
  !c6
  !a5
  db 21,$59
  !c5
  db 21,$57
  !a5
  !c6
  !a5
  !c6
  !a5
  !end

.sub4A7E
  db 105
  !g3
  db 21
  !d3
  db 63
  !g3
  !g3
  db 105
  !f3
  db 21
  !c3
  db 42
  !f3
  db 21
  !c3
  db 42
  !f3
  db 21
  !c3
  !end

.sub4A92
  !g3
  !d4
  !g4
  !as4
  !d5
  !f5
  !g3
  !f4
  !g4
  !as4
  !cs5
  !f5
  !f3
  !c4
  !f4
  !a4
  !c5
  !e5
  !f3
  !c4
  !f4
  !a4
  !c5
  !d5
  !end

.sub4AAB
  db 21,$59
  !g4
  db 21,$57
  !d5
  !f5
  !d5
  !f5
  !d5
  db 21,$59
  !g4
  db 21,$57
  !cs5
  !f5
  !cs5
  !f5
  !cs5
  db 21,$59
  !f4
  db 21,$57
  !c5
  !e5
  !c5
  !e5
  !c5
  db 21,$59
  !f4
  db 21,$57
  !c5
  !e5
  !c5
  !e5
  !c5
  !end

.sub4AD4
  db 21,$59
  !as4
  db 21,$57
  !f5
  !as5
  !f5
  !as5
  !f5
  db 21,$59
  !as4
  db 21,$57
  !f5
  !as5
  !f5
  !as5
  !f5
  db 21,$59
  !a4
  db 21,$57
  !e5
  !a5
  !e5
  !a5
  !e5
  db 21,$59
  !a4
  db 21,$57
  !e5
  !a5
  !e5
  !a5
  !e5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
