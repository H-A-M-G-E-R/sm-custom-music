asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr05 = $18
!instr06 = $19
!instr09 = $1A
!instr18 = $1B
!instr19 = $1C
!instr1B = $1D
!instr1C = $1E
!instr1D = $1F
!instr20 = $20
!instr21 = $21
!instr23 = $22
!instr24 = $23
!instr25 = $24
!instr27 = $25
!instr28 = $26
!instr29 = $27

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr05,$EA,$54,$B8,$03,$00
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr09,$FF,$F3,$B8,$04,$00
  db !instr18,$88,$E0,$B8,$03,$C0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr20,$FF,$E0,$B8,$02,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$FF,$E0,$B8,$04,$70
  db !instr29,$FF,$E0,$B8,$08,$F0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample05_06,Sample05_06+216
  dw Sample05_06,Sample05_06+216
  dw Sample07_08_09,Sample07_08_09+360
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample1D,Sample1D+27
  dw Sample20,Sample20+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample28,Sample28+2277
  dw Sample29,Sample29+405
endspcblock

spcblock $82F4-$6E00+!p_sampleData nspc ; sample data (overwrites sample 5 and above because the only sound effect that plays during the ending is the charged plasma + wave beam sound which uses samples 0 and 4)
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample07_08_09: incbin "Sample_38e63eed215c29c5a4534a9767604a6d.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample20: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28: incbin "Sample_fe4894ca1c3172da3de121e430a25e53.brr"
  Sample29: incbin "Sample_7360f66d874eaa61884e9d4722cadb6e.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker3439

Tracker3439:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw .pattern10
  dw .pattern11
-
  dw .pattern12
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, .pattern6_6, .pattern6_7
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, .pattern7_5, .pattern7_6, .pattern7_7
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, .pattern8_6, .pattern8_7
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, .pattern9_5, .pattern9_6, .pattern9_7
.pattern10: dw .pattern10_0, 0, .pattern10_2, .pattern10_3, .pattern10_4, .pattern10_5, .pattern10_6, .pattern10_7
.pattern11: dw 0, 0, .pattern11_2, .pattern11_3, .pattern11_4, .pattern11_5, .pattern11_6, .pattern11_7
.pattern12: dw .pattern12_0, .pattern12_1, .pattern12_2, .pattern12_3, .pattern12_4, .pattern12_5, .pattern12_6, .pattern12_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !musicVolume,255
  !tempo,48
  !echo,%11111000,23,23
  !echoParameters,4,60,0
  !pan,10
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr27
  db 54,$77
  !d5
  db 18,$73
  !a5
  !echo,%11111000,42,42
  !echoParameters,4,60,0
  db 18,$79
  %percNote(!instr23-!instr23)
  !instr,!instr25
  db 18,$28
  !c5
  db 6,$78
  !f4
  !pan,12
  db 5,$74
  !f4
  !pan,8
  db 5,$73
  !f4
  !pan,12
  db 5,$72
  !f4
  !pan,8
  db 5,$71
  !f4
  !pan,12
  db 5,$70
  !f4
  !pan,8
  !f4
  !pan,10
  db 9,$78
  !c5
  !pan,12
  db 9,$72
  !c5
  !pan,10
  db 9,$79
  !c5
  !pan,8
  db 9,$72
  !c5
  !pan,12
  db 6,$79
  !c5
  !pan,8
  db 6,$74
  !c5
  !pan,12
  db 6,$73
  !c5
  !pan,8
  db 6,$72
  !c5
  !pan,12
  db 6,$71
  !c5
  !pan,8
  db 6,$70
  !c5
  !end

.pattern0_1
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,8
  db 18,$73
  !b4
  !pan,12
  db 17,$71
  !b4
  !instr,!instr24
  !pan,10
  db 9,$73
  !b4
  !pan,8
  !b4
  db 18,$74
  %percNote(!instr27-!instr23)
  !instr,!instr25
  db 36,$76
  !a3
  db 18
  !f4
  !f4
  !f4
  !f4
  !end

.pattern0_2
  !instr,!instr21
  !volume,190
  db 18,$38
  !g3
  db 36
  !rest
  db 18
  !g3
  db 36
  !rest
  db 18
  !g3
  !rest
  !rest
  db 18,$16
  !c4
  !rest
  db 18,$57
  !c3
  db 18,$26
  !c4
  db 18,$27
  !c3
  !slideOut,24,12,252
  db 36,$76
  !c4
  !end

.pattern0_3
  !instr,!instr1D
  !volume,120
  !pan,11
  db 18,$27
  !as5
  db 36
  !rest
  !pan,9
  db 18
  !as5
  db 36
  !rest
  !pan,11
  db 18
  !as5
  !rest
  !rest
  !instr,!instr01
  !volume,180
  db 18,$18
  !e6
  db 36
  !rest
  db 18,$27
  !e6
  !e6
  !slideOut,24,12,252
  db 36,$77
  !e6
  !end

.pattern0_4
  !instr,!instr1D
  !volume,120
  !pan,13
  db 18,$27
  !d6
  db 36
  !rest
  !pan,7
  db 18
  !d6
  db 36
  !rest
  !pan,13
  db 18
  !d6
  !rest
  !rest
  !instr,!instr01
  !volume,180
  db 18,$18
  !gs6
  db 36
  !rest
  db 18,$27
  !gs6
  !gs6
  !slideOut,24,12,252
  db 36,$77
  !gs6
  !end

.pattern0_5
  !instr,!instr1D
  !volume,135
  !pan,10
  db 18,$27
  !g6
  db 36
  !rest
  db 18
  !g6
  db 36
  !rest
  db 18
  !g6
  !rest
  !rest
  !instr,!instr01
  !volume,180
  db 18,$18
  !c7
  db 36
  !rest
  db 18,$27
  !c7
  !c7
  !slideOut,24,12,252
  db 36,$77
  !c7
  !end

.pattern0_6
  !instr,!instr1D
  !volume,120
  !pan,20
  db 18,$27
  !d5
  db 36
  !rest
  !pan,0
  db 18
  !d5
  db 36
  !rest
  !pan,20
  db 18
  !d5
  !rest
  !rest
  !pan,8
  !instr,!instr29
  !volume,180
  db 18,$18
  !e5
  db 36
  !rest
  db 18,$27
  !e5
  !e5
  !slideOut,24,12,252
  db 36,$77
  !e5
  !end

.pattern0_7
  !instr,!instr1D
  !volume,120
  !pan,0
  db 18,$27
  !f5
  db 36
  !rest
  !pan,20
  db 18
  !f5
  db 36
  !rest
  !pan,0
  db 18
  !f5
  !rest
  !rest
  !pan,12
  !instr,!instr29
  !volume,180
  db 18,$18
  !gs5
  db 36
  !rest
  db 18,$27
  !gs5
  !gs5
  !slideOut,24,12,252
  db 36,$77
  !gs5
  !end

.pattern1_0
  !musicVolume,255
  !tempo,48
  !echo,%11111000,42,42
  !echoParameters,4,60,0
  !pan,10
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr25
  db 54,$78
  !a4
  !instr,!instr27
  db 18,$73
  !a5
  !loop : dw .sub4F0C : db 6
  !loop : dw .sub4F39 : db 1
  !end

.pattern1_1
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,8
  db 18,$73
  !b4
  !pan,12
  db 17,$71
  !b4
  !loop : dw .sub4F80 : db 7
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,12
  !instr,!instr25
  db 18,$78
  !g4
  !pan,8
  db 17
  !g4
  !end

.pattern1_2
  !endSlide
  !instr,!instr21
  !volume,190
  !loop : dw .sub4FCD : db 2
  !loop : dw .sub5006 : db 1
  !loop : dw .sub504E : db 1
  !end

.pattern1_3
  !endSlide
  !instr,!instr29
  !pan,8
  !volume,165
  !loop : dw .sub507D : db 2
  !loop : dw .sub5096 : db 1
  !loop : dw .sub507D : db 2
  !loop : dw .sub5096 : db 1
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  db 18,$17
  !g3
  db 18,$14
  !a4
  db 18,$17
  !d5
  db 18,$14
  !a4
  !loop : dw .sub50C7 : db 2
  !loop : dw .sub50E0 : db 2
  !loop : dw .sub50F9 : db 1
  !end

.pattern1_4
  !endSlide
  !instr,!instr29
  !pan,12
  !volume,165
  !loop : dw .sub5122 : db 2
  !loop : dw .sub513B : db 2
  !loop : dw .sub5122 : db 2
  !loop : dw .sub513B : db 2
  !loop : dw .sub5154 : db 2
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !e5
  db 18,$14
  !a4
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !e5
  db 18,$14
  !a4
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !d5
  db 18,$14
  !a4
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !d5
  db 18,$14
  !a4
  !loop : dw .sub5154 : db 2
  !loop : dw .sub516D : db 1
  !end

.pattern1_5
  !endSlide
  !instr,!instr29
  !pan,10
  !volume,165
  !loop : dw .sub5196 : db 2
  !loop : dw .sub51AF : db 1
  !loop : dw .sub5196 : db 2
  !loop : dw .sub51AF : db 1
  !loop : dw .sub51E0 : db 2
  !loop : dw .sub51F9 : db 2
  !loop : dw .sub5212 : db 2
  !loop : dw .sub522B : db 1
  !end

.pattern1_6
  !endSlide
  !endVibrato
  !pan,10
  !subtranspose,48
  !instr,!instr28
  !volume,180
  db 36,$77
  !c6
  db 36,$71
  !c6
  db 36,$77
  !d6
  db 36,$71
  !d6
  db 54,$47
  !f6
  db 18,$38
  !f6
  db 18,$31
  !f6
  db 18,$47
  !f6
  !g6
  !a6
  db 18,$57
  !e6
  !a5
  db 18,$50
  !a5
  db 18,$51
  !e6
  !a5
  db 18,$50
  !a5
  db 18,$57
  !e6
  !a5
  db 18,$51
  !a5
  !subtranspose,0
  !instr,!instr05
  !volume,185
  !pan,12
  db 18,$21
  !a6
  db 18,$22
  !e7
  db 18,$23
  !a6
  db 18,$25
  !e7
  db 18,$27
  !a6
  !pan,20
  db 18,$23
  !e7
  db 18,$22
  !c7
  !pan,10
  !subtranspose,48
  !instr,!instr28
  !volume,180
  db 36,$77
  !c6
  db 36,$71
  !c6
  db 36,$77
  !d6
  db 36,$71
  !d6
  db 36,$37
  !f6
  db 18,$47
  !g6
  !f6
  db 18,$41
  !f6
  db 18,$47
  !f6
  !g6
  !a6
  !loop : dw .sub5254 : db 1
  !vibrato,5,16,20
  !instr,!instr01
  !volume,155
  !pan,8
  db 72,$27
  !as5
  !pan,12
  !d6
  !loop : dw .sub5285 : db 1
  !rest
  !instr,!instr03
  !volume,145
  !pan,5
  !dynamicPan,125,15
  db 18,$54
  !e7
  db 18,$55
  !d7
  db 18,$56
  !c7
  db 18,$57
  !a6
  !e6
  db 18,$54
  !a6
  db 18,$52
  !c7
  !instr,!instr01
  !volume,155
  !pan,8
  db 18,$57
  !f5
  !pan,12
  db 36,$17
  !a5
  !pan,8
  !f5
  !pan,12
  db 18,$57
  !a5
  !pan,8
  db 36
  !f5
  !loop : dw .sub52B4 : db 1
  db 18
  !rest
  !pan,12
  db 18,$18
  !e6
  !pan,8
  !e6
  !pan,12
  !e6
  !pan,8
  db 36,$08
  !e6
  !pan,12
  !slideIn,0,8,1
  db 36,$76
  !f6
  !end

.pattern1_7
  !loop : dw .sub52EF : db 1
  db 72
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  db 18
  !rest
  !instr,!instr05
  !volume,185
  !pan,8
  db 18,$21
  !a6
  db 18,$22
  !c7
  db 18,$23
  !a6
  db 18,$25
  !c7
  db 18,$27
  !a6
  !pan,0
  db 18,$23
  !c7
  db 18,$22
  !a6
  !vibrato,5,16,20
  !instr,!instr01
  !volume,185
  !pan,11
  db 72,$27
  !d6
  !pan,9
  !f6
  !loop : dw .sub531A : db 1
  db 27
  !rest
  !subtranspose,10
  !instr,!instr03
  !volume,115
  !pan,5
  db 18,$71
  !e7
  !dynamicPan,99,15
  db 18,$74
  !e7
  db 18,$75
  !d7
  db 18,$76
  !c7
  db 18,$77
  !a6
  !e6
  db 9,$74
  !a6
  !subtranspose,0
  !instr,!instr01
  !volume,185
  !pan,11
  db 18,$57
  !a5
  !pan,9
  db 36,$17
  !c6
  !pan,11
  !a5
  !pan,9
  db 18,$57
  !c6
  !pan,11
  db 36
  !a5
  !loop : dw .sub5349 : db 1
  db 18
  !rest
  !pan,9
  db 18,$17
  !c7
  !pan,11
  !c7
  !pan,9
  !c7
  !pan,11
  db 36,$07
  !c7
  !pan,8
  !slideIn,0,8,1
  db 36,$75
  !b6
  !end

.pattern2_0
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr25
  db 54,$78
  !a4
  !instr,!instr27
  db 18,$73
  !a5
  !loop : dw .sub4F0C : db 7
  !tie
  db 18,$78
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr25
  db 27,$78
  !a4
  db 9
  !a4
  db 19,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 9,$72
  !f5
  db 8,$75
  !f5
  !end

.pattern2_1
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,8
  db 18,$73
  !b4
  !pan,12
  db 17,$71
  !b4
  !loop : dw .sub4F80 : db 7
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !instr,!instr25
  !pan,12
  db 18,$77
  !f4
  !pan,8
  db 9
  !f4
  db 8,$76
  !f4
  !end

.pattern2_2
  !loop : dw .sub4FCD : db 2
  db 54,$68
  !g2
  db 36,$18
  !g2
  db 18,$57
  !d3
  db 36,$78
  !g2
  db 18
  !rest
  db 18,$56
  !c4
  db 18,$57
  !c3
  !c3
  db 18,$56
  !c4
  db 18,$57
  !c3
  db 36,$66
  !c4
  !loop : dw .sub5384 : db 1
  db 18
  !rest
  db 18,$56
  !c4
  db 18,$57
  !c3
  !c3
  db 18,$56
  !c4
  db 18,$57
  !c3
  db 36,$66
  !c4
  db 18,$57
  !cs3
  db 36,$1A
  !cs2
  db 36,$17
  !cs3
  db 18,$57
  !ds3
  db 18,$59
  !ds2
  db 18,$57
  !ds3
  !f3
  db 36,$18
  !f2
  db 36,$17
  !f3
  db 18,$58
  !f2
  db 18,$57
  !c3
  db 18,$58
  !f2
  !end

.pattern2_3
  !endSlide
  !loop : dw .sub507D : db 2
  !loop : dw .sub5096 : db 1
  !loop : dw .sub507D : db 2
  !loop : dw .sub5096 : db 1
  !loop : dw .sub53B0 : db 1
  db 18,$17
  !g3
  db 18,$14
  !e4
  db 18,$17
  !as4
  db 18,$14
  !e4
  db 18,$17
  !g3
  db 18,$14
  !e4
  db 18,$17
  !as4
  db 18,$14
  !e4
  db 18,$17
  !cs3
  db 18,$14
  !cs4
  db 18,$17
  !gs4
  db 18,$14
  !cs4
  db 18,$17
  !ds3
  db 18,$14
  !ds4
  db 18,$17
  !as4
  db 18,$14
  !ds4
  db 18,$17
  !f3
  db 18,$14
  !g4
  db 18,$17
  !a4
  db 18,$14
  !g4
  db 18,$17
  !f3
  db 18,$14
  !a4
  db 18,$17
  !a4
  db 18,$14
  !g4
  !end

.pattern2_4
  !endSlide
  !loop : dw .sub5122 : db 2
  !loop : dw .sub513B : db 2
  !loop : dw .sub5122 : db 2
  !loop : dw .sub513B : db 2
  !loop : dw .sub5154 : db 2
  !loop : dw .sub5429 : db 1
  db 18,$17
  !c4
  db 18,$14
  !g4
  db 18,$17
  !e5
  db 18,$14
  !g4
  db 18,$17
  !c4
  db 18,$14
  !g4
  db 18,$17
  !e5
  db 18,$14
  !g4
  db 18,$17
  !gs3
  db 18,$14
  !f4
  db 18,$17
  !cs5
  db 18,$14
  !f4
  db 18,$17
  !as3
  db 18,$14
  !g4
  db 18,$17
  !ds5
  db 18,$14
  !g4
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !c5
  db 18,$14
  !a4
  db 18,$17
  !c4
  db 18,$14
  !c5
  db 18,$17
  !c5
  db 18,$14
  !a4
  !end

.pattern2_5
  !endSlide
  !loop : dw .sub5196 : db 2
  !loop : dw .sub51AF : db 1
  !loop : dw .sub5196 : db 2
  !loop : dw .sub51AF : db 1
  !loop : dw .sub51E0 : db 2
  !loop : dw .sub51F9 : db 2
  !loop : dw .sub5472 : db 1
  db 18,$17
  !cs4
  db 18,$14
  !gs4
  db 18,$17
  !f5
  db 18,$14
  !gs4
  db 18,$17
  !ds4
  db 18,$14
  !as4
  db 18,$17
  !g5
  db 18,$14
  !as4
  db 18,$17
  !f4
  db 18,$14
  !c5
  db 18,$17
  !f5
  db 18,$14
  !c5
  db 18,$17
  !f4
  db 18,$14
  !f5
  db 18,$17
  !f5
  db 18,$14
  !c5
  !end

.pattern2_6
  !endSlide
  !endVibrato
  !pan,10
  !subtranspose,48
  !instr,!instr28
  !volume,180
  db 24,$77
  !c6
  !pan,20
  db 24,$71
  !c6
  !pan,0
  !c6
  !pan,10
  db 24,$77
  !d6
  !pan,20
  db 24,$71
  !d6
  !pan,0
  !d6
  !loop : dw .sub54A3 : db 1
  !pan,10
  !subtranspose,48
  !instr,!instr28
  !volume,180
  db 24,$77
  !c6
  !pan,20
  db 24,$71
  !c6
  !pan,0
  !c6
  !pan,10
  db 24,$77
  !d6
  !pan,20
  db 24,$71
  !d6
  !pan,0
  !d6
  !loop : dw .sub54F7 : db 1
  !loop : dw .sub5553 : db 1
  db 18
  !rest
  !pan,12
  !e5
  !pan,8
  !e5
  !pan,12
  db 36,$27
  !e5
  !pan,8
  !slideIn,0,6,1
  db 18,$57
  !g5
  !endSlide
  !pan,12
  !f5
  !pan,8
  !e5
  !pan,12
  db 54,$37
  !cs5
  !pan,8
  !ds5
  !pan,12
  db 36
  !ds5
  !pan,9
  db 72,$77
  !a4
  !dynamicVolume,72,70
  !tie
  !end

.pattern2_7
  !loop : dw .sub52EF : db 1
  !pan,10
  !subtranspose,48
  !instr,!instr28
  !volume,165
  db 24,$77
  !a5
  !pan,0
  db 24,$71
  !a5
  !pan,20
  !a5
  !pan,10
  db 24,$77
  !a5
  !pan,0
  db 24,$71
  !a5
  !pan,20
  !a5
  !loop : dw .sub55DC : db 1
  !loop : dw .sub5638 : db 1
  db 18
  !rest
  !pan,9
  !g5
  !pan,11
  !a5
  !pan,9
  db 36,$27
  !g5
  !pan,11
  !slideIn,0,6,1
  db 18,$57
  !as5
  !endSlide
  !pan,9
  !a5
  !pan,11
  !g5
  !pan,9
  db 54,$37
  !f5
  !pan,11
  !f5
  !pan,9
  db 36
  !f5
  !pan,11
  db 72,$77
  !f5
  !dynamicVolume,72,70
  !tie
  !end

.pattern3_0
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr25
  db 54,$78
  !a4
  !instr,!instr27
  db 18,$73
  !a5
  !loop : dw .sub4F0C : db 6
  !loop : dw .sub4F39 : db 1
  !end

.pattern3_1
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,8
  db 18,$73
  !b4
  !pan,12
  db 17,$71
  !b4
  !loop : dw .sub4F80 : db 7
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !instr,!instr25
  !pan,8
  db 18,$78
  !g4
  !g4
  !pan,12
  db 17,$71
  !b4
  !instr,!instr25
  db 18,$78
  !g4
  !g4
  !pan,8
  !instr,!instr24
  db 18,$71
  !b4
  !instr,!instr25
  db 7,$78
  !g4
  db 6,$73
  !g4
  db 5
  !g4
  !end

.pattern3_2
  db 54,$67
  !as2
  db 36,$17
  !as2
  db 18,$57
  !f3
  db 36,$77
  !as2
  !loop : dw .sub56C8 : db 1
  db 18
  !rest
  db 18,$57
  !e3
  !a2
  !a2
  !g3
  db 18,$56
  !a3
  db 18,$57
  !a2
  db 18,$56
  !a3
  db 54,$67
  !as2
  db 36,$17
  !as2
  db 18,$57
  !f3
  db 36,$77
  !as2
  db 18
  !rest
  db 18,$57
  !f3
  !as2
  !as2
  !a3
  db 18,$56
  !as3
  db 18,$57
  !as2
  db 18,$56
  !as3
  db 54,$67
  !a2
  db 36,$17
  !a2
  db 18,$57
  !g3
  db 36,$77
  !a2
  db 18
  !rest
  db 18,$57
  !g3
  !a3
  !a2
  !a3
  !a2
  !g3
  !a3
  !cs3
  db 36,$17
  !cs3
  !cs3
  db 18,$57
  !gs3
  db 36,$77
  !cs3
  db 18
  !rest
  db 18,$57
  !gs3
  !cs3
  !cs3
  db 18,$55
  !cs4
  db 18,$57
  !cs3
  db 18,$55
  !cs4
  db 18,$57
  !cs3
  !c3
  db 36,$17
  !c3
  db 36,$16
  !c4
  db 18,$57
  !c3
  db 18,$56
  !c4
  db 18,$57
  !c3
  !rest
  db 18,$56
  !c4
  db 18,$57
  !c3
  !c3
  db 18,$56
  !c4
  db 18,$57
  !c3
  db 18,$56
  !c4
  db 18,$57
  !c3
  !rest
  db 36
  !b2
  db 36,$17
  !b2
  db 18,$57
  !fs3
  db 36,$77
  !b2
  db 18
  !rest
  db 18,$57
  !fs3
  !b2
  !b2
  db 18,$56
  !b3
  db 18,$57
  !b2
  db 36,$56
  !b3
  db 18,$57
  !as2
  db 36,$17
  !as2
  !as2
  db 18,$57
  !f3
  db 36,$77
  !as2
  db 18
  !rest
  db 18,$56
  !as3
  db 18,$57
  !as2
  !as2
  db 18,$56
  !as3
  db 18,$57
  !as2
  db 18,$56
  !as3
  db 18,$57
  !as2
  !end

.pattern3_3
  !instr,!instr01
  !volume,195
  db 18,$17
  !as3
  db 9,$57
  !as4
  db 9,$53
  !f4
  db 9,$57
  !d5
  db 9,$53
  !f4
  !as4
  !f4
  db 18,$17
  !as3
  db 9,$57
  !as4
  db 9,$53
  !f4
  db 9,$57
  !d5
  db 9,$53
  !f4
  !as4
  !f4
  db 18,$17
  !as3
  db 9,$57
  !as4
  db 9,$53
  !f4
  db 9,$57
  !d5
  db 9,$53
  !f4
  !as4
  !f4
  db 18,$17
  !as3
  db 9,$57
  !as4
  db 9,$53
  !f4
  db 9,$57
  !d5
  db 9,$53
  !f4
  !as4
  !f4
  !loop : dw .sub56E5 : db 1
  !loop : dw .sub572A : db 2
  !loop : dw .sub56E5 : db 1
  !loop : dw .sub574D : db 2
  !loop : dw .sub5770 : db 2
  !loop : dw .sub5793 : db 2
  db 18,$17
  !as3
  db 9,$57
  !as4
  db 9,$53
  !f4
  db 9,$57
  !ds5
  db 9,$53
  !f4
  !as4
  !f4
  db 18,$17
  !as3
  db 9,$57
  !as4
  db 9,$53
  !f4
  db 9,$57
  !ds5
  db 9,$53
  !f4
  !as4
  !f4
  db 18,$17
  !as3
  db 9,$57
  !as4
  db 9,$53
  !f4
  db 9,$57
  !d5
  db 9,$53
  !f4
  !as4
  !f4
  db 18,$17
  !as3
  db 9,$57
  !as4
  db 9,$53
  !f4
  db 9,$57
  !d5
  db 9,$53
  !f4
  !as4
  !f4
  !end

.pattern3_4
  !instr,!instr01
  !volume,190
  db 18,$17
  !f4
  db 9,$57
  !d5
  db 9,$53
  !as4
  db 9,$57
  !f5
  db 9,$53
  !as4
  !d5
  !as4
  db 18,$17
  !f4
  db 9,$57
  !d5
  db 9,$53
  !as4
  db 9,$57
  !f5
  db 9,$53
  !as4
  !d5
  !as4
  db 18,$17
  !f4
  db 9,$57
  !d5
  db 9,$53
  !as4
  db 9,$57
  !f5
  db 9,$53
  !as4
  !d5
  !as4
  db 18,$17
  !f4
  db 9,$57
  !d5
  db 9,$53
  !as4
  db 9,$57
  !f5
  db 9,$53
  !as4
  !d5
  !as4
  !loop : dw .sub57B6 : db 1
  !loop : dw .sub57FB : db 2
  !loop : dw .sub57B6 : db 1
  !loop : dw .sub581E : db 2
  !loop : dw .sub5841 : db 2
  !loop : dw .sub5864 : db 2
  db 18,$17
  !f4
  db 9,$57
  !ds5
  db 9,$53
  !as4
  db 9,$57
  !f5
  db 9,$53
  !as4
  !ds5
  !as4
  db 18,$17
  !f4
  db 9,$57
  !ds5
  db 9,$53
  !as4
  db 9,$57
  !f5
  db 9,$53
  !as4
  !ds5
  !as4
  db 18,$17
  !f4
  db 9,$57
  !d5
  db 9,$53
  !as4
  db 9,$57
  !f5
  db 9,$53
  !as4
  !d5
  !as4
  db 18,$17
  !f4
  db 9,$57
  !d5
  db 9,$53
  !as4
  db 9,$57
  !f5
  db 9,$53
  !as4
  !d5
  !as4
  !end

.pattern3_5
  !instr,!instr01
  !volume,195
  db 18,$17
  !as4
  db 9,$57
  !f5
  db 9,$53
  !d5
  db 9,$57
  !a5
  db 9,$53
  !d5
  !f5
  !d5
  db 18,$17
  !as4
  db 9,$57
  !f5
  db 9,$53
  !d5
  db 9,$57
  !a5
  db 9,$53
  !d5
  !f5
  !d5
  db 18,$17
  !as4
  db 9,$57
  !f5
  db 9,$53
  !d5
  db 9,$57
  !a5
  db 9,$53
  !d5
  !f5
  !d5
  db 18,$17
  !as4
  db 9,$57
  !f5
  db 9,$53
  !d5
  db 9,$57
  !a5
  db 9,$53
  !d5
  !f5
  !d5
  !loop : dw .sub5887 : db 2
  !loop : dw .sub58AA : db 2
  !loop : dw .sub5887 : db 2
  !loop : dw .sub58CD : db 2
  !loop : dw .sub58F0 : db 2
  !loop : dw .sub5913 : db 2
  db 18,$17
  !as4
  db 9,$57
  !f5
  db 9,$53
  !ds5
  db 9,$57
  !gs5
  db 9,$53
  !ds5
  !f5
  !ds5
  db 18,$17
  !as4
  db 9,$57
  !f5
  db 9,$53
  !ds5
  db 9,$57
  !gs5
  db 9,$53
  !ds5
  !f5
  !ds5
  db 18,$17
  !as4
  db 9,$57
  !f5
  db 9,$53
  !d5
  db 9,$57
  !gs5
  db 9,$53
  !d5
  !f5
  !d5
  db 18,$17
  !as4
  db 9,$57
  !f5
  db 9,$53
  !d5
  db 9,$57
  !gs5
  db 9,$53
  !d5
  !f5
  !d5
  !end

.pattern3_6
  !volume,100
  !dynamicVolume,50,170
  !subtranspose,60
  !instr,!instr18
  !vibrato,0,8,50
  !pan,10
  db 72,$77
  !c7
  !dynamicVolume,72,100
  !tie
  !volume,170
  db 24
  !a6
  db 33,$67
  !c7
  !a6
  db 18,$77
  !a6
  !c7
  db 18,$76
  !d7
  !volume,100
  !dynamicVolume,35,170
  db 72,$77
  !g6
  !dynamicVolume,36,130
  db 36
  !tie
  !dynamicVolume,20,170
  !a6
  !dynamicVolume,108,100
  db 108
  !g6
  !dynamicVolume,20,170
  db 36
  !g6
  db 10
  !c7
  !dynamicVolume,9,115
  db 9
  !tie
  !dynamicVolume,70,170
  db 100
  !tie
  !dynamicVolume,25,100
  db 25
  !tie
  !volume,170
  !slideIn,0,8,1
  db 24
  !a6
  !endSlide
  db 33,$67
  !c7
  !a6
  db 18,$77
  !a6
  !c7
  db 18,$76
  !d7
  !volume,140
  !dynamicVolume,80,170
  !slideIn,0,7,1
  db 36,$77
  !e7
  !endSlide
  db 36,$76
  !g7
  db 36,$77
  !e7
  !d7
  !volume,120
  !dynamicVolume,36,170
  db 72
  !e7
  !pitchSlide,48,24 : !c7
  db 45
  !tie
  !dynamicVolume,27,100
  db 27
  !tie
  !instr,!instr1C
  !subtranspose,0
  !vibrato,0,8,20
  !volume,155
  db 72
  !c7
  !tie
  !f6
  !c7
  !g6
  !tie
  !ds6
  !g6
  !slideIn,0,14,1
  !as6
  !tie
  !ds6
  !slideIn,0,20,1
  !as6
  !endSlide
  db 36
  !cs7
  !b6
  !as6
  !gs6
  db 72
  !as6
  !gs6
  !end

.pattern3_7
  db 18
  !rest
  !pan,20
  !dynamicPan,144,0
  !volume,100
  !dynamicVolume,50,140
  !subtranspose,40
  !instr,!instr18
  !vibrato,0,9,70
  db 72,$77
  !c7
  !dynamicVolume,72,100
  !tie
  !dynamicPan,144,20
  !volume,140
  db 24
  !a6
  db 33,$67
  !c7
  !a6
  db 18,$77
  !a6
  !c7
  db 18,$76
  !d7
  !dynamicPan,144,0
  !volume,100
  !dynamicVolume,35,140
  db 72,$77
  !g6
  !dynamicVolume,36,130
  db 36
  !tie
  !dynamicVolume,20,140
  !a6
  !dynamicPan,144,20
  !dynamicVolume,108,100
  db 108
  !g6
  !dynamicVolume,20,140
  db 36
  !g6
  !dynamicPan,144,0
  db 10
  !c7
  !dynamicVolume,9,115
  db 9
  !tie
  !dynamicVolume,70,140
  db 100
  !tie
  !dynamicVolume,25,100
  db 25
  !tie
  !dynamicPan,144,20
  !volume,140
  !slideIn,0,8,1
  db 24
  !a6
  !endSlide
  db 33,$67
  !c7
  !a6
  db 18,$77
  !a6
  !c7
  db 18,$76
  !d7
  !dynamicPan,144,0
  !volume,110
  !dynamicVolume,80,140
  !slideIn,0,7,1
  db 36,$77
  !e7
  !endSlide
  db 36,$76
  !g7
  db 36,$77
  !e7
  !d7
  !dynamicPan,144,20
  !volume,120
  !dynamicVolume,36,140
  db 72
  !e7
  !pitchSlide,48,24 : !c7
  db 27
  !tie
  !dynamicVolume,27,90
  !tie
  !dynamicPan,171,0
  !instr,!instr1C
  !subtranspose,20
  !vibrato,0,8,80
  !volume,140
  db 72
  !c7
  !tie
  db 27
  !tie
  !dynamicPan,144,20
  db 72
  !f6
  !c7
  !dynamicPan,144,0
  !g6
  !tie
  !dynamicPan,144,20
  !ds6
  !g6
  !dynamicPan,144,0
  !slideIn,0,14,1
  !as6
  !tie
  !dynamicPan,144,20
  !ds6
  !slideIn,0,20,1
  !as6
  !endSlide
  !dynamicPan,144,0
  db 36
  !cs7
  !b6
  !as6
  !gs6
  !dynamicPan,144,20
  db 72
  !as6
  db 45
  !gs6
  !end

.pattern4_0
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr25
  db 54,$78
  !a4
  !instr,!instr27
  db 18,$73
  !a5
  !loop : dw .sub4F0C : db 5
  db 18,$79
  %percNote(!instr23-!instr23)
  !echo,%11111111,42,42
  !instr,!instr25
  db 18,$28
  !c5
  db 6,$78
  !f4
  !pan,12
  db 5,$74
  !f4
  !pan,8
  db 5,$73
  !f4
  !pan,12
  db 5,$72
  !f4
  !pan,8
  db 5,$71
  !f4
  !pan,12
  db 5,$70
  !f4
  !pan,8
  !f4
  !pan,10
  db 9,$78
  !c5
  !pan,12
  db 9,$72
  !c5
  !pan,10
  db 9,$79
  !c5
  !pan,8
  db 9,$72
  !c5
  !pan,12
  db 6,$79
  !c5
  !pan,8
  db 6,$74
  !c5
  !pan,12
  db 6,$73
  !c5
  !pan,8
  db 6,$72
  !c5
  !pan,12
  db 6,$71
  !c5
  !pan,8
  db 6,$70
  !c5
  !end

.pattern4_1
  !loop : dw .sub5936 : db 11
  !instr,!instr24
  !pan,10
  db 9,$73
  !b4
  !pan,8
  !b4
  db 18,$74
  %percNote(!instr27-!instr23)
  !instr,!instr25
  db 36,$76
  !a3
  db 18
  !f4
  !f4
  !f4
  !f4
  !end

.pattern4_2
  db 54,$67
  !ds3
  db 36,$17
  !ds3
  db 18,$56
  !as3
  db 36,$77
  !ds3
  db 18
  !rest
  db 18,$56
  !as3
  db 18,$57
  !ds3
  !ds3
  db 18,$56
  !as3
  db 18,$57
  !ds3
  db 36,$66
  !as3
  db 54,$67
  !cs3
  db 36,$17
  !cs3
  db 18,$57
  !gs3
  db 36,$77
  !cs3
  db 18
  !rest
  db 18,$57
  !gs3
  !cs3
  !cs3
  !gs3
  !cs3
  db 36,$67
  !gs3
  db 18
  !rest
  db 36,$27
  !ds3
  !ds3
  db 18,$56
  !as3
  db 36,$77
  !ds3
  db 18
  !rest
  db 18,$56
  !as3
  db 18,$57
  !ds3
  !ds3
  db 18,$56
  !as3
  db 18,$57
  !ds3
  db 18,$56
  !as3
  db 18,$57
  !ds3
  db 36
  !cs3
  db 18
  !cs3
  db 36,$17
  !cs3
  db 18,$57
  !gs3
  db 36,$77
  !cs3
  db 18
  !rest
  db 18,$57
  !gs3
  !cs3
  !cs3
  !gs3
  !cs3
  db 36,$67
  !gs3
  db 54,$68
  !gs2
  db 36,$18
  !gs2
  db 18,$57
  !ds3
  db 36,$78
  !gs2
  db 18
  !rest
  db 18,$57
  !as2
  !as2
  !f3
  !as2
  !f3
  !as2
  !f3
  db 54,$67
  !c3
  db 36,$17
  !c3
  db 18,$57
  !g3
  db 36,$77
  !c3
  db 18
  !rest
  db 18,$17
  !c4
  !rest
  db 18,$57
  !c3
  db 18,$27
  !c4
  !c3
  !slideOut,24,12,252
  db 36,$77
  !c4
  !end

.pattern4_3
  !volume,135
  !loop : dw .sub595D : db 2
  !loop : dw .sub5976 : db 2
  !loop : dw .sub598F : db 2
  !loop : dw .sub59A8 : db 2
  !instr,!instr29
  db 18,$19
  !gs3
  !instr,!instr21
  db 18,$17
  !ds4
  !c5
  !ds4
  !instr,!instr29
  db 18,$19
  !gs3
  !instr,!instr21
  db 18,$17
  !ds4
  !c5
  !ds4
  !instr,!instr29
  db 18,$19
  !as3
  !instr,!instr21
  db 18,$17
  !f4
  !d5
  !f4
  !instr,!instr29
  db 18,$19
  !as3
  !instr,!instr21
  db 18,$17
  !f4
  !d5
  !f4
  !instr,!instr29
  db 18,$19
  !c4
  !instr,!instr21
  db 18,$17
  !g4
  !e5
  !g4
  !instr,!instr29
  db 18,$19
  !c4
  !instr,!instr21
  db 18,$17
  !g4
  !e5
  !g4
  !instr,!instr29
  db 18,$19
  !c4
  !instr,!instr01
  !volume,180
  db 18,$18
  !e6
  db 36
  !rest
  db 18,$27
  !e6
  !e6
  !slideOut,24,12,252
  db 36,$77
  !e6
  !end

.pattern4_4
  !volume,135
  !loop : dw .sub59C1 : db 2
  !loop : dw .sub59DA : db 2
  !loop : dw .sub59F3 : db 2
  !loop : dw .sub5A0C : db 2
  !instr,!instr29
  db 18,$19
  !ds4
  !instr,!instr21
  db 18,$17
  !gs4
  !ds5
  !gs4
  !instr,!instr29
  db 18,$19
  !ds4
  !instr,!instr21
  db 18,$17
  !gs4
  !ds5
  !gs4
  !instr,!instr29
  db 18,$19
  !f4
  !instr,!instr21
  db 18,$17
  !as4
  !f5
  !as4
  !instr,!instr29
  db 18,$19
  !f4
  !instr,!instr21
  db 18,$17
  !as4
  !f5
  !as4
  !instr,!instr29
  db 18,$19
  !g4
  !instr,!instr21
  db 18,$17
  !c5
  !g5
  !c5
  !instr,!instr29
  db 18,$19
  !g4
  !instr,!instr21
  db 18,$17
  !c5
  !g5
  !c5
  !instr,!instr29
  db 18,$19
  !g4
  !instr,!instr01
  !volume,180
  db 18,$18
  !gs6
  db 36
  !rest
  db 18,$27
  !gs6
  !gs6
  !slideOut,24,12,252
  db 36,$77
  !gs6
  !end

.pattern4_5
  !volume,135
  !loop : dw .sub5A25 : db 2
  !loop : dw .sub5A3E : db 2
  !loop : dw .sub5A57 : db 2
  !loop : dw .sub5A70 : db 2
  !instr,!instr29
  db 18,$19
  !gs4
  !instr,!instr21
  db 18,$17
  !c5
  !gs5
  !c5
  !instr,!instr29
  db 18,$19
  !gs4
  !instr,!instr21
  db 18,$17
  !c5
  !gs5
  !c5
  !instr,!instr29
  db 18,$19
  !as4
  !instr,!instr21
  db 18,$17
  !d5
  !as5
  !d5
  !instr,!instr29
  db 18,$19
  !as4
  !instr,!instr21
  db 18,$17
  !d5
  !as5
  !d5
  !instr,!instr29
  db 18,$19
  !c5
  !instr,!instr21
  db 18,$17
  !d5
  !c6
  !d5
  !instr,!instr29
  db 18,$19
  !c5
  !instr,!instr21
  db 18,$17
  !d5
  !c6
  !d5
  !instr,!instr29
  db 18,$19
  !c5
  !instr,!instr01
  !volume,180
  db 18,$18
  !c7
  db 36
  !rest
  db 18,$27
  !c7
  !c7
  !slideOut,24,12,252
  db 36,$77
  !c7
  !end

.pattern4_6
  !vibrato,0,6,30
  !subtranspose,0
  !instr,!instr03
  !volume,155
  !pan,10
  db 36,$77
  !g6
  !as5
  !c6
  !g6
  db 72
  !d6
  !c6
  db 36
  !f6
  !gs5
  !as5
  !f6
  db 72
  !c6
  !as5
  db 36
  !g6
  !as5
  !c6
  db 36,$75
  !as6
  db 72,$77
  !g6
  !d6
  db 36
  !f6
  !gs5
  !as5
  db 36,$76
  !gs6
  db 72,$77
  !f6
  !c6
  !volume,165
  !pan,12
  db 24
  !ds6
  !pan,0
  db 12,$71
  !ds6
  !pan,8
  db 24,$77
  !gs5
  !pan,20
  db 12,$71
  !gs5
  !pan,12
  db 24,$77
  !c6
  !pan,0
  db 12,$71
  !c6
  !pan,8
  db 24,$77
  !ds6
  !pan,20
  db 12,$71
  !ds6
  !pan,12
  db 24,$77
  !f6
  !pan,0
  db 12,$71
  !f6
  !pan,8
  db 24,$77
  !as5
  !pan,20
  db 12,$71
  !as5
  !pan,12
  db 24,$77
  !d6
  !pan,0
  db 12,$71
  !d6
  !pan,8
  db 24,$77
  !f6
  !pan,20
  db 12,$71
  !f6
  !pan,12
  db 36,$77
  !g6
  !pan,0
  db 18,$71
  !g6
  !pan,8
  db 36,$74
  !g6
  !pan,20
  db 18,$71
  !g6
  !pan,12
  db 36,$72
  !g6
  !pan,0
  db 18,$70
  !g6
  !pan,8
  !instr,!instr29
  !volume,180
  db 18,$18
  !e5
  db 36
  !rest
  db 18,$27
  !e5
  !e5
  !slideOut,24,12,252
  db 36,$77
  !e5
  !end

.pattern4_7
  db 18
  !rest
  !vibrato,0,6,30
  !subtranspose,40
  !instr,!instr03
  !volume,120
  !pan,0
  db 36,$77
  !g6
  !pan,20
  !as5
  !pan,0
  !c6
  !pan,20
  !g6
  !pan,8
  db 18
  !d6
  !pan,12
  !d6
  !pan,0
  !d6
  !pan,20
  !d6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,0
  !c6
  !pan,20
  !c6
  !pan,0
  db 36
  !f6
  !pan,20
  !gs5
  !pan,0
  !as5
  !pan,20
  !f6
  !pan,8
  db 18
  !c6
  !pan,12
  !c6
  !pan,0
  !c6
  !pan,20
  !c6
  !pan,8
  !as5
  !pan,12
  !as5
  !pan,0
  !as5
  !pan,20
  !as5
  !pan,0
  db 36
  !g6
  !pan,20
  !as5
  !pan,0
  !c6
  !pan,20
  db 36,$75
  !as6
  !pan,8
  db 18,$77
  !g6
  !pan,12
  !g6
  !pan,0
  !g6
  !pan,20
  !g6
  !pan,8
  !d6
  !pan,12
  !d6
  !pan,0
  !d6
  !pan,20
  !d6
  !pan,0
  db 36
  !f6
  !pan,20
  !gs5
  !pan,0
  !as5
  !pan,20
  db 36,$76
  !gs6
  !pan,8
  db 18,$77
  !f6
  !pan,12
  !f6
  !pan,0
  !f6
  !pan,20
  !f6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,0
  !c6
  !subtranspose,0
  !volume,150
  !pan,8
  db 24
  !c6
  !pan,20
  db 12,$71
  !c6
  !pan,12
  db 24,$77
  !ds5
  !pan,0
  db 12,$71
  !ds5
  !pan,8
  db 24,$77
  !gs5
  !pan,20
  db 12,$71
  !gs5
  !pan,12
  db 24,$77
  !c6
  !pan,0
  db 12,$71
  !c6
  !pan,8
  db 24,$77
  !d6
  !pan,20
  db 12,$71
  !d6
  !pan,12
  db 24,$77
  !f5
  !pan,0
  db 12,$71
  !f5
  !pan,8
  db 24,$77
  !as5
  !pan,20
  db 12,$71
  !as5
  !pan,12
  db 24,$77
  !d6
  !pan,0
  db 12,$71
  !d6
  !pan,8
  db 36,$77
  !e6
  !pan,20
  db 18,$71
  !e6
  !pan,12
  db 36,$74
  !e6
  !pan,0
  db 18,$71
  !e6
  !pan,8
  db 36,$72
  !e6
  !pan,20
  db 18,$70
  !e6
  !pan,12
  !instr,!instr29
  !volume,180
  db 18,$18
  !gs5
  db 36
  !rest
  db 18,$27
  !gs5
  !gs5
  !slideOut,24,12,252
  db 36,$77
  !gs5
  !end

.pattern5_0
  !echo,%11111000,42,42
  !echoParameters,4,60,0
  !pan,10
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr25
  db 54,$78
  !a4
  !instr,!instr27
  db 18,$73
  !a5
  !loop : dw .sub4F0C : db 2
  !loop : dw .sub4F39 : db 1
  !end

.pattern5_1
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,8
  db 18,$73
  !b4
  !pan,12
  db 17,$71
  !b4
  !loop : dw .sub4F80 : db 3
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,12
  db 18,$73
  !b4
  !pan,8
  db 17,$71
  !b4
  !end

.pattern5_2
  !endSlide
  !instr,!instr21
  !volume,190
  !loop : dw .sub4FCD : db 2
  !end

.pattern5_3
  !endSlide
  !instr,!instr29
  !pan,8
  !volume,165
  !loop : dw .sub507D : db 2
  !loop : dw .sub5096 : db 1
  !loop : dw .sub507D : db 2
  !loop : dw .sub5096 : db 1
  !end

.pattern5_4
  !endSlide
  !instr,!instr29
  !pan,12
  !volume,165
  !loop : dw .sub5122 : db 2
  !loop : dw .sub513B : db 2
  !loop : dw .sub5122 : db 2
  !loop : dw .sub513B : db 2
  !end

.pattern5_5
  !endSlide
  !instr,!instr29
  !pan,10
  !volume,165
  !loop : dw .sub5196 : db 2
  !loop : dw .sub51AF : db 1
  !loop : dw .sub5196 : db 2
  !loop : dw .sub51AF : db 1
  !end

.pattern5_6
  !endSlide
  !endVibrato
  !pan,10
  !instr,!instr19
  !subtranspose,60
  !volume,200
  !slideIn,0,9,1
  db 36,$77
  !c6
  db 36,$71
  !c6
  !endSlide
  db 36,$77
  !d6
  db 36,$71
  !d6
  db 54,$47
  !f6
  db 18,$38
  !f6
  db 18,$31
  !f6
  db 18,$47
  !f6
  !g6
  !a6
  db 18,$57
  !e6
  !a5
  db 18,$51
  !a5
  !e6
  !a5
  !a5
  db 18,$57
  !e6
  !a5
  db 18,$51
  !a5
  !subtranspose,0
  !instr,!instr05
  !volume,185
  !pan,12
  db 18,$21
  !a6
  db 18,$22
  !e7
  db 18,$23
  !a6
  db 18,$25
  !e7
  db 18,$27
  !a6
  !pan,20
  db 18,$23
  !e7
  db 18,$22
  !c7
  !subtranspose,60
  !pan,10
  !instr,!instr19
  !volume,200
  !slideIn,0,7,1
  db 36,$77
  !c6
  db 36,$71
  !c6
  !endSlide
  db 36,$77
  !d6
  db 36,$71
  !d6
  db 18,$57
  !f6
  db 18,$71
  !f6
  db 18,$47
  !g6
  db 18,$57
  !f6
  db 18,$51
  !f6
  db 18,$47
  !f6
  !g6
  !a6
  !loop : dw .sub5254 : db 1
  !end

.pattern5_7
  !endSlide
  !endVibrato
  !pan,10
  !instr,!instr19
  !subtranspose,60
  !volume,180
  !slideIn,0,9,1
  db 36,$77
  !c5
  db 36,$71
  !c5
  !endSlide
  db 36,$77
  !d5
  db 36,$71
  !d5
  db 54,$47
  !f5
  db 18,$38
  !f5
  db 18,$31
  !f5
  db 18,$47
  !f5
  !g5
  !a5
  db 18,$57
  !e5
  !a4
  db 18,$51
  !a4
  !e5
  !a4
  !a4
  db 18,$57
  !e5
  !a4
  db 18,$51
  !a4
  !endSlide
  !endVibrato
  !subtranspose,0
  !instr,!instr05
  !volume,185
  !pan,8
  db 18,$21
  !e6
  db 18,$22
  !c7
  db 18,$23
  !e6
  db 18,$26
  !c7
  db 18,$27
  !e6
  !pan,0
  db 18,$23
  !c7
  db 18,$22
  !e6
  !subtranspose,60
  !pan,10
  !instr,!instr19
  !volume,180
  !slideIn,0,7,1
  db 36,$77
  !c5
  db 36,$71
  !c5
  !endSlide
  db 36,$77
  !d5
  db 36,$71
  !d5
  db 18,$57
  !f5
  db 18,$51
  !f5
  db 18,$47
  !g5
  db 18,$57
  !f5
  db 18,$51
  !f5
  db 18,$47
  !f5
  !g5
  !a5
  db 18,$57
  !c6
  !a5
  db 18,$51
  !a5
  !c6
  !a5
  !a5
  db 18,$57
  !c6
  !a5
  db 18,$51
  !a5
  !subtranspose,0
  !instr,!instr05
  !volume,185
  !pan,8
  db 18,$21
  !a6
  db 18,$22
  !c7
  db 18,$23
  !a6
  db 18,$25
  !c7
  db 18,$27
  !a6
  !pan,0
  db 18,$23
  !c7
  db 18,$22
  !a6
  !end

.pattern6_0
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr25
  db 54,$78
  !a4
  !instr,!instr27
  db 18,$73
  !a5
  !loop : dw .sub4F0C : db 2
  !loop : dw .sub4F39 : db 1
  !end

.pattern6_1
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,8
  db 18,$73
  !b4
  !pan,12
  db 17,$71
  !b4
  !loop : dw .sub4F80 : db 3
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,12
  !instr,!instr25
  db 18,$78
  !g4
  !pan,8
  db 17
  !g4
  !end

.pattern6_2
  !loop : dw .sub5006 : db 1
  !loop : dw .sub504E : db 1
  !end

.pattern6_3
  !loop : dw .sub53B0 : db 1
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  !loop : dw .sub50F9 : db 1
  !end

.pattern6_4
  !loop : dw .sub5154 : db 2
  !loop : dw .sub5429 : db 1
  db 18,$17
  !d4
  db 18,$14
  !as4
  db 18,$17
  !f5
  db 18,$14
  !as4
  db 18,$17
  !d4
  db 18,$14
  !as4
  db 18,$17
  !f5
  db 18,$14
  !as4
  !loop : dw .sub516D : db 1
  !end

.pattern6_5
  !loop : dw .sub51E0 : db 2
  !loop : dw .sub51F9 : db 2
  !loop : dw .sub5212 : db 2
  !loop : dw .sub522B : db 1
  !end

.pattern6_6
  !transpose,12
  !vibrato,5,16,20
  !instr,!instr1B
  !volume,155
  !pan,8
  db 72,$27
  !as5
  !pan,12
  !d6
  !loop : dw .sub5285 : db 1
  !transpose,0
  !rest
  !instr,!instr03
  !volume,145
  !pan,5
  !dynamicPan,125,15
  db 18,$54
  !e7
  db 18,$55
  !d7
  db 18,$56
  !c7
  db 18,$57
  !a6
  !e6
  db 18,$54
  !a6
  db 18,$52
  !c7
  !transpose,12
  !instr,!instr1B
  !volume,155
  !pan,8
  db 18,$57
  !f5
  !pan,12
  db 36,$17
  !a5
  !pan,8
  !f5
  !pan,12
  db 18,$57
  !a5
  !pan,8
  db 36
  !f5
  !loop : dw .sub52B4 : db 1
  db 18
  !rest
  !transpose,0
  !instr,!instr01
  !volume,155
  !pan,12
  db 18,$18
  !e6
  !pan,8
  !e6
  !pan,12
  !e6
  !pan,8
  db 36,$08
  !e6
  !pan,12
  !slideIn,0,8,1
  db 36,$76
  !f6
  !end

.pattern6_7
  !transpose,12
  !vibrato,5,16,20
  !instr,!instr1B
  !volume,180
  !pan,11
  db 72,$27
  !d6
  !pan,9
  !f6
  !loop : dw .sub531A : db 1
  db 27
  !rest
  !transpose,0
  !subtranspose,10
  !instr,!instr03
  !volume,115
  !pan,5
  db 18,$71
  !e7
  !dynamicPan,99,15
  db 18,$74
  !e7
  db 18,$75
  !d7
  db 18,$76
  !c7
  db 18,$77
  !a6
  !e6
  db 9,$74
  !a6
  !transpose,12
  !subtranspose,0
  !instr,!instr1B
  !volume,180
  !pan,11
  db 18,$57
  !a5
  !pan,9
  db 36,$17
  !c6
  !pan,11
  !a5
  !pan,9
  db 18,$57
  !c6
  !pan,11
  db 36
  !a5
  !loop : dw .sub5349 : db 1
  db 18
  !rest
  !transpose,0
  !instr,!instr01
  !volume,185
  !pan,9
  db 18,$17
  !c7
  !pan,11
  !c7
  !pan,9
  !c7
  !pan,11
  db 36,$07
  !c7
  !pan,8
  !slideIn,0,8,1
  db 36,$75
  !b6
  !end

.pattern7_0
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr25
  db 54,$78
  !a4
  !instr,!instr27
  db 18,$73
  !a5
  !loop : dw .sub4F0C : db 2
  !loop : dw .sub4F39 : db 1
  !end

.pattern7_1
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,8
  db 18,$73
  !b4
  !pan,12
  db 17,$71
  !b4
  !loop : dw .sub4F80 : db 3
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,12
  db 18,$73
  !b4
  !pan,8
  db 17,$71
  !b4
  !end

.pattern7_2
  !loop : dw .sub4FCD : db 2
  !end

.pattern7_3
  !endSlide
  !loop : dw .sub507D : db 2
  !loop : dw .sub5096 : db 1
  !loop : dw .sub507D : db 2
  !loop : dw .sub5096 : db 1
  !end

.pattern7_4
  !endSlide
  !loop : dw .sub5122 : db 2
  !loop : dw .sub513B : db 2
  !loop : dw .sub5122 : db 2
  !loop : dw .sub513B : db 2
  !end

.pattern7_5
  !endSlide
  !loop : dw .sub5196 : db 2
  !loop : dw .sub51AF : db 1
  !loop : dw .sub5196 : db 2
  !loop : dw .sub51AF : db 1
  !end

.pattern7_6
  !subtranspose,60
  !endSlide
  !endVibrato
  !pan,10
  !instr,!instr19
  !volume,200
  db 24,$77
  !c6
  !pan,20
  db 24,$71
  !c6
  !pan,0
  !c6
  !pan,10
  db 24,$77
  !d6
  !pan,20
  db 24,$71
  !d6
  !pan,0
  !d6
  !loop : dw .sub54A3 : db 1
  !pan,10
  !subtranspose,60
  !instr,!instr19
  !volume,200
  db 24,$77
  !c6
  !pan,20
  db 24,$71
  !c6
  !pan,0
  !c6
  !pan,10
  db 24,$77
  !d6
  !pan,20
  db 24,$71
  !d6
  !pan,0
  !d6
  !loop : dw .sub54F7 : db 1
  !end

.pattern7_7
  !endSlide
  !endVibrato
  !pan,10
  !subtranspose,55
  !instr,!instr28
  !volume,155
  db 24,$77
  !c6
  !pan,20
  db 24,$71
  !c6
  !pan,0
  !c6
  !pan,10
  db 24,$77
  !d6
  !pan,20
  db 24,$71
  !d6
  !pan,0
  !d6
  !pan,10
  db 24,$77
  !f6
  !pan,20
  db 30,$71
  !f6
  !pan,10
  db 18,$38
  !f6
  !pan,0
  db 18,$31
  !f6
  !pan,10
  db 18,$57
  !f6
  !g6
  !a6
  !e6
  !a5
  !pan,20
  db 18,$51
  !a5
  !pan,0
  !e6
  !pan,20
  !a5
  !pan,0
  !a5
  !pan,10
  db 18,$57
  !e6
  !a5
  db 18,$51
  !a5
  !endSlide
  !endVibrato
  !subtranspose,0
  !instr,!instr05
  !volume,185
  !pan,8
  db 18,$21
  !e6
  db 18,$22
  !c7
  db 18,$23
  !e6
  db 18,$26
  !c7
  db 18,$27
  !e6
  !pan,0
  db 18,$23
  !c7
  db 18,$22
  !e6
  !pan,10
  !instr,!instr19
  !subtranspose,60
  !volume,180
  db 24,$77
  !a5
  !pan,0
  db 24,$71
  !a5
  !pan,20
  !a5
  !pan,10
  db 24,$77
  !a5
  !pan,0
  db 24,$71
  !a5
  !pan,20
  !a5
  !loop : dw .sub55DC : db 1
  !end

.pattern8_0
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr25
  db 54,$78
  !a4
  !instr,!instr27
  db 18,$73
  !a5
  !loop : dw .sub4F0C : db 3
  !loop : dw .sub5A89 : db 3
  !tie
  db 18,$78
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr25
  db 27,$78
  !a4
  db 9,$75
  !a4
  db 19,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 9,$72
  !f5
  db 8,$75
  !f5
  !end

.pattern8_1
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,8
  db 18,$73
  !b4
  !pan,12
  db 17,$71
  !b4
  !loop : dw .sub4F80 : db 3
  !loop : dw .sub5AB5 : db 3
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !instr,!instr25
  !pan,8
  db 18,$78
  !g4
  !g4
  !pan,12
  db 17,$71
  !b4
  !instr,!instr25
  db 18,$78
  !g4
  !g4
  !pan,8
  !instr,!instr24
  db 18,$71
  !b4
  !instr,!instr25
  db 7,$78
  !g4
  db 6,$73
  !g4
  db 5
  !g4
  !end

.pattern8_2
  db 54,$68
  !g2
  db 36,$18
  !g2
  db 18,$57
  !d3
  db 36,$78
  !g2
  db 18
  !rest
  db 18,$56
  !c4
  db 18,$57
  !c3
  !c3
  db 18,$56
  !c4
  db 18,$57
  !c3
  db 36,$66
  !c4
  !loop : dw .sub5384 : db 1
  db 18
  !rest
  db 18,$56
  !c4
  db 18,$57
  !c3
  !c3
  db 18,$56
  !c4
  db 18,$57
  !c3
  db 36,$66
  !c4
  db 54,$67
  !cs3
  db 36,$17
  !cs3
  db 18,$56
  !cs4
  db 36,$77
  !cs3
  db 18
  !rest
  db 18,$56
  !cs4
  db 18,$57
  !cs3
  !cs3
  db 18,$56
  !cs4
  db 18,$57
  !cs3
  db 36,$66
  !cs4
  !loop : dw .sub5B06 : db 1
  !loop : dw .sub5B25 : db 1
  !end

.pattern8_3
  !loop : dw .sub53B0 : db 1
  db 18,$17
  !g3
  db 18,$14
  !e4
  db 18,$17
  !as4
  db 18,$14
  !e4
  db 18,$17
  !g3
  db 18,$14
  !e4
  db 18,$17
  !as4
  db 18,$14
  !e4
  !volume,175
  !loop : dw .sub5B62 : db 2
  !loop : dw .sub5B7B : db 2
  !loop : dw .sub5B94 : db 2
  !end

.pattern8_4
  !loop : dw .sub5154 : db 2
  !loop : dw .sub5429 : db 1
  db 18,$17
  !c4
  db 18,$14
  !g4
  db 18,$17
  !e5
  db 18,$14
  !g4
  db 18,$17
  !c4
  db 18,$14
  !g4
  db 18,$17
  !e5
  db 18,$14
  !g4
  !volume,175
  !loop : dw .sub5BC5 : db 2
  !loop : dw .sub5BDE : db 2
  !loop : dw .sub5BF7 : db 4
  !end

.pattern8_5
  !loop : dw .sub51E0 : db 2
  !loop : dw .sub51F9 : db 2
  !loop : dw .sub5472 : db 1
  !volume,175
  !loop : dw .sub5C10 : db 2
  !loop : dw .sub5C29 : db 2
  !loop : dw .sub5C42 : db 4
  !end

.pattern8_6
  !loop : dw .sub5553 : db 1
  !pan,12
  db 18
  !e5
  !pan,8
  db 36,$27
  !e5
  !pan,12
  db 18,$57
  !e5
  !pan,8
  !slideIn,0,6,1
  db 24
  !g5
  !endSlide
  !pan,12
  !f5
  !pan,8
  !e5
  !pan,12
  db 36,$77
  !c5
  !dynamicVolume,36,120
  !tie
  !dynamicVolume,160,170
  db 72
  !tie
  !tie
  db 36,$27
  !tie
  !c5
  !pan,8
  db 36,$77
  !c5
  !dynamicVolume,36,120
  !tie
  !dynamicVolume,160,170
  db 72
  !tie
  !tie
  db 36,$27
  !tie
  !c5
  !pan,12
  db 36,$77
  !c5
  !dynamicVolume,36,120
  !tie
  !dynamicVolume,200,190
  db 72
  !tie
  !tie
  !tie
  !dynamicVolume,255,100
  !tie
  !tie
  !tie
  !tie
  !end

.pattern8_7
  !loop : dw .sub5638 : db 1
  !pan,9
  db 18
  !g5
  !pan,11
  db 36,$27
  !a5
  !pan,9
  db 18,$57
  !g5
  !pan,11
  !slideIn,0,6,1
  db 24
  !as5
  !endSlide
  !pan,9
  !a5
  !pan,11
  !g5
  !pan,8
  db 36,$77
  !f5
  !dynamicVolume,36,120
  !tie
  !dynamicVolume,160,185
  db 72
  !tie
  !tie
  db 36,$27
  !tie
  !f5
  !pan,12
  db 36,$77
  !f5
  !dynamicVolume,36,120
  !tie
  !dynamicVolume,160,185
  db 72
  !tie
  !tie
  db 36,$27
  !tie
  !f5
  !pan,8
  db 36,$77
  !f5
  !dynamicVolume,36,120
  !tie
  !dynamicVolume,200,190
  db 72
  !tie
  !tie
  !tie
  !dynamicVolume,255,100
  !tie
  !tie
  !tie
  !tie
  !end

.pattern9_0
  !loop : dw .sub5C5B : db 1
  !tie
  db 18,$78
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$78
  !d5
  db 18,$76
  !d5
  db 18,$73
  !d5
  !end

.pattern9_1
  !loop : dw .sub5CCE : db 8
  !end

.pattern9_2
  !loop : dw .sub5B06 : db 1
  !loop : dw .sub5CF3 : db 1
  !end

.pattern9_3
  !volume,150
  !loop : dw .sub5D4E : db 4
  !loop : dw .sub5D67 : db 4
  !end

.pattern9_4
  !volume,150
  !loop : dw .sub5D80 : db 4
  !loop : dw .sub5D99 : db 4
  !end

.pattern9_5
  !volume,150
  !loop : dw .sub5DB2 : db 4
  !loop : dw .sub5DCB : db 4
  !end

.pattern9_6
  !endVibrato
  !instr,!instr03
  !volume,145
  !loop : dw .sub5DE4 : db 4
  !end

.pattern9_7
  !endVibrato
  !instr,!instr03
  !volume,140
  !loop : dw .sub5E2D : db 4
  !end

.pattern10_0
  !volume,220
  !loop : dw .sub5C5B : db 1
  !tie
  db 18,$78
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$78
  !d5
  db 18
  !d5
  !d5
  !end

.pattern10_2
  !volume,150
  !loop : dw .sub5B06 : db 1
  !loop : dw .sub5CF3 : db 1
  !end

.pattern10_3
  !instr,!instr06
  !volume,150
  !loop : dw .sub5D4E : db 4
  !loop : dw .sub5D67 : db 4
  !end

.pattern10_4
  !instr,!instr06
  !volume,150
  !loop : dw .sub5D80 : db 4
  !loop : dw .sub5D99 : db 4
  !end

.pattern10_5
  !instr,!instr06
  !volume,150
  !loop : dw .sub5DB2 : db 4
  !loop : dw .sub5DCB : db 4
  !end

.pattern10_6
  !endVibrato
  !instr,!instr1B
  !volume,150
  !loop : dw .sub5DE4 : db 4
  !end

.pattern10_7
  !endVibrato
  !instr,!instr1B
  !volume,150
  !loop : dw .sub5E2D : db 4
  !end

.pattern11_2
  !instr,!instr20
  !transpose,12
  !volume,150
  !loop : dw .sub5B06 : db 1
  !loop : dw .sub5CF3 : db 1
  !end

.pattern11_3
  !instr,!instr1C
  !volume,135
  !loop : dw .sub5D4E : db 4
  !loop : dw .sub5D67 : db 4
  !end

.pattern11_4
  !instr,!instr1C
  !volume,135
  !loop : dw .sub5D80 : db 4
  !loop : dw .sub5D99 : db 4
  !end

.pattern11_5
  !instr,!instr1C
  !volume,135
  !loop : dw .sub5DB2 : db 4
  !loop : dw .sub5DCB : db 4
  !end

.pattern11_6
  !endVibrato
  !instr,!instr06
  !volume,135
  !loop : dw .sub5DE4 : db 4
  !end

.pattern11_7
  !endVibrato
  !instr,!instr06
  !volume,135
  !loop : dw .sub5E2D : db 4
  !end

.pattern12_0
  !instr,!instr09
  !volume,120
  !pan,20
  db 18,$17
  !ds6
  !d6
  !d6
  !ds6
  !d6
  !d6
  !ds6
  !d6
  !loop : dw .sub5E76 : db 1
  !e6
  !f6
  !e6
  !e6
  !f6
  !e6
  !f6
  !e6
  !end

.pattern12_1
  !instr,!instr09
  !volume,120
  !pan,0
  db 18,$17
  !g6
  !ds6
  !ds6
  !g6
  !ds6
  !ds6
  !g6
  !ds6
  !loop : dw .sub5EA7 : db 1
  !f6
  !g6
  !f6
  !f6
  !g6
  !f6
  !g6
  !f6
  !end

.pattern12_2
  !transpose,0
  !instr,!instr09
  !volume,140
  !pan,8
  db 18,$17
  !d7
  !as6
  !as6
  !d7
  !as6
  !as6
  !d7
  !as6
  !loop : dw .sub5ED8 : db 1
  !a6
  !c7
  !a6
  !a6
  !c7
  !a6
  !c7
  !a6
  !end

.pattern12_3
  !instr,!instr09
  !volume,140
  !pan,12
  db 18,$17
  !f7
  !d7
  !d7
  !f7
  !d7
  !d7
  !f7
  !d7
  !loop : dw .sub5F09 : db 1
  !c7
  !e7
  !c7
  !c7
  !e7
  !c7
  !e7
  !c7
  !end

.pattern12_4
  db 9
  !rest
  !subtranspose,25
  !instr,!instr09
  !volume,95
  !pan,20
  db 18,$17
  !ds6
  !ds6
  !d6
  !d6
  !ds6
  !d6
  !d6
  !ds6
  !d6
  !loop : dw .sub5E76 : db 1
  !e6
  !f6
  !e6
  !e6
  !f6
  !e6
  db 9,$77
  !f6
  !end

.pattern12_5
  db 9
  !rest
  !subtranspose,25
  !instr,!instr09
  !volume,95
  !pan,0
  db 18,$17
  !g6
  !g6
  !ds6
  !ds6
  !g6
  !ds6
  !ds6
  !g6
  !ds6
  !loop : dw .sub5EA7 : db 1
  !f6
  !g6
  !f6
  !f6
  !g6
  !f6
  db 9,$77
  !g6
  !end

.pattern12_6
  db 9
  !rest
  !subtranspose,25
  !instr,!instr09
  !volume,95
  !pan,8
  db 18,$17
  !d7
  !d7
  !as6
  !as6
  !d7
  !as6
  !as6
  !d7
  !as6
  !loop : dw .sub5ED8 : db 1
  !a6
  !c7
  !a6
  !a6
  !c7
  !a6
  db 9,$77
  !c7
  !end

.pattern12_7
  db 9
  !rest
  !subtranspose,25
  !instr,!instr09
  !volume,95
  !pan,12
  db 18,$17
  !f7
  !f7
  !d7
  !d7
  !f7
  !d7
  !d7
  !f7
  !d7
  !loop : dw .sub5F09 : db 1
  !c7
  !e7
  !c7
  !c7
  !e7
  !c7
  db 9,$77
  !e7
  !end

.sub4F0C
  !tie
  db 18,$78
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr25
  db 27,$78
  !a4
  db 9,$75
  !a4
  db 19,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 9,$72
  !f5
  db 8,$75
  !f5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr25
  db 54,$78
  !a4
  !instr,!instr27
  db 18,$73
  !a5
  !end

.sub4F39
  !tie
  db 18,$78
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr25
  db 27,$78
  !a4
  db 9,$75
  !a4
  db 19,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 9,$72
  !f5
  db 8,$75
  !f5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr25
  db 54,$78
  !a4
  !instr,!instr27
  db 18,$73
  !a5
  !tie
  db 18,$78
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr25
  db 27,$78
  !a4
  db 9,$75
  !a4
  db 19,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 9,$72
  !f5
  db 8,$75
  !f5
  !end

.sub4F80
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,12
  db 18,$73
  !b4
  !pan,8
  db 17,$71
  !b4
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,8
  db 18,$73
  !b4
  !pan,12
  db 17,$71
  !b4
  !end

.sub4FCD
  db 54,$67
  !as2
  db 36,$17
  !as2
  db 18,$57
  !f3
  db 36,$77
  !as2
  db 18
  !rest
  db 18,$57
  !f3
  !as2
  !as2
  db 18,$56
  !as3
  db 18,$57
  !as2
  db 36,$66
  !as3
  db 54,$67
  !a2
  db 36,$17
  !a2
  db 18,$57
  !e3
  db 36,$77
  !a2
  db 18
  !rest
  db 18,$57
  !e3
  !a2
  !a2
  db 18,$56
  !a3
  db 18,$57
  !a2
  db 36,$76
  !a3
  !end

.sub5006
  db 54,$68
  !g2
  db 36,$18
  !g2
  db 18,$57
  !d3
  db 36,$78
  !g2
  db 18
  !rest
  db 18,$57
  !c4
  !c3
  !c3
  db 18,$56
  !c4
  db 18,$57
  !c3
  db 36,$66
  !c4
  db 54,$68
  !f2
  db 36,$18
  !f2
  db 18,$57
  !c3
  db 36,$78
  !f2
  db 18
  !rest
  db 18,$57
  !c3
  db 18,$58
  !f2
  !f2
  db 18,$56
  !a3
  db 18,$57
  !g3
  !f3
  db 18,$58
  !f2
  db 54,$68
  !g2
  db 36,$18
  !g2
  db 18,$57
  !d3
  db 36,$78
  !g2
  !end

.sub504E
  db 18
  !rest
  db 18,$57
  !d3
  db 18,$58
  !g2
  !g2
  db 18,$56
  !f3
  db 18,$57
  !g3
  !d3
  db 18,$58
  !g2
  db 54,$67
  !c3
  db 36,$17
  !c3
  db 18,$57
  !g3
  db 36,$77
  !c3
  db 18
  !rest
  db 18,$54
  !c4
  db 18,$57
  !c3
  !c3
  db 36,$16
  !c4
  db 36,$78
  !b2
  !end

.sub507D
  db 18,$17
  !as3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  db 18,$17
  !as3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  !end

.sub5096
  db 18,$17
  !a3
  db 18,$14
  !e4
  db 18,$17
  !b4
  db 18,$14
  !e4
  db 18,$17
  !a3
  db 18,$14
  !e4
  db 18,$17
  !b4
  db 18,$14
  !e4
  db 18,$17
  !a3
  db 18,$14
  !e4
  db 18,$17
  !c5
  db 18,$14
  !e4
  db 18,$17
  !a3
  db 18,$14
  !e4
  db 18,$17
  !c5
  db 18,$14
  !e4
  !end

.sub50C7
  db 18,$17
  !f3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  db 18,$17
  !f3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  !end

.sub50E0
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  !end

.sub50F9
  db 18,$17
  !g3
  db 18,$14
  !e4
  db 18,$17
  !as4
  db 18,$14
  !e4
  db 18,$17
  !g3
  db 18,$14
  !e4
  db 18,$17
  !as4
  db 18,$14
  !e4
  !rest
  db 18,$17
  !c5
  !c5
  !c5
  db 36,$07
  !c5
  !slideIn,0,8,1
  db 36,$76
  !d5
  !end

.sub5122
  db 18,$17
  !f4
  db 18,$14
  !as4
  db 18,$17
  !f5
  db 18,$14
  !as4
  db 18,$17
  !f4
  db 18,$14
  !as4
  db 18,$17
  !f5
  db 18,$14
  !as4
  !end

.sub513B
  db 18,$17
  !e4
  db 18,$14
  !g4
  db 18,$17
  !e5
  db 18,$14
  !g4
  db 18,$17
  !e4
  db 18,$14
  !g4
  db 18,$17
  !e5
  db 18,$14
  !g4
  !end

.sub5154
  db 18,$17
  !d4
  db 18,$14
  !as4
  db 18,$17
  !f5
  db 18,$14
  !as4
  db 18,$17
  !d4
  db 18,$14
  !as4
  db 18,$17
  !f5
  db 18,$14
  !as4
  !end

.sub516D
  db 18,$17
  !c4
  db 18,$14
  !g4
  db 18,$17
  !e5
  db 18,$14
  !g4
  db 18,$17
  !c4
  db 18,$14
  !g4
  db 18,$17
  !e5
  db 18,$14
  !g4
  !rest
  db 18,$17
  !e5
  !e5
  !e5
  db 36,$07
  !e5
  !slideIn,0,8,1
  db 36,$76
  !f5
  !end

.sub5196
  db 18,$17
  !as4
  db 18,$14
  !d5
  db 18,$17
  !a5
  db 18,$14
  !d5
  db 18,$17
  !as4
  db 18,$14
  !d5
  db 18,$17
  !a5
  db 18,$14
  !d5
  !end

.sub51AF
  db 18,$17
  !a4
  db 18,$14
  !c5
  db 18,$17
  !g5
  db 18,$14
  !c5
  db 18,$17
  !a4
  db 18,$14
  !c5
  db 18,$17
  !g5
  db 18,$14
  !c5
  db 18,$17
  !a4
  db 18,$14
  !b4
  db 18,$17
  !g5
  db 18,$14
  !b4
  db 18,$17
  !a4
  db 18,$14
  !b4
  db 18,$17
  !g5
  db 18,$14
  !b4
  !end

.sub51E0
  db 18,$17
  !g4
  db 18,$14
  !d5
  db 18,$17
  !as5
  db 18,$14
  !d5
  db 18,$17
  !g4
  db 18,$14
  !d5
  db 18,$17
  !as5
  db 18,$14
  !d5
  !end

.sub51F9
  db 18,$17
  !f4
  db 18,$14
  !c5
  db 18,$17
  !g5
  db 18,$14
  !c5
  db 18,$17
  !f4
  db 18,$14
  !c5
  db 18,$17
  !g5
  db 18,$14
  !c5
  !end

.sub5212
  db 18,$17
  !g4
  db 18,$14
  !d5
  db 18,$17
  !a5
  db 18,$14
  !d5
  db 18,$17
  !g4
  db 18,$14
  !d5
  db 18,$17
  !a5
  db 18,$14
  !d5
  !end

.sub522B
  db 18,$17
  !e4
  db 18,$14
  !c5
  db 18,$17
  !g5
  db 18,$14
  !c5
  db 18,$17
  !e4
  db 18,$14
  !c5
  db 18,$17
  !g5
  db 18,$14
  !c5
  !rest
  db 18,$17
  !gs5
  !gs5
  !gs5
  db 36,$07
  !gs5
  !slideIn,0,8,1
  db 36,$76
  !gs5
  !end

.sub5254
  db 18,$57
  !c7
  !a6
  db 18,$51
  !a6
  !c7
  !a6
  !a6
  db 18,$57
  !c7
  !a6
  db 18,$51
  !a6
  !subtranspose,0
  !instr,!instr05
  !volume,185
  !pan,12
  db 18,$21
  !c7
  db 18,$22
  !e7
  db 18,$23
  !c7
  db 18,$25
  !e7
  db 18,$27
  !c7
  !pan,20
  db 18,$23
  !e7
  db 18,$22
  !c7
  !end

.sub5285
  db 18
  !rest
  !pan,8
  db 36,$18
  !d6
  !pan,12
  db 18,$57
  !d6
  !pan,8
  db 36
  !d6
  !pan,12
  !d6
  !pan,8
  db 18
  !c6
  !pan,12
  !d6
  !pan,8
  !c6
  !pan,12
  db 18,$58
  !f5
  db 36
  !rest
  !pan,8
  db 18,$57
  !c6
  !pan,12
  db 18,$58
  !f5
  !end

.sub52B4
  db 18
  !rest
  !pan,12
  db 36,$17
  !a5
  !pan,8
  db 18,$57
  !a5
  !pan,12
  !slideIn,0,8,1
  db 18,$58
  !a5
  !endSlide
  !pan,8
  db 18,$57
  !a5
  !pan,12
  !c6
  !pan,8
  !d6
  !pan,12
  db 27,$67
  !e6
  !pan,0
  db 27,$61
  !e6
  !pan,20
  !e6
  !pan,0
  db 27,$60
  !e6
  !pan,20
  !e6
  !pan,0
  db 9
  !e6
  !end

.sub52EF
  db 72
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  db 18
  !rest
  !endSlide
  !endVibrato
  !subtranspose,0
  !instr,!instr05
  !volume,185
  !pan,8
  db 18,$21
  !e6
  db 18,$22
  !c7
  db 18,$23
  !e6
  db 18,$26
  !c7
  db 18,$27
  !e6
  !pan,0
  db 18,$23
  !c7
  db 18,$22
  !e6
  !end

.sub531A
  db 18
  !rest
  !pan,11
  db 36,$18
  !g6
  !pan,9
  db 18,$57
  !g6
  !pan,11
  db 36
  !f6
  !pan,9
  !g6
  !pan,11
  db 18
  !e6
  !pan,9
  !f6
  !pan,11
  !e6
  !pan,9
  db 18,$58
  !a5
  db 36
  !rest
  !pan,11
  db 18,$57
  !e6
  !pan,9
  db 18,$58
  !a5
  !end

.sub5349
  db 18
  !rest
  !pan,9
  db 36,$17
  !d6
  !pan,11
  db 18,$57
  !d6
  !pan,9
  !slideIn,0,8,1
  db 18,$58
  !c6
  !endSlide
  !pan,11
  db 18,$57
  !d6
  !pan,9
  !f6
  !pan,11
  !g6
  !pan,9
  db 27,$66
  !c7
  !pan,20
  db 27,$61
  !c7
  !pan,0
  !c7
  !pan,20
  db 27,$60
  !c7
  !pan,0
  !c7
  !pan,20
  db 9
  !c7
  !end

.sub5384
  db 54,$68
  !f2
  db 36,$18
  !f2
  db 18,$57
  !c3
  db 36,$78
  !f2
  db 18
  !rest
  db 18,$57
  !c3
  db 18,$58
  !f2
  !f2
  db 18,$56
  !a3
  db 18,$57
  !g3
  !f3
  db 18,$58
  !f2
  db 54,$68
  !g2
  db 36,$18
  !g2
  db 18,$57
  !d3
  db 36,$78
  !g2
  !end

.sub53B0
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  db 18,$17
  !g3
  db 18,$14
  !a4
  db 18,$17
  !d5
  db 18,$14
  !a4
  db 18,$17
  !f3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  db 18,$17
  !f3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  db 18,$17
  !f3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  db 18,$17
  !f3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  db 18,$17
  !g3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  !end

.sub5429
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !e5
  db 18,$14
  !a4
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !e5
  db 18,$14
  !a4
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !d5
  db 18,$14
  !a4
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !d5
  db 18,$14
  !a4
  db 18,$17
  !d4
  db 18,$14
  !as4
  db 18,$17
  !f5
  db 18,$14
  !as4
  db 18,$17
  !d4
  db 18,$14
  !as4
  db 18,$17
  !f5
  db 18,$14
  !as4
  !end

.sub5472
  db 18,$17
  !g4
  db 18,$14
  !d5
  db 18,$17
  !a5
  db 18,$14
  !d5
  db 18,$17
  !g4
  db 18,$14
  !d5
  db 18,$17
  !a5
  db 18,$14
  !d5
  db 18,$17
  !g4
  db 18,$14
  !c5
  db 18,$17
  !g5
  db 18,$14
  !c5
  db 18,$17
  !g4
  db 18,$14
  !c5
  db 18,$17
  !g5
  db 18,$14
  !c5
  !end

.sub54A3
  !pan,10
  db 24,$77
  !f6
  !pan,20
  db 30,$71
  !f6
  !pan,10
  db 18,$38
  !f6
  !pan,0
  db 18,$31
  !f6
  !pan,10
  db 18,$57
  !f6
  !g6
  !a6
  !e6
  !a5
  !pan,20
  db 18,$51
  !a5
  !pan,0
  !e6
  !pan,20
  !a5
  !pan,0
  !a5
  !pan,10
  db 18,$57
  !e6
  !a5
  db 18,$51
  !a5
  !subtranspose,0
  !instr,!instr05
  !volume,185
  !pan,12
  db 18,$21
  !a6
  db 18,$22
  !e7
  db 18,$23
  !a6
  db 18,$25
  !e7
  db 18,$27
  !a6
  !pan,20
  db 18,$23
  !e7
  db 18,$22
  !c7
  !end

.sub54F7
  !pan,10
  db 18,$58
  !f6
  db 18,$57
  !g6
  !pan,20
  db 18,$51
  !g6
  !pan,10
  db 18,$77
  !f6
  !pan,0
  db 18,$71
  !f6
  !pan,10
  !slideIn,0,6,1
  db 18,$77
  !g6
  !endSlide
  !c7
  !d7
  db 18,$67
  !b6
  !c7
  !b6
  !g6
  !pan,20
  db 18,$61
  !b6
  !pan,0
  !g6
  !pan,10
  db 18,$57
  !b6
  !g6
  !pan,20
  db 18,$51
  !g6
  !subtranspose,0
  !instr,!instr05
  !volume,185
  !pan,12
  db 18,$21
  !c7
  db 18,$22
  !e7
  db 18,$23
  !c7
  db 18,$65
  !e7
  db 18,$67
  !c7
  !pan,20
  db 18,$63
  !e7
  db 18,$62
  !c7
  !end

.sub5553
  !instr,!instr01
  !vibrato,5,16,20
  !volume,155
  !pan,8
  db 18,$57
  !d6
  !pan,12
  db 36,$17
  !d6
  !pan,8
  !d6
  !pan,12
  db 18,$67
  !d6
  !pan,8
  db 36,$17
  !d6
  db 18
  !rest
  !pan,12
  db 36
  !f6
  !pan,8
  db 18,$57
  !f6
  !pan,12
  db 36
  !d6
  !pan,8
  db 18
  !c6
  !pan,12
  !c6
  !pan,8
  !c6
  !pan,12
  !d6
  !pan,8
  !e6
  !pan,12
  db 36,$17
  !a5
  !pan,8
  !c6
  !pan,12
  db 18,$57
  !f5
  !pan,11
  !slideOut,24,12,252
  db 36,$58
  !a5
  !endSlide
  !instr,!instr03
  !pan,15
  !dynamicPan,107,5
  !volume,145
  db 18,$75
  !a6
  db 18,$76
  !c7
  db 18,$77
  !a6
  !g6
  db 18,$74
  !a6
  db 18,$72
  !f6
  !instr,!instr01
  !volume,155
  !pan,8
  db 18,$57
  !f5
  !pan,12
  db 36,$17
  !a5
  !pan,8
  !f5
  !pan,12
  db 18,$57
  !a5
  !pan,8
  db 36
  !f5
  !end

.sub55DC
  !pan,10
  db 18,$58
  !d6
  db 18,$57
  !d6
  !pan,0
  db 18,$51
  !d6
  !pan,10
  db 18,$77
  !d6
  !pan,20
  db 18,$71
  !d6
  !pan,10
  !slideIn,0,6,1
  db 18,$77
  !d6
  !endSlide
  !a6
  !a6
  db 18,$67
  !g6
  !a6
  !g6
  !e6
  !pan,0
  db 18,$61
  !e6
  !pan,20
  !e6
  !pan,10
  db 18,$57
  !g6
  !e6
  !pan,0
  db 18,$51
  !e6
  !subtranspose,0
  !instr,!instr05
  !volume,185
  !pan,8
  db 18,$21
  !a6
  db 18,$22
  !c7
  db 18,$23
  !a6
  db 18,$65
  !c7
  db 18,$67
  !a6
  !pan,0
  db 18,$63
  !c7
  db 18,$62
  !a6
  !end

.sub5638
  !instr,!instr01
  !vibrato,5,16,20
  !volume,185
  !pan,11
  db 18,$57
  !f6
  !pan,9
  db 36,$17
  !f6
  !pan,11
  !f6
  !pan,9
  db 18,$67
  !f6
  !pan,11
  db 36,$17
  !g6
  db 18
  !rest
  !pan,9
  db 36
  !a6
  !pan,11
  db 18,$57
  !a6
  !pan,9
  db 36
  !g6
  !pan,11
  db 18
  !f6
  !pan,9
  !g6
  !pan,11
  !e6
  !pan,9
  !f6
  !pan,11
  !g6
  !pan,9
  db 36,$17
  !c6
  !pan,11
  !e6
  !pan,9
  db 18,$57
  !a5
  !pan,11
  !slideOut,24,12,250
  db 36,$58
  !c6
  !endSlide
  db 9
  !rest
  !instr,!instr03
  !volume,115
  !subtranspose,10
  !pan,15
  db 18,$71
  !a6
  !dynamicPan,107,5
  db 18,$75
  !a6
  db 18,$76
  !c7
  db 18,$77
  !a6
  !g6
  db 9,$72
  !a6
  !subtranspose,0
  !instr,!instr01
  !volume,185
  !pan,11
  db 18,$57
  !a5
  !pan,9
  db 36,$17
  !c6
  !pan,11
  !a5
  !pan,9
  db 18,$56
  !d6
  !pan,11
  db 36,$57
  !a5
  !end

.sub56C8
  db 18
  !rest
  db 18,$57
  !f3
  !as2
  !as2
  db 18,$56
  !as3
  db 18,$57
  !as2
  db 36,$66
  !as3
  db 54,$67
  !a2
  db 36,$17
  !a2
  db 18,$57
  !e3
  db 36,$77
  !a2
  !end

.sub56E5
  db 18,$17
  !a3
  db 9,$57
  !a4
  db 9,$53
  !e4
  db 9,$57
  !c5
  db 9,$53
  !e4
  !a4
  !e4
  db 18,$17
  !a3
  db 9,$57
  !a4
  db 9,$53
  !e4
  db 9,$57
  !c5
  db 9,$53
  !e4
  !a4
  !e4
  db 18,$17
  !a3
  db 9,$57
  !b4
  db 9,$53
  !e4
  db 9,$57
  !c5
  db 9,$53
  !e4
  !b4
  !e4
  db 18,$17
  !a3
  db 9,$57
  !b4
  db 9,$53
  !e4
  db 9,$57
  !b4
  db 9,$53
  !e4
  !b4
  !e4
  !end

.sub572A
  db 18,$17
  !as3
  db 9,$57
  !as4
  db 9,$53
  !f4
  db 9,$57
  !d5
  db 9,$53
  !f4
  !as4
  !f4
  db 18,$17
  !as3
  db 9,$57
  !as4
  db 9,$53
  !f4
  db 9,$57
  !d5
  db 9,$53
  !f4
  !as4
  !f4
  !end

.sub574D
  db 18,$17
  !cs4
  db 9,$57
  !ds5
  db 9,$53
  !gs4
  db 9,$57
  !f5
  db 9,$53
  !gs4
  !ds5
  !gs4
  db 18,$17
  !cs4
  db 9,$57
  !ds5
  db 9,$53
  !gs4
  db 9,$57
  !f5
  db 9,$53
  !gs4
  !ds5
  !gs4
  !end

.sub5770
  db 18,$17
  !c4
  db 9,$57
  !as4
  db 9,$53
  !g4
  db 9,$57
  !ds5
  db 9,$53
  !g4
  !as4
  !g4
  db 18,$17
  !c4
  db 9,$57
  !as4
  db 9,$53
  !g4
  db 9,$57
  !ds5
  db 9,$53
  !g4
  !as4
  !g4
  !end

.sub5793
  db 18,$17
  !b3
  db 9,$57
  !cs5
  db 9,$53
  !fs4
  db 9,$57
  !ds5
  db 9,$53
  !fs4
  !cs5
  !fs4
  db 18,$17
  !b3
  db 9,$57
  !cs5
  db 9,$53
  !fs4
  db 9,$57
  !ds5
  db 9,$53
  !fs4
  !cs5
  !fs4
  !end

.sub57B6
  db 18,$17
  !e4
  db 9,$57
  !c5
  db 9,$53
  !a4
  db 9,$57
  !e5
  db 9,$53
  !a4
  !c5
  !a4
  db 18,$17
  !e4
  db 9,$57
  !c5
  db 9,$53
  !a4
  db 9,$57
  !e5
  db 9,$53
  !a4
  !c5
  !a4
  db 18,$17
  !e4
  db 9,$57
  !c5
  db 9,$53
  !a4
  db 9,$57
  !e5
  db 9,$53
  !a4
  !c5
  !a4
  db 18,$17
  !e4
  db 9,$57
  !c5
  db 9,$53
  !a4
  db 9,$57
  !c5
  db 9,$53
  !a4
  !c5
  !a4
  !end

.sub57FB
  db 18,$17
  !f4
  db 9,$57
  !d5
  db 9,$53
  !as4
  db 9,$57
  !f5
  db 9,$53
  !as4
  !d5
  !as4
  db 18,$17
  !f4
  db 9,$57
  !d5
  db 9,$53
  !as4
  db 9,$57
  !f5
  db 9,$53
  !as4
  !d5
  !as4
  !end

.sub581E
  db 18,$17
  !gs4
  db 9,$57
  !f5
  db 9,$53
  !cs5
  db 9,$57
  !gs5
  db 9,$53
  !cs5
  !f5
  !cs5
  db 18,$17
  !gs4
  db 9,$57
  !f5
  db 9,$53
  !cs5
  db 9,$57
  !gs5
  db 9,$53
  !cs5
  !f5
  !cs5
  !end

.sub5841
  db 18,$17
  !g4
  db 9,$57
  !ds5
  db 9,$53
  !as4
  db 9,$57
  !g5
  db 9,$53
  !as4
  !ds5
  !as4
  db 18,$17
  !g4
  db 9,$57
  !ds5
  db 9,$53
  !as4
  db 9,$57
  !g5
  db 9,$53
  !as4
  !ds5
  !as4
  !end

.sub5864
  db 18,$17
  !fs4
  db 9,$57
  !ds5
  db 9,$53
  !b4
  db 9,$57
  !fs5
  db 9,$53
  !b4
  !ds5
  !b4
  db 18,$17
  !fs4
  db 9,$57
  !ds5
  db 9,$53
  !b4
  db 9,$57
  !fs5
  db 9,$53
  !b4
  !ds5
  !b4
  !end

.sub5887
  db 18,$17
  !a4
  db 9,$57
  !e5
  db 9,$53
  !c5
  db 9,$57
  !g5
  db 9,$53
  !c5
  !e5
  !c5
  db 18,$17
  !a4
  db 9,$57
  !e5
  db 9,$53
  !c5
  db 9,$57
  !g5
  db 9,$53
  !c5
  !e5
  !c5
  !end

.sub58AA
  db 18,$17
  !as4
  db 9,$57
  !f5
  db 9,$53
  !d5
  db 9,$57
  !a5
  db 9,$53
  !d5
  !f5
  !d5
  db 18,$17
  !as4
  db 9,$57
  !f5
  db 9,$53
  !d5
  db 9,$57
  !a5
  db 9,$53
  !d5
  !f5
  !d5
  !end

.sub58CD
  db 18,$17
  !cs5
  db 9,$57
  !gs5
  db 9,$53
  !f5
  db 9,$57
  !c6
  db 9,$53
  !f5
  !gs5
  !f5
  db 18,$17
  !cs5
  db 9,$57
  !gs5
  db 9,$53
  !f5
  db 9,$57
  !c6
  db 9,$53
  !f5
  !gs5
  !f5
  !end

.sub58F0
  db 18,$17
  !c5
  db 9,$57
  !g5
  db 9,$53
  !d5
  db 9,$57
  !as5
  db 9,$53
  !d5
  !g5
  !d5
  db 18,$17
  !c5
  db 9,$57
  !g5
  db 9,$53
  !d5
  db 9,$57
  !as5
  db 9,$53
  !d5
  !g5
  !d5
  !end

.sub5913
  db 18,$17
  !b4
  db 9,$57
  !fs5
  db 9,$53
  !ds5
  db 9,$57
  !as5
  db 9,$53
  !ds5
  !fs5
  !ds5
  db 18,$17
  !b4
  db 9,$57
  !fs5
  db 9,$53
  !ds5
  db 9,$57
  !as5
  db 9,$53
  !ds5
  !fs5
  !ds5
  !end

.sub5936
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,8
  db 18,$73
  !b4
  !pan,12
  db 17,$71
  !b4
  !end

.sub595D
  !instr,!instr29
  db 18,$19
  !ds3
  !instr,!instr21
  db 18,$17
  !ds4
  !d5
  !ds4
  !instr,!instr29
  db 18,$19
  !ds3
  !instr,!instr21
  db 18,$17
  !ds4
  !d5
  !ds4
  !end

.sub5976
  !instr,!instr29
  db 18,$19
  !cs3
  !instr,!instr21
  db 18,$17
  !cs4
  !c5
  !cs4
  !instr,!instr29
  db 18,$19
  !cs3
  !instr,!instr21
  db 18,$17
  !cs4
  !c5
  !cs4
  !end

.sub598F
  !instr,!instr29
  db 18,$19
  !ds3
  !instr,!instr21
  db 18,$17
  !g4
  !ds5
  !g4
  !instr,!instr29
  db 18,$19
  !ds3
  !instr,!instr21
  db 18,$17
  !g4
  !ds5
  !g4
  !end

.sub59A8
  !instr,!instr29
  db 18,$19
  !cs3
  !instr,!instr21
  db 18,$17
  !f4
  !cs5
  !f4
  !instr,!instr29
  db 18,$19
  !cs3
  !instr,!instr21
  db 18,$17
  !f4
  !cs5
  !f4
  !end

.sub59C1
  !instr,!instr29
  db 18,$19
  !ds4
  !instr,!instr21
  db 18,$17
  !g4
  !ds5
  !g4
  !instr,!instr29
  db 18,$19
  !ds4
  !instr,!instr21
  db 18,$17
  !g4
  !ds5
  !g4
  !end

.sub59DA
  !instr,!instr29
  db 18,$19
  !cs4
  !instr,!instr21
  db 18,$17
  !f4
  !cs5
  !f4
  !instr,!instr29
  db 18,$19
  !cs4
  !instr,!instr21
  db 18,$17
  !f4
  !cs5
  !f4
  !end

.sub59F3
  !instr,!instr29
  db 18,$19
  !ds4
  !instr,!instr21
  db 18,$17
  !as4
  !g5
  !as4
  !instr,!instr29
  db 18,$19
  !ds4
  !instr,!instr21
  db 18,$17
  !as4
  !g5
  !as4
  !end

.sub5A0C
  !instr,!instr29
  db 18,$19
  !cs4
  !instr,!instr21
  db 18,$17
  !gs4
  !f5
  !gs4
  !instr,!instr29
  db 18,$19
  !cs4
  !instr,!instr21
  db 18,$17
  !gs4
  !f5
  !gs4
  !end

.sub5A25
  !instr,!instr29
  db 18,$19
  !g4
  !instr,!instr21
  db 18,$17
  !as4
  !g5
  !as4
  !instr,!instr29
  db 18,$19
  !g4
  !instr,!instr21
  db 18,$17
  !as4
  !g5
  !as4
  !end

.sub5A3E
  !instr,!instr29
  db 18,$19
  !f4
  !instr,!instr21
  db 18,$17
  !gs4
  !f5
  !gs4
  !instr,!instr29
  db 18,$19
  !f4
  !instr,!instr21
  db 18,$17
  !gs4
  !f5
  !gs4
  !end

.sub5A57
  !instr,!instr29
  db 18,$19
  !g4
  !instr,!instr21
  db 18,$17
  !d5
  !as5
  !d5
  !instr,!instr29
  db 18,$19
  !g4
  !instr,!instr21
  db 18,$17
  !d5
  !as5
  !d5
  !end

.sub5A70
  !instr,!instr29
  db 18,$19
  !f4
  !instr,!instr21
  db 18,$17
  !c5
  !gs5
  !c5
  !instr,!instr29
  db 18,$19
  !f4
  !instr,!instr21
  db 18,$17
  !c5
  !gs5
  !c5
  !end

.sub5A89
  !tie
  db 18,$78
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr25
  db 27,$78
  !a4
  db 9
  !a4
  db 19,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 9,$72
  !f5
  db 8,$75
  !f5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  !instr,!instr25
  db 54,$78
  !a4
  !instr,!instr27
  db 18,$73
  !a5
  !end

.sub5AB5
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !instr,!instr25
  !pan,12
  db 18,$77
  !f4
  !pan,8
  db 9
  !f4
  db 8,$76
  !f4
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,10
  db 17,$73
  !b4
  db 19,$77
  %percNote(!instr27-!instr23)
  !instr,!instr24
  db 18,$71
  !b4
  !pan,8
  db 18,$73
  !b4
  !pan,12
  db 17,$71
  !b4
  !end

.sub5B06
  db 54,$6B
  !ds2
  db 36,$1B
  !ds2
  db 18,$57
  !ds3
  db 36,$7B
  !ds2
  db 18
  !rest
  db 18,$57
  !ds3
  db 18,$5B
  !ds2
  !ds2
  db 18,$57
  !ds3
  db 18,$5B
  !ds2
  db 36,$67
  !ds3
  !end

.sub5B25
  db 54,$69
  !f2
  db 36,$19
  !f2
  db 18,$57
  !f3
  db 36,$79
  !f2
  db 18
  !rest
  db 18,$57
  !f3
  db 18,$59
  !f2
  !f2
  db 18,$57
  !f3
  db 18,$59
  !f2
  db 36,$67
  !f3
  db 18
  !rest
  db 36,$19
  !f2
  !f2
  db 18,$57
  !f3
  db 36,$79
  !f2
  db 18
  !rest
  db 18,$57
  !f3
  db 18,$59
  !f2
  !f2
  db 18,$57
  !f3
  db 18,$59
  !f2
  db 36,$67
  !f3
  !end

.sub5B62
  db 18,$17
  !cs3
  db 18,$14
  !cs4
  db 18,$17
  !gs4
  db 18,$14
  !cs4
  db 18,$17
  !cs3
  db 18,$14
  !cs4
  db 18,$17
  !gs4
  db 18,$14
  !cs4
  !end

.sub5B7B
  db 18,$17
  !ds3
  db 18,$14
  !ds4
  db 18,$17
  !as4
  db 18,$14
  !ds4
  db 18,$17
  !ds3
  db 18,$14
  !ds4
  db 18,$17
  !as4
  db 18,$14
  !ds4
  !end

.sub5B94
  db 18,$17
  !f3
  db 18,$14
  !g4
  db 18,$17
  !c5
  db 18,$14
  !g4
  db 18,$17
  !f3
  db 18,$14
  !g4
  db 18,$17
  !c5
  db 18,$14
  !g4
  db 18,$17
  !f3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  db 18,$17
  !f3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  !end

.sub5BC5
  db 18,$17
  !gs3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  db 18,$17
  !gs3
  db 18,$14
  !f4
  db 18,$17
  !c5
  db 18,$14
  !f4
  !end

.sub5BDE
  db 18,$17
  !as3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  db 18,$17
  !as3
  db 18,$14
  !g4
  db 18,$17
  !d5
  db 18,$14
  !g4
  !end

.sub5BF7
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !e5
  db 18,$14
  !a4
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !e5
  db 18,$14
  !a4
  !end

.sub5C10
  db 18,$17
  !cs4
  db 18,$14
  !gs4
  db 18,$17
  !f5
  db 18,$14
  !gs4
  db 18,$17
  !cs4
  db 18,$14
  !gs4
  db 18,$17
  !f5
  db 18,$14
  !gs4
  !end

.sub5C29
  db 18,$17
  !ds4
  db 18,$14
  !as4
  db 18,$17
  !g5
  db 18,$14
  !as4
  db 18,$17
  !ds4
  db 18,$14
  !as4
  db 18,$17
  !g5
  db 18,$14
  !as4
  !end

.sub5C42
  db 18,$17
  !f4
  db 18,$14
  !c5
  db 18,$17
  !a5
  db 18,$14
  !c5
  db 18,$17
  !f4
  db 18,$14
  !c5
  db 18,$17
  !a5
  db 18,$14
  !c5
  !end

.sub5C5B
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  db 54,$78
  !d5
  db 18,$73
  !a5
  !tie
  db 18,$78
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$78
  !d5
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 18,$75
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  db 54,$78
  !d5
  db 18,$73
  !a5
  !tie
  db 18,$78
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$78
  !d5
  db 18,$76
  !d5
  db 18,$73
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  db 54,$78
  !d5
  db 18,$73
  !a5
  !tie
  db 18,$78
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$78
  !d5
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 18,$75
  !d5
  db 36,$79
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 36,$73
  !a5
  db 54,$78
  !d5
  db 18,$73
  !a5
  !end

.sub5CCE
  !instr,!instr24
  !pan,10
  db 19,$73
  !b4
  !pan,8
  db 18,$71
  !b4
  !pan,12
  !b4
  !pan,8
  db 17
  !b4
  !pan,10
  db 19,$73
  !b4
  !pan,12
  db 18,$71
  !b4
  !pan,8
  !b4
  !pan,12
  db 17
  !b4
  !end

.sub5CF3
  db 18
  !rest
  db 36,$1B
  !ds2
  !ds2
  db 18,$57
  !ds3
  db 36,$7B
  !ds2
  db 18
  !rest
  db 18,$57
  !ds3
  db 18,$5B
  !ds2
  !ds2
  db 18,$57
  !ds3
  db 18,$5B
  !ds2
  db 36,$67
  !ds3
  db 54,$69
  !f2
  db 36,$19
  !f2
  db 18,$57
  !f3
  db 36,$79
  !f2
  db 18
  !rest
  db 18,$57
  !f3
  db 18,$59
  !f2
  !f2
  db 18,$57
  !f3
  db 18,$59
  !f2
  db 36,$67
  !f3
  db 18
  !rest
  db 36,$19
  !f2
  !f2
  db 18,$57
  !f3
  db 36,$79
  !f2
  db 18
  !rest
  db 18,$57
  !f3
  db 18,$59
  !f2
  !f2
  db 18,$57
  !f3
  db 18,$59
  !f2
  db 36,$67
  !f3
  !end

.sub5D4E
  db 18,$17
  !as3
  db 18,$14
  !as4
  db 18,$17
  !ds5
  db 18,$14
  !as4
  db 18,$17
  !as3
  db 18,$14
  !as4
  db 18,$17
  !ds5
  db 18,$14
  !as4
  !end

.sub5D67
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !c5
  db 18,$14
  !a4
  db 18,$17
  !c4
  db 18,$14
  !a4
  db 18,$17
  !c5
  db 18,$14
  !a4
  !end

.sub5D80
  db 18,$17
  !ds4
  db 18,$14
  !d5
  db 18,$17
  !g5
  db 18,$14
  !d5
  db 18,$17
  !ds4
  db 18,$14
  !d5
  db 18,$17
  !g5
  db 18,$14
  !d5
  !end

.sub5D99
  db 18,$17
  !f4
  db 18,$14
  !c5
  db 18,$17
  !e5
  db 18,$14
  !c5
  db 18,$17
  !f4
  db 18,$14
  !c5
  db 18,$17
  !e5
  db 18,$14
  !c5
  !end

.sub5DB2
  db 18,$17
  !as4
  db 18,$14
  !g5
  db 18,$17
  !as5
  db 18,$14
  !g5
  db 18,$17
  !as4
  db 18,$14
  !g5
  db 18,$17
  !as5
  db 18,$14
  !g5
  !end

.sub5DCB
  db 18,$17
  !c5
  db 18,$14
  !f5
  db 18,$17
  !a5
  db 18,$14
  !f5
  db 18,$17
  !c5
  db 18,$14
  !f5
  db 18,$17
  !a5
  db 18,$14
  !f5
  !end

.sub5DE4
  !pan,10
  db 18,$47
  !c7
  !pan,20
  db 18,$41
  !c7
  !pan,0
  !c7
  !pan,10
  db 18,$47
  !c7
  !pan,20
  db 18,$41
  !c7
  !pan,0
  !c7
  !pan,10
  db 18,$47
  !c7
  !pan,20
  db 18,$41
  !c7
  !pan,0
  !c7
  !pan,10
  db 18,$47
  !c7
  !pan,20
  db 18,$41
  !c7
  !pan,0
  !c7
  !pan,10
  db 18,$47
  !c7
  !pan,20
  db 18,$41
  !c7
  !pan,10
  db 18,$47
  !c7
  !pan,0
  db 18,$41
  !c7
  !end

.sub5E2D
  !pan,10
  db 18,$47
  !f7
  !pan,0
  db 18,$41
  !f7
  !pan,20
  !f7
  !pan,10
  db 18,$47
  !f7
  !pan,0
  db 18,$41
  !f7
  !pan,20
  !f7
  !pan,10
  db 18,$47
  !f7
  !pan,0
  db 18,$41
  !f7
  !pan,20
  !f7
  !pan,10
  db 18,$47
  !f7
  !pan,0
  db 18,$41
  !f7
  !pan,20
  !f7
  !pan,10
  db 18,$47
  !f7
  !pan,0
  db 18,$41
  !f7
  !pan,10
  db 18,$47
  !f7
  !pan,20
  db 18,$41
  !f7
  !end

.sub5E76
  !d6
  !ds6
  !d6
  !d6
  !ds6
  !d6
  !ds6
  !d6
  !ds6
  !d6
  !d6
  !ds6
  !d6
  !d6
  !ds6
  !d6
  !d6
  !ds6
  !d6
  !d6
  !ds6
  !d6
  !ds6
  !d6
  !f6
  !e6
  !e6
  !f6
  !e6
  !e6
  !f6
  !e6
  !e6
  !f6
  !e6
  !e6
  !f6
  !e6
  !f6
  !e6
  !f6
  !e6
  !e6
  !f6
  !e6
  !e6
  !f6
  !e6
  !end

.sub5EA7
  !ds6
  !g6
  !ds6
  !ds6
  !g6
  !ds6
  !g6
  !ds6
  !g6
  !ds6
  !ds6
  !g6
  !ds6
  !ds6
  !g6
  !ds6
  !ds6
  !g6
  !ds6
  !ds6
  !g6
  !ds6
  !g6
  !ds6
  !g6
  !f6
  !f6
  !g6
  !f6
  !f6
  !g6
  !f6
  !f6
  !g6
  !f6
  !f6
  !g6
  !f6
  !g6
  !f6
  !g6
  !f6
  !f6
  !g6
  !f6
  !f6
  !g6
  !f6
  !end

.sub5ED8
  !as6
  !d7
  !as6
  !as6
  !d7
  !as6
  !d7
  !as6
  !d7
  !as6
  !as6
  !d7
  !as6
  !as6
  !d7
  !as6
  !as6
  !d7
  !as6
  !as6
  !d7
  !as6
  !d7
  !as6
  !c7
  !a6
  !a6
  !c7
  !a6
  !a6
  !c7
  !a6
  !a6
  !c7
  !a6
  !a6
  !c7
  !a6
  !c7
  !a6
  !c7
  !a6
  !a6
  !c7
  !a6
  !a6
  !c7
  !a6
  !end

.sub5F09
  !d7
  !f7
  !d7
  !d7
  !f7
  !d7
  !f7
  !d7
  !f7
  !d7
  !d7
  !f7
  !d7
  !d7
  !f7
  !d7
  !d7
  !f7
  !d7
  !d7
  !f7
  !d7
  !f7
  !d7
  !e7
  !c7
  !c7
  !e7
  !c7
  !c7
  !e7
  !c7
  !c7
  !e7
  !c7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !c7
  !e7
  !c7
  !c7
  !e7
  !c7
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
