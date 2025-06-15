asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr1B = $17
!instr1C = $18
!instr26 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr26,$BF,$D3,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"

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
  !echo,%00011110,35,35
  !echoParameters,4,206,0
  !musicVolume,255
  !tempo,47
  !volume,210
  !instr,!instr26
  db 18,$77
  !c3
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  !c3
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 9,$77
  !e5
  db 9,$72
  !e5
  db 18,$77
  !c3
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 7,$77
  !e5
  db 6,$73
  !e5
  db 5,$74
  !e5
  db 18,$77
  !c3
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  !c3
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 9,$77
  !e5
  db 9,$73
  !e5
  db 18,$77
  !c3
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 7,$77
  !e5
  db 6,$73
  !e5
  db 5,$74
  !e5
  db 18,$77
  !c3
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 9,$77
  !e5
  db 9,$73
  !e5
  db 18,$77
  !c3
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 18,$77
  !e5
  db 9,$73
  !e5
  db 9,$72
  !e5
  db 18,$76
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 9,$72
  !e5
  db 9,$73
  !e5
  db 7,$77
  !e5
  db 6,$73
  !e5
  db 5,$74
  !e5
  !end

.pattern0_1
  !vibrato,18,11,20
  !instr,!instr01
  !volume,145
  db 18,$09
  !f5
  db 9,$47
  !g6
  !f6
  db 18,$17
  !e6
  !d6
  db 54,$57
  !c6
  db 9,$47
  !b5
  !c6
  db 18,$17
  !d6
  !b5
  db 72,$57
  !a5
  db 27
  !g5
  db 9
  !a5
  db 72,$77
  !a5
  db 72,$58
  !tie
  db 18
  !rest
  db 9,$47
  !d6
  !e6
  db 18,$17
  !f6
  !g6
  db 54,$56
  !a6
  db 9,$47
  !g6
  db 9,$46
  !a6
  db 18,$15
  !d7
  db 18,$16
  !a6
  db 72,$57
  !g6
  db 27
  !f6
  db 9
  !g6
  db 108
  !g6
  db 27
  !f6
  db 9
  !e6
  db 36,$67
  !f6
  db 27
  !e6
  db 9,$57
  !d6
  db 72,$77
  !c6
  !tie
  db 72,$48
  !tie
  !end

.pattern0_2
  !instr,!instr1C
  !volume,130
  !pan,8
  !loop : dw .sub495A : db 3
  !loop : dw .sub4967 : db 3
  db 18,$29
  !c5
  db 18,$27
  !g5
  !g5
  !g5
  !a5
  !a5
  !a5
  !a5
  db 18,$29
  !c5
  db 18,$27
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !end

.pattern0_3
  !instr,!instr1C
  !volume,130
  !pan,12
  !loop : dw .sub4974 : db 3
  !loop : dw .sub4981 : db 3
  !loop : dw .sub4974 : db 2
  !end

.pattern0_4
  !instr,!instr1B
  !volume,130
  !pan,10
  !loop : dw .sub498E : db 3
  !loop : dw .sub499B : db 3
  db 18,$29
  !a5
  db 18,$27
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  db 18,$29
  !a5
  db 18,$27
  !g6
  !g6
  !g6
  !f6
  !f6
  !f6
  !f6
  !end

.sub495A
  db 18,$29
  !c5
  db 18,$27
  !g5
  !g5
  !g5
  !a5
  !a5
  !a5
  !a5
  !end

.sub4967
  db 18,$29
  !d5
  db 18,$27
  !as5
  !as5
  !as5
  !c6
  !c6
  !c6
  !c6
  !end

.sub4974
  db 18,$29
  !f5
  db 18,$27
  !c6
  !c6
  !c6
  !c6
  !c6
  !c6
  !c6
  !end

.sub4981
  db 18,$29
  !f5
  db 18,$27
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !end

.sub498E
  db 18,$29
  !a5
  db 18,$27
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !end

.sub499B
  db 18,$29
  !as5
  db 18,$27
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
