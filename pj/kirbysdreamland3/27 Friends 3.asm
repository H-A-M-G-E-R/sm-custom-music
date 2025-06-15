asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr06 = $17
!instr1B = $18
!instr23 = $19
!instr24 = $1A
!instr25 = $1B
!instr27 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$AF,$B2,$B8,$0E,$F0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+27
  dw Sample05_06,Sample05_06+216
  dw Sample1B,Sample1B+1170
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_1086e6fe5f17482c7f004cd2924d0b6b.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
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
  !musicVolume,255
  !tempo,46
  !echo,%00011100,26,26
  !echoParameters,4,50,0
  !loop : dw .sub4A00 : db 1
  !instr,!instr24
  !pan,10
  db 22,$72
  !f4
  !instr,!instr23
  db 11,$74
  !f5
  !pan,10
  !instr,!instr24
  db 22,$72
  !f4
  !pan,8
  db 11,$70
  !f4
  !pan,10
  !instr,!instr27
  db 22,$74
  !a5
  !instr,!instr25
  db 11,$72
  !c5
  db 22,$75
  !c5
  !instr,!instr24
  !pan,8
  db 11,$70
  !f4
  !loop : dw .sub4A00 : db 1
  !instr,!instr24
  !pan,10
  db 22,$72
  !f4
  !instr,!instr23
  db 11,$74
  !f5
  !pan,10
  !instr,!instr24
  db 11,$72
  !f4
  !pan,8
  db 11,$70
  !f4
  !pan,10
  !instr,!instr27
  db 11,$74
  !a5
  db 33
  !a5
  db 22,$71
  !c6
  db 11
  !c6
  !end

.pattern0_1
  !instr,!instr02
  !volume,120
  db 22,$17
  !f4
  db 33
  !rest
  db 22
  !f4
  db 11
  !rest
  db 11,$57
  !c4
  db 22
  !f4
  db 11
  !c4
  db 22,$17
  !g4
  db 33
  !rest
  db 11,$56
  !as4
  db 22,$15
  !c5
  db 11
  !rest
  db 22,$57
  !c4
  db 11
  !rest
  db 22,$17
  !f4
  db 33
  !rest
  db 22
  !f4
  db 11
  !rest
  db 11,$57
  !c4
  db 22
  !f4
  db 11
  !c4
  db 22,$17
  !g4
  db 33
  !rest
  db 11,$57
  !as3
  db 22
  !c4
  db 11
  !g4
  db 22
  !c4
  db 11,$55
  !c5
  db 22,$15
  !d5
  db 33
  !rest
  db 11,$57
  !as3
  db 22,$15
  !cs5
  db 11
  !rest
  db 33,$27
  !as3
  db 22,$17
  !f4
  db 33
  !rest
  db 22
  !f4
  db 11
  !rest
  db 11,$57
  !c4
  db 22
  !f4
  db 11
  !c4
  db 22,$17
  !g4
  db 33
  !rest
  db 22
  !g4
  db 11
  !rest
  db 11,$57
  !d4
  db 22
  !g4
  db 11
  !d4
  db 22
  !c4
  db 22,$17
  !c4
  db 11
  !rest
  db 11,$55
  !c5
  db 22,$17
  !c4
  db 44
  !rest
  !end

.pattern0_2
  !transpose,12
  !instr,!instr1B
  !volume,155
  db 22,$18
  !c6
  db 11,$57
  !a6
  db 22,$17
  !g6
  db 11,$57
  !f6
  db 22,$17
  !c7
  db 11,$57
  !a6
  db 22,$17
  !g6
  db 11,$57
  !f6
  db 33,$07
  !g6
  db 22,$17
  !g6
  db 11,$57
  !f6
  db 33,$17
  !g6
  !rest
  db 22,$18
  !c6
  db 11,$57
  !a6
  db 22,$17
  !g6
  db 11,$57
  !f6
  db 22,$17
  !c7
  db 11,$57
  !a6
  db 22,$17
  !g6
  db 11,$57
  !f6
  db 33,$07
  !g6
  db 22,$17
  !g6
  db 11,$57
  !a6
  db 33,$27
  !g6
  db 22
  !a6
  db 11,$57
  !g6
  db 33,$27
  !f6
  db 22,$17
  !f6
  db 11,$57
  !g6
  db 33,$07
  !a6
  db 22,$17
  !g6
  db 11,$57
  !f6
  db 22,$17
  !e6
  db 11,$57
  !f6
  db 22,$17
  !e6
  db 11,$57
  !a5
  db 33
  !c6
  !rest
  db 33,$07
  !a5
  db 22,$17
  !a5
  db 11,$57
  !g5
  db 22
  !g5
  db 11
  !d6
  db 22
  !e6
  db 11
  !f6
  db 22,$17
  !g6
  db 33,$07
  !g6
  db 11,$57
  !a6
  db 22,$17
  !g6
  db 11,$47
  !c7
  db 22,$17
  !a6
  db 11,$47
  !g6
  !end

.pattern0_3
  !instr,!instr06
  !volume,120
  !pan,8
  !loop : dw .sub4A95 : db 2
  db 22,$17
  !f4
  db 11,$57
  !d5
  db 22,$17
  !f5
  db 11,$57
  !d5
  db 22,$17
  !as5
  db 11,$57
  !cs5
  db 22,$17
  !f5
  db 11,$57
  !cs5
  db 22,$17
  !f4
  db 11,$57
  !c5
  db 22,$17
  !f5
  db 11,$57
  !c5
  db 22,$17
  !a5
  db 11,$57
  !c5
  db 22,$17
  !f5
  db 11,$57
  !c5
  db 22,$17
  !d4
  db 11,$57
  !as4
  db 22,$17
  !d5
  db 11,$57
  !as4
  db 22,$17
  !f5
  db 11,$57
  !as4
  db 22,$17
  !d5
  db 11,$57
  !as4
  db 22,$17
  !e4
  db 11,$57
  !c5
  db 22,$17
  !g5
  db 11,$57
  !c5
  db 22,$17
  !as5
  db 44
  !rest
  !end

.pattern0_4
  !instr,!instr06
  !volume,120
  !pan,12
  db 23,$17
  !a4
  db 11,$57
  !f5
  db 22,$17
  !a5
  db 11,$57
  !f5
  db 22,$17
  !c6
  db 11,$57
  !f5
  db 22,$17
  !a5
  db 11,$57
  !f5
  db 22,$17
  !as4
  db 11,$57
  !g5
  db 22,$17
  !as5
  db 11,$57
  !g5
  db 22,$17
  !c6
  db 11,$57
  !e5
  db 22,$17
  !as5
  db 11,$57
  !e5
  db 22,$17
  !a4
  db 11,$57
  !f5
  db 22,$17
  !a5
  db 11,$57
  !f5
  db 22,$17
  !c6
  db 11,$57
  !f5
  db 22,$17
  !a5
  db 11,$57
  !f5
  db 22,$17
  !as4
  db 11,$57
  !g5
  db 22,$17
  !as5
  db 11,$57
  !g5
  db 22,$17
  !c6
  db 11,$57
  !e5
  db 22,$17
  !as5
  db 11,$57
  !e5
  db 22,$17
  !as4
  db 11,$57
  !f5
  db 22,$17
  !as5
  db 11,$57
  !f5
  db 22,$17
  !cs6
  db 11,$57
  !f5
  db 22,$17
  !as5
  db 11,$57
  !f5
  db 22,$17
  !a4
  db 11,$57
  !f5
  db 22,$17
  !a5
  db 11,$57
  !f5
  db 22,$17
  !c6
  db 11,$57
  !f5
  db 22,$17
  !a5
  db 11,$57
  !f5
  db 22,$17
  !g4
  db 11,$57
  !d5
  db 22,$17
  !f5
  db 11,$57
  !d5
  db 22,$17
  !as5
  db 11,$57
  !d5
  db 22,$17
  !f5
  db 11,$57
  !d5
  db 22,$17
  !g4
  db 11,$57
  !e5
  db 22,$17
  !as5
  db 11,$57
  !e5
  db 22,$17
  !e6
  db 43
  !rest
  !end

.sub4A00
  !pan,10
  !instr,!instr23
  db 22,$74
  !f5
  !pan,12
  !instr,!instr24
  db 11,$70
  !f4
  !pan,10
  db 22,$72
  !f4
  !pan,8
  db 11,$70
  !f4
  !pan,10
  !instr,!instr27
  db 22,$74
  !a5
  !pan,12
  !instr,!instr24
  db 11,$70
  !f4
  !pan,10
  db 22,$72
  !f4
  !pan,8
  db 11,$70
  !f5
  !instr,!instr24
  !pan,10
  db 22,$72
  !f4
  !instr,!instr23
  db 11,$74
  !f5
  !pan,10
  !instr,!instr24
  db 22,$72
  !f4
  !pan,8
  db 11,$70
  !f4
  !pan,10
  !instr,!instr27
  db 22,$74
  !a5
  !pan,12
  !instr,!instr24
  db 11,$70
  !f4
  !pan,10
  !instr,!instr25
  db 22,$75
  !c5
  !instr,!instr24
  !pan,8
  db 11,$70
  !f4
  !pan,10
  !instr,!instr23
  db 22,$74
  !f5
  !pan,12
  !instr,!instr24
  db 11,$70
  !f4
  !pan,10
  db 22,$72
  !f4
  !pan,8
  db 11,$70
  !f4
  !pan,10
  !instr,!instr27
  db 22,$74
  !a5
  !pan,12
  !instr,!instr24
  db 11,$70
  !f4
  !pan,10
  db 22,$72
  !f4
  !pan,8
  db 11,$70
  !f5
  !end

.sub4A95
  db 22,$17
  !f4
  db 11,$57
  !c5
  db 22,$17
  !f5
  db 11,$57
  !c5
  db 22,$17
  !a5
  db 11,$57
  !c5
  db 22,$17
  !f5
  db 11,$57
  !c5
  db 22,$17
  !g4
  db 11,$57
  !d5
  db 22,$17
  !g5
  db 11,$57
  !d5
  db 22,$17
  !g5
  db 11,$57
  !c5
  db 22,$17
  !g5
  db 11,$57
  !c5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
