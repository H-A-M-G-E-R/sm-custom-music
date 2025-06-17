asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr03 = $18
!instr04 = $19
!instr06 = $1A
!instr19 = $1B
!instr1B = $1C
!instr1C = $1D
!instr20 = $1E
!instr21 = $1F
!instr23 = $20
!instr24 = $21
!instr25 = $22
!instr27 = $23
!instr28 = $24

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$07,$00
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr04,$CF,$F5,$B8,$08,$F0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr20,$FF,$E0,$B8,$02,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$8F,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+819
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample04,Sample04+1404
  dw Sample05_06,Sample05_06+216
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample20,Sample20+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample28,Sample28+3375
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_daee1fba1349bada3b2b763cd04133f4.brr"
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample04: incbin "Sample_ed5604d5b249b89747c4b04479c95eb2.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample20: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28: incbin "Sample_82b322f41bfc470864b3f1c81ac85d52.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker3439

Tracker3439:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $00C8,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern1_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern1_5, .pattern1_6, .pattern2_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern2_7
.pattern5: dw .pattern5_0, 0, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, .pattern5_6, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, .pattern6_6, .pattern6_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echo,%00011111,26,26
  !echoParameters,4,70,0
  !musicVolume,255
  !tempo,49
  !instr,!instr1C
  !volume,170
  !subtranspose,0
  !endVibrato
  !pan,10
  db 36,$37
  !g6
  !end

.pattern0_6
  !volume,255
  !pan,8
  !instr,!instr28
  db 25,$77
  !g4
  db 11,$76
  !g4
  !end

.pattern0_7
  !volume,220
  !pan,12
  !instr,!instr25
  db 25,$77
  !cs5
  db 11,$74
  !cs5
  !end

.pattern1_0
  !instr,!instr1C
  !volume,165
  !subtranspose,0
  !endVibrato
  !pan,10
  db 72,$36
  !g7
  db 36,$37
  !e7
  !d7
  !loop : dw .sub41BF : db 1
  !slideIn,0,3,1
  db 72,$37
  !g7
  !endSlide
  db 36
  !e7
  !d7
  !loop : dw .sub41D5 : db 1
  db 36,$77
  !c7
  db 108
  !rest
  !end

.pattern1_1
  db 72
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub41ED : db 1
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.pattern1_2
  db 36
  !rest
  !subtranspose,0
  !instr,!instr00
  !volume,155
  !pan,12
  db 24,$07
  !g4
  db 36
  !g4
  db 12,$37
  !g4
  db 36,$07
  !g4
  !loop : dw .sub420C : db 1
  !loop : dw .sub422E : db 2
  !loop : dw .sub423A : db 1
  !end

.pattern1_3
  db 36
  !rest
  !subtranspose,0
  !instr,!instr00
  !pan,8
  !volume,155
  db 24,$07
  !c5
  db 36
  !c5
  db 12,$37
  !c5
  db 36,$07
  !c5
  !loop : dw .sub4254 : db 1
  !rest
  db 24
  !b4
  db 36
  !b4
  db 12,$37
  !b4
  db 36,$07
  !b4
  !loop : dw .sub426B : db 2
  !loop : dw .sub4277 : db 1
  !end

.pattern1_4
  db 36
  !rest
  !subtranspose,0
  !instr,!instr00
  !pan,10
  !volume,150
  db 24,$07
  !e5
  db 36
  !e5
  db 12,$37
  !e5
  db 36,$07
  !e5
  !rest
  db 24
  !e5
  db 36
  !e5
  db 12,$37
  !e5
  db 36,$07
  !e5
  !loop : dw .sub4291 : db 2
  !loop : dw .sub429D : db 2
  !loop : dw .sub42A9 : db 1
  !end

.pattern1_5
  !loop : dw .sub42C3 : db 1
  !end

.pattern1_6
  !volume,255
  !pan,10
  !instr,!instr23
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$76
  !f5
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 25,$77
  !g4
  db 11,$76
  !g4
  !loop : dw .sub433E : db 2
  !loop : dw .sub4386 : db 1
  !end

.pattern1_7
  !volume,255
  !loop : dw .sub43F4 : db 7
  !pan,12
  !instr,!instr24
  db 24,$73
  !gs4
  db 12,$71
  !gs4
  db 24,$72
  !gs4
  db 12,$71
  !gs4
  !pan,10
  !instr,!instr27
  db 36,$77
  !gs4
  !pan,12
  !instr,!instr25
  db 25
  !cs5
  db 11,$74
  !cs5
  !end

.pattern2_0
  !pan,10
  !instr,!instr04
  !subtranspose,0
  !volume,185
  !vibrato,0,12,20
  db 72,$77
  !c6
  db 36
  !c6
  !d6
  db 60
  !e6
  db 12
  !e6
  db 36
  !d6
  !c6
  db 24
  !b5
  db 12
  !c6
  db 24
  !b5
  db 36
  !e5
  !b5
  db 12
  !as5
  db 72
  !a5
  !tie
  !a5
  db 36
  !a5
  !c6
  db 60
  !d6
  db 12
  !d6
  db 36
  !c6
  !d6
  db 72
  !g6
  db 36
  !g6
  !a6
  db 108
  !g6
  !instr,!instr1C
  !subtranspose,0
  !endVibrato
  !pan,10
  !volume,165
  db 36,$37
  !g6
  !end

.pattern2_1
  db 25
  !rest
  !pan,10
  !instr,!instr04
  !subtranspose,25
  !volume,130
  !vibrato,0,12,20
  db 36,$77
  !c6
  db 36,$73
  !c6
  db 36,$77
  !c6
  !d6
  !e6
  db 24,$73
  !e6
  db 12,$77
  !e6
  db 36
  !d6
  !c6
  db 24
  !b5
  db 12
  !c6
  db 24
  !b5
  db 36
  !e5
  !b5
  db 12
  !as5
  db 48
  !a5
  db 24,$73
  !a5
  !a5
  !a5
  !a5
  db 36,$77
  !a5
  db 36,$73
  !a5
  db 36,$77
  !a5
  !c6
  !d6
  db 24,$73
  !d6
  db 12,$77
  !d6
  db 36
  !c6
  !d6
  !g6
  db 36,$73
  !g6
  db 36,$77
  !g6
  !a6
  !g6
  db 36,$73
  !g6
  !g6
  db 11
  !g6
  !end

.pattern2_2
  !loop : dw .sub4416 : db 1
  !loop : dw .sub4453 : db 2
  !rest
  db 24
  !b4
  db 36
  !b4
  db 12,$37
  !b4
  db 24,$27
  !b4
  db 12,$47
  !b4
  !end

.pattern2_3
  !loop : dw .sub445F : db 1
  !loop : dw .sub4478 : db 1
  !loop : dw .sub445F : db 1
  !rest
  db 24
  !d5
  db 36
  !d5
  db 12,$37
  !d5
  db 36,$07
  !d5
  !rest
  db 24
  !d5
  db 36
  !d5
  db 12,$37
  !d5
  db 24,$27
  !d5
  db 12,$47
  !d5
  !end

.pattern2_4
  !loop : dw .sub4490 : db 1
  !loop : dw .sub44CD : db 2
  !rest
  db 24
  !g5
  db 36
  !g5
  db 12,$37
  !g5
  db 24,$27
  !g5
  db 12,$47
  !g5
  !end

.pattern2_5
  !loop : dw .sub44D9 : db 1
  db 24
  !rest
  db 12,$57
  !a2
  db 24
  !a2
  db 12
  !a2
  db 24,$16
  !a3
  db 36,$67
  !a2
  db 12,$68
  !g2
  db 60
  !f2
  db 36,$18
  !f2
  db 12,$57
  !f3
  db 36,$68
  !f2
  db 24
  !rest
  db 36,$17
  !f3
  db 12,$57
  !f3
  db 24,$17
  !c3
  db 36,$67
  !f3
  db 12
  !f3
  db 60
  !g3
  db 36,$17
  !g3
  db 12,$57
  !d3
  db 36,$67
  !g3
  db 24
  !rest
  db 12,$58
  !g2
  db 24,$68
  !g2
  db 12
  !g2
  db 24,$67
  !g3
  db 12,$68
  !g2
  db 24,$67
  !g3
  db 12,$68
  !g2
  !end

.pattern2_7
  !loop : dw .sub43F4 : db 7
  !pan,12
  !instr,!instr24
  db 24,$73
  !gs4
  db 12,$71
  !gs4
  db 24,$72
  !gs4
  db 12,$71
  !gs4
  !pan,10
  !instr,!instr27
  db 36,$77
  !gs4
  !pan,12
  !instr,!instr25
  db 25
  !cs5
  db 11,$74
  !cs5
  !end

.pattern3_0
  !instr,!instr1C
  !volume,170
  !subtranspose,0
  db 72,$36
  !g7
  db 36,$37
  !e7
  !d7
  !loop : dw .sub41BF : db 1
  !slideIn,0,9,1
  db 72,$37
  !g7
  !endSlide
  db 36
  !e7
  !d7
  !loop : dw .sub41D5 : db 1
  db 36,$77
  !c7
  db 60
  !rest
  !pan,12
  !instr,!instr01
  !volume,170
  !vibrato,12,15,10
  db 12,$57
  !c6
  db 24
  !c6
  db 12
  !d6
  !end

.pattern3_1
  db 72
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !loop : dw .sub41ED : db 1
  !rest
  !rest
  !rest
  !rest
  db 96
  !rest
  !subtranspose,0
  !pan,8
  !instr,!instr01
  !volume,170
  !vibrato,12,15,10
  db 12,$57
  !a5
  db 24
  !a5
  db 12
  !b5
  !end

.pattern3_2
  db 36
  !rest
  !instr,!instr00
  !volume,155
  !pan,12
  db 24,$07
  !g4
  db 36
  !g4
  db 12,$37
  !g4
  db 36,$07
  !g4
  !loop : dw .sub420C : db 1
  !loop : dw .sub422E : db 2
  !loop : dw .sub423A : db 1
  !end

.pattern3_3
  db 36
  !rest
  !instr,!instr00
  !pan,8
  !volume,155
  db 24,$07
  !c5
  db 36
  !c5
  db 12,$37
  !c5
  db 36,$07
  !c5
  !loop : dw .sub4254 : db 1
  !rest
  db 24
  !b4
  db 36
  !b4
  db 12,$37
  !b4
  db 36,$07
  !b4
  !loop : dw .sub426B : db 2
  !loop : dw .sub4277 : db 1
  !end

.pattern3_4
  db 36
  !rest
  !instr,!instr00
  !pan,10
  !volume,150
  db 24,$07
  !e5
  db 36
  !e5
  db 12,$37
  !e5
  db 36,$07
  !e5
  !rest
  db 24
  !e5
  db 36
  !e5
  db 12,$37
  !e5
  db 36,$07
  !e5
  !loop : dw .sub4291 : db 2
  !loop : dw .sub429D : db 2
  !loop : dw .sub42A9 : db 1
  !end

.pattern4_0
  !slideOut,25,15,249
  db 60,$37
  !c6
  !pan,20
  db 60,$31
  !c6
  db 24,$71
  !c6
  db 24,$08
  !tie
  !endSlide
  !pan,12
  db 36,$17
  !gs5
  db 12,$57
  !gs5
  db 36,$37
  !gs5
  !gs5
  db 24
  !g5
  db 12
  !g5
  db 24
  !g5
  db 36
  !b4
  db 12,$47
  !b5
  db 24,$57
  !g5
  db 12
  !g5
  db 72
  !e5
  !rest
  db 72,$37
  !f5
  db 36
  !f5
  !a5
  db 24
  !rest
  db 36
  !a5
  db 12,$57
  !a5
  db 36
  !a5
  !a5
  db 24,$47
  !g5
  db 12,$57
  !d5
  db 24,$47
  !g5
  db 12,$57
  !a5
  db 36,$17
  !g5
  db 24,$47
  !g5
  db 12,$57
  !d5
  db 24,$47
  !g5
  db 12,$57
  !a5
  db 36,$17
  !g5
  !rest
  !instr,!instr1B
  !volume,185
  !pan,10
  !vibrato,12,8,70
  db 36,$78
  !g6
  !end

.pattern4_1
  !slideOut,25,15,249
  db 60,$37
  !e6
  !pan,0
  db 60,$31
  !e6
  db 24,$71
  !e6
  db 24,$08
  !tie
  !endSlide
  !pan,8
  db 36,$17
  !d6
  db 12,$57
  !d6
  db 36,$37
  !c6
  !d6
  db 24
  !b5
  db 12
  !c6
  db 24
  !b5
  db 36
  !e5
  db 12,$47
  !d6
  db 24,$57
  !b5
  db 12
  !as5
  db 72
  !a5
  !rest
  db 72,$37
  !a5
  db 36
  !a5
  !c6
  db 24
  !rest
  db 36
  !d6
  db 12,$57
  !d6
  db 36
  !c6
  !d6
  db 24,$47
  !b5
  db 12,$57
  !a5
  db 24,$47
  !b5
  db 12,$57
  !c6
  db 36,$17
  !b5
  db 24,$47
  !b5
  db 12,$57
  !a5
  db 24,$47
  !b5
  db 12,$57
  !c6
  db 36,$17
  !b5
  db 72
  !rest
  !end

.pattern4_2
  !loop : dw .sub4416 : db 1
  !rest
  db 24
  !a4
  db 36
  !a4
  db 12,$37
  !a4
  db 36,$07
  !a4
  !rest
  db 24
  !g4
  db 36
  !g4
  db 12,$38
  !g4
  db 36,$07
  !g4
  !rest
  db 24
  !g4
  db 36,$08
  !g4
  db 12,$37
  !g4
  db 24,$28
  !g4
  db 12,$48
  !g4
  !end

.pattern4_3
  !loop : dw .sub445F : db 1
  !loop : dw .sub4478 : db 1
  !loop : dw .sub445F : db 1
  !rest
  db 24
  !b4
  db 36
  !b4
  db 12,$38
  !b4
  db 36,$07
  !b4
  !rest
  db 24
  !b4
  db 36,$08
  !b4
  db 12,$37
  !b4
  db 24,$28
  !b4
  db 12,$48
  !b4
  !end

.pattern4_4
  !loop : dw .sub4490 : db 1
  !rest
  db 24
  !f5
  db 36
  !f5
  db 12,$37
  !f5
  db 36,$07
  !f5
  !rest
  db 24
  !e5
  db 36
  !e5
  db 12,$38
  !e5
  db 36,$07
  !e5
  !rest
  db 24
  !e5
  db 36,$08
  !e5
  db 12,$37
  !e5
  db 24,$28
  !e5
  db 12,$48
  !e5
  !end

.pattern4_5
  !loop : dw .sub44D9 : db 1
  db 24
  !rest
  db 12,$57
  !a2
  db 24
  !a2
  db 12
  !a2
  db 24,$16
  !a3
  db 36,$67
  !a2
  db 12,$66
  !a3
  db 60,$67
  !d3
  db 36,$17
  !d3
  db 12,$57
  !a2
  db 36,$67
  !d3
  db 24
  !rest
  db 12,$57
  !g3
  db 24,$48
  !g2
  db 12,$58
  !g2
  db 24,$17
  !g3
  db 36,$58
  !g2
  db 12,$57
  !g3
  db 60,$67
  !c3
  db 36,$17
  !c3
  db 12,$58
  !g2
  db 36,$67
  !c3
  db 24
  !rest
  db 12,$58
  !g2
  db 24,$67
  !c3
  db 12,$68
  !g2
  db 24,$67
  !c3
  db 12,$68
  !g2
  db 24,$67
  !c3
  db 12,$68
  !g2
  !end

.pattern4_6
  !pan,10
  !instr,!instr23
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$76
  !f5
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 25,$77
  !g4
  db 11,$76
  !g4
  !loop : dw .sub433E : db 3
  db 24
  !rest
  !pan,10
  !instr,!instr23
  db 12,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$75
  !f5
  !pan,8
  !instr,!instr28
  db 24,$78
  !e5
  db 12
  !e5
  db 13,$77
  !g4
  db 12,$74
  !g4
  db 11,$77
  !g4
  !end

.pattern5_0
  db 72,$66
  !g7
  db 36,$67
  !f7
  !ds7
  db 72
  !d7
  db 36
  !c7
  !as6
  db 24,$47
  !d7
  db 36,$27
  !g6
  db 12,$47
  !d7
  db 36,$17
  !g6
  !rest
  db 108
  !rest
  db 36,$67
  !g6
  db 72
  !g7
  db 36
  !f7
  !ds7
  !d7
  !ds7
  !f7
  !d7
  db 24,$47
  !as7
  db 36,$27
  !g7
  db 12,$47
  !as7
  db 36,$17
  !g7
  !rest
  db 108
  !rest
  !instr,!instr01
  !volume,160
  !vibrato,0,12,20
  db 36,$67
  !g5
  !end

.pattern5_2
  !instr,!instr00
  !volume,155
  !pan,12
  db 36,$08
  !gs4
  !instr,!instr03
  db 24,$17
  !c5
  db 36
  !c5
  db 12,$47
  !c5
  db 36,$17
  !c5
  !instr,!instr00
  db 36,$08
  !g4
  !instr,!instr03
  db 24,$17
  !as4
  db 36
  !as4
  db 12,$47
  !as4
  db 36,$17
  !as4
  !instr,!instr00
  db 36,$08
  !as4
  !instr,!instr03
  db 24,$17
  !as4
  db 36
  !as4
  db 12,$47
  !as4
  db 36,$17
  !as4
  !instr,!instr00
  db 36,$08
  !d5
  !instr,!instr03
  db 24,$17
  !d5
  db 36
  !d5
  db 12,$47
  !d5
  db 36,$17
  !d5
  !loop : dw .sub4504 : db 2
  !instr,!instr00
  db 36,$08
  !g4
  !instr,!instr03
  db 24,$17
  !as4
  db 36
  !as4
  db 12,$47
  !as4
  db 36,$17
  !as4
  !instr,!instr00
  db 36,$08
  !d5
  !instr,!instr03
  db 24,$17
  !as4
  db 36
  !as4
  db 12,$47
  !as4
  db 24,$37
  !as4
  db 12,$57
  !as4
  !end

.pattern5_3
  !instr,!instr00
  !pan,8
  !volume,155
  db 36,$08
  !c5
  !instr,!instr03
  db 24,$17
  !ds5
  db 36
  !ds5
  db 12,$47
  !ds5
  db 36,$17
  !ds5
  !instr,!instr00
  db 36,$08
  !as4
  !instr,!instr03
  db 24,$17
  !d5
  db 36
  !d5
  db 12,$47
  !d5
  db 36,$17
  !d5
  !instr,!instr00
  db 36,$08
  !d5
  !instr,!instr03
  db 24,$17
  !d5
  db 36
  !d5
  db 12,$47
  !d5
  db 36,$17
  !d5
  !instr,!instr00
  db 36,$08
  !ds5
  !instr,!instr03
  db 24,$17
  !ds5
  db 36
  !ds5
  db 12,$47
  !ds5
  db 36,$17
  !ds5
  !instr,!instr00
  db 36,$08
  !c5
  !instr,!instr03
  db 24,$17
  !ds5
  db 36
  !ds5
  db 12,$47
  !ds5
  db 36,$17
  !ds5
  !instr,!instr00
  db 36,$08
  !c5
  !instr,!instr03
  db 24,$17
  !d5
  db 36
  !d5
  db 12,$47
  !d5
  db 36,$17
  !d5
  !instr,!instr00
  db 36,$08
  !as4
  !instr,!instr03
  db 24,$17
  !d5
  db 36
  !d5
  db 12,$47
  !d5
  db 36,$17
  !d5
  !instr,!instr00
  db 36,$08
  !ds5
  !instr,!instr03
  db 24,$17
  !d5
  db 36
  !d5
  db 12,$47
  !d5
  db 24,$37
  !d5
  db 12,$57
  !d5
  !end

.pattern5_4
  !instr,!instr00
  !pan,10
  !volume,155
  db 36,$07
  !ds5
  !instr,!instr03
  db 24,$17
  !g5
  db 36
  !g5
  db 12,$47
  !g5
  db 36,$17
  !g5
  !instr,!instr00
  db 36,$07
  !f5
  !instr,!instr03
  db 24,$17
  !f5
  db 36
  !f5
  db 12,$47
  !f5
  db 36,$17
  !f5
  !instr,!instr00
  db 36,$07
  !ds5
  !instr,!instr03
  db 24,$17
  !ds5
  db 36
  !ds5
  db 12,$47
  !ds5
  db 36,$17
  !ds5
  !instr,!instr00
  db 36,$07
  !g5
  !instr,!instr03
  db 24,$17
  !as5
  db 36
  !as5
  db 12,$47
  !as5
  db 36,$17
  !as5
  !instr,!instr00
  db 36,$07
  !ds5
  !instr,!instr03
  db 24,$17
  !g5
  db 36
  !g5
  db 12,$47
  !g5
  db 36,$17
  !g5
  !instr,!instr00
  db 36,$07
  !g5
  !instr,!instr03
  db 24,$17
  !g5
  db 36
  !g5
  db 12,$47
  !g5
  db 36,$17
  !g5
  !instr,!instr00
  db 36,$07
  !ds5
  !instr,!instr03
  db 24,$17
  !g5
  db 36
  !g5
  db 12,$47
  !g5
  db 36,$17
  !g5
  !instr,!instr00
  db 36,$07
  !g5
  !instr,!instr03
  db 24,$17
  !g5
  db 36
  !g5
  db 12,$47
  !g5
  db 24,$37
  !g5
  db 12,$57
  !g5
  !end

.pattern5_5
  db 60,$67
  !gs2
  db 36,$17
  !gs2
  db 12,$57
  !ds3
  db 36,$67
  !gs2
  db 24
  !rest
  db 12,$77
  !d3
  db 36,$48
  !g2
  db 36,$67
  !g3
  db 24,$68
  !g2
  db 12,$67
  !d3
  !loop : dw .sub4517 : db 1
  db 60
  !gs2
  db 36,$17
  !gs2
  db 12,$57
  !ds3
  db 36,$67
  !gs2
  db 24
  !rest
  db 36,$17
  !gs3
  db 12,$57
  !gs2
  db 24,$17
  !gs3
  db 36,$67
  !gs2
  db 12
  !gs3
  !loop : dw .sub4517 : db 1
  !end

.pattern5_6
  !volume,255
  !pan,10
  !instr,!instr23
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$76
  !f5
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 25,$77
  !g4
  db 11,$76
  !g4
  !loop : dw .sub433E : db 2
  !loop : dw .sub4386 : db 1
  !end

.pattern5_7
  !loop : dw .sub43F4 : db 7
  !pan,12
  !instr,!instr24
  db 24,$73
  !gs4
  db 12,$71
  !gs4
  db 24,$72
  !gs4
  db 12,$71
  !gs4
  !pan,10
  !instr,!instr27
  db 36,$77
  !gs4
  !pan,12
  !instr,!instr25
  db 25
  !cs5
  db 11,$74
  !cs5
  !end

.pattern6_0
  db 72,$67
  !g6
  db 36
  !f6
  !ds6
  !d6
  !ds6
  !f6
  !d6
  db 24,$37
  !g6
  db 36,$27
  !d6
  db 12,$47
  !g6
  db 36,$27
  !d6
  !rest
  db 72
  !rest
  db 24,$66
  !b5
  db 12,$65
  !c6
  db 24
  !d6
  db 12,$66
  !b5
  db 24,$37
  !a6
  db 36,$27
  !d6
  db 12,$57
  !a6
  db 36,$27
  !d6
  db 24,$65
  !a5
  db 12,$63
  !b5
  db 24,$64
  !c6
  db 12,$65
  !b5
  db 24
  !c6
  db 12,$66
  !d6
  db 24
  !e6
  db 12,$67
  !d6
  db 24
  !e6
  db 12
  !f6
  db 24,$37
  !b6
  db 36,$27
  !f6
  db 12,$47
  !b6
  db 36,$27
  !f6
  !rest
  db 24
  !rest
  db 12,$57
  !b6
  db 24
  !rest
  db 12
  !b6
  db 24,$67
  !b6
  db 12
  !g6
  db 24
  !a6
  db 12
  !b6
  db 108
  !c7
  db 36
  !c7
  db 108
  !c7
  db 36
  !c7
  db 72,$77
  !c7
  !dynamicVolume,144,80
  !tie
  db 96
  !tie
  !volume,160
  !instr,!instr06
  !endVibrato
  db 12,$37
  !g7
  db 36,$07
  !g7
  !end

.pattern6_1
  !pan,12
  !instr,!instr01
  !volume,145
  !subtranspose,0
  !endVibrato
  db 36,$67
  !c6
  !ds6
  !c6
  !c6
  !gs5
  !as5
  !d6
  !as5
  db 24,$37
  !e6
  db 36,$27
  !b5
  db 12,$47
  !e6
  db 36,$27
  !b5
  !rest
  db 72
  !rest
  db 24,$66
  !g5
  db 12,$65
  !a5
  db 24
  !b5
  db 12,$66
  !g5
  db 24,$37
  !f6
  db 36,$27
  !a5
  db 12,$57
  !f6
  db 36,$27
  !a5
  db 24,$65
  !f5
  db 12,$63
  !g5
  db 24,$64
  !a5
  db 12,$65
  !g5
  db 24
  !a5
  db 12,$66
  !b5
  db 24
  !c6
  db 12,$67
  !b5
  db 24
  !c6
  db 12
  !d6
  db 24,$37
  !g6
  db 36,$27
  !d6
  db 12,$47
  !g6
  db 36,$27
  !d6
  !rest
  db 24
  !rest
  db 12,$57
  !f6
  db 24
  !rest
  db 12
  !f6
  db 24,$67
  !f6
  db 12
  !d6
  db 24
  !f6
  db 12
  !g6
  db 24,$37
  !f6
  db 12,$47
  !gs6
  db 24,$37
  !f6
  db 12,$47
  !gs6
  db 36,$17
  !f6
  !f6
  db 24,$37
  !g6
  db 12,$47
  !as6
  db 24,$37
  !g6
  db 12,$47
  !as6
  db 36,$17
  !g6
  !g6
  db 24,$37
  !f6
  db 12,$47
  !a6
  db 24,$37
  !g6
  db 12,$47
  !a6
  db 24,$37
  !f6
  db 12,$46
  !a6
  db 24,$36
  !g6
  db 12,$46
  !a6
  db 24,$35
  !f6
  db 12,$45
  !a6
  db 24,$34
  !g6
  db 12,$43
  !a6
  db 24,$32
  !f6
  !instr,!instr06
  !volume,150
  db 12,$37
  !b6
  db 36,$07
  !b6
  !end

.pattern6_2
  !pan,8
  !instr,!instr01
  !volume,145
  !subtranspose,0
  !endVibrato
  db 36,$67
  !gs5
  !c6
  !gs5
  !gs5
  !f5
  !f5
  !gs5
  !f5
  db 24,$37
  !b5
  db 36,$27
  !g5
  db 12,$47
  !b5
  db 36,$27
  !g5
  !rest
  db 72
  !rest
  db 24,$66
  !e5
  db 12,$65
  !g5
  db 24
  !g5
  db 12,$66
  !e5
  db 24,$37
  !c6
  db 36,$27
  !f5
  db 12,$57
  !c6
  db 36,$27
  !f5
  db 24,$65
  !d5
  db 12,$63
  !e5
  db 24,$64
  !f5
  db 12,$65
  !e5
  db 24
  !f5
  db 12,$66
  !g5
  db 24
  !a5
  db 12,$67
  !g5
  db 24
  !a5
  db 12
  !a5
  db 24,$37
  !f6
  db 36,$27
  !b5
  db 12,$47
  !f6
  db 36,$27
  !b5
  !rest
  db 24
  !rest
  db 12,$57
  !d6
  db 24
  !rest
  db 12
  !d6
  db 24,$67
  !d6
  db 12
  !b5
  db 24
  !d6
  db 12
  !d6
  db 24,$37
  !cs6
  db 12,$47
  !f6
  db 24,$37
  !cs6
  db 12,$47
  !f6
  db 36,$17
  !cs6
  !cs6
  db 24,$37
  !ds6
  db 12,$47
  !g6
  db 24,$37
  !ds6
  db 12,$47
  !g6
  db 36,$17
  !ds6
  !ds6
  db 24,$37
  !c6
  db 12,$47
  !f6
  db 24,$37
  !c6
  db 12,$47
  !f6
  db 24,$37
  !c6
  db 12,$46
  !f6
  db 24,$36
  !c6
  db 12,$46
  !f6
  db 24,$35
  !c6
  db 12,$45
  !f6
  db 24,$34
  !c6
  db 12,$43
  !f6
  db 24,$32
  !c6
  !volume,150
  !instr,!instr06
  db 12,$37
  !d7
  db 36,$07
  !d7
  !end

.pattern6_3
  !instr,!instr20
  !volume,125
  !pan,13
  db 72,$77
  !f4
  !ds5
  !f4
  !d5
  !e4
  !d5
  !e4
  !d5
  !f4
  !d5
  !f4
  !d5
  !f4
  !d5
  !f4
  db 36
  !d5
  !f4
  !instr,!instr19
  !subtranspose,60
  !volume,170
  db 23,$37
  !cs4
  db 12,$47
  !gs4
  db 24,$37
  !cs4
  db 12,$47
  !gs4
  db 24,$37
  !cs4
  db 12,$47
  !gs4
  db 24,$37
  !cs4
  db 12,$47
  !gs4
  db 24,$37
  !ds4
  db 12,$47
  !as4
  db 24,$37
  !ds4
  db 12,$47
  !as4
  db 24,$37
  !ds4
  db 12,$47
  !as4
  db 24,$37
  !ds4
  db 12,$47
  !as4
  db 24,$37
  !f4
  db 12,$47
  !c5
  db 24,$37
  !f4
  db 12,$47
  !c5
  db 24,$37
  !f4
  db 12,$46
  !c5
  db 24,$36
  !f4
  db 12,$46
  !c5
  db 24,$35
  !f4
  db 12,$45
  !a4
  db 24,$34
  !f4
  db 12,$43
  !a4
  db 24,$32
  !f4
  db 36
  !rest
  !subtranspose,0
  !instr,!instr1C
  !volume,170
  !pan,10
  db 13,$57
  !g6
  !end

.pattern6_4
  !instr,!instr20
  !volume,125
  !pan,7
  db 72,$77
  !c5
  !f4
  !as4
  !f4
  !b4
  !e4
  !b4
  !e4
  !a4
  !f4
  !a4
  !f4
  !b4
  !g4
  !b4
  db 36
  !g4
  !b4
  !instr,!instr19
  !subtranspose,60
  !volume,170
  db 23,$37
  !gs4
  db 12,$47
  !cs5
  db 24,$37
  !gs4
  db 12,$47
  !cs5
  db 24,$37
  !gs4
  db 12,$47
  !cs5
  db 24,$37
  !gs4
  db 12,$47
  !cs5
  db 24,$37
  !as4
  db 12,$47
  !ds5
  db 24,$37
  !as4
  db 12,$47
  !ds5
  db 24,$37
  !as4
  db 12,$47
  !ds5
  db 24,$37
  !as4
  db 12,$47
  !ds5
  db 24,$37
  !c5
  db 12,$47
  !f5
  db 24,$37
  !c5
  db 12,$47
  !f5
  db 24,$37
  !c5
  db 12,$46
  !f5
  db 24,$36
  !c5
  db 12,$46
  !f5
  db 24,$35
  !c5
  db 12,$45
  !f5
  db 24,$34
  !c5
  db 12,$43
  !f5
  db 23,$32
  !c5
  db 50
  !rest
  !end

.pattern6_5
  db 60,$67
  !f3
  db 36,$17
  !f3
  db 12,$57
  !c3
  db 36,$67
  !f3
  db 24
  !rest
  db 12,$77
  !f3
  db 36,$46
  !as3
  db 36,$67
  !f3
  db 24,$66
  !as3
  db 12,$67
  !f3
  db 60
  !e3
  db 36,$17
  !e3
  db 12,$57
  !b2
  db 36,$67
  !e3
  db 24
  !rest
  db 36,$17
  !b2
  db 12,$57
  !e3
  db 24,$17
  !b2
  db 36,$67
  !e3
  db 12
  !b2
  db 60
  !d3
  db 36,$17
  !d3
  db 12,$57
  !a2
  db 36,$67
  !d3
  db 24
  !rest
  db 36,$17
  !d3
  db 12,$57
  !a2
  db 24,$17
  !d3
  db 36,$67
  !a2
  db 12
  !d3
  db 60,$68
  !g2
  db 36,$18
  !g2
  db 12,$57
  !g3
  db 36,$68
  !g2
  db 24
  !rest
  db 36,$17
  !g3
  db 12,$57
  !d3
  db 24,$17
  !g3
  db 36,$68
  !g2
  db 12,$67
  !g3
  db 60
  !cs3
  db 36,$17
  !cs3
  db 12,$57
  !gs2
  db 36,$67
  !cs3
  db 24
  !rest
  db 36,$17
  !ds3
  db 12,$57
  !as2
  db 24,$17
  !ds3
  db 36,$67
  !as2
  db 12
  !ds3
  db 60
  !f3
  db 36,$17
  !f3
  db 12,$57
  !c3
  db 36,$67
  !f3
  db 24
  !rest
  db 36,$19
  !f2
  db 12,$59
  !f2
  db 24,$17
  !f3
  db 12,$37
  !g3
  db 36,$07
  !g3
  !end

.pattern6_6
  !pan,10
  !instr,!instr23
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$76
  !f5
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 25,$77
  !g4
  db 11,$76
  !g4
  !loop : dw .sub433E : db 3
  db 24
  !rest
  !pan,10
  !instr,!instr23
  db 12,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$75
  !f5
  db 24,$78
  !f5
  db 12,$73
  !f5
  !pan,8
  !instr,!instr28
  db 13,$78
  !e5
  db 12,$77
  !e5
  db 11,$78
  !e5
  !pan,10
  !instr,!instr23
  db 36
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$76
  !f5
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 25,$77
  !g4
  db 11,$76
  !g4
  !loop : dw .sub433E : db 1
  db 24
  !rest
  !pan,10
  !instr,!instr23
  db 12,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$75
  !f5
  db 24,$78
  !f5
  !pan,8
  !instr,!instr28
  db 12,$77
  !e5
  db 13
  !e5
  db 12
  !g4
  db 11,$75
  !g4
  !end

.pattern6_7
  !loop : dw .sub43F4 : db 7
  !pan,12
  !instr,!instr24
  db 24,$73
  !gs4
  db 12,$71
  !gs4
  db 24,$72
  !gs4
  db 12,$71
  !gs4
  !pan,10
  !instr,!instr27
  db 24,$77
  !gs4
  db 12,$73
  !gs4
  db 12,$77
  !gs4
  db 12,$73
  !gs4
  db 12,$77
  !gs4
  !loop : dw .sub43F4 : db 3
  !pan,12
  !instr,!instr24
  db 24,$73
  !gs4
  db 12,$71
  !gs4
  db 24,$72
  !gs4
  db 12,$71
  !gs4
  !pan,10
  !instr,!instr25
  db 36,$27
  !d5
  !rest
  !end

.sub41BF
  db 72
  !c7
  db 36
  !b6
  !c7
  db 24,$17
  !d7
  db 12,$67
  !f6
  db 36,$77
  !d7
  db 72
  !rest
  db 108
  !rest
  db 36,$57
  !g6
  !end

.sub41D5
  db 72
  !c7
  db 36
  !b6
  !c7
  db 24,$17
  !d7
  db 12,$57
  !e6
  db 36
  !d7
  db 24
  !rest
  db 12,$59
  !e6
  db 24,$57
  !e7
  db 12
  !d7
  !end

.sub41ED
  db 24
  !rest
  !instr,!instr06
  !subtranspose,0
  !endVibrato
  !volume,140
  !pan,8
  db 12,$47
  !g6
  db 24,$17
  !g7
  !pan,12
  db 12,$47
  !g6
  db 24,$17
  !g7
  db 48
  !rest
  db 72
  !rest
  !rest
  !end

.sub420C
  !rest
  db 24
  !g4
  db 36
  !g4
  db 12,$37
  !g4
  db 36,$07
  !g4
  !rest
  db 24
  !f4
  db 36
  !f4
  db 12,$37
  !f4
  db 36,$07
  !f4
  !rest
  db 24
  !f4
  db 36
  !g4
  db 12,$37
  !f4
  db 36,$07
  !g4
  !end

.sub422E
  !rest
  db 24
  !g4
  db 36
  !g4
  db 12,$37
  !g4
  db 36,$07
  !g4
  !end

.sub423A
  !rest
  db 24
  !gs4
  db 36
  !gs4
  db 12,$37
  !gs4
  db 36,$07
  !gs4
  !rest
  db 24
  !a4
  db 36
  !a4
  db 12,$37
  !a4
  db 24,$27
  !g4
  db 12,$47
  !g4
  !end

.sub4254
  !rest
  db 24
  !c5
  db 36
  !c5
  db 12,$37
  !c5
  db 36,$07
  !c5
  !rest
  db 24
  !a4
  db 36
  !a4
  db 12,$37
  !a4
  db 36,$07
  !a4
  !end

.sub426B
  !rest
  db 24
  !c5
  db 36
  !c5
  db 12,$37
  !c5
  db 36,$07
  !c5
  !end

.sub4277
  !rest
  db 24
  !b4
  db 36
  !b4
  db 12,$37
  !b4
  db 36,$07
  !b4
  !rest
  db 24
  !c5
  db 36
  !c5
  db 12,$37
  !c5
  db 24,$27
  !c5
  db 12,$47
  !c5
  !end

.sub4291
  !rest
  db 24
  !d5
  db 36
  !d5
  db 12,$37
  !d5
  db 36,$07
  !d5
  !end

.sub429D
  !rest
  db 24
  !e5
  db 36
  !e5
  db 12,$37
  !e5
  db 36,$07
  !e5
  !end

.sub42A9
  !rest
  db 24
  !d5
  db 36
  !d5
  db 12,$37
  !d5
  db 36,$07
  !d5
  !rest
  db 24
  !e5
  db 36
  !e5
  db 12,$37
  !e5
  db 24,$27
  !e5
  db 12,$47
  !e5
  !end

.sub42C3
  !instr,!instr21
  !volume,180
  db 60,$67
  !c3
  db 36,$17
  !c3
  db 12,$58
  !g2
  db 36,$67
  !c3
  db 24
  !rest
  db 12,$78
  !g2
  db 36,$47
  !c3
  db 36,$68
  !g2
  db 24,$67
  !c3
  db 12,$68
  !g2
  db 60,$67
  !d3
  db 36,$17
  !d3
  db 12,$57
  !a2
  db 36,$67
  !d3
  db 24
  !rest
  db 36,$18
  !g2
  db 12,$58
  !g2
  db 24,$17
  !g3
  db 36,$68
  !g2
  db 12,$67
  !g3
  db 60
  !c3
  db 36,$17
  !c3
  db 12,$58
  !g2
  db 36,$67
  !c3
  db 24
  !rest
  db 36,$18
  !g2
  db 12,$58
  !g2
  db 24,$17
  !c3
  db 36,$68
  !g2
  db 12,$67
  !c3
  db 60
  !e3
  db 36,$17
  !e3
  db 12,$57
  !b2
  db 36,$67
  !e3
  db 24
  !rest
  db 12,$57
  !a2
  db 24,$67
  !a2
  db 12
  !a2
  db 24,$66
  !a3
  db 12,$67
  !a2
  db 24
  !a2
  db 12,$66
  !g3
  !end

.sub433E
  db 24
  !rest
  !pan,10
  !instr,!instr23
  db 12,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$75
  !f5
  db 24,$78
  !f5
  db 12,$73
  !f5
  !pan,8
  !instr,!instr28
  db 25,$77
  !g4
  db 11,$76
  !g4
  !pan,10
  !instr,!instr23
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$76
  !f5
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 25,$77
  !g4
  db 11,$76
  !g4
  !end

.sub4386
  db 24
  !rest
  !pan,10
  !instr,!instr23
  db 12,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$75
  !f5
  db 24,$78
  !f5
  db 12,$73
  !f5
  !pan,8
  !instr,!instr28
  db 25,$77
  !g4
  db 11,$76
  !g4
  !pan,10
  !instr,!instr23
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$76
  !f5
  db 36,$78
  !f5
  !pan,8
  !instr,!instr28
  db 25,$77
  !g4
  db 11,$76
  !g4
  db 24
  !rest
  !pan,10
  !instr,!instr23
  db 12,$78
  !f5
  !pan,8
  !instr,!instr28
  db 24
  !e5
  !pan,10
  !instr,!instr23
  db 12,$75
  !f5
  db 24,$78
  !f5
  db 12,$73
  !f5
  !pan,8
  !instr,!instr28
  db 25,$77
  !g4
  db 11,$76
  !g4
  !end

.sub43F4
  !pan,12
  !instr,!instr24
  db 24,$73
  !gs4
  db 12,$71
  !gs4
  db 24,$72
  !gs4
  db 12,$71
  !gs4
  !pan,10
  !instr,!instr27
  db 36,$77
  !gs4
  !pan,12
  !instr,!instr24
  db 24,$72
  !gs4
  db 12,$71
  !gs4
  !end

.sub4416
  db 36
  !rest
  db 24,$07
  !a4
  db 36
  !a4
  db 12,$37
  !a4
  db 36,$07
  !a4
  !rest
  db 24
  !gs4
  db 36
  !gs4
  db 12,$37
  !gs4
  db 36,$07
  !gs4
  !rest
  db 24
  !g4
  db 36
  !g4
  db 12,$37
  !g4
  db 36,$07
  !g4
  !rest
  db 24
  !a4
  db 36
  !a4
  db 12,$37
  !g4
  db 24
  !g4
  db 12
  !g4
  db 36
  !rest
  db 24,$07
  !a4
  db 36
  !a4
  db 12,$37
  !a4
  db 36,$07
  !a4
  !end

.sub4453
  !rest
  db 24
  !a4
  db 36
  !a4
  db 12,$37
  !a4
  db 36,$07
  !a4
  !end

.sub445F
  db 36
  !rest
  db 24,$07
  !c5
  db 36
  !c5
  db 12,$37
  !c5
  db 36,$07
  !c5
  !rest
  db 24
  !c5
  db 36
  !c5
  db 12,$37
  !c5
  db 36,$07
  !c5
  !end

.sub4478
  !rest
  db 24
  !b4
  db 36
  !b4
  db 12,$37
  !b4
  db 36,$07
  !b4
  !rest
  db 24
  !cs5
  db 36
  !cs5
  db 12,$37
  !cs5
  db 24
  !cs5
  db 12
  !cs5
  !end

.sub4490
  db 36
  !rest
  db 24,$07
  !f5
  db 36
  !f5
  db 12,$37
  !f5
  db 36,$07
  !f5
  !rest
  db 24
  !f5
  db 36
  !f5
  db 12,$37
  !f5
  db 36,$07
  !f5
  !rest
  db 24
  !d5
  db 36
  !d5
  db 12,$37
  !d5
  db 36,$07
  !d5
  !rest
  db 24
  !e5
  db 36
  !e5
  db 12,$37
  !e5
  db 24
  !e5
  db 12
  !e5
  db 36
  !rest
  db 24,$07
  !f5
  db 36
  !f5
  db 12,$37
  !f5
  db 36,$07
  !f5
  !end

.sub44CD
  !rest
  db 24
  !f5
  db 36
  !f5
  db 12,$37
  !f5
  db 36,$07
  !f5
  !end

.sub44D9
  db 60,$67
  !f3
  db 36,$17
  !f3
  db 12,$57
  !c3
  db 36,$67
  !f3
  db 24
  !rest
  db 12,$78
  !f2
  db 36,$48
  !f2
  db 24,$67
  !f3
  db 12,$68
  !f2
  db 24
  !f2
  db 12,$67
  !f3
  db 60
  !e3
  db 36,$17
  !e3
  db 12,$57
  !b2
  db 36,$67
  !e3
  !end

.sub4504
  !instr,!instr00
  db 36,$08
  !gs4
  !instr,!instr03
  db 24,$17
  !c5
  db 36
  !c5
  db 12,$47
  !c5
  db 36,$17
  !c5
  !end

.sub4517
  db 60
  !ds3
  db 36,$17
  !ds3
  db 12,$57
  !as2
  db 36,$67
  !ds3
  db 24
  !rest
  db 36,$17
  !ds3
  db 12,$57
  !as2
  db 24,$17
  !ds3
  db 36,$67
  !as2
  db 12
  !ds3
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
