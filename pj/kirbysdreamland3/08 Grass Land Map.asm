asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr06 = $16
!instr1B = $17
!instr23 = $18
!instr24 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05_06,Sample05_06+216
  dw Sample1B,Sample1B+1170
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
-
  dw .pattern0
  dw .pattern1
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr24
  !echo,%00011100,19,19
  !echoParameters,3,70,0
  !musicVolume,255
  !tempo,46
  !loop : dw .sub4981 : db 3
  !pan,10
  !instr,!instr23
  db 33,$12
  !gs5
  !pan,12
  db 22,$71
  %percNote(!instr24-!instr24)
  !pan,8
  db 11
  %percNote(!instr24-!instr24)
  !pan,10
  db 66
  %percNote(!instr24-!instr24)
  !loop : dw .sub4981 : db 3
  !pan,10
  !instr,!instr23
  db 33,$12
  !gs5
  !pan,12
  db 22,$71
  %percNote(!instr24-!instr24)
  !pan,8
  db 11
  %percNote(!instr24-!instr24)
  !pan,10
  db 66
  %percNote(!instr24-!instr24)
  !end

.pattern0_1
  !loop : dw .sub499A : db 3
  db 88
  !rest
  !transpose,12
  !instr,!instr06
  !pan,10
  !volume,135
  db 11,$17
  !d7
  !d7
  db 22
  !rest
  !loop : dw .sub499A : db 3
  db 99
  !rest
  db 33,$57
  !d7
  !end

.pattern0_2
  !instr,!instr1B
  !volume,175
  !pan,10
  !loop : dw .sub499F : db 1
  !b6
  db 22,$67
  !b6
  db 11
  !a6
  db 33,$27
  !g6
  !fs6
  !g6
  !g6
  !g6
  !rest
  !loop : dw .sub499F : db 1
  db 22,$47
  !d7
  db 11,$67
  !c7
  db 22,$47
  !b6
  db 11,$67
  !a6
  db 33,$27
  !g6
  !fs6
  !g6
  !g6
  !g6
  !rest
  !end

.pattern0_3
  !instr,!instr1B
  !pan,8
  !volume,135
  db 22,$17
  !b5
  db 11,$57
  !g5
  db 22,$17
  !b5
  db 11,$57
  !g5
  db 22,$17
  !b5
  db 11,$57
  !g5
  db 22,$17
  !b5
  db 11,$57
  !g5
  !loop : dw .sub49BA : db 1
  db 22
  !b5
  db 11,$57
  !g5
  db 22,$17
  !b5
  db 11,$57
  !g5
  db 22,$17
  !b5
  db 11,$57
  !g5
  db 22,$17
  !b5
  db 11,$57
  !g5
  !loop : dw .sub49BA : db 1
  !end

.pattern0_4
  !instr,!instr1B
  !pan,12
  !volume,135
  !loop : dw .sub49FC : db 1
  !loop : dw .sub4A2D : db 1
  db 22
  !d6
  db 11,$57
  !b5
  db 22,$17
  !d6
  db 11,$57
  !b5
  db 22,$17
  !d6
  db 11,$57
  !b5
  db 22,$17
  !d6
  db 11,$57
  !b5
  db 22,$17
  !e6
  db 11,$57
  !c6
  db 22,$17
  !e6
  db 11,$57
  !c6
  db 22,$17
  !e6
  db 11,$57
  !c6
  db 22,$17
  !e6
  db 11,$57
  !c6
  !loop : dw .sub4A2D : db 1
  !end

.pattern1_0
  !loop : dw .sub4981 : db 8
  !end

.pattern1_1
  !loop : dw .sub499A : db 5
  db 86
  !rest
  db 4,$72
  !e6
  db 4,$73
  !g6
  db 5,$74
  !b6
  db 33,$76
  !e7
  db 100
  !rest
  db 32
  !rest
  db 88
  !rest
  db 11,$17
  !d7
  db 33,$77
  !d6
  !end

.pattern1_2
  db 55,$67
  !g7
  db 11
  !g7
  db 33,$27
  !fs7
  !e7
  db 99,$77
  !d7
  db 33
  !rest
  db 33,$27
  !c7
  db 22,$67
  !c7
  db 11
  !d7
  db 33,$27
  !e7
  !fs7
  db 99,$77
  !d7
  db 33
  !rest
  db 33,$27
  !e7
  db 22,$67
  !e7
  db 11
  !d7
  db 22
  !e7
  db 11
  !fs7
  db 22
  !g7
  db 11
  !a7
  db 33,$27
  !b7
  !a7
  db 33,$67
  !g7
  !rest
  db 33,$27
  !g7
  db 22,$67
  !g7
  db 11
  !a7
  db 33,$27
  !g7
  !fs7
  db 88,$77
  !g7
  db 44
  !rest
  !end

.pattern1_3
  !loop : dw .sub4A57 : db 2
  db 22,$17
  !c6
  db 11,$57
  !a5
  db 22,$17
  !c6
  db 11,$57
  !a5
  db 22,$17
  !c6
  db 11,$57
  !a5
  db 22,$17
  !c6
  db 11,$57
  !a5
  db 22,$17
  !d6
  db 11,$57
  !b5
  db 22,$17
  !d6
  db 11,$57
  !b5
  db 33,$66
  !e6
  !rest
  db 22,$17
  !e6
  db 11,$57
  !c6
  db 22,$17
  !e6
  db 11,$57
  !c6
  db 22,$17
  !d6
  db 11,$57
  !a5
  db 22,$17
  !c6
  db 11,$57
  !a5
  db 22,$17
  !d6
  db 11,$57
  !g6
  db 22,$17
  !d6
  db 11,$57
  !g6
  db 22
  !d6
  db 44
  !rest
  !end

.pattern1_4
  db 22,$17
  !e6
  db 11,$57
  !c6
  db 22,$17
  !e6
  db 11,$57
  !c6
  db 22,$17
  !e6
  db 11,$57
  !c6
  db 22,$17
  !e6
  db 11,$57
  !c6
  !loop : dw .sub49FC : db 2
  db 22,$17
  !fs6
  db 11,$57
  !d6
  db 22,$17
  !fs6
  db 11,$57
  !d6
  db 33,$66
  !g6
  !rest
  db 22,$17
  !g6
  db 11,$57
  !e6
  db 22,$17
  !g6
  db 11,$57
  !e6
  db 22,$17
  !g6
  db 11,$57
  !d6
  db 22,$17
  !fs6
  db 11,$57
  !d6
  db 22,$17
  !g6
  db 11,$57
  !b6
  db 22,$17
  !g6
  db 11,$57
  !b6
  db 22
  !g6
  db 44
  !rest
  !end

.sub4981
  !pan,10
  !instr,!instr23
  db 33,$12
  !gs5
  !pan,12
  db 22,$71
  %percNote(!instr24-!instr24)
  !pan,8
  db 33
  %percNote(!instr24-!instr24)
  !pan,12
  db 11
  %percNote(!instr24-!instr24)
  !pan,8
  db 33
  %percNote(!instr24-!instr24)
  !end

.sub499A
  db 100
  !rest
  db 32
  !rest
  !end

.sub499F
  db 55,$77
  !g6
  db 11,$67
  !d6
  db 22
  !g6
  db 11
  !a6
  db 33,$27
  !b6
  db 55,$77
  !a6
  db 11,$67
  !e6
  db 22
  !a6
  db 11
  !b6
  db 33,$27
  !c7
  !end

.sub49BA
  db 22,$17
  !c6
  db 11,$57
  !a5
  db 22,$17
  !c6
  db 11,$57
  !a5
  db 22,$17
  !c6
  db 11,$57
  !a5
  db 22,$17
  !c6
  db 11,$57
  !a5
  db 22,$17
  !b5
  db 11,$57
  !g5
  db 22,$17
  !b5
  db 11,$57
  !g5
  db 22,$17
  !a5
  db 11,$57
  !g5
  db 22,$17
  !a5
  db 11,$57
  !fs5
  db 22,$17
  !g5
  db 11,$57
  !b5
  db 22,$17
  !g5
  db 11,$57
  !b5
  db 22,$17
  !g5
  db 44
  !rest
  !end

.sub49FC
  db 22,$17
  !d6
  db 11,$57
  !b5
  db 22,$17
  !d6
  db 11,$57
  !b5
  db 22,$17
  !d6
  db 11,$57
  !b5
  db 22,$17
  !d6
  db 11,$57
  !b5
  db 22,$17
  !e6
  db 11,$57
  !c6
  db 22,$17
  !e6
  db 11,$57
  !c6
  db 22,$17
  !e6
  db 11,$57
  !c6
  db 22,$17
  !e6
  db 11,$57
  !c6
  !end

.sub4A2D
  db 22,$17
  !d6
  db 11,$57
  !b5
  db 22,$17
  !d6
  db 11,$57
  !b5
  db 22,$17
  !c6
  db 11,$57
  !a5
  db 22,$17
  !c6
  db 11,$57
  !a5
  db 22,$17
  !b5
  db 11,$57
  !d6
  db 22,$17
  !b5
  db 11,$57
  !d6
  db 22,$17
  !b5
  db 44
  !rest
  !end

.sub4A57
  db 22,$17
  !c6
  db 11,$57
  !g5
  db 22,$17
  !c6
  db 11,$57
  !g5
  db 22,$17
  !c6
  db 11,$57
  !g5
  db 22,$17
  !c6
  db 11,$57
  !g5
  db 22,$17
  !b5
  db 11,$57
  !g5
  db 22,$17
  !b5
  db 11,$57
  !g5
  db 22,$17
  !b5
  db 11,$57
  !g5
  db 22,$17
  !b5
  db 11,$57
  !g5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
