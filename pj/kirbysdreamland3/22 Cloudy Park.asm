asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr04 = $18
!instr06 = $19
!instr19 = $1A
!instr1B = $1B
!instr1C = $1C
!instr1D = $1D
!instr21 = $1E
!instr23 = $1F
!instr24 = $20
!instr27 = $21

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr04,$CF,$F5,$B8,$08,$F0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample04,Sample04+1404
  dw Sample05_06,Sample05_06+216
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample1D,Sample1D+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample04: incbin "Sample_ed5604d5b249b89747c4b04479c95eb2.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
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
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern1_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !echo,%00011100,30,30
  !echoParameters,4,196,0
  !musicVolume,255
  !tempo,46
  !transpose,3
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$76
  %percNote(!instr27-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 18,$70
  %percNote(!instr24-!instr23)
  !loop : dw .sub4D7E : db 3
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$75
  %percNote(!instr27-!instr23)
  db 36,$77
  %percNote(!instr23-!instr23)
  db 27
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 18,$70
  %percNote(!instr24-!instr23)
  !end

.pattern0_1
  !instr,!instr21
  !pan,10
  !volume,180
  !loop : dw .sub4DC3 : db 1
  !end

.pattern0_2
  !subtranspose,0
  !vibrato,0,8,30
  !transpose,12
  !instr,!instr1B
  !volume,175
  !pan,10
  db 72,$07
  !c6
  !e6
  !g6
  db 36,$37
  !f6
  !e6
  db 72,$17
  !d6
  db 65
  !rest
  db 7,$77
  !c6
  db 27
  !d6
  !endVibrato
  db 9
  !rest
  !instr,!instr06
  !volume,125
  !pan,8
  db 18,$07
  !g5
  !rest
  !g6
  !pan,12
  !g5
  !rest
  !pan,8
  !g6
  !vibrato,0,8,30
  !instr,!instr1B
  !volume,175
  !pan,10
  db 72
  !c6
  !e6
  !g6
  db 36,$37
  !e6
  !g6
  db 72,$17
  !c7
  db 36,$67
  !b6
  !a6
  db 72,$17
  !g6
  db 36,$67
  !e6
  !g6
  !end

.pattern0_3
  !subtranspose,0
  !instr,!instr1C
  !volume,130
  !pan,12
  !loop : dw .sub4E49 : db 2
  db 18,$17
  !d5
  db 18,$16
  !a5
  db 18,$18
  !a5
  db 18,$16
  !a5
  !d5
  !a5
  db 18,$18
  !a5
  db 18,$16
  !a5
  db 18,$17
  !d5
  db 18,$16
  !b5
  db 18,$18
  !b5
  db 18,$16
  !b5
  !d5
  !b5
  db 18,$18
  !b5
  db 18,$16
  !b5
  !loop : dw .sub4E49 : db 2
  db 18,$17
  !c5
  db 18,$16
  !a5
  db 18,$18
  !a5
  db 18,$16
  !a5
  !c5
  !a5
  db 18,$18
  !a5
  db 18,$16
  !a5
  db 18,$17
  !d5
  db 18,$16
  !b5
  db 18,$18
  !b5
  db 18,$16
  !b5
  !d5
  !b5
  db 18,$18
  !b5
  db 18,$16
  !b5
  !end

.pattern0_4
  !subtranspose,0
  !instr,!instr1C
  !volume,130
  !pan,8
  !loop : dw .sub4E5E : db 2
  !loop : dw .sub4E73 : db 2
  !loop : dw .sub4E5E : db 2
  db 18,$17
  !f5
  db 18,$16
  !c6
  db 18,$18
  !c6
  db 18,$16
  !c6
  !f5
  !c6
  db 18,$18
  !c6
  db 18,$16
  !c6
  db 18,$17
  !f5
  db 18,$16
  !d6
  db 18,$18
  !d6
  db 18,$16
  !d6
  !f5
  !d6
  db 18,$18
  !d6
  db 18,$16
  !d6
  !end

.pattern1_0
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$76
  %percNote(!instr27-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 18,$70
  %percNote(!instr24-!instr23)
  !loop : dw .sub4D7E : db 3
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$75
  %percNote(!instr27-!instr23)
  db 36,$77
  %percNote(!instr23-!instr23)
  db 27
  %percNote(!instr27-!instr23)
  db 9
  %percNote(!instr23-!instr23)
  %percNote(!instr27-!instr23)
  db 9,$73
  %percNote(!instr27-!instr23)
  db 18,$77
  %percNote(!instr27-!instr23)
  !end

.pattern1_1
  !loop : dw .sub4E88 : db 1
  !rest
  db 18,$27
  !g3
  db 36,$58
  !g2
  db 18,$27
  !g3
  db 36,$58
  !g2
  db 18,$57
  !g3
  !end

.pattern1_2
  db 72,$17
  !a6
  db 54
  !rest
  db 9,$67
  !a6
  !b6
  db 72,$17
  !c7
  db 36,$57
  !b6
  !g6
  db 72,$17
  !f6
  db 36
  !rest
  db 36,$67
  !a6
  db 72,$17
  !g6
  db 36,$57
  !e6
  !g6
  db 72,$17
  !a6
  db 36,$67
  !c7
  db 36,$66
  !d7
  !endVibrato
  db 72,$15
  !e7
  !vibrato,0,8,30
  db 18,$66
  !d7
  db 18,$67
  !b6
  db 36,$57
  !g6
  db 72,$17
  !f6
  db 36
  !rest
  db 36,$67
  !a6
  db 72,$17
  !g6
  db 18,$67
  !g6
  !e6
  db 36,$27
  !d6
  !end

.pattern1_3
  !instr,!instr03
  !volume,125
  !loop : dw .sub4EEB : db 1
  db 18,$18
  !d5
  db 18,$16
  !b5
  db 18,$18
  !b5
  db 18,$16
  !b5
  db 18,$18
  !d5
  db 18,$16
  !b5
  db 18,$18
  !b5
  db 18,$16
  !b5
  !loop : dw .sub4EEB : db 1
  db 18,$18
  !d5
  db 18,$16
  !a5
  db 18,$18
  !a5
  db 19,$16
  !a5
  !pan,20
  db 18,$15
  !g6
  !e6
  db 35
  !d6
  !end

.pattern1_4
  !instr,!instr03
  !volume,120
  !loop : dw .sub4F34 : db 1
  db 18,$18
  !g5
  db 18,$16
  !d6
  db 18,$18
  !d6
  db 18,$16
  !d6
  db 18,$18
  !g5
  db 18,$16
  !d6
  db 18,$18
  !d6
  db 18,$16
  !d6
  !loop : dw .sub4F34 : db 1
  db 18,$18
  !f5
  db 18,$16
  !c6
  db 18,$18
  !c6
  db 20,$16
  !c6
  !pan,0
  db 18,$15
  !g6
  !e6
  db 34
  !d6
  !end

.pattern2_1
  !loop : dw .sub4DC3 : db 1
  !end

.pattern2_2
  !transpose,0
  !instr,!instr04
  !volume,145
  !loop : dw .sub4F7D : db 2
  !pan,12
  db 9,$57
  !d4
  !pan,20
  db 9,$52
  !d4
  !pan,12
  db 9,$57
  !f4
  !pan,20
  db 9,$52
  !f4
  !pan,12
  db 9,$57
  !a4
  !pan,20
  db 9,$52
  !a4
  !pan,12
  db 9,$57
  !d5
  !pan,20
  db 9,$52
  !d5
  !pan,12
  db 9,$57
  !f5
  !pan,20
  db 9,$52
  !f5
  !pan,12
  db 9,$57
  !d5
  !pan,20
  db 9,$52
  !d5
  !pan,12
  db 9,$57
  !a4
  !pan,20
  db 9,$52
  !a4
  !pan,12
  db 9,$57
  !f4
  !pan,20
  db 9,$52
  !f4
  !pan,12
  db 9,$57
  !d4
  !pan,20
  db 9,$52
  !d4
  !pan,12
  db 9,$57
  !f4
  !pan,20
  db 9,$52
  !f4
  !pan,12
  db 9,$57
  !b4
  !pan,20
  db 9,$52
  !b4
  !pan,12
  db 9,$57
  !d5
  !pan,20
  db 9,$52
  !d5
  !pan,12
  db 9,$57
  !f5
  !pan,20
  db 9,$52
  !f5
  !pan,12
  db 9,$57
  !d5
  !pan,20
  db 9,$52
  !d5
  !pan,12
  db 9,$57
  !b4
  !pan,20
  db 9,$52
  !b4
  !pan,12
  db 9,$57
  !f4
  !pan,20
  db 9,$52
  !f4
  !loop : dw .sub4F7D : db 2
  !pan,12
  db 9,$57
  !f4
  !pan,20
  db 9,$52
  !f4
  !pan,12
  db 9,$57
  !a4
  !pan,20
  db 9,$52
  !a4
  !pan,12
  db 9,$57
  !c5
  !pan,20
  db 9,$52
  !c5
  !pan,12
  db 9,$57
  !f5
  !pan,20
  db 9,$52
  !f5
  !pan,12
  db 9,$57
  !a5
  !pan,20
  db 9,$52
  !a5
  !pan,12
  db 9,$57
  !f5
  !pan,20
  db 9,$52
  !f5
  !pan,12
  db 9,$57
  !c5
  !pan,20
  db 9,$52
  !c5
  !pan,12
  db 9,$57
  !a4
  !pan,20
  db 9,$52
  !a4
  !pan,12
  db 9,$57
  !f4
  !pan,20
  db 9,$52
  !f4
  !pan,12
  db 9,$57
  !b4
  !pan,20
  db 9,$52
  !b4
  !pan,12
  db 9,$57
  !d5
  !pan,20
  db 9,$52
  !d5
  !pan,12
  db 9,$57
  !f5
  !pan,20
  db 9,$52
  !f5
  !instr,!instr21
  !volume,120
  !pan,12
  db 9,$77
  !f4
  !pan,20
  db 9,$72
  !f4
  !pan,12
  db 9,$77
  !b4
  !pan,20
  db 9,$72
  !b4
  !pan,12
  db 9,$77
  !d5
  !pan,20
  db 9,$72
  !d5
  !pan,12
  db 9,$77
  !f5
  !pan,20
  db 9,$72
  !f5
  !end

.pattern2_3
  !vibrato,18,12,15
  !pan,8
  !instr,!instr01
  !volume,135
  db 72,$17
  !g5
  !c6
  !e6
  db 36,$27
  !d6
  !c6
  db 108,$17
  !a5
  db 29
  !rest
  db 7,$77
  !a5
  db 108,$17
  !b5
  !instr,!instr06
  !volume,125
  !pan,20
  db 18,$07
  !g7
  !pan,0
  !g7
  !pan,8
  !instr,!instr01
  !volume,135
  db 72,$17
  !g5
  !c6
  !e6
  db 36,$27
  !c6
  !e6
  db 72
  !a6
  db 36
  !g6
  !f6
  db 72
  !b5
  !instr,!instr21
  !volume,120
  !pan,8
  db 9,$77
  !b4
  !pan,0
  db 9,$72
  !b4
  !pan,8
  db 9,$77
  !d5
  !pan,0
  db 9,$72
  !d5
  !pan,8
  db 9,$77
  !f5
  !pan,0
  db 9,$72
  !f5
  !pan,8
  db 9,$77
  !b5
  !pan,0
  db 9,$72
  !b5
  !end

.pattern2_4
  !vibrato,18,12,15
  !pan,10
  !instr,!instr01
  !volume,150
  db 72,$17
  !c6
  !e6
  !g6
  db 36,$27
  !f6
  !e6
  db 108,$17
  !d6
  db 29
  !rest
  db 7,$77
  !c6
  db 108,$17
  !d6
  db 36
  !rest
  db 72
  !c6
  !e6
  !g6
  db 36,$27
  !e6
  !g6
  db 72
  !c7
  db 36
  !b6
  !a6
  db 72
  !g6
  !instr,!instr19
  !vibrato,0,8,30
  !volume,165
  !subtranspose,60
  !slideIn,0,8,1
  db 36,$77
  !e6
  !endSlide
  !g6
  !end

.pattern3_0
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$76
  %percNote(!instr27-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 18,$70
  %percNote(!instr24-!instr23)
  !loop : dw .sub4D7E : db 3
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$75
  %percNote(!instr27-!instr23)
  db 36,$77
  %percNote(!instr23-!instr23)
  db 9
  %percNote(!instr27-!instr23)
  db 9,$73
  %percNote(!instr27-!instr23)
  db 18,$77
  %percNote(!instr27-!instr23)
  %percNote(!instr27-!instr23)
  db 18,$72
  %percNote(!instr23-!instr23)
  !end

.pattern3_1
  !loop : dw .sub4E88 : db 1
  !rest
  db 18,$27
  !g3
  db 36,$58
  !g2
  db 18,$57
  !g3
  db 18,$58
  !g2
  db 36,$27
  !g3
  !end

.pattern3_2
  !instr,!instr19
  !pan,10
  !vibrato,0,8,30
  !volume,150
  !subtranspose,60
  db 108,$77
  !a6
  db 18,$57
  !tie
  db 9,$77
  !a6
  !b6
  db 72
  !c7
  db 36
  !b6
  !g6
  db 108
  !f6
  !slideIn,0,8,1
  db 36
  !a6
  !endSlide
  db 72,$47
  !g6
  !slideIn,0,7,1
  db 36,$77
  !e6
  !endSlide
  !g6
  db 72,$67
  !a6
  !slideIn,0,9,1
  db 36,$77
  !c7
  !endSlide
  db 36,$76
  !d7
  db 72,$65
  !e7
  db 18,$76
  !d7
  db 18,$77
  !b6
  db 36
  !g6
  db 108,$67
  !f6
  !slideIn,0,7,1
  db 36,$77
  !a6
  !endSlide
  db 72,$37
  !g6
  db 18,$67
  !g6
  !e6
  db 36,$27
  !d6
  !end

.pattern3_3
  !instr,!instr1D
  !pan,12
  !volume,120
  !endVibrato
  db 18,$17
  !a5
  !c6
  !a5
  !c6
  !g5
  !b5
  !g5
  !b5
  !f5
  !a5
  !f5
  !a5
  !e5
  !g5
  !e5
  !g5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !d5
  !g5
  !d5
  !g5
  !d5
  !g5
  !e5
  !g5
  !a5
  !c6
  !a5
  !c6
  !g5
  !b5
  !g5
  !b5
  !f5
  !a5
  !f5
  !a5
  !e5
  !g5
  !e5
  !g5
  !c5
  !f5
  !d5
  !f5
  !c5
  !f5
  !d5
  !f5
  !c5
  !f5
  !d5
  !f5
  !instr,!instr19
  !volume,160
  !pan,12
  !subtranspose,60
  db 18,$67
  !g5
  !e4
  db 36,$27
  !d4
  !end

.pattern3_4
  !subtranspose,0
  !instr,!instr1D
  !pan,8
  !volume,120
  !endVibrato
  db 18,$17
  !c6
  !e6
  !c6
  !e6
  !b5
  !d6
  !b5
  !d6
  !loop : dw .sub4FCE : db 1
  !g5
  !b5
  !g5
  !b5
  !g5
  !b5
  !g5
  !b5
  !c6
  !e6
  !c6
  !e6
  !b5
  !d6
  !b5
  !d6
  !loop : dw .sub4FCE : db 1
  !f5
  !a5
  !f5
  !a5
  !instr,!instr19
  !volume,170
  !pan,8
  !subtranspose,60
  db 18,$67
  !g4
  !e4
  db 36,$27
  !d4
  !end

.sub4D7E
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$75
  %percNote(!instr27-!instr23)
  db 36,$77
  %percNote(!instr23-!instr23)
  db 27
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$76
  %percNote(!instr27-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 18,$70
  %percNote(!instr24-!instr23)
  !end

.sub4DC3
  db 54,$27
  !c3
  db 18,$17
  !c3
  db 54,$28
  !g2
  db 18
  !g2
  !rest
  db 36,$17
  !c3
  db 18,$37
  !c3
  db 27,$38
  !g2
  db 9,$68
  !g2
  db 18,$27
  !c3
  db 18,$28
  !g2
  db 54,$27
  !d3
  db 18,$17
  !d3
  db 18,$67
  !a2
  db 36,$17
  !d3
  db 18,$27
  !a2
  !rest
  db 36,$18
  !g2
  db 18,$38
  !g2
  db 27,$07
  !g3
  db 9,$68
  !g2
  db 18,$17
  !g3
  db 18,$68
  !g2
  db 54,$27
  !c3
  db 18,$17
  !c3
  db 54,$28
  !g2
  db 18
  !g2
  !rest
  db 36,$17
  !c3
  db 18,$37
  !c3
  db 27,$28
  !g2
  db 9,$68
  !g2
  db 9,$67
  !c3
  db 18,$68
  !g2
  db 9,$77
  !c3
  db 18
  !rest
  db 18,$67
  !f3
  db 36,$19
  !f2
  db 18,$37
  !c3
  db 36,$69
  !f2
  db 18,$37
  !c3
  !rest
  db 18,$17
  !g3
  db 36,$38
  !g2
  db 27,$07
  !g3
  db 9,$68
  !g2
  db 18,$17
  !g3
  db 18,$68
  !g2
  !end

.sub4E49
  db 18,$17
  !c5
  db 18,$16
  !c6
  db 18,$18
  !c6
  db 18,$16
  !c6
  !c5
  !c6
  db 18,$18
  !c6
  db 18,$16
  !c6
  !end

.sub4E5E
  db 18,$17
  !e5
  db 18,$16
  !e6
  db 18,$18
  !e6
  db 18,$16
  !e6
  !e5
  !e6
  db 18,$18
  !e6
  db 18,$16
  !e6
  !end

.sub4E73
  db 18,$17
  !f5
  db 18,$16
  !d6
  db 18,$18
  !d6
  db 18,$16
  !d6
  !f5
  !d6
  db 18,$18
  !d6
  db 18,$16
  !d6
  !end

.sub4E88
  db 54,$26
  !a3
  db 36,$27
  !a2
  db 36,$17
  !g3
  db 18,$58
  !g2
  !rest
  db 36,$27
  !f3
  db 18,$59
  !f2
  db 27,$57
  !e3
  db 9
  !b2
  db 18,$27
  !e3
  !b2
  db 54
  !d3
  db 18
  !d3
  db 18,$57
  !a2
  db 36,$27
  !d3
  db 18,$57
  !a2
  !rest
  db 18,$27
  !e3
  db 36
  !b2
  db 27
  !e3
  db 9,$57
  !b2
  db 18,$27
  !e3
  !b2
  db 54,$26
  !a3
  db 36,$27
  !a2
  db 36,$17
  !g3
  db 18,$58
  !g2
  !rest
  db 36,$27
  !f3
  db 18,$59
  !f2
  db 27,$27
  !e3
  db 9,$57
  !b2
  db 18,$27
  !e3
  !b2
  db 54
  !d3
  db 18
  !d3
  db 18,$57
  !a2
  db 36,$17
  !d3
  db 18,$57
  !a2
  !end

.sub4EEB
  db 18,$18
  !e5
  db 18,$16
  !c6
  db 18,$18
  !c6
  db 18,$16
  !c6
  db 18,$18
  !d5
  db 18,$16
  !b5
  db 18,$18
  !b5
  db 18,$16
  !b5
  db 18,$18
  !c5
  db 18,$16
  !a5
  db 18,$18
  !a5
  db 18,$16
  !a5
  db 18,$18
  !b4
  db 18,$16
  !g5
  db 18,$18
  !g5
  db 18,$16
  !g5
  db 18,$18
  !c5
  db 18,$16
  !a5
  db 18,$18
  !a5
  db 18,$16
  !a5
  db 18,$18
  !c5
  db 18,$16
  !a5
  db 18,$18
  !a5
  db 18,$16
  !a5
  !end

.sub4F34
  db 18,$18
  !a5
  db 18,$16
  !e6
  db 18,$18
  !e6
  db 18,$16
  !e6
  db 18,$18
  !g5
  db 18,$16
  !d6
  db 18,$18
  !d6
  db 18,$16
  !d6
  db 18,$18
  !f5
  db 18,$16
  !c6
  db 18,$18
  !c6
  db 18,$16
  !c6
  db 18,$18
  !d5
  db 18,$16
  !b5
  db 18,$18
  !b5
  db 18,$16
  !b5
  db 18,$18
  !f5
  db 18,$16
  !c6
  db 18,$18
  !c6
  db 18,$16
  !c6
  db 18,$18
  !f5
  db 18,$16
  !c6
  db 18,$18
  !c6
  db 18,$16
  !c6
  !end

.sub4F7D
  !pan,12
  db 9,$57
  !e4
  !pan,20
  db 9,$52
  !e4
  !pan,12
  db 9,$57
  !g4
  !pan,20
  db 9,$52
  !g4
  !pan,12
  db 9,$57
  !c5
  !pan,20
  db 9,$52
  !c5
  !pan,12
  db 9,$57
  !e5
  !pan,20
  db 9,$52
  !e5
  !pan,12
  db 9,$57
  !g5
  !pan,20
  db 9,$52
  !g5
  !pan,12
  db 9,$57
  !e5
  !pan,20
  db 9,$52
  !e5
  !pan,12
  db 9,$57
  !c5
  !pan,20
  db 9,$52
  !c5
  !pan,12
  db 9,$57
  !g4
  !pan,20
  db 9,$52
  !g4
  !end

.sub4FCE
  !a5
  !c6
  !a5
  !c6
  !g5
  !b5
  !g5
  !b5
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
