asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr05 = $18
!instr06 = $19
!instr08 = $1A
!instr1B = $1B
!instr1C = $1C
!instr23 = $1D
!instr24 = $1E
!instr27 = $1F
!instr29 = $20
!instr2A = $21
!instr2B = $22

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr05,$EA,$54,$B8,$03,$00
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr08,$EA,$54,$B8,$04,$00
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr29,$FF,$E0,$B8,$03,$C0
  db !instr2A,$FF,$EE,$B8,$11,$F0
  db !instr2B,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample05_06,Sample05_06+216
  dw Sample05_06,Sample05_06+216
  dw Sample07_08_09,Sample07_08_09+360
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample26_27,Sample26_27+1683
  dw Sample28_29,Sample28_29+27
  dw Sample2A,Sample2A+1665
  dw Sample2B,Sample2B+1620
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample07_08_09: incbin "Sample_38e63eed215c29c5a4534a9767604a6d.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28_29: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample2A: incbin "Sample_5d678d769e05ac18d8061931d0f4f795.brr"
  Sample2B: incbin "Sample_0724cc9b961c011b7ae6e0a4b08230d8.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw $00C8,-

.pattern0: dw .pattern0_0, 0, 0, 0, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern1_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr24
  !musicVolume,255
  !tempo,46
  !echo,%00011100,34,34
  !echoParameters,4,206,0
  !instr,!instr27
  db 8,$70
  !f5
  db 7
  !f5
  !end

.pattern0_4
  !vibrato,0,30,20
  !transpose,12
  !instr,!instr1B
  !volume,175
  db 5,$68
  !g5
  !a5
  !b5
  !end

.pattern1_0
  !loop : dw .sub4DB9 : db 1
  !loop : dw .sub4E77 : db 1
  !pan,10
  !instr,!instr23
  db 9,$77
  !f5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  db 5,$73
  %percNote(!instr24-!instr24)
  db 5,$72
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  db 8,$75
  !f5
  db 8,$71
  !f5
  !instr,!instr23
  db 7,$77
  !f5
  !instr,!instr27
  db 17
  !f5
  db 15
  !f5
  db 9
  !f5
  db 8,$72
  !f5
  db 8,$73
  !f5
  db 7
  !f5
  !end

.pattern1_1
  !loop : dw .sub4F66 : db 1
  db 17,$57
  !d3
  db 8,$67
  !a3
  db 7
  !f3
  db 17,$57
  !g3
  db 8,$67
  !d4
  db 7
  !g3
  db 17,$28
  !c3
  db 15
  !c3
  db 9,$78
  !c3
  !instr,!instr27
  !pan,10
  db 8
  !d5
  !pan,12
  !d5
  !pan,8
  db 7
  !d5
  !end

.pattern1_2
  !loop : dw .sub504E : db 1
  !end

.pattern1_3
  !transpose,0
  !endVibrato
  !instr,!instr06
  !volume,125
  !pan,12
  db 9,$47
  !e6
  !pan,8
  db 8
  !g6
  !pan,12
  !e6
  !pan,8
  db 7
  !g6
  !pan,12
  db 9
  !e6
  !pan,8
  db 8
  !g6
  !pan,12
  !e6
  !pan,8
  db 7
  !g6
  !pan,12
  db 9
  !g6
  !pan,8
  db 8
  !c7
  !pan,12
  !g6
  !pan,8
  db 7
  !c7
  !pan,12
  db 9
  !g6
  !pan,8
  db 8
  !c7
  !pan,12
  !g6
  !pan,8
  db 7
  !c7
  !loop : dw .sub5137 : db 1
  !pan,12
  db 9
  !a6
  !pan,8
  db 8
  !d7
  !pan,12
  !c7
  !pan,8
  db 7
  !d7
  !pan,12
  db 9
  !a6
  !pan,8
  db 8
  !d7
  !pan,12
  !c7
  !pan,8
  db 7
  !d7
  !pan,12
  db 9
  !b6
  db 8
  !rest
  !pan,10
  db 4,$7B
  !fs7
  db 11,$1B
  !g7
  !pan,0
  db 32,$27
  !g6
  !loop : dw .sub51B0 : db 1
  !pan,12
  db 9
  !a6
  !pan,8
  db 8
  !d7
  !pan,12
  !c7
  !pan,8
  db 7
  !d7
  !pan,12
  db 9
  !g6
  !pan,8
  db 8
  !b6
  !pan,12
  !g6
  !pan,8
  db 7
  !b6
  !pan,12
  db 17,$17
  !g6
  db 15
  !c7
  db 17
  !g6
  !volume,138
  !instr,!instr01
  !pan,9
  !vibrato,0,20,20
  db 5,$78
  !g5
  !c6
  !e6
  !end

.pattern1_4
  !vibrato,0,30,20
  !transpose,12
  !instr,!instr1B
  !volume,175
  db 17,$17
  !c6
  db 15
  !e6
  db 17
  !c6
  db 5,$68
  !g5
  !c6
  !e6
  db 17,$17
  !g6
  db 15
  !g6
  db 17
  !e6
  db 15
  !g6
  !loop : dw .sub5266 : db 1
  db 17
  !f6
  db 5,$68
  !f6
  !f6
  !f6
  db 9,$57
  !e6
  db 8
  !f6
  !e6
  db 7
  !d6
  db 17,$17
  !c6
  db 15
  !e6
  db 17
  !c6
  !instr,!instr01
  !transpose,0
  !volume,147
  db 5,$78
  !c6
  !e6
  !g6
  !end

.pattern2_0
  !loop : dw .sub4DB9 : db 1
  !loop : dw .sub52E5 : db 2
  !pan,10
  !instr,!instr23
  db 9,$77
  !f5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  db 5,$73
  %percNote(!instr24-!instr24)
  db 5,$72
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  db 8,$75
  !f5
  db 8,$72
  !f5
  !instr,!instr23
  db 7,$75
  !f5
  !instr,!instr27
  db 17,$77
  !f5
  db 15
  !f5
  db 9
  !f5
  db 8,$72
  !f5
  db 8,$76
  !f5
  db 7,$72
  !f5
  !end

.pattern2_1
  !instr,!instr2A
  !volume,225
  !pan,10
  !loop : dw .sub5363 : db 1
  db 17,$57
  !g3
  db 8
  !g3
  db 7,$66
  !d4
  db 17,$57
  !g3
  db 8,$63
  !g4
  db 7,$66
  !d4
  db 17,$57
  !g3
  db 15
  !rest
  !instr,!instr27
  !pan,10
  db 9,$77
  !d5
  db 8
  !d5
  !pan,12
  !d5
  !pan,8
  db 7
  !d5
  !end

.pattern2_2
  db 32
  !rest
  !instr,!instr03
  !volume,120
  !pan,8
  db 32,$77
  !f6
  !pan,12
  !c7
  !pan,8
  !f7
  !rest
  !pan,12
  !e6
  !pan,8
  !c7
  !pan,12
  !e7
  !rest
  !pan,8
  !f6
  !pan,12
  !b6
  !pan,8
  !d7
  !pan,12
  db 32,$78
  !e7
  !pan,8
  db 32,$77
  !c7
  !pan,6
  !dynamicPan,60,14
  !instr,!instr1C
  !volume,133
  db 9,$78
  !e6
  db 8
  !as5
  !e6
  db 7,$77
  !g6
  db 9,$78
  !as6
  db 8
  !g6
  db 8,$77
  !as6
  db 7
  !d7
  db 32
  !f7
  !pitchSlide,15,17 : !g6
  !instr,!instr05
  !vibrato,0,10,40
  !volume,193
  !pan,8
  db 32,$78
  !f6
  !pan,12
  db 32,$77
  !c7
  !pan,8
  !f7
  db 32,$08
  !tie
  !pan,12
  db 32,$77
  !e6
  !pan,8
  !c7
  !pan,12
  !e7
  !loop : dw .sub5457 : db 1
  !end

.pattern2_3
  !loop : dw .sub54D5 : db 1
  db 17,$27
  !a5
  db 8,$57
  !a5
  db 7
  !c6
  db 17,$27
  !d6
  db 8,$57
  !d6
  db 7
  !e6
  db 17,$27
  !f6
  db 8,$57
  !f6
  db 7
  !g6
  db 17,$27
  !a6
  db 8,$57
  !a6
  db 7
  !b6
  db 17,$27
  !c7
  db 8,$57
  !c7
  db 7
  !d7
  db 17,$27
  !c7
  db 8,$57
  !d7
  db 7,$67
  !c7
  db 17
  !b6
  db 47
  !rest
  !end

.pattern2_4
  !vibrato,0,20,30
  !loop : dw .sub5550 : db 1
  db 17,$27
  !d6
  db 8,$57
  !d6
  db 7
  !e6
  db 17,$27
  !f6
  db 8,$57
  !f6
  db 7
  !g6
  db 17,$27
  !a6
  db 8,$57
  !a6
  db 7
  !b6
  db 17,$27
  !c7
  db 8,$57
  !c7
  db 7
  !d7
  db 17,$27
  !e7
  db 8,$57
  !e7
  db 7
  !f7
  db 17,$27
  !e7
  db 8,$57
  !f7
  db 7,$67
  !e7
  db 17
  !d7
  db 32
  !rest
  !endVibrato
  !transpose,12
  !instr,!instr29
  !subtranspose,58
  !volume,170
  db 5,$64
  !g5
  db 5,$65
  !a5
  db 5,$66
  !b5
  !end

.pattern3_0
  !loop : dw .sub4DB9 : db 1
  !loop : dw .sub4E77 : db 1
  !pan,10
  !instr,!instr23
  db 9,$77
  !f5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  db 5,$73
  %percNote(!instr24-!instr24)
  db 5,$71
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  db 8,$75
  !f5
  db 8,$71
  !f5
  !instr,!instr23
  db 7,$77
  !f5
  !instr,!instr27
  db 17
  !f5
  db 15
  !f5
  db 9
  !f5
  db 8,$72
  !f5
  db 8,$73
  !f5
  db 7
  !f5
  !end

.pattern3_1
  !loop : dw .sub4F66 : db 1
  db 17,$57
  !d3
  db 8,$67
  !a3
  db 7
  !f3
  db 17,$57
  !g3
  db 8,$66
  !d4
  db 7,$67
  !g3
  db 17,$28
  !c3
  db 15
  !c3
  db 17
  !c3
  db 15
  !rest
  !end

.pattern3_3
  !endVibrato
  !instr,!instr29
  !subtranspose,58
  !volume,120
  !pan,12
  db 9,$47
  !e6
  !pan,8
  db 8
  !g6
  !pan,12
  !e6
  !pan,8
  db 7
  !g6
  !pan,12
  db 9
  !e6
  !pan,8
  db 8
  !g6
  !pan,12
  !e6
  !pan,8
  db 7
  !g6
  !pan,12
  db 9
  !g6
  !pan,8
  db 8
  !c7
  !pan,12
  !g6
  !pan,8
  db 7
  !c7
  !pan,12
  db 9
  !g6
  !pan,8
  db 8
  !c7
  !pan,12
  !g6
  !pan,8
  db 7
  !c7
  !loop : dw .sub5137 : db 1
  !pan,12
  db 9
  !a6
  !pan,8
  db 8
  !d7
  !pan,12
  !c7
  !pan,8
  db 7
  !d7
  !pan,12
  db 9
  !a6
  !pan,8
  db 8
  !d7
  !pan,12
  !c7
  !pan,8
  db 7
  !d7
  !pan,12
  db 9
  !b6
  db 8
  !rest
  !pan,10
  !instr,!instr06
  !volume,124
  !subtranspose,0
  db 4,$7B
  !fs7
  db 11,$1B
  !g7
  !pan,0
  db 32,$26
  !g6
  !instr,!instr29
  !volume,124
  !subtranspose,58
  !loop : dw .sub51B0 : db 1
  !pan,12
  db 9
  !a6
  !pan,8
  db 8
  !d7
  !pan,12
  !c7
  !pan,8
  db 7
  !d7
  !pan,12
  db 9
  !g6
  !pan,8
  db 8
  !b6
  !pan,12
  !g6
  !pan,8
  db 7
  !b6
  !pan,12
  db 17,$17
  !g6
  db 15
  !c7
  db 17
  !g6
  !subtranspose,0
  !volume,139
  !instr,!instr1B
  !transpose,12
  !pan,9
  !vibrato,0,14,10
  db 5,$78
  !g5
  !c6
  !e6
  !end

.pattern3_4
  !endVibrato
  !transpose,12
  !instr,!instr29
  !subtranspose,58
  !volume,170
  db 17,$17
  !c6
  db 15
  !e6
  db 17
  !c6
  db 5,$68
  !g5
  !c6
  !e6
  db 17,$17
  !g6
  db 15
  !g6
  db 17
  !e6
  db 15
  !g6
  !loop : dw .sub5266 : db 1
  db 17
  !f6
  db 5,$68
  !f6
  !f6
  !f6
  db 9,$57
  !e6
  db 8
  !f6
  !e6
  db 7
  !d6
  db 17,$17
  !c6
  db 15
  !e6
  db 17
  !c6
  !instr,!instr1B
  !subtranspose,0
  !transpose,12
  !volume,149
  db 5,$78
  !c6
  !e6
  !g6
  !end

.pattern4_0
  !loop : dw .sub4DB9 : db 1
  !loop : dw .sub52E5 : db 2
  !pan,10
  !instr,!instr23
  db 9,$77
  !f5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  db 5,$73
  %percNote(!instr24-!instr24)
  db 5,$72
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  db 8,$75
  !f5
  db 8,$72
  !f5
  !instr,!instr23
  db 7,$75
  !f5
  !instr,!instr27
  db 6,$79
  !f5
  db 6,$73
  !f5
  !f5
  db 6,$72
  !f5
  db 6,$79
  !f5
  db 6,$73
  !f5
  db 5
  !f5
  db 8,$71
  !f5
  db 8,$78
  !f5
  db 7,$79
  !f5
  !end

.pattern4_1
  !loop : dw .sub5363 : db 1
  db 17,$57
  !g3
  db 8
  !g3
  db 7,$66
  !d4
  db 17,$57
  !g3
  db 8,$63
  !g4
  db 7,$66
  !d4
  db 17,$59
  !g2
  db 24
  !rest
  !pan,10
  !instr,!instr27
  db 8,$78
  !d5
  !pan,12
  !d5
  !pan,8
  db 7
  !d5
  !end

.pattern4_2
  db 32
  !rest
  !instr,!instr1C
  !volume,120
  !vibrato,0,40,70
  !pan,8
  db 32,$77
  !f5
  !pan,12
  !c6
  !pan,8
  !f6
  !rest
  !pan,12
  !e5
  !pan,8
  !c6
  !pan,12
  !e6
  !rest
  !pan,8
  !f5
  !pan,12
  !b5
  !pan,8
  !d6
  !pan,12
  !g6
  !pan,8
  !e6
  !pan,6
  !dynamicPan,60,14
  !instr,!instr08
  !volume,216
  !vibrato,0,25,25
  db 9,$78
  !e6
  db 8
  !as5
  !e6
  db 7,$77
  !g6
  db 9,$78
  !as6
  db 8
  !g6
  db 8,$77
  !as6
  db 7
  !d7
  db 32
  !f7
  !pitchSlide,15,17 : !g6
  !instr,!instr03
  !volume,129
  !pan,10
  db 12,$79
  !f5
  !pan,0
  db 10,$72
  !f5
  !pan,20
  !f5
  !pan,10
  db 12,$79
  !c6
  !pan,0
  db 10,$72
  !c6
  !pan,20
  !c6
  !pan,10
  db 12,$79
  !f6
  !pan,0
  db 10,$72
  !f6
  !pan,20
  !f6
  !pan,10
  db 12,$79
  !g6
  !pan,0
  db 10,$72
  !g6
  !pan,20
  !g6
  !pan,10
  db 12,$79
  !e6
  !pan,0
  db 10,$72
  !e6
  !pan,20
  !e6
  !pan,10
  db 12,$79
  !c6
  !pan,0
  db 10,$72
  !c6
  !pan,20
  !c6
  !pan,10
  db 12,$79
  !g5
  !pan,0
  db 10,$72
  !g5
  !pan,20
  !g5
  !loop : dw .sub5457 : db 1
  !end

.pattern4_3
  !loop : dw .sub54D5 : db 1
  !transpose,0
  !instr,!instr2B
  !volume,155
  db 17,$27
  !a5
  db 8,$57
  !a5
  db 7
  !c6
  db 17,$27
  !d6
  db 8,$57
  !d6
  db 7
  !e6
  db 17,$27
  !f6
  db 8,$57
  !f6
  db 7
  !g6
  db 17,$27
  !a6
  db 8,$57
  !a6
  db 7
  !b6
  db 17,$27
  !c7
  db 8,$57
  !c7
  db 7
  !d7
  db 17,$27
  !c7
  db 8,$57
  !d7
  db 7,$67
  !c7
  db 17
  !b6
  db 47
  !rest
  !end

.pattern4_4
  !vibrato,0,14,10
  !loop : dw .sub5550 : db 1
  !transpose,0
  !instr,!instr2B
  !volume,160
  db 17,$27
  !d6
  db 8,$57
  !d6
  db 7
  !e6
  db 17,$27
  !f6
  db 8,$57
  !f6
  db 7
  !g6
  db 17,$27
  !a6
  db 8,$57
  !a6
  db 7
  !b6
  db 17,$27
  !c7
  db 8,$57
  !c7
  db 7
  !d7
  db 17,$27
  !e7
  db 8,$57
  !e7
  db 7
  !f7
  db 17,$27
  !e7
  db 8,$57
  !f7
  db 7,$67
  !e7
  db 17
  !d7
  db 32
  !rest
  !vibrato,0,30,20
  !transpose,12
  !instr,!instr1B
  !volume,166
  db 5,$64
  !g5
  db 5,$65
  !a5
  db 5,$67
  !b5
  !end

.sub4DB9
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 5,$72
  %percNote(!instr24-!instr24)
  db 5,$71
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr24)
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr24)
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 17,$77
  !f5
  db 8,$70
  !e5
  db 7,$74
  !e5
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 5,$72
  %percNote(!instr24-!instr24)
  db 5,$71
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr24)
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !end

.sub4E77
  !pan,10
  !instr,!instr23
  db 9,$77
  !f5
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr24)
  db 5,$73
  %percNote(!instr24-!instr24)
  db 5,$72
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  db 8,$72
  !f5
  db 8,$70
  !f5
  !instr,!instr23
  db 7,$77
  !f5
  !instr,!instr27
  db 32
  !f5
  db 17,$70
  !f5
  db 8
  !f5
  db 7,$73
  !f5
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 5,$72
  %percNote(!instr24-!instr24)
  db 5,$71
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr24)
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr24)
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 17,$77
  !f5
  db 8,$70
  !e5
  db 7,$74
  !e5
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 5,$72
  %percNote(!instr24-!instr24)
  db 5,$71
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr24)
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !end

.sub4F66
  !instr,!instr2A
  !volume,225
  !pan,10
  db 17,$58
  !c3
  db 8,$67
  !c4
  db 7
  !g3
  db 17,$58
  !c3
  db 8,$67
  !g3
  db 7
  !e3
  db 17,$58
  !c3
  db 8,$65
  !e4
  db 7,$66
  !d4
  db 17,$57
  !c4
  db 8,$67
  !g3
  db 7
  !c4
  db 17,$57
  !f3
  db 8,$67
  !f3
  db 7,$68
  !c3
  db 17,$57
  !f3
  db 8,$67
  !a3
  db 7
  !f3
  db 17,$58
  !c3
  db 8,$68
  !c3
  db 7,$67
  !g3
  db 17,$58
  !c3
  db 8,$67
  !cs3
  db 7
  !e3
  db 17,$57
  !f3
  db 8,$67
  !f3
  db 7,$68
  !c3
  db 17,$57
  !f3
  db 8,$67
  !a3
  db 7
  !f3
  db 17,$58
  !c3
  db 8,$67
  !g3
  db 7
  !e3
  db 17,$58
  !c3
  db 8,$64
  !c4
  db 7,$68
  !c3
  db 17,$57
  !d3
  db 8,$67
  !a3
  db 7
  !f3
  db 17,$57
  !d3
  db 8,$66
  !d4
  db 7,$67
  !d3
  db 17,$27
  !g3
  db 47
  !rest
  db 17,$58
  !c3
  db 8,$67
  !c4
  db 7
  !g3
  db 17,$58
  !c3
  db 8,$67
  !g3
  db 7
  !e3
  db 17,$58
  !c3
  db 8,$65
  !e4
  db 7,$66
  !d4
  db 17,$57
  !c4
  db 8,$67
  !g3
  db 7
  !c4
  db 17,$57
  !f3
  db 8,$67
  !f3
  db 7,$68
  !c3
  db 17,$57
  !f3
  db 8,$67
  !a3
  db 7
  !f3
  db 17,$58
  !c3
  db 8,$68
  !c3
  db 7,$67
  !c3
  db 17,$58
  !cs3
  db 8,$67
  !e3
  db 7
  !e3
  db 17,$57
  !f3
  db 8,$64
  !f4
  db 7,$67
  !f3
  db 17,$57
  !f3
  db 8,$64
  !f4
  db 7,$67
  !f3
  db 17,$58
  !c3
  db 8,$67
  !g3
  db 7
  !e3
  db 17,$58
  !c3
  db 8,$64
  !c4
  db 7,$68
  !c3
  !end

.sub504E
  !subtranspose,0
  !endVibrato
  !instr,!instr03
  !pan,8
  !volume,140
  db 9,$77
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !f5
  db 8
  !a5
  !c6
  db 7
  !f6
  db 9
  !f5
  db 8
  !a5
  !c6
  db 7
  !f6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !e5
  db 8
  !g5
  !g5
  db 7
  !as5
  db 9
  !f5
  db 8
  !a5
  !c6
  db 7
  !f6
  db 9
  !f5
  db 8
  !a5
  !c6
  db 7
  !f6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !f5
  db 8
  !a5
  !c6
  db 7
  !f6
  db 9
  !f5
  db 8
  !a5
  !c6
  db 7
  !f6
  db 9
  !d6
  db 8
  !rest
  !pan,10
  db 15,$19
  !g7
  !pan,20
  db 32,$28
  !g6
  !pan,8
  db 9,$77
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !f5
  db 8
  !a5
  !c6
  db 7
  !f6
  db 9
  !f5
  db 8
  !a5
  !c6
  db 7
  !f6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !e5
  db 8
  !g5
  !as5
  db 7
  !g5
  db 9
  !f5
  db 8
  !a5
  !c6
  db 7
  !f6
  db 9
  !f5
  db 8
  !a5
  !c6
  db 7
  !f6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !e5
  db 8
  !g5
  !c6
  db 7
  !e6
  db 9
  !f5
  db 8
  !a5
  !c6
  db 7
  !f6
  db 9
  !b5
  db 8
  !d6
  !d6
  db 7
  !f6
  db 17,$17
  !e6
  db 15
  !g6
  db 17
  !e6
  db 15
  !rest
  !end

.sub5137
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !f7
  !pan,12
  !c7
  !pan,8
  db 7
  !f7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !f7
  !pan,12
  !c7
  !pan,8
  db 7
  !f7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !e7
  !pan,12
  !g6
  !pan,8
  db 7
  !c7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !e7
  !pan,12
  !as6
  !pan,8
  db 7
  !cs7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !f7
  !pan,12
  !c7
  !pan,8
  db 7
  !f7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !f7
  !pan,12
  !c7
  !pan,8
  db 7
  !f7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !e7
  !pan,12
  !c7
  !pan,8
  db 7
  !e7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !e7
  !pan,12
  !c7
  !pan,8
  db 7
  !e7
  !end

.sub51B0
  !pan,12
  db 9,$47
  !e6
  !pan,8
  db 8
  !g6
  !pan,12
  !e6
  !pan,8
  db 7
  !g6
  !pan,12
  db 9
  !e6
  !pan,8
  db 8
  !g6
  !pan,12
  !e6
  !pan,8
  db 7
  !g6
  !pan,12
  db 9
  !g6
  !pan,8
  db 8
  !c7
  !pan,12
  !g6
  !pan,8
  db 7
  !c7
  !pan,12
  db 9
  !g6
  !pan,8
  db 8
  !c7
  !pan,12
  !g6
  !pan,8
  db 7
  !c7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !f7
  !pan,12
  !c7
  !pan,8
  db 7
  !f7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !f7
  !pan,12
  !c7
  !pan,8
  db 7
  !f7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !e7
  !pan,12
  !g6
  !pan,8
  db 7
  !c7
  !pan,12
  db 9
  !as6
  !pan,8
  db 8
  !cs7
  !pan,12
  !e7
  !pan,8
  db 7
  !cs7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !f7
  !pan,12
  !c7
  !pan,8
  db 7
  !f7
  !pan,12
  db 9
  !ds7
  !pan,8
  db 8
  !f7
  !pan,12
  !ds7
  !pan,8
  db 7
  !f7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !e7
  !pan,12
  !c7
  !pan,8
  db 7
  !e7
  !pan,12
  db 9
  !c7
  !pan,8
  db 8
  !e7
  !pan,12
  !c7
  !pan,8
  db 7
  !e7
  !end

.sub5266
  db 17
  !c7
  db 15
  !c7
  db 17
  !b6
  db 15
  !a6
  db 17
  !g6
  db 15
  !e6
  db 17
  !g6
  db 5,$68
  !g6
  !g6
  !g6
  db 17,$17
  !a6
  db 15
  !a6
  db 17
  !a6
  db 15
  !c7
  db 17
  !g6
  db 5,$68
  !g6
  !g6
  !g6
  db 17,$17
  !g6
  db 15
  !c7
  db 17
  !f6
  db 5,$68
  !f6
  !f6
  !f6
  db 17,$17
  !f6
  db 15
  !a6
  db 17
  !g6
  db 32
  !rest
  db 5,$68
  !g5
  !a5
  !b5
  db 17,$17
  !c6
  db 15
  !e6
  db 17
  !c6
  db 5,$68
  !g5
  !c6
  !e6
  db 17,$17
  !g6
  db 15
  !g6
  db 17
  !e6
  db 15
  !g6
  db 17
  !c7
  db 15
  !c7
  db 17
  !b6
  db 15
  !a6
  db 17
  !g6
  db 15
  !e6
  db 17
  !g6
  db 5,$68
  !g6
  !g6
  !g6
  db 17,$17
  !a6
  db 5,$68
  !a6
  !a6
  !a6
  db 17,$17
  !a6
  db 15
  !c7
  db 17
  !g6
  db 5,$68
  !g6
  !g6
  !g6
  db 17,$17
  !g6
  db 15
  !c7
  !end

.sub52E5
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr24)
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 17,$77
  !f5
  db 8,$70
  !e5
  db 7,$74
  !e5
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 17,$77
  !f5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr23
  db 17,$77
  !f5
  !pan,12
  db 5,$72
  %percNote(!instr24-!instr24)
  db 5,$71
  %percNote(!instr24-!instr24)
  %percNote(!instr24-!instr24)
  !pan,10
  !instr,!instr27
  db 9,$77
  !f5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr24)
  db 8,$73
  %percNote(!instr24-!instr24)
  db 7,$72
  %percNote(!instr24-!instr24)
  !end

.sub5363
  db 17,$57
  !f3
  db 8,$67
  !f3
  db 7
  !c4
  db 17,$57
  !f3
  db 8,$67
  !c4
  db 7
  !f3
  db 17,$57
  !f3
  db 8,$64
  !f4
  db 7,$67
  !c4
  db 17,$57
  !f3
  db 8,$67
  !c4
  db 7
  !f3
  db 17,$58
  !c3
  db 8,$67
  !g3
  db 7,$68
  !c3
  db 17,$58
  !c3
  db 8,$67
  !c4
  db 7,$68
  !c3
  db 17,$58
  !c3
  db 8,$67
  !g3
  db 7,$68
  !c3
  db 17,$58
  !c3
  db 8,$67
  !c4
  db 7,$68
  !c3
  db 17,$57
  !g3
  db 8,$67
  !g3
  db 7,$66
  !d4
  db 17,$57
  !g3
  db 8,$66
  !d4
  db 7,$67
  !g3
  db 17,$57
  !g3
  db 8,$67
  !g3
  db 7
  !f3
  db 17,$57
  !g3
  db 8,$67
  !f3
  db 7
  !g3
  db 17,$58
  !c3
  db 8,$67
  !g3
  db 7,$68
  !c3
  db 17,$58
  !c3
  db 8,$67
  !c4
  db 7,$68
  !c3
  db 17,$58
  !c3
  db 8,$67
  !g3
  db 7,$68
  !c3
  db 17,$58
  !c3
  db 8,$67
  !c4
  db 7,$68
  !c3
  db 17,$57
  !f3
  db 8,$67
  !c4
  db 7
  !f3
  db 17,$57
  !f3
  db 8,$64
  !f4
  db 7,$67
  !c4
  db 17,$57
  !f3
  db 8,$67
  !f3
  db 7
  !c4
  db 17,$57
  !f3
  db 8,$64
  !f4
  db 7,$67
  !f3
  db 17,$58
  !c3
  db 8,$68
  !c3
  db 7,$67
  !g3
  db 17,$58
  !c3
  db 8,$67
  !c4
  db 7,$68
  !c3
  db 17,$58
  !c3
  db 8,$68
  !c3
  db 7,$67
  !g3
  db 17,$58
  !c3
  db 8,$67
  !c4
  db 7,$68
  !c3
  db 17,$57
  !d3
  db 8,$66
  !d4
  db 7,$67
  !d3
  db 17,$57
  !d3
  db 8,$66
  !d4
  db 7,$67
  !a3
  db 17,$57
  !d3
  db 8,$67
  !c4
  db 7
  !a3
  db 17,$57
  !d3
  db 8,$67
  !c4
  db 7
  !d3
  !end

.sub5457
  !instr,!instr29
  !volume,133
  !subtranspose,58
  !vibrato,0,30,30
  !pan,11
  db 9,$78
  !d5
  !pan,9
  db 8,$77
  !a5
  !pan,11
  !f5
  !pan,9
  db 7
  !a5
  !pan,11
  db 9,$78
  !d5
  !pan,9
  db 8,$77
  !a5
  !pan,11
  !f5
  !pan,9
  db 7
  !a5
  !pan,11
  db 9,$78
  !f5
  !pan,9
  db 8,$77
  !d6
  !pan,11
  !a5
  !pan,9
  db 7
  !d6
  !pan,11
  db 9,$78
  !f5
  !pan,9
  db 8,$77
  !d6
  !pan,11
  !a5
  !pan,9
  db 7
  !d6
  !pan,11
  db 9,$78
  !a5
  !pan,9
  db 8,$76
  !f6
  !pan,11
  db 8,$77
  !d6
  !pan,9
  db 7,$76
  !f6
  !pan,11
  db 9,$77
  !d6
  !pan,9
  db 8,$76
  !a6
  !pan,11
  db 8,$77
  !f6
  !pan,9
  db 7,$76
  !a6
  !pan,10
  db 17,$65
  !g6
  db 47
  !rest
  !end

.sub54D5
  db 17,$27
  !f6
  db 8,$57
  !f6
  db 7
  !g6
  db 17,$27
  !f6
  db 8,$57
  !f6
  db 7
  !g6
  db 17,$27
  !a6
  db 32,$57
  !a6
  db 15,$27
  !a6
  db 17
  !e6
  db 8,$57
  !e6
  db 7
  !f6
  db 17,$27
  !e6
  db 15
  !g6
  db 64,$57
  !e6
  db 17,$27
  !b5
  db 8,$57
  !b5
  db 7
  !c6
  db 17,$27
  !b5
  db 8,$57
  !b5
  db 7
  !c6
  db 17,$27
  !d6
  db 32,$57
  !f6
  db 15,$27
  !f6
  db 17
  !e6
  db 8,$57
  !e6
  db 7
  !f6
  db 17,$27
  !e6
  db 15
  !g6
  db 64,$57
  !e6
  db 17,$27
  !f6
  db 8,$57
  !f6
  db 7
  !g6
  db 17,$27
  !f6
  db 8,$57
  !f6
  db 7
  !g6
  db 17,$27
  !a6
  db 32,$57
  !a6
  db 8,$27
  !a6
  db 7
  !a6
  db 17
  !c7
  db 8,$57
  !g6
  db 7
  !g6
  db 17,$27
  !e6
  db 15
  !f6
  db 64,$57
  !e6
  !end

.sub5550
  db 17,$27
  !a6
  db 8,$57
  !a6
  db 7
  !b6
  db 17,$27
  !a6
  db 8,$57
  !a6
  db 7
  !b6
  db 17,$27
  !c7
  db 32,$57
  !d7
  db 15,$27
  !c7
  db 17
  !g6
  db 8,$57
  !g6
  db 7
  !a6
  db 17,$27
  !g6
  db 15
  !c7
  db 64,$57
  !g6
  db 17,$27
  !d6
  db 8,$57
  !d6
  db 7
  !e6
  db 17,$27
  !d6
  db 8,$57
  !d6
  db 7
  !e6
  db 17,$27
  !f6
  db 32,$57
  !b6
  db 15,$27
  !a6
  db 17
  !g6
  db 8,$57
  !g6
  db 7
  !a6
  db 17,$27
  !g6
  db 15
  !c7
  db 64,$57
  !g6
  db 17,$27
  !a6
  db 8,$57
  !a6
  db 7
  !b6
  db 17,$27
  !a6
  db 8,$57
  !a6
  db 7
  !b6
  db 17,$27
  !c7
  db 32,$57
  !d7
  db 8
  !c7
  db 7
  !d7
  db 17,$27
  !e7
  db 8,$57
  !d7
  db 7
  !c7
  db 17,$27
  !g6
  db 15
  !a6
  db 64,$57
  !g6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
