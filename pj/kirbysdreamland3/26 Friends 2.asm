asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr06 = $16
!instr08 = $17
!instr21 = $18
!instr23 = $19
!instr24 = $1A
!instr25 = $1B
!instr27 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr08,$EA,$54,$B8,$04,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05_06,Sample05_06+216
  dw Sample07_08_09,Sample07_08_09+360
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample07_08_09: incbin "Sample_38e63eed215c29c5a4534a9767604a6d.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
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
  !percBase,!instr24
  !echo,%00011100,45,45
  !echoParameters,4,65,0
  !musicVolume,255
  !tempo,46
  !volume,215
  !loop : dw .sub4979 : db 3
  !pan,10
  !instr,!instr23
  db 13,$75
  !e5
  !pan,12
  db 12,$72
  %percNote(!instr24-!instr24)
  !pan,10
  db 13,$73
  %percNote(!instr24-!instr24)
  !pan,8
  db 12,$72
  %percNote(!instr24-!instr24)
  !pan,10
  db 13,$77
  %percNote(!instr27-!instr24)
  !pan,12
  db 12,$72
  %percNote(!instr24-!instr24)
  !pan,8
  db 13
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 25,$75
  !e5
  db 12
  !e5
  !pan,12
  db 13,$71
  %percNote(!instr24-!instr24)
  !pan,8
  db 12,$70
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr25
  db 25,$77
  !g4
  !pan,10
  db 13,$73
  %percNote(!instr27-!instr24)
  db 12,$75
  %percNote(!instr27-!instr24)
  !end

.pattern0_1
  !instr,!instr21
  !pan,10
  !volume,155
  db 38,$37
  !g3
  db 12,$58
  !g2
  db 38,$38
  !g2
  db 25,$17
  !a3
  !c3
  db 12,$57
  !c3
  db 13,$56
  !a3
  db 12,$57
  !c3
  db 25,$26
  !a3
  db 38,$35
  !b3
  db 12,$57
  !d3
  db 38,$37
  !d3
  db 25,$16
  !a3
  db 25,$17
  !c3
  db 12,$57
  !c3
  db 13,$56
  !a3
  db 12,$57
  !c3
  db 25,$26
  !a3
  db 38,$37
  !g3
  db 12,$58
  !g2
  db 38,$38
  !g2
  db 25,$17
  !a3
  !c3
  db 12,$57
  !c3
  db 13,$56
  !a3
  db 12,$57
  !c3
  db 25,$26
  !a3
  db 38,$45
  !b3
  db 12,$57
  !d3
  db 38,$47
  !d3
  db 25,$16
  !a3
  db 25,$17
  !c3
  db 12,$57
  !c3
  db 13,$56
  !a3
  db 12,$57
  !c3
  db 13,$55
  !b3
  db 12,$56
  !a3
  !end

.pattern0_2
  !instr,!instr06
  !volume,130
  db 38,$77
  !d7
  db 37
  !b6
  db 25
  !d7
  db 38
  !b6
  db 25
  !a6
  db 12
  !e7
  db 13
  !fs7
  db 12
  !g7
  db 38
  !a7
  db 37
  !fs7
  db 25
  !a7
  db 38
  !g7
  db 25
  !e7
  db 12
  !g7
  db 13
  !fs7
  db 12
  !e7
  db 38
  !fs7
  db 37
  !b6
  db 25
  !fs7
  db 13
  !e7
  db 25,$27
  !g7
  db 25,$77
  !g7
  db 12
  !e7
  db 13
  !fs7
  db 12
  !g7
  db 38
  !a7
  db 37
  !fs7
  db 25
  !a7
  db 13
  !g7
  db 25,$27
  !c7
  db 25,$77
  !e7
  db 12
  !c7
  db 13
  !d7
  db 12
  !e7
  !end

.pattern0_3
  !instr,!instr08
  !volume,175
  !pan,12
  db 13,$17
  !d5
  db 12
  !b4
  db 13
  !d5
  db 12
  !b4
  db 13
  !d5
  db 12
  !g4
  db 13
  !g4
  db 12
  !e5
  db 13
  !a4
  db 12
  !e5
  db 13
  !a4
  db 12
  !e5
  db 13
  !e5
  db 12
  !c5
  db 13
  !e5
  db 12
  !c5
  db 13
  !fs5
  db 12
  !d5
  db 13
  !fs5
  db 12
  !d5
  db 13
  !fs5
  db 12
  !b4
  db 13
  !b4
  db 12
  !e5
  db 13
  !c5
  db 12
  !e5
  db 13
  !c5
  db 12
  !e5
  db 13
  !e5
  db 12
  !a4
  db 13
  !e5
  db 12
  !a4
  db 13
  !d5
  db 12
  !b4
  db 13
  !d5
  db 12
  !b4
  db 13
  !d5
  db 12
  !g4
  db 13
  !g4
  db 12
  !e5
  db 13
  !a4
  db 12
  !e5
  db 13
  !a4
  db 12
  !e5
  db 13
  !e5
  db 12
  !c5
  db 13
  !e5
  db 12
  !c5
  db 13
  !fs5
  db 12
  !d5
  db 13
  !fs5
  db 12
  !d5
  db 13
  !fs5
  db 12
  !b4
  db 13
  !b4
  db 12
  !e5
  db 13
  !c5
  db 12
  !e5
  db 13
  !c5
  db 12
  !e5
  db 13
  !e5
  db 12
  !a4
  db 13
  !e5
  db 12
  !a4
  !end

.pattern0_4
  !instr,!instr08
  !volume,175
  !pan,8
  db 13,$17
  !fs5
  db 12
  !d5
  db 13
  !fs5
  db 12
  !d5
  db 13
  !fs5
  db 12
  !b4
  db 13
  !b4
  db 12
  !g5
  db 13
  !c5
  db 12
  !g5
  db 13
  !c5
  db 12
  !g5
  db 13
  !g5
  db 12
  !e5
  db 13
  !g5
  db 12
  !e5
  db 13
  !a5
  db 12
  !fs5
  db 13
  !a5
  db 12
  !fs5
  db 13
  !a5
  db 12
  !d5
  db 13
  !d5
  db 12
  !g5
  db 13
  !e5
  db 12
  !g5
  db 13
  !e5
  db 12
  !g5
  db 13
  !g5
  db 12
  !c5
  db 13
  !g5
  db 12
  !c5
  db 13
  !fs5
  db 12
  !d5
  db 13
  !fs5
  db 12
  !d5
  db 13
  !fs5
  db 12
  !b4
  db 13
  !b4
  db 12
  !g5
  db 13
  !c5
  db 12
  !g5
  db 13
  !c5
  db 12
  !g5
  db 13
  !g5
  db 12
  !e5
  db 13
  !g5
  db 12
  !e5
  db 13
  !a5
  db 12
  !fs5
  db 13
  !a5
  db 12
  !fs5
  db 13
  !a5
  db 12
  !d5
  db 13
  !d5
  db 12
  !g5
  db 13
  !e5
  db 12
  !g5
  db 13
  !e5
  db 12
  !g5
  db 13
  !g5
  db 12
  !c5
  db 13
  !g5
  db 12
  !c5
  !end

.sub4979
  !pan,10
  !instr,!instr23
  db 13,$75
  !e5
  !pan,12
  db 12,$72
  %percNote(!instr24-!instr24)
  !pan,10
  db 13,$73
  %percNote(!instr24-!instr24)
  !pan,8
  db 12,$72
  %percNote(!instr24-!instr24)
  !pan,10
  db 13,$77
  %percNote(!instr27-!instr24)
  !pan,12
  db 12,$72
  %percNote(!instr24-!instr24)
  !pan,8
  db 13
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 25,$75
  !e5
  db 12
  !e5
  !pan,12
  db 13,$71
  %percNote(!instr24-!instr24)
  !pan,8
  db 12,$70
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr25
  db 25,$77
  !g4
  !pan,12
  db 13,$72
  %percNote(!instr24-!instr24)
  !pan,8
  db 12
  %percNote(!instr24-!instr24)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
