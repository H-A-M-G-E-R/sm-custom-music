asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr04 = $17
!instr06 = $18
!instr1B = $19
!instr1C = $1A
!instr1D = $1B
!instr21 = $1C
!instr23 = $1D
!instr24 = $1E
!instr25 = $1F
!instr26 = $20
!instr27 = $21
!instr28 = $22
!instr29 = $23
!instr2A = $24

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr04,$CF,$F5,$B8,$08,$F0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr26,$BF,$D3,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$FF,$B2,$B8,$12,$00
  db !instr29,$FF,$E0,$B8,$04,$80
  db !instr2A,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample04,Sample04+1404
  dw Sample05_06,Sample05_06+216
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample1D,Sample1D+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample26_27,Sample26_27+1683
  dw Sample28,Sample28+1386
  dw Sample29,Sample29+1620
  dw Sample2A,Sample2A+1638
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample04: incbin "Sample_ed5604d5b249b89747c4b04479c95eb2.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28: incbin "Sample_20e2cb70cf7bd1b7d37e41f3f7d57bfb.brr"
  Sample29: incbin "Sample_ce04077ea3405bc500288eaedde7f293.brr"
  Sample2A: incbin "Sample_22f1c3ddac7e136236eac1eb0e82a501.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !musicVolume,255
  !tempo,46
  !echoParameters,4,70,0
  !echo,%00011100,38,38
  !volume,100
  !dynamicVolume,96,255
  !instr,!instr27
  db 8,$78
  !as4
  db 8,$74
  !as4
  db 8,$75
  !as4
  db 8,$74
  !as4
  db 8,$78
  !as4
  db 8,$74
  !as4
  db 8,$75
  !as4
  db 8,$74
  !as4
  db 8,$78
  !as4
  db 8,$74
  !as4
  db 8,$75
  !as4
  db 8,$74
  !as4
  db 8,$78
  !as4
  db 8,$74
  !as4
  db 8,$75
  !as4
  db 8,$74
  !as4
  db 16,$77
  !as4
  db 28
  !as4
  db 4,$72
  !as4
  db 12,$77
  !as4
  db 4,$72
  !as4
  db 16,$77
  !as4
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 12
  !as4
  db 4,$72
  !as4
  db 16,$77
  !as4
  !end

.pattern0_1
  !instr,!instr2A
  !volume,170
  !dynamicVolume,125,230
  !pan,10
  db 64,$78
  !g2
  !tie
  !instr,!instr28
  !volume,255
  db 16,$68
  !g2
  db 32,$17
  !g3
  db 16,$68
  !g2
  db 32,$17
  !g3
  db 16,$68
  !g2
  db 16,$67
  !g3
  !end

.pattern0_2
  !instr,!instr2A
  !volume,170
  !dynamicVolume,125,230
  !pan,8
  !vibrato,32,10,60
  db 64,$77
  !g3
  !tie
  !instr,!instr1D
  !volume,145
  !vibrato,5,20,30
  db 16,$67
  !b4
  db 32,$17
  !a4
  db 16,$67
  !b4
  db 32,$17
  !a4
  db 16,$67
  !b4
  !b4
  !end

.pattern0_3
  !instr,!instr2A
  !volume,170
  !dynamicVolume,125,230
  !pan,12
  !vibrato,32,10,60
  db 64,$77
  !d4
  !tie
  !instr,!instr1D
  !volume,145
  !vibrato,5,20,30
  db 16,$67
  !f5
  db 32,$17
  !d5
  db 16,$67
  !f5
  db 32,$17
  !d5
  db 16,$67
  !f5
  !d5
  !end

.pattern0_4
  !instr,!instr2A
  !volume,170
  !dynamicVolume,125,230
  !pan,10
  !vibrato,32,10,60
  db 64,$77
  !g4
  !tie
  !instr,!instr1D
  !volume,145
  !vibrato,5,20,30
  db 16,$67
  !as5
  db 32,$17
  !g5
  db 16,$67
  !as5
  db 32,$17
  !g5
  db 16,$67
  !as5
  !g5
  !end

.pattern1_0
  !echo,%00011000,38,38
  !pan,10
  !loop : dw .sub521D : db 2
  !end

.pattern1_1
  !transpose,254
  !volume,255
  !loop : dw .sub524E : db 1
  !end

.pattern1_2
  !endVibrato
  !instr,!instr28
  !volume,255
  !pan,10
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$78
  !g2
  db 6,$74
  !g2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$78
  !g2
  db 6,$74
  !g2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$78
  !g2
  db 6,$74
  !g2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !c3
  db 6
  !c3
  db 10
  !c3
  db 6,$72
  !c3
  db 10,$78
  !g2
  db 6,$74
  !g2
  db 10,$77
  !as2
  db 6,$72
  !as2
  !end

.pattern1_3
  db 16
  !rest
  !endVibrato
  !instr,!instr1B
  !volume,155
  !pan,8
  db 8,$57
  !ds6
  !c6
  db 16
  !rest
  db 8
  !ds6
  !c6
  db 16
  !rest
  db 8
  !ds6
  !c6
  db 16
  !rest
  db 8
  !ds6
  !c6
  db 16
  !rest
  db 8
  !ds6
  !c6
  db 16
  !rest
  db 8
  !ds6
  !c6
  db 16
  !rest
  db 8
  !ds6
  !c6
  db 16
  !rest
  db 8
  !ds6
  !c6
  !end

.pattern1_4
  db 16
  !rest
  !endVibrato
  !instr,!instr1B
  !volume,155
  !pan,12
  db 8,$57
  !g6
  !ds6
  db 16
  !rest
  db 8
  !g6
  !ds6
  db 16
  !rest
  db 8
  !g6
  !ds6
  db 16
  !rest
  db 8
  !g6
  !ds6
  db 16
  !rest
  db 8
  !g6
  !ds6
  db 16
  !rest
  db 8
  !g6
  !ds6
  db 16
  !rest
  db 8
  !g6
  !ds6
  db 16
  !rest
  db 8
  !g6
  !ds6
  !end

.pattern2_0
  !echo,%00011000,38,38
  !pan,10
  !loop : dw .sub521D : db 8
  !end

.pattern2_1
  !transpose,254
  !volume,255
  !loop : dw .sub524E : db 1
  !loop : dw .sub52EF : db 3
  !end

.pattern2_2
  !loop : dw .sub538E : db 1
  !end

.pattern2_3
  !transpose,12
  !instr,!instr2A
  !subtranspose,0
  !volume,230
  !vibrato,6,12,30
  !pan,10
  !slideIn,0,6,1
  db 16,$67
  !ds5
  !endSlide
  db 16,$57
  !c5
  !rest
  !instr,!instr06
  !volume,155
  !pan,13
  db 8,$77
  !ds6
  db 8,$72
  !ds6
  !pan,7
  db 8,$76
  !c7
  db 8,$72
  !c7
  !instr,!instr2A
  !volume,230
  !pan,10
  !slideIn,0,8,1
  db 16,$67
  !as4
  !endSlide
  db 16,$27
  !c5
  db 16,$77
  !ds5
  db 16,$67
  !tie
  db 16,$77
  !c5
  db 48
  !rest
  !slideIn,0,8,1
  db 16
  !f5
  !endSlide
  db 16,$57
  !g5
  !rest
  db 8,$67
  !ds5
  !d5
  db 16,$77
  !c5
  !rest
  !instr,!instr06
  !volume,155
  !pan,13
  db 8
  !ds6
  db 8,$72
  !ds6
  !pan,7
  db 8,$76
  !c7
  db 8,$72
  !c7
  !instr,!instr2A
  !volume,230
  !pan,10
  !slideIn,0,9,1
  db 16,$57
  !g4
  !endSlide
  db 16,$27
  !ds5
  db 16,$77
  !c5
  !tie
  db 16,$27
  !as4
  db 32,$67
  !c5
  db 16,$27
  !as4
  db 32,$67
  !c5
  db 16,$37
  !as4
  db 16,$67
  !f5
  !ds5
  !rest
  !instr,!instr06
  !volume,155
  !pan,13
  db 8,$76
  !g6
  db 8,$72
  !g6
  !pan,7
  db 8,$76
  !c7
  db 8,$72
  !c7
  !instr,!instr2A
  !volume,230
  !pan,10
  db 16,$67
  !f5
  !ds5
  !rest
  !slideIn,0,7,1
  !c5
  !endSlide
  db 32,$17
  !ds5
  db 16,$77
  !c5
  db 16,$67
  !ds5
  !slideIn,0,9,1
  !f5
  !endSlide
  !fs5
  !g5
  !slideIn,0,3,1
  !as5
  !endSlide
  !g5
  !rest
  !instr,!instr06
  !volume,155
  !pan,13
  db 8,$77
  !g6
  db 8,$72
  !g6
  !pan,7
  db 8,$77
  !d6
  db 8,$72
  !d6
  !pan,10
  db 8,$77
  !g5
  db 8,$72
  !g5
  !instr,!instr2A
  !volume,230
  db 16,$67
  !as5
  !g5
  !rest
  !instr,!instr06
  !volume,155
  !pan,13
  db 8,$77
  !f6
  db 8,$72
  !f6
  !pan,7
  db 8,$77
  !b5
  db 8,$72
  !b5
  !pan,13
  db 8,$77
  !f5
  db 8,$72
  !f5
  !instr,!instr2A
  !volume,230
  !pan,10
  !slideIn,0,9,1
  db 16,$67
  !as5
  !endSlide
  db 16,$47
  !g5
  !instr,!instr29
  !volume,255
  db 16,$79
  !g2
  !as2
  !end

.pattern2_4
  !volume,135
  !instr,!instr04
  !pan,12
  !dynamicPan,128,8
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  !dynamicPan,128,12
  !loop : dw .sub550D : db 1
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  !dynamicPan,128,12
  !loop : dw .sub550D : db 1
  !loop : dw .sub5531 : db 1
  !dynamicPan,128,12
  db 8,$46
  !g5
  db 8,$47
  !b4
  !d5
  !g4
  db 8,$46
  !g5
  db 8,$47
  !b4
  !d5
  !g4
  db 8,$46
  !g5
  db 8,$47
  !b4
  !d5
  !g4
  db 8,$46
  !g5
  db 8,$47
  !b4
  !d5
  !g4
  !end

.pattern3_0
  !pan,10
  !echo,%00011000,38,38
  !pan,10
  !loop : dw .sub521D : db 7
  !instr,!instr23
  db 16,$77
  !ds5
  !instr,!instr27
  db 8
  !as4
  db 8,$72
  !a4
  !instr,!instr23
  db 16,$77
  !ds5
  !instr,!instr27
  db 8
  !as4
  db 8,$72
  !a4
  db 8,$78
  !c5
  !instr,!instr26
  db 8,$71
  !c3
  db 8,$78
  !as4
  db 8,$72
  !a4
  db 8,$78
  %percNote(!instr26-!instr23)
  db 8,$77
  %percNote(!instr26-!instr23)
  db 8,$78
  %percNote(!instr26-!instr23)
  db 8,$77
  %percNote(!instr26-!instr23)
  !end

.pattern3_1
  !loop : dw .sub524E : db 1
  !loop : dw .sub52EF : db 3
  !end

.pattern3_2
  !loop : dw .sub538E : db 1
  !end

.pattern3_3
  !instr,!instr29
  !volume,230
  !vibrato,5,20,35
  !pan,10
  !slideIn,0,6,1
  db 16,$67
  !ds5
  !endSlide
  db 16,$57
  !c5
  !rest
  !instr,!instr06
  !volume,155
  !pan,13
  db 8,$77
  !ds6
  db 8,$72
  !ds6
  !pan,7
  db 8,$76
  !c7
  db 8,$72
  !c7
  !instr,!instr29
  !volume,230
  !pan,10
  !slideIn,0,8,1
  db 16,$67
  !as4
  !endSlide
  db 16,$27
  !c5
  db 16,$77
  !ds5
  db 16,$67
  !tie
  db 16,$77
  !c5
  db 48
  !rest
  !slideIn,0,8,1
  db 16
  !f5
  !endSlide
  db 16,$57
  !g5
  !rest
  db 8,$67
  !ds5
  !d5
  db 16,$77
  !c5
  !rest
  !instr,!instr06
  !volume,155
  !pan,13
  db 8
  !ds6
  db 8,$72
  !ds6
  !pan,7
  db 8,$76
  !c7
  db 8,$72
  !c7
  !instr,!instr29
  !volume,230
  !pan,10
  !slideIn,0,9,1
  db 16,$57
  !g4
  !endSlide
  db 16,$27
  !ds5
  db 16,$77
  !c5
  !tie
  db 16,$27
  !as4
  db 32,$67
  !c5
  db 16,$27
  !as4
  db 32,$67
  !c5
  db 16,$37
  !as4
  db 16,$67
  !f5
  !ds5
  !rest
  !instr,!instr06
  !volume,155
  !pan,13
  db 8,$76
  !g6
  db 8,$72
  !g6
  !pan,7
  db 8,$76
  !c7
  db 8,$72
  !c7
  !instr,!instr29
  !volume,230
  !pan,10
  db 16,$67
  !f5
  !ds5
  !rest
  !slideIn,0,7,1
  !c5
  !endSlide
  db 32,$17
  !ds5
  db 16,$77
  !c5
  db 16,$67
  !ds5
  !slideIn,0,9,1
  !f5
  !endSlide
  !fs5
  !g5
  !slideIn,0,3,1
  !as5
  !endSlide
  !g5
  !rest
  !instr,!instr06
  !volume,155
  !pan,13
  db 8,$77
  !g6
  db 8,$72
  !g6
  !pan,7
  db 8,$77
  !d6
  db 8,$72
  !d6
  !pan,10
  db 8,$77
  !g5
  db 8,$72
  !g5
  !instr,!instr29
  !volume,230
  db 16,$67
  !as5
  !g5
  !rest
  !instr,!instr06
  !volume,155
  !pan,13
  db 8,$77
  !f6
  db 8,$72
  !f6
  !pan,7
  db 8,$77
  !b5
  db 8,$72
  !b5
  !pan,13
  db 8,$77
  !f5
  db 8,$72
  !f5
  !instr,!instr29
  !volume,230
  !pan,10
  !slideIn,0,9,1
  db 16,$67
  !as5
  !endSlide
  db 16,$47
  !g5
  !rest
  !pan,9
  !instr,!instr01
  !volume,175
  db 16,$67
  !as4
  !end

.pattern3_4
  !pan,12
  !dynamicPan,128,8
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  !dynamicPan,128,12
  !loop : dw .sub550D : db 1
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  !dynamicPan,128,12
  !loop : dw .sub550D : db 1
  !loop : dw .sub5531 : db 1
  !dynamicPan,112,12
  db 8,$46
  !g5
  db 8,$47
  !b4
  !d5
  !g4
  db 8,$46
  !g5
  db 8,$47
  !b4
  !d5
  !g4
  db 8,$46
  !g5
  db 8,$47
  !b4
  !d5
  !g4
  db 8,$46
  !g5
  db 8,$47
  !b4
  !instr,!instr01
  !volume,175
  !pan,11
  db 16,$67
  !f5
  !end

.pattern4_0
  !echo,%00011010,38,38
  !loop : dw .sub5598 : db 7
  !instr,!instr26
  db 8,$79
  !f3
  db 8,$72
  !d3
  !instr,!instr27
  db 8,$76
  !as4
  db 8,$72
  !a4
  db 8,$78
  !c5
  db 8,$71
  !b4
  db 8,$75
  !as4
  db 8,$72
  !a4
  !instr,!instr26
  db 8,$79
  !f3
  db 8,$72
  !d3
  !instr,!instr27
  db 8,$76
  !as4
  db 8,$72
  !a4
  !instr,!instr25
  !pan,11
  db 8,$77
  !a4
  !a4
  !pan,8
  db 8,$78
  !e4
  !pan,12
  !c4
  !end

.pattern4_1
  !transpose,0
  !volume,175
  !vibrato,6,20,20
  !instr,!instr01
  !pan,11
  db 16,$27
  !gs5
  !gs5
  !gs5
  !as5
  !c6
  !c6
  !as5
  !gs5
  db 16,$67
  !g5
  db 16,$57
  !g5
  !rest
  db 80,$67
  !ds5
  db 16,$27
  !gs5
  !gs5
  !gs5
  !as5
  !c6
  !c6
  !d6
  !c6
  db 16,$67
  !d6
  db 16,$57
  !ds6
  !rest
  db 64,$67
  !ds6
  db 8,$77
  !c6
  !as5
  db 16,$27
  !gs5
  !gs5
  !gs5
  !as5
  !c6
  !c6
  !as5
  !gs5
  db 16,$67
  !f5
  db 16,$57
  !g5
  !rest
  db 64,$67
  !ds5
  db 8,$78
  !c5
  !ds5
  db 16,$27
  !gs5
  !gs5
  !gs5
  !as5
  !gs5
  !gs5
  !f5
  !d5
  !slideIn,0,6,1
  db 16,$77
  !d5
  !endSlide
  db 16,$27
  !ds5
  !slideIn,0,10,1
  db 16,$77
  !as4
  !endSlide
  db 80
  !g4
  !end

.pattern4_2
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$77
  !gs3
  db 6,$74
  !gs3
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !as3
  db 6,$72
  !as3
  db 10,$77
  !as2
  db 6,$72
  !as2
  !loop : dw .sub55D1 : db 3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c4
  db 6,$72
  !c4
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c4
  db 6,$72
  !c4
  db 10,$77
  !c3
  db 6,$72
  !c3
  !end

.pattern4_3
  !transpose,0
  !vibrato,6,20,20
  !volume,175
  !instr,!instr01
  !pan,9
  db 16,$27
  !c6
  !c6
  !c6
  !d6
  !ds6
  !ds6
  !d6
  !c6
  db 16,$67
  !as5
  db 16,$57
  !c6
  !rest
  db 80,$67
  !g5
  db 16,$27
  !c6
  !c6
  !c6
  !d6
  !ds6
  !ds6
  !f6
  !ds6
  db 16,$67
  !f6
  db 16,$57
  !g6
  !rest
  db 64,$67
  !g6
  db 8,$77
  !ds6
  !d6
  db 16,$27
  !c6
  !c6
  !c6
  !d6
  !ds6
  !ds6
  !d6
  !c6
  db 16,$67
  !as5
  db 16,$57
  !c6
  !rest
  db 64,$67
  !g5
  db 8,$78
  !ds5
  !g5
  db 16,$27
  !c6
  !c6
  !c6
  !d6
  !c6
  !c6
  !as5
  !g5
  !slideIn,0,6,1
  db 16,$77
  !f5
  !endSlide
  db 16,$27
  !g5
  !slideIn,0,10,1
  db 16,$77
  !ds5
  !endSlide
  db 80
  !c5
  !end

.pattern4_4
  !instr,!instr1D
  !volume,155
  !pan,12
  !dynamicPan,128,8
  !loop : dw .sub5632 : db 1
  !loop : dw .sub564E : db 1
  !loop : dw .sub5632 : db 1
  !loop : dw .sub564E : db 1
  !loop : dw .sub5632 : db 1
  !loop : dw .sub564E : db 1
  !loop : dw .sub5632 : db 1
  !ds5
  !c5
  !g4
  !as4
  !c5
  !g4
  !ds4
  !g4
  !c5
  !g4
  !ds4
  !g4
  !c5
  !g4
  !ds4
  !g4
  !end

.pattern5_0
  !loop : dw .sub5662 : db 6
  !pan,10
  !volume,100
  !dynamicVolume,96,255
  !instr,!instr27
  db 8,$78
  !as4
  db 8,$74
  !as4
  db 8,$75
  !as4
  db 8,$74
  !as4
  db 8,$78
  !as4
  db 8,$74
  !as4
  db 8,$75
  !as4
  db 8,$74
  !as4
  db 8,$78
  !as4
  db 8,$74
  !as4
  db 8,$75
  !as4
  db 8,$74
  !as4
  db 8,$78
  !as4
  db 8,$74
  !as4
  db 8,$75
  !as4
  db 8,$74
  !as4
  db 16,$77
  !as4
  db 28
  !as4
  db 4,$72
  !as4
  db 12,$77
  !as4
  db 4,$72
  !as4
  db 16,$77
  !as4
  !instr,!instr23
  db 16,$74
  !ds5
  !instr,!instr27
  db 12,$77
  !as4
  db 4,$72
  !as4
  db 16,$77
  !as4
  !end

.pattern5_1
  !instr,!instr1B
  !volume,170
  !pan,12
  db 8,$77
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !c5
  !f4
  !ds5
  !gs4
  !c5
  !f4
  !ds5
  !gs4
  !c5
  !f4
  !ds5
  !gs4
  !c5
  !ds5
  !f4
  !c5
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !e5
  !g4
  !g5
  !c5
  !e5
  !g4
  !g5
  !c5
  !e5
  !g4
  !g5
  !c5
  !c5
  !e4
  !e5
  !g4
  !instr,!instr1D
  !volume,140
  db 8,$57
  !gs5
  !c6
  !ds6
  !c6
  !gs5
  !c6
  !ds6
  !c6
  !d5
  !f5
  !gs5
  !f5
  !d5
  !f5
  !gs5
  !f5
  !as4
  !d5
  !ds5
  !d5
  !as4
  !d5
  !ds5
  !d5
  db 8,$58
  !gs4
  !c5
  !c5
  !c5
  !gs4
  !c5
  !c5
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  db 8,$59
  !g4
  !c5
  !g4
  !c5
  db 8,$5A
  !g4
  !c5
  !g4
  !c5
  !instr,!instr01
  !volume,190
  db 16,$67
  !b4
  db 32,$17
  !a4
  db 16,$67
  !b4
  db 32,$17
  !a4
  db 16,$67
  !b4
  !b4
  !end

.pattern5_2
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  db 8,$79
  !f2
  !f2
  db 8,$77
  !f3
  !f3
  db 8,$79
  !f2
  !f2
  db 8,$77
  !f3
  !f3
  db 8,$79
  !f2
  !f2
  db 8,$77
  !f3
  !f3
  db 8,$79
  !f2
  !f2
  db 8,$77
  !f3
  !f3
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  !c3
  !c3
  db 8,$75
  !c4
  !c4
  db 8,$77
  !c3
  !c3
  db 8,$75
  !c4
  !c4
  db 8,$77
  !c3
  !c3
  db 8,$75
  !c4
  !c4
  db 8,$77
  !c3
  !c3
  db 8,$75
  !c4
  !c4
  db 8,$79
  !f2
  !f2
  db 8,$77
  !f3
  !f3
  db 8,$79
  !f2
  !f2
  db 8,$77
  !f3
  !f3
  !as2
  !as2
  !as3
  !as3
  !as2
  !as2
  !as3
  !as3
  db 8,$7A
  !ds2
  !ds2
  db 8,$77
  !ds3
  !ds3
  db 8,$79
  !ds2
  !ds2
  db 8,$77
  !ds3
  !ds3
  db 8,$78
  !gs2
  !gs2
  db 8,$77
  !gs3
  !gs3
  db 8,$78
  !gs2
  !gs2
  db 8,$77
  !gs3
  !gs3
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  db 8,$78
  !g2
  !g2
  db 8,$77
  !g3
  !g3
  db 16,$78
  !g2
  db 32,$27
  !g3
  db 16,$78
  !g2
  db 32,$27
  !g3
  db 16,$78
  !g2
  db 16,$77
  !g3
  !end

.pattern5_3
  !pan,10
  !instr,!instr1C
  !volume,135
  !dynamicVolume,32,200
  !vibrato,24,20,50
  db 48,$78
  !d6
  db 8
  !c6
  db 8,$77
  !d6
  db 18
  !as5
  !dynamicVolume,14,160
  db 14
  !tie
  !pitchSlide,0,16 : !gs6
  !volume,200
  db 24
  !a6
  db 8,$78
  !f6
  db 24
  !ds6
  db 8,$77
  !f6
  db 28,$76
  !g6
  !dynamicVolume,46,115
  db 46,$68
  !tie
  !dynamicVolume,11,200
  db 11,$78
  !c6
  !cs6
  db 48,$77
  !d6
  db 8
  !c6
  !d6
  db 21,$78
  !as5
  db 23,$77
  !a6
  db 20
  !f6
  db 7
  !tie
  !vibrato,22,14,100
  !slideIn,0,41,1
  db 27,$76
  !c7
  !dynamicVolume,52,110
  db 52
  !tie
  !endSlide
  !instr,!instr21
  !vibrato,22,22,50
  !volume,110
  !dynamicVolume,18,155
  db 21,$77
  !e6
  !g6
  db 48,$76
  !c7
  db 8,$77
  !as6
  !gs6
  db 22
  !g6
  db 21
  !f6
  !g6
  db 48
  !as6
  db 8
  !gs6
  !g6
  db 22
  !f6
  db 21
  !ds6
  db 21,$76
  !f6
  db 24
  !d6
  db 8,$77
  !g6
  db 96
  !g6
  !instr,!instr01
  !volume,190
  db 16,$67
  !as5
  db 32,$17
  !g5
  db 16,$67
  !as5
  db 32,$17
  !g5
  db 16,$67
  !as5
  !g5
  !end

.pattern5_4
  !subtranspose,0
  !instr,!instr1B
  !volume,170
  !pan,8
  db 8,$77
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !ds5
  !gs4
  !g5
  !c5
  !ds5
  !gs4
  !g5
  !c5
  !ds5
  !gs4
  !g5
  !c5
  !ds5
  !g5
  !gs4
  !ds5
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !g5
  !c5
  !c6
  !e5
  !g5
  !c5
  !c6
  !e5
  !g5
  !c5
  !c6
  !e5
  !e5
  !g4
  !g5
  !c5
  !instr,!instr1D
  !volume,140
  db 8,$57
  !c6
  !ds6
  !g6
  !ds6
  !c6
  !ds6
  !g6
  !ds6
  !gs5
  !as5
  !d6
  !as5
  !gs5
  !as5
  !d6
  !as5
  !ds5
  !g5
  !as5
  !g5
  !ds5
  !g5
  !as5
  !g5
  db 8,$58
  !c5
  !ds5
  !f5
  !ds5
  !c5
  !ds5
  !f5
  !ds5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  db 8,$59
  !d5
  !f5
  !d5
  !f5
  db 8,$5A
  !d5
  !f5
  !d5
  !f5
  !instr,!instr01
  !volume,190
  db 16,$67
  !f5
  db 32,$17
  !d5
  db 16,$67
  !f5
  db 32,$17
  !d5
  db 16,$67
  !f5
  !d5
  !end

.sub521D
  !instr,!instr23
  db 16,$77
  !ds5
  !instr,!instr27
  db 8
  !as4
  db 8,$72
  !a4
  !instr,!instr23
  db 16,$77
  !ds5
  !instr,!instr27
  db 8
  !as4
  db 8,$72
  !a4
  !instr,!instr23
  db 16,$77
  !ds5
  !instr,!instr27
  db 8
  !as4
  db 8,$72
  !a4
  !instr,!instr23
  db 16,$77
  !ds5
  !instr,!instr27
  db 8
  !as4
  db 8,$72
  !a4
  !end

.sub524E
  !pan,10
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  !instr,!instr25
  db 8,$72
  !b4
  !pan,8
  !b4
  !pan,10
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 8,$73
  !g4
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  !instr,!instr25
  db 8,$72
  !b4
  !pan,8
  !b4
  !end

.sub52EF
  !pan,10
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  !instr,!instr25
  db 8,$72
  !b4
  !pan,8
  !b4
  !pan,10
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$72
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 8,$73
  !g4
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  !instr,!instr25
  db 8,$72
  !b4
  !pan,8
  !b4
  !end

.sub538E
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$78
  !g2
  db 6,$74
  !g2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$78
  !g2
  db 6,$74
  !g2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$78
  !g2
  db 6,$74
  !g2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !c3
  db 6
  !c3
  db 10
  !c3
  db 6,$72
  !c3
  db 10,$78
  !g2
  db 6,$74
  !g2
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$79
  !f2
  db 6,$76
  !f2
  db 10,$78
  !gs2
  db 6,$74
  !gs2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$79
  !f2
  db 6,$76
  !f2
  db 10,$78
  !gs2
  db 6,$74
  !gs2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$79
  !f2
  db 6,$76
  !f2
  db 10,$78
  !gs2
  db 6,$74
  !gs2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$79
  !f2
  db 6,$76
  !f2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$79
  !ds2
  db 6,$77
  !ds2
  db 10,$78
  !g2
  db 6,$72
  !g2
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$79
  !ds2
  db 6,$77
  !ds2
  db 10,$78
  !g2
  db 6,$72
  !g2
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$79
  !ds2
  db 6,$77
  !ds2
  db 10,$78
  !g2
  db 6,$72
  !g2
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$79
  !ds2
  db 6,$77
  !ds2
  db 10,$78
  !g2
  db 6,$74
  !g2
  db 10,$78
  !g2
  db 6,$72
  !g2
  db 10,$78
  !g2
  db 6,$72
  !g2
  db 10,$78
  !g2
  db 6,$74
  !g2
  db 10,$78
  !g2
  db 6,$72
  !g2
  db 10,$78
  !g2
  db 6,$72
  !g2
  db 10,$77
  !d3
  db 6,$72
  !d3
  db 10,$78
  !g2
  db 6,$72
  !g2
  db 10,$78
  !g2
  db 6,$72
  !g2
  db 10,$77
  !d3
  db 6,$72
  !d3
  db 10,$78
  !g2
  db 6,$72
  !g2
  db 10,$78
  !g2
  db 6,$74
  !g2
  db 10,$77
  !g2
  db 6,$72
  !g2
  db 10,$77
  !g3
  db 6,$72
  !g3
  db 10,$78
  !g2
  db 6,$72
  !g2
  db 10,$77
  !g3
  db 6,$72
  !g3
  db 10,$78
  !g2
  db 6,$72
  !g2
  !end

.sub550D
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !g5
  db 8,$47
  !c5
  !ds5
  !c5
  !dynamicPan,128,8
  !end

.sub5531
  db 8,$46
  !gs5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !gs5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !gs5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !gs5
  db 8,$47
  !c5
  !ds5
  !c5
  !dynamicPan,128,12
  db 8,$46
  !gs5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !gs5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !gs5
  db 8,$47
  !c5
  !ds5
  !c5
  db 8,$46
  !gs5
  db 8,$47
  !c5
  !ds5
  !c5
  !dynamicPan,128,8
  db 8,$46
  !g5
  db 8,$47
  !b4
  !d5
  !g4
  db 8,$46
  !g5
  db 8,$47
  !b4
  !d5
  !g4
  db 8,$46
  !g5
  db 8,$47
  !b4
  !d5
  !g4
  db 8,$46
  !g5
  db 8,$47
  !b4
  !d5
  !g4
  !end

.sub5598
  !instr,!instr26
  db 8,$79
  !f3
  db 8,$72
  !d3
  !instr,!instr27
  db 8,$76
  !as4
  db 8,$72
  !a4
  db 8,$78
  !c5
  db 8,$71
  !b4
  db 8,$75
  !as4
  db 8,$72
  !a4
  !instr,!instr26
  db 8,$79
  !f3
  db 8,$72
  !d3
  !instr,!instr27
  db 8,$76
  !as4
  db 8,$72
  !a4
  db 8,$78
  !c5
  db 8,$71
  !b4
  db 8,$75
  !as4
  db 8,$72
  !a4
  !end

.sub55D1
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c4
  db 6,$72
  !c4
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c3
  db 6,$72
  !c3
  db 10,$77
  !c4
  db 6,$72
  !c4
  db 10,$77
  !as3
  db 6,$72
  !as3
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$77
  !gs3
  db 6,$74
  !gs3
  db 10,$78
  !gs2
  db 6,$72
  !gs2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !as2
  db 6,$72
  !as2
  db 10,$77
  !as3
  db 6,$72
  !as3
  db 10,$77
  !as2
  db 6,$72
  !as2
  !end

.sub5632
  db 8,$56
  !g5
  db 8,$57
  !ds5
  !c5
  !gs4
  db 8,$56
  !g5
  db 8,$57
  !ds5
  !c5
  !gs4
  !f5
  !ds5
  !as4
  !gs4
  !f5
  !d5
  !as4
  !gs4
  !dynamicPan,128,12
  !end

.sub564E
  !ds5
  !c5
  !g4
  !as4
  !c5
  !g4
  !ds4
  !g4
  !c5
  !g4
  !ds4
  !g4
  !c5
  !g4
  !ds4
  !g4
  !dynamicPan,128,8
  !end

.sub5662
  !pan,10
  !instr,!instr23
  db 8,$77
  !ds5
  !instr,!instr24
  !pan,12
  db 8,$71
  !as4
  !pan,10
  db 8,$73
  !as4
  !pan,8
  db 8,$71
  !as4
  !pan,10
  !instr,!instr27
  db 8,$78
  !as4
  !pan,12
  !instr,!instr24
  db 8,$71
  !as4
  !pan,10
  db 8,$73
  !as4
  !pan,8
  db 8,$71
  !as4
  !pan,10
  !instr,!instr23
  db 8,$77
  !ds5
  !pan,12
  !instr,!instr24
  db 8,$71
  !as4
  !pan,10
  db 8,$73
  !as4
  !pan,8
  db 8,$71
  !as4
  !pan,10
  !instr,!instr27
  db 8,$77
  !as4
  !pan,12
  !instr,!instr24
  db 8,$71
  !as4
  !pan,10
  db 8,$72
  !as4
  !pan,8
  db 8,$71
  !as4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
