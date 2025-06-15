asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr06 = $18
!instr16 = $19
!instr19 = $1A
!instr1A = $1B
!instr1B = $1C
!instr1C = $1D
!instr21 = $1E
!instr27 = $1F
!instr28 = $20
!instr29 = $21

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr16,$87,$0D,$B8,$03,$C0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1A,$FF,$E0,$B8,$02,$C0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$FF,$E0,$B8,$04,$00
  db !instr29,$FF,$E0,$B8,$11,$F0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample05_06,Sample05_06+216
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1A,Sample1A+36
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample21,Sample21+27
  dw Sample26_27,Sample26_27+1683
  dw Sample28,Sample28+1998
  dw Sample29,Sample29+1602
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1A: incbin "Sample_a384c8c8fd012210f20a5c913fcbeb43.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28: incbin "Sample_6d2f6529cf00df564d41e991d0523929.brr"
  Sample29: incbin "Sample_69fd59df0f6c4d803eb564b50210734c.brr"

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
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw $00C8,-

.pattern0: dw .pattern0_0, 0, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echo,%00011100,34,34
  !echoParameters,4,60,0
  !musicVolume,255
  !tempo,47
  !instr,!instr27
  db 6,$71
  !d5
  db 5,$72
  !d5
  db 5,$73
  !d5
  !loop : dw .sub5077 : db 2
  !end

.pattern0_2
  !transpose,12
  !volume,165
  !pan,11
  !instr,!instr1B
  db 6,$77
  !g6
  db 5
  !a6
  !b6
  db 16,$28
  !c7
  !transpose,0
  !pan,12
  db 16,$15
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  db 16,$25
  !g5
  db 16,$15
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !end

.pattern0_3
  db 16
  !rest
  !endVibrato
  !subtranspose,0
  !instr,!instr1B
  !volume,165
  !pan,8
  db 16,$27
  !c6
  db 16,$15
  !e6
  !e6
  !e6
  !e6
  !e6
  !e6
  !e6
  db 16,$25
  !e5
  db 16,$15
  !e6
  !e6
  !e6
  !e6
  !e6
  !e6
  !e6
  !end

.pattern0_4
  !transpose,12
  !volume,165
  !pan,9
  !subtranspose,20
  !instr,!instr1B
  db 6,$77
  !g6
  db 5
  !a6
  !b6
  db 16,$28
  !c7
  !transpose,0
  !pan,10
  !subtranspose,0
  db 16,$15
  !g6
  !g6
  !g6
  !g6
  !g6
  !g6
  !g6
  db 16,$25
  !c6
  db 16,$15
  !g6
  !g6
  !g6
  !g6
  !g6
  !g6
  !g6
  !end

.pattern1_0
  !loop : dw .sub5077 : db 7
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$73
  !d5
  db 4,$75
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  db 3
  !d5
  !end

.pattern1_1
  !endVibrato
  !subtranspose,0
  !instr,!instr1B
  !volume,165
  !pan,8
  !loop : dw .sub509F : db 2
  !loop : dw .sub50AC : db 2
  !loop : dw .sub509F : db 2
  db 16,$57
  !d5
  db 16,$17
  !f5
  !f5
  !f5
  db 16,$57
  !d5
  db 16,$17
  !f5
  !f5
  !f5
  db 16,$57
  !g4
  db 16,$17
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !end

.pattern1_2
  !endVibrato
  !subtranspose,0
  !instr,!instr1B
  !volume,165
  !pan,10
  !loop : dw .sub50B9 : db 2
  db 16,$57
  !f5
  db 16,$17
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  !a5
  db 16,$57
  !f5
  db 16,$17
  !a5
  !a5
  !a5
  !b5
  !b5
  !b5
  !b5
  !loop : dw .sub50B9 : db 2
  db 16,$57
  !f5
  db 16,$17
  !a5
  !a5
  !a5
  db 16,$57
  !f5
  db 16,$17
  !b5
  !b5
  !b5
  db 16,$57
  !c5
  db 16,$17
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !end

.pattern1_3
  db 4
  !rest
  !endVibrato
  !transpose,12
  !instr,!instr06
  !subtranspose,20
  !volume,155
  !pan,13
  db 64,$77
  !g6
  db 32
  !e6
  !g6
  !loop : dw .sub50C6 : db 1
  db 96
  !d6
  db 32
  !g5
  db 64
  !g6
  db 32
  !e6
  !g6
  !c7
  !b6
  !g6
  !c6
  db 64
  !g6
  db 32
  !d6
  !e6
  !transpose,0
  db 92
  !c7
  db 32
  !rest
  !end

.pattern1_4
  !subtranspose,0
  !endVibrato
  !transpose,12
  !instr,!instr06
  !volume,155
  !pan,7
  !loop : dw .sub50D0 : db 1
  db 96
  !d6
  db 32
  !g5
  db 64
  !g6
  db 32
  !e6
  !g6
  !c7
  !b6
  !g6
  !c6
  db 64
  !g6
  db 32
  !d6
  !e6
  db 96
  !c6
  !pan,10
  !instr,!instr28
  !volume,140
  !transpose,0
  db 32,$78
  !g5
  !end

.pattern2_0
  !loop : dw .sub5077 : db 7
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$73
  !d5
  db 4,$75
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  db 3
  !d5
  !end

.pattern2_1
  !subtranspose,0
  !pan,10
  !instr,!instr29
  !volume,240
  !loop : dw .sub50E0 : db 1
  !loop : dw .sub50F5 : db 1
  !loop : dw .sub5106 : db 2
  !loop : dw .sub5113 : db 1
  !end

.pattern2_2
  !subtranspose,33
  !instr,!instr1A
  !volume,130
  !pan,13
  db 8,$57
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !f4
  !b4
  !d5
  !f5
  !f4
  !b4
  !d5
  !f5
  !loop : dw .sub5128 : db 2
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !f4
  !b4
  !d5
  !f5
  !f4
  !b4
  !d5
  !f5
  !g4
  !d5
  !e5
  !g5
  !g4
  !d5
  !e5
  !g5
  !g4
  !d5
  !e5
  !g5
  !g4
  !d5
  !e5
  !g5
  !end

.pattern2_3
  !subtranspose,33
  !instr,!instr1A
  !volume,130
  !pan,7
  db 8,$57
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !d5
  !e5
  !g5
  !g4
  !d5
  !e5
  !g5
  !a4
  !d5
  !f5
  !a5
  !a4
  !d5
  !f5
  !a5
  !a4
  !d5
  !f5
  !a5
  !a4
  !d5
  !f5
  !a5
  !a4
  !d5
  !f5
  !a5
  !a4
  !d5
  !f5
  !a5
  !b4
  !d5
  !f5
  !b5
  !b4
  !d5
  !f5
  !b5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !d5
  !e5
  !g5
  !g4
  !d5
  !e5
  !g5
  !a4
  !d5
  !f5
  !a5
  !a4
  !d5
  !f5
  !a5
  !b4
  !d5
  !f5
  !b5
  !b4
  !d5
  !f5
  !b5
  !c5
  !e5
  !g5
  !c6
  !c5
  !e5
  !g5
  !c6
  !c5
  !e5
  !g5
  !c6
  !c5
  !e5
  !g5
  !c6
  !end

.pattern2_4
  !loop : dw .sub50D0 : db 1
  db 96
  !d6
  db 32
  !g5
  db 64
  !g6
  db 32
  !e6
  !g6
  !loop : dw .sub5139 : db 1
  db 96
  !c6
  !instr,!instr01
  !volume,160
  !vibrato,14,12,30
  db 32,$79
  !g5
  !end

.pattern3_0
  !loop : dw .sub5077 : db 7
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$73
  !d5
  db 4,$75
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  db 3
  !d5
  !end

.pattern3_1
  db 32,$17
  !gs3
  !ds3
  !gs3
  !ds3
  !gs3
  !ds3
  !gs3
  !ds3
  !g3
  !d3
  !g3
  db 32,$18
  !g2
  db 32,$17
  !g3
  !d3
  !g3
  db 32,$18
  !g2
  db 32,$17
  !gs3
  !ds3
  !gs3
  !ds3
  !gs3
  !ds3
  !gs3
  db 32,$18
  !gs2
  !loop : dw .sub50F5 : db 1
  !end

.pattern3_2
  !instr,!instr1C
  !volume,155
  !pan,13
  db 8,$57
  !gs4
  !c5
  !ds5
  !g5
  !gs4
  !c5
  !ds5
  !g5
  !gs4
  !c5
  !ds5
  !g5
  !gs4
  !c5
  !ds5
  !g5
  !gs4
  !c5
  !ds5
  !g5
  !gs4
  !c5
  !ds5
  !g5
  !gs4
  !c5
  !ds5
  !g5
  !gs4
  !c5
  !ds5
  !g5
  !loop : dw .sub5142 : db 2
  !loop : dw .sub5153 : db 2
  !a4
  !c5
  !f5
  !a5
  !a4
  !c5
  !f5
  !a5
  !a4
  !c5
  !f5
  !a5
  !a4
  !c5
  !f5
  !a5
  !a4
  !c5
  !f5
  !a5
  !a4
  !c5
  !f5
  !a5
  !b4
  !d5
  !f5
  !g5
  !b4
  !d5
  !f5
  !f5
  !end

.pattern3_3
  !instr,!instr1C
  !volume,155
  !pan,7
  db 8,$57
  !c5
  !ds5
  !g5
  !c6
  !c5
  !ds5
  !g5
  !c6
  !c5
  !ds5
  !g5
  !c6
  !c5
  !ds5
  !g5
  !c6
  !c5
  !ds5
  !g5
  !as5
  !c5
  !ds5
  !g5
  !as5
  !c5
  !ds5
  !g5
  !as5
  !c5
  !ds5
  !g5
  !as5
  !as4
  !d5
  !f5
  !as5
  !as4
  !d5
  !f5
  !as5
  !as4
  !d5
  !f5
  !as5
  !as4
  !d5
  !f5
  !as5
  !as4
  !d5
  !f5
  !a5
  !as4
  !d5
  !f5
  !a5
  !as4
  !d5
  !f5
  !a5
  !as4
  !d5
  !f5
  !a5
  !c5
  !ds5
  !g5
  !c6
  !c5
  !ds5
  !g5
  !c6
  !c5
  !ds5
  !g5
  !c6
  !c5
  !ds5
  !g5
  !c6
  !c5
  !ds5
  !g5
  !as5
  !c5
  !ds5
  !g5
  !as5
  !c5
  !ds5
  !g5
  !as5
  !c5
  !ds5
  !g5
  !as5
  !d5
  !f5
  !a5
  !c6
  !d5
  !f5
  !a5
  !c6
  !d5
  !f5
  !a5
  !c6
  !d5
  !f5
  !a5
  !c6
  !d5
  !f5
  !a5
  !c6
  !d5
  !f5
  !a5
  !c6
  !d5
  !f5
  !g5
  !b5
  !d5
  !f5
  !g5
  !b5
  !end

.pattern3_4
  db 64,$77
  !g6
  db 32
  !ds6
  !g6
  !as6
  !gs6
  !g6
  !f6
  db 64
  !g6
  !d6
  !as5
  !d6
  !g6
  db 32
  !c6
  !g6
  db 32,$76
  !as6
  !c7
  db 32,$77
  !g6
  !f6
  db 64
  !g6
  db 32
  !e6
  !f6
  db 64
  !g6
  db 32
  !g5
  !instr,!instr1A
  !subtranspose,33
  !volume,165
  !vibrato,0,20,20
  !g5
  !end

.pattern4_0
  !loop : dw .sub5164 : db 7
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$73
  !d5
  db 4,$75
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  db 3
  !d5
  !end

.pattern4_1
  !loop : dw .sub50E0 : db 1
  !loop : dw .sub50F5 : db 1
  !loop : dw .sub5106 : db 2
  !loop : dw .sub5113 : db 1
  !end

.pattern4_2
  !pan,8
  !instr,!instr1A
  !volume,150
  !subtranspose,33
  !vibrato,0,20,30
  db 32,$77
  !d6
  !e6
  !c6
  !e6
  db 64
  !g6
  db 32
  !e6
  !g5
  !d6
  !e6
  !d6
  !c6
  !a5
  !a5
  !b5
  !d5
  !d6
  !e6
  !c6
  !e6
  db 64
  !g6
  db 32
  !e6
  !g5
  !d6
  !e6
  !a5
  !b5
  !g5
  !a5
  !g5
  !subtranspose,0
  !instr,!instr01
  !volume,145
  !vibrato,0,21,30
  !d5
  !end

.pattern4_3
  !pan,10
  !instr,!instr1A
  !volume,165
  !subtranspose,33
  !vibrato,0,20,30
  !loop : dw .sub50D0 : db 1
  db 96
  !d6
  db 32,$78
  !g5
  db 64,$77
  !g6
  db 32
  !e6
  !g6
  !loop : dw .sub5139 : db 1
  db 96
  !c6
  !transpose,0
  !subtranspose,0
  !instr,!instr01
  !volume,160
  !vibrato,10,20,30
  db 32,$79
  !g5
  !end

.pattern4_4
  !loop : dw .sub5195 : db 1
  !end

.pattern5_0
  !loop : dw .sub5164 : db 7
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$73
  !d5
  db 4,$75
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  db 3
  !d5
  !end

.pattern5_1
  !loop : dw .sub50E0 : db 1
  !loop : dw .sub50F5 : db 1
  !loop : dw .sub5106 : db 2
  !loop : dw .sub5113 : db 1
  !end

.pattern5_2
  !pan,12
  !instr,!instr19
  !volume,165
  !subtranspose,60
  !vibrato,0,20,30
  db 32,$77
  !d6
  !e6
  !c6
  !e6
  db 64
  !g6
  db 32
  !e6
  !g5
  !d6
  !e6
  !d6
  !c6
  !a5
  !a5
  !b5
  !d5
  !d6
  !e6
  !c6
  !e6
  db 64
  !g6
  db 32
  !e6
  !g5
  !d6
  !e6
  !a5
  !b5
  !g5
  !a5
  !g5
  !instr,!instr16
  !volume,180
  !subtranspose,75
  !pan,0
  !dynamicPan,32,20
  !vibrato,10,20,30
  !g5
  !end

.pattern5_3
  !pan,10
  !instr,!instr01
  !volume,170
  !subtranspose,0
  !vibrato,0,20,30
  db 64,$77
  !g6
  db 32
  !e6
  !g6
  !c7
  !b6
  !g6
  !c6
  !g6
  !g6
  !f6
  !e6
  db 96
  !d6
  db 32
  !g5
  !g6
  !g6
  !e6
  !g6
  !loop : dw .sub5139 : db 1
  db 96
  !c6
  !transpose,0
  !instr,!instr16
  !subtranspose,60
  !volume,200
  !vibrato,10,20,30
  db 32
  !g5
  !end

.pattern5_4
  !loop : dw .sub5195 : db 1
  !end

.pattern6_0
  !loop : dw .sub5164 : db 7
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$73
  !d5
  db 4,$75
  !d5
  db 4,$72
  !d5
  db 4,$71
  !d5
  db 3
  !d5
  !end

.pattern6_1
  !loop : dw .sub5239 : db 1
  !ds3
  !as2
  !ds3
  !as2
  !ds3
  !as2
  !ds3
  !as2
  !f3
  !c3
  !f3
  !c3
  !as2
  !f3
  db 32,$16
  !as3
  db 32,$17
  !as2
  !ds3
  !as2
  !ds3
  !as2
  !ds3
  !as2
  !ds3
  !as2
  !end

.pattern6_2
  !subtranspose,0
  !instr,!instr1B
  !volume,165
  db 8,$57
  !c5
  !ds5
  !f5
  !gs5
  !c5
  !ds5
  !f5
  !gs5
  !c5
  !ds5
  !g5
  !gs5
  !c5
  !ds5
  !g5
  !gs5
  !as4
  !d5
  !f5
  !gs5
  !as4
  !d5
  !f5
  !gs5
  !as4
  !d5
  !f5
  !gs5
  !as4
  !d5
  !f5
  !gs5
  !as4
  !d5
  !ds5
  !g5
  !as4
  !d5
  !ds5
  !g5
  !as4
  !d5
  !ds5
  !g5
  !as4
  !d5
  !ds5
  !g5
  !d5
  !ds5
  !g5
  !as5
  !d5
  !ds5
  !g5
  !as5
  !d5
  !ds5
  !g5
  !as5
  !d5
  !ds5
  !g5
  !as5
  !c5
  !ds5
  !f5
  !gs5
  !c5
  !ds5
  !f5
  !gs5
  !c5
  !ds5
  !f5
  !gs5
  !c5
  !ds5
  !f5
  !gs5
  !c5
  !ds5
  !g5
  !gs5
  !c5
  !ds5
  !g5
  !gs5
  !c5
  !ds5
  !g5
  !gs5
  !c5
  !ds5
  !g5
  !gs5
  !loop : dw .sub5244 : db 2
  !end

.pattern6_3
  !subtranspose,0
  !instr,!instr1B
  !volume,165
  !loop : dw .sub5255 : db 1
  !d5
  !ds5
  !g5
  !as5
  !d5
  !ds5
  !g5
  !as5
  !d5
  !ds5
  !g5
  !as5
  !d5
  !ds5
  !g5
  !as5
  !ds5
  !g5
  !as5
  !d6
  !ds5
  !g5
  !as5
  !d6
  !ds5
  !g5
  !as5
  !d6
  !ds5
  !g5
  !as5
  !d6
  !ds5
  !g5
  !gs5
  !c6
  !ds5
  !g5
  !gs5
  !c6
  !ds5
  !g5
  !gs5
  !c6
  !ds5
  !g5
  !gs5
  !c6
  !ds5
  !f5
  !gs5
  !c6
  !ds5
  !f5
  !gs5
  !c6
  !ds5
  !f5
  !gs5
  !c6
  !ds5
  !f5
  !gs5
  !c6
  !loop : dw .sub5278 : db 2
  !end

.pattern6_4
  !instr,!instr16
  !volume,190
  !subtranspose,60
  !pan,7
  !vibrato,0,8,35
  !dynamicPan,128,13
  db 64,$77
  !g6
  db 32
  !ds6
  !g6
  !dynamicPan,128,7
  !f6
  !ds6
  !d6
  !c6
  !dynamicPan,112,13
  db 56
  !d6
  db 8,$7D
  !d6
  db 64,$77
  !g5
  !subtranspose,0
  !instr,!instr03
  !endVibrato
  !volume,165
  !pan,10
  db 16
  !d7
  !pan,0
  db 16,$72
  !d7
  !pan,20
  !d7
  !pan,0
  db 8
  !d7
  !pan,10
  db 8,$77
  !d7
  db 16
  !g6
  !pan,20
  db 16,$72
  !g6
  !pan,0
  !g6
  !pan,20
  !g6
  !pan,7
  !dynamicPan,128,13
  !instr,!instr16
  !volume,190
  !subtranspose,60
  !vibrato,0,8,35
  db 64,$77
  !g6
  db 32
  !ds6
  !g6
  !dynamicPan,128,7
  !as6
  !gs6
  !g6
  !f6
  !dynamicPan,128,13
  db 56
  !g6
  db 8,$7D
  !g6
  db 64,$77
  !d7
  !subtranspose,0
  !instr,!instr03
  !endVibrato
  !volume,165
  !pan,10
  db 16
  !d7
  !pan,0
  db 16,$72
  !d7
  !pan,20
  !d7
  !pan,0
  db 8
  !d7
  !pan,10
  db 8,$77
  !d7
  db 16
  !g7
  !pan,20
  db 16,$72
  !g7
  !pan,0
  !g7
  !pan,20
  !g7
  !end

.pattern7_0
  !loop : dw .sub5164 : db 7
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 3
  !d5
  db 4,$75
  !d5
  db 16,$78
  !d5
  !d5
  db 9
  !d5
  db 8,$76
  !d5
  db 4,$78
  !d5
  db 4,$76
  !d5
  db 4,$75
  !d5
  db 3
  !d5
  !end

.pattern7_1
  !loop : dw .sub5239 : db 1
  !e3
  !b2
  !e3
  !b2
  !e3
  !b2
  !e3
  !b2
  !d3
  !a2
  !d3
  !a2
  !d3
  !a2
  !d3
  !a2
  !g3
  db 32,$18
  !g2
  db 32,$17
  !g3
  db 32,$18
  !g2
  db 32,$17
  !g3
  db 32,$18
  !g2
  db 32,$17
  !g3
  !rest
  !end

.pattern7_2
  !instr,!instr01
  !volume,160
  !subtranspose,0
  !pan,10
  !vibrato,9,15,30
  db 64,$77
  !g6
  db 32
  !ds6
  !g6
  !as6
  !c7
  !g6
  !f6
  db 56
  !g6
  db 8,$79
  !g6
  db 64,$77
  !d7
  !tie
  db 56
  !g6
  db 8,$79
  !g6
  db 64,$77
  !d7
  !tie
  !tie
  db 32
  !a6
  !c7
  db 64
  !d7
  !tie
  !pan,12
  !volume,90
  !dynamicVolume,64,180
  !g7
  !volume,165
  !instr,!instr1B
  db 8,$56
  !d7
  db 56
  !rest
  !end

.pattern7_3
  !instr,!instr01
  !volume,150
  !subtranspose,0
  !pan,5
  !dynamicPan,128,15
  !vibrato,9,15,30
  db 32,$77
  !c6
  !ds6
  !c6
  !ds6
  !dynamicPan,128,5
  !d6
  !f6
  !d6
  !d6
  !dynamicPan,128,15
  db 56
  !e6
  db 8,$79
  !e6
  db 32,$77
  !b6
  !fs6
  !dynamicPan,128,5
  !g6
  !b6
  db 56
  !e6
  db 8,$79
  !e6
  !dynamicPan,128,15
  db 32,$77
  !a6
  !g6
  !f6
  !g6
  !dynamicPan,128,5
  db 64
  !a6
  db 32
  !f6
  !a6
  !dynamicPan,128,15
  !b6
  !a6
  !g6
  !a6
  !pan,8
  !volume,90
  !dynamicVolume,64,180
  db 64
  !b6
  !volume,165
  !pan,8
  db 8,$56
  !b6
  db 56
  !rest
  !end

.pattern7_4
  !pan,12
  !instr,!instr1C
  !volume,165
  !loop : dw .sub5255 : db 1
  !loop : dw .sub5289 : db 2
  !loop : dw .sub529A : db 3
  !f5
  !b5
  !d6
  !f6
  db 8,$58
  !f5
  !b5
  !d6
  !f6
  !instr,!instr1B
  !pan,10
  db 8,$5A
  !g7
  db 56
  !rest
  !end

.sub5077
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 17,$77
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$73
  !d5
  db 8,$75
  !d5
  db 7,$72
  !d5
  !end

.sub509F
  db 16,$57
  !c5
  db 16,$17
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !end

.sub50AC
  db 16,$57
  !d5
  db 16,$17
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !end

.sub50B9
  db 16,$57
  !e5
  db 16,$17
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !end

.sub50C6
  !c7
  !b6
  !g6
  !c6
  db 64
  !g6
  db 32
  !f6
  !e6
  !end

.sub50D0
  db 64,$77
  !g6
  db 32
  !e6
  !g6
  !c7
  !b6
  !g6
  !c6
  db 64
  !g6
  db 32
  !f6
  !e6
  !end

.sub50E0
  db 32,$17
  !c3
  db 32,$18
  !g2
  db 32,$17
  !c3
  !g2
  !c3
  db 32,$18
  !g2
  db 32,$17
  !c3
  db 32,$18
  !g2
  !end

.sub50F5
  db 32,$17
  !d3
  !a2
  !d3
  !a2
  !g3
  db 32,$18
  !g2
  db 32,$17
  !g3
  db 32,$18
  !g2
  !end

.sub5106
  db 32,$17
  !c3
  db 32,$18
  !g2
  db 32,$17
  !c3
  db 32,$18
  !g2
  !end

.sub5113
  db 32,$17
  !d3
  !a2
  !g3
  db 32,$18
  !g2
  db 32,$17
  !c3
  db 32,$18
  !g2
  db 32,$17
  !c3
  db 32,$18
  !g2
  !end

.sub5128
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !end

.sub5139
  !c7
  !b6
  !g6
  !c6
  !g6
  !g6
  !d6
  !e6
  !end

.sub5142
  !g4
  !as4
  !d5
  !f5
  !g4
  !as4
  !d5
  !f5
  !g4
  !as4
  !d5
  !f5
  !g4
  !as4
  !d5
  !f5
  !end

.sub5153
  !gs4
  !c5
  !ds5
  !g5
  !gs4
  !c5
  !ds5
  !g5
  !gs4
  !c5
  !ds5
  !g5
  !gs4
  !c5
  !ds5
  !g5
  !end

.sub5164
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$71
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  db 9,$77
  !d5
  db 8,$72
  !d5
  db 8,$73
  !d5
  db 7,$72
  !d5
  !end

.sub5195
  !endVibrato
  !subtranspose,0
  !instr,!instr21
  !pan,5
  !dynamicPan,128,15
  !volume,140
  db 8,$77
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !dynamicPan,128,5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !dynamicPan,128,15
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !dynamicPan,128,5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !g4
  !b4
  !d5
  !f5
  !g4
  !b4
  !d5
  !f5
  !dynamicPan,128,15
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !dynamicPan,128,5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !dynamicPan,128,15
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !g4
  !b4
  !d5
  !f5
  !g4
  !b4
  !d5
  !f5
  !dynamicPan,128,5
  !e4
  !g4
  !e5
  !g4
  !e4
  !g4
  !e5
  !g4
  !e4
  !g4
  !e5
  !g4
  !e4
  !g4
  !e5
  !g4
  !end

.sub5239
  db 32,$17
  !f3
  !c3
  !f3
  !c3
  !as2
  !f3
  !as2
  !f3
  !end

.sub5244
  !d5
  !ds5
  !g5
  !as5
  !d5
  !ds5
  !g5
  !as5
  !d5
  !ds5
  !g5
  !as5
  !d5
  !ds5
  !g5
  !as5
  !end

.sub5255
  db 8,$57
  !ds5
  !g5
  !gs5
  !c6
  !ds5
  !g5
  !gs5
  !c6
  !ds5
  !f5
  !gs5
  !c6
  !ds5
  !f5
  !gs5
  !c6
  !d5
  !f5
  !gs5
  !as5
  !d5
  !f5
  !gs5
  !as5
  !d5
  !f5
  !gs5
  !as5
  !d5
  !f5
  !gs5
  !as5
  !end

.sub5278
  !ds5
  !g5
  !as5
  !d6
  !ds5
  !g5
  !as5
  !d6
  !ds5
  !g5
  !as5
  !d6
  !ds5
  !g5
  !as5
  !d6
  !end

.sub5289
  !e5
  !g5
  !b5
  !d6
  !e5
  !g5
  !b5
  !d6
  !e5
  !g5
  !b5
  !d6
  !e5
  !g5
  !b5
  !d6
  !end

.sub529A
  !f5
  !a5
  !c6
  !f6
  !f5
  !a5
  !c6
  !f6
  !f5
  !a5
  !c6
  !f6
  !f5
  !a5
  !c6
  !f6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
