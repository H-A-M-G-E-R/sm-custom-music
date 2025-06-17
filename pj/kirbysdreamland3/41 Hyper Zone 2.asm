asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr06 = $18
!instr19 = $19
!instr1D = $1A
!instr20 = $1B
!instr23 = $1C
!instr25 = $1D
!instr26 = $1E
!instr27 = $1F
!instr28 = $20
!instr29 = $21

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr20,$FF,$E0,$B8,$02,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr26,$BF,$D3,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$FF,$E0,$B8,$03,$D0
  db !instr29,$FF,$EE,$B8,$0F,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample05_06,Sample05_06+216
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1D,Sample1D+27
  dw Sample20,Sample20+27
  dw Sample23,Sample23+1449
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample26_27,Sample26_27+1683
  dw Sample28,Sample28+27
  dw Sample29,Sample29+1737
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample20: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28: incbin "Sample_d799ad2f46fb8895e8f1676ab6874d84.brr"
  Sample29: incbin "Sample_6e1ff145e1b7abe4aee0f4d5b48f4603.brr"

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
  dw .pattern1
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
  !echo,%00011110,23,23
  !dynamicEcho,200,64,64
  !echoParameters,4,99,0
  !musicVolume,255
  !tempo,47
  db 72
  !rest
  !rest
  db 99
  !rest
  !instr,!instr27
  !volume,255
  db 9,$72
  !as4
  db 20,$77
  !as4
  db 10,$76
  !as4
  db 9,$78
  !as4
  !end

.pattern0_1
  !slideOut,30,255,250
  !instr,!instr20
  !volume,90
  !dynamicVolume,100,150
  !pan,0
  db 84,$77
  !e6
  db 60
  !tie
  db 74
  !tie
  db 73
  !tie
  !end

.pattern0_2
  !slideOut,30,255,250
  !instr,!instr20
  !volume,90
  !dynamicVolume,100,150
  !pan,20
  db 72,$77
  !gs6
  !tie
  db 73
  !tie
  !tie
  !endEcho
  !echoParameters,4,1,2
  !echo,%00000110,1,1
  db 1
  !tie
  !end

.pattern0_3
  !instr,!instr06
  !volume,130
  !dynamicVolume,140,180
  !pan,8
  db 9,$37
  !f5
  !as4
  !gs5
  !c5
  !f5
  !as4
  !gs5
  !c5
  !f5
  !as4
  !gs5
  !c5
  !f5
  !as4
  !gs5
  !c5
  !f5
  !as4
  !gs5
  !c5
  !f5
  !as4
  !gs5
  !c5
  !f5
  !as4
  !gs5
  !c5
  db 10
  !f5
  !as4
  !gs5
  db 9
  !c5
  !end

.pattern0_4
  !instr,!instr06
  !volume,130
  !dynamicVolume,140,180
  !pan,12
  db 9,$37
  !gs5
  !cs5
  !c6
  !cs5
  !gs5
  !cs5
  !c6
  !cs5
  !gs5
  !cs5
  !c6
  !cs5
  !gs5
  !cs5
  !c6
  !cs5
  !gs5
  !cs5
  !c6
  !cs5
  !gs5
  !cs5
  !c6
  !cs5
  !gs5
  !cs5
  !c6
  !cs5
  db 10
  !gs5
  !cs5
  !c6
  db 9
  !cs5
  !end

.pattern1_0
  !volume,255
  !echoParameters,4,70,0
  !echo,%00011100,42,42
  !loop : dw .sub5352 : db 6
  !end

.pattern1_1
  !endSlide
  !instr,!instr29
  !volume,225
  !pan,10
  db 15,$67
  !as2
  db 8
  !as2
  db 7
  !as3
  db 8
  !as3
  db 7
  !as3
  db 8
  !f3
  db 7
  !f3
  db 15
  !as2
  db 8
  !as2
  db 7
  !as3
  db 8
  !as3
  db 7
  !as3
  db 8
  !cs3
  db 7
  !cs3
  db 15,$68
  !gs2
  db 8,$67
  !gs2
  db 7
  !gs3
  db 8
  !gs3
  db 7
  !gs3
  db 8
  !ds3
  db 7
  !ds3
  db 15,$68
  !gs2
  db 8,$67
  !gs2
  db 7
  !gs3
  db 8
  !gs3
  db 7
  !gs3
  db 8
  !b2
  db 7
  !b2
  db 15
  !as2
  db 8
  !as2
  db 7
  !as3
  db 8
  !as3
  db 7
  !as3
  db 8
  !f3
  db 7
  !f3
  db 15
  !as2
  db 8
  !as2
  db 7
  !as3
  db 8
  !as3
  db 7
  !as3
  db 8
  !cs3
  db 7
  !cs3
  db 15,$68
  !gs2
  db 8,$67
  !gs2
  db 7
  !gs3
  db 8
  !gs3
  db 7
  !gs3
  db 8
  !ds3
  db 7
  !ds3
  db 15,$68
  !gs2
  db 8,$67
  !gs2
  db 7
  !gs3
  db 8
  !gs3
  db 7
  !gs3
  db 8
  !b2
  db 7
  !b2
  !loop : dw .sub539F : db 2
  !end

.pattern1_2
  !transpose,0
  !endSlide
  !subtranspose,0
  !instr,!instr28
  !volume,150
  !pan,10
  !vibrato,12,14,70
  !slideIn,0,7,1
  db 23,$67
  !gs6
  !endSlide
  !pan,12
  db 22,$65
  !a6
  !pan,8
  db 15,$66
  !as6
  !pan,18
  db 23,$65
  !c7
  !pan,10
  db 22
  !b6
  !pan,2
  db 15,$66
  !as6
  !pan,11
  !slideIn,0,7,1
  db 26,$67
  !gs6
  !endSlide
  !pan,9
  db 94
  !fs6
  !slideIn,0,7,1
  !pan,14
  db 23
  !gs6
  !endSlide
  !pan,6
  db 22,$65
  !a6
  !pan,14
  db 15,$66
  !as6
  !pan,10
  db 23,$65
  !c7
  !pan,14
  db 22
  !as6
  db 15,$66
  !c7
  !pan,3
  !slideIn,0,10,1
  db 34,$67
  !cs7
  !endSlide
  !pan,17
  db 86,$64
  !ds7
  !slideIn,0,7,1
  !pan,8
  db 27,$66
  !b6
  !endSlide
  !pan,12
  db 31,$55
  !cs7
  !pan,10
  db 8,$77
  !cs7
  !dynamicVolume,6,110
  db 6
  !tie
  !dynamicVolume,168,160
  db 48
  !tie
  db 60
  !tie
  !tie
  !end

.pattern1_3
  !instr,!instr1D
  !volume,150
  !pan,12
  !subtranspose,0
  db 8,$67
  !cs5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !cs5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !cs5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !cs5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !b4
  db 7
  !fs4
  db 8
  !ds5
  db 7
  !fs4
  db 8
  !b4
  db 7
  !fs4
  db 8
  !ds5
  db 7
  !fs4
  db 8
  !b4
  db 7
  !fs4
  db 8
  !ds5
  db 7
  !as4
  db 8
  !fs5
  db 7
  !b4
  db 8
  !b5
  db 7
  !ds5
  db 8
  !cs5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !cs5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !cs5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !cs5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !b4
  db 7
  !fs4
  db 8
  !ds5
  db 7
  !fs4
  db 8
  !b4
  db 7
  !fs4
  db 8
  !ds5
  db 7
  !fs4
  db 8
  !b4
  db 7
  !fs4
  db 8
  !ds5
  db 7
  !as4
  db 8
  !fs5
  db 7
  !b4
  db 8
  !b5
  db 7
  !ds5
  db 8
  !a4
  db 7
  !cs4
  db 8
  !cs5
  db 7
  !cs4
  db 8
  !a4
  db 7
  !cs4
  db 8
  !cs5
  db 7
  !cs4
  db 8
  !a4
  db 7
  !cs4
  db 8
  !cs5
  db 7
  !cs4
  db 8
  !a4
  db 7
  !cs4
  db 8
  !cs5
  db 7
  !cs4
  db 8
  !a4
  db 7
  !cs4
  db 8
  !cs5
  db 7
  !cs4
  db 8
  !a4
  db 7
  !cs4
  db 8
  !cs5
  db 7
  !fs4
  db 8
  !cs5
  db 7
  !gs4
  db 8
  !e5
  db 7
  !a4
  db 8
  !fs5
  db 7
  !cs5
  db 8
  !a5
  db 7
  !gs5
  !end

.pattern1_4
  !instr,!instr1D
  !volume,150
  !pan,8
  !subtranspose,0
  db 8,$67
  !f5
  db 7
  !c5
  db 8
  !gs5
  db 7
  !c5
  db 8
  !f5
  db 7
  !c5
  db 8
  !gs5
  db 7
  !c5
  db 8
  !f5
  db 7
  !c5
  db 8
  !gs5
  db 7
  !c5
  db 8
  !f5
  db 7
  !c5
  db 8
  !gs5
  db 7
  !c5
  db 8
  !ds5
  db 7
  !as4
  db 8
  !fs5
  db 7
  !as4
  db 8
  !ds5
  db 7
  !as4
  db 8
  !fs5
  db 7
  !as4
  db 8
  !ds5
  db 7
  !as4
  db 8
  !fs5
  db 7
  !b4
  db 8
  !as5
  db 7
  !ds5
  db 8
  !ds6
  db 7
  !fs5
  db 8
  !f5
  db 7
  !c5
  db 8
  !gs5
  db 7
  !c5
  db 8
  !f5
  db 7
  !c5
  db 8
  !gs5
  db 7
  !c5
  db 8
  !f5
  db 7
  !c5
  db 8
  !gs5
  db 7
  !c5
  db 8
  !f5
  db 7
  !c5
  db 8
  !gs5
  db 7
  !c5
  db 8
  !ds5
  db 7
  !as4
  db 8
  !fs5
  db 7
  !as4
  db 8
  !ds5
  db 7
  !as4
  db 8
  !fs5
  db 7
  !as4
  db 8
  !ds5
  db 7
  !as4
  db 8
  !fs5
  db 7
  !b4
  db 8
  !as5
  db 7
  !ds5
  db 8
  !ds6
  db 7
  !fs5
  db 8
  !cs5
  db 7
  !fs4
  db 8
  !e5
  db 7
  !fs4
  db 8
  !cs5
  db 7
  !fs4
  db 8
  !e5
  db 7
  !fs4
  db 8
  !cs5
  db 7
  !fs4
  db 8
  !e5
  db 7
  !fs4
  db 8
  !cs5
  db 7
  !fs4
  db 8
  !e5
  db 7
  !fs4
  db 8
  !cs5
  db 7
  !fs4
  db 8
  !e5
  db 7
  !fs4
  db 8
  !cs5
  db 7
  !fs4
  db 8
  !e5
  db 7
  !a4
  db 8
  !e5
  db 7
  !a4
  db 8
  !gs5
  db 7
  !cs5
  db 8
  !a5
  db 7
  !e5
  db 8
  !cs6
  db 7
  !a5
  !end

.pattern2_0
  !loop : dw .sub5352 : db 6
  !end

.pattern2_1
  db 15,$6B
  !e2
  db 8,$67
  !e2
  db 7
  !e3
  db 8
  !e3
  db 7
  !e3
  db 8
  !b2
  db 7
  !b2
  db 15,$6B
  !e2
  db 8,$67
  !e2
  db 7
  !e3
  db 8
  !e3
  db 7
  !e3
  db 8
  !b2
  db 7
  !b2
  db 15,$69
  !fs2
  db 8,$67
  !fs2
  db 7
  !fs3
  db 8
  !fs3
  db 7
  !fs3
  db 8
  !cs3
  db 7
  !cs3
  db 15,$69
  !fs2
  db 8,$67
  !fs2
  db 7
  !fs3
  db 8
  !fs3
  db 7
  !fs3
  db 8
  !cs3
  db 7
  !cs3
  db 15,$68
  !g2
  db 8,$67
  !g2
  db 7
  !g3
  db 8
  !g3
  db 7
  !g3
  db 8
  !d3
  db 7
  !d3
  db 15,$68
  !g2
  db 8,$67
  !g2
  db 7
  !g3
  db 8
  !g3
  db 7
  !g3
  db 8
  !d3
  db 7
  !d3
  db 15,$68
  !gs2
  db 8,$67
  !gs2
  db 7
  !gs3
  db 8
  !gs3
  db 7
  !gs3
  db 8
  !ds3
  db 7
  !ds3
  db 15,$68
  !gs2
  db 8,$67
  !gs2
  db 7
  !gs3
  db 8
  !gs3
  db 7
  !gs3
  db 8
  !ds3
  db 7
  !ds3
  !loop : dw .sub53C0 : db 2
  !end

.pattern2_2
  !transpose,0
  !vibrato,12,14,30
  !instr,!instr01
  !volume,175
  db 23,$67
  !gs6
  db 22
  !fs6
  db 45
  !gs6
  db 15
  !fs6
  !gs6
  db 23
  !a6
  db 22
  !b6
  db 41
  !a6
  db 17
  !gs6
  !a6
  db 23
  !as6
  db 22,$66
  !d7
  db 33,$67
  !as6
  db 21,$66
  !d7
  db 21,$67
  !as6
  db 23
  !c7
  db 22,$66
  !ds7
  db 29,$67
  !as6
  db 23
  !c7
  db 23,$66
  !ds7
  db 34
  !ds7
  db 32,$55
  !f7
  db 9,$75
  !f7
  db 45
  !tie
  db 90,$68
  !tie
  !volume,175
  !vibrato,0,14,30
  !subtranspose,60
  !instr,!instr19
  db 15,$67
  !ds7
  db 15,$66
  !f7
  !end

.pattern2_3
  !instr,!instr03
  !volume,175
  db 8,$67
  !ds5
  db 7
  !gs4
  db 8
  !e5
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !gs4
  db 8
  !e5
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !gs4
  db 8
  !e5
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !gs4
  db 8
  !e5
  db 7
  !gs4
  db 8
  !e5
  db 7
  !gs4
  db 8
  !fs5
  db 7
  !a4
  db 8
  !e5
  db 7
  !gs4
  db 8
  !fs5
  db 7
  !a4
  db 8
  !e5
  db 7
  !gs4
  db 8
  !fs5
  db 7
  !a4
  db 8
  !e5
  db 7
  !gs4
  db 8
  !fs5
  db 7
  !a4
  db 8
  !f5
  db 7
  !as4
  db 8
  !g5
  db 7
  !as4
  db 8
  !f5
  db 7
  !as4
  db 8
  !g5
  db 7
  !as4
  db 8
  !f5
  db 7
  !as4
  db 8
  !g5
  db 7
  !as4
  db 8
  !f5
  db 7
  !as4
  db 8
  !g5
  db 7
  !as4
  db 8
  !ds5
  db 7
  !gs4
  db 8
  !g5
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !gs4
  db 8
  !g5
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !gs4
  db 8
  !g5
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !gs4
  db 8
  !g5
  db 7
  !gs4
  !loop : dw .sub53E1 : db 2
  !end

.pattern2_4
  !instr,!instr03
  !volume,175
  db 8,$67
  !fs5
  db 7
  !b4
  db 8
  !gs5
  db 7
  !b4
  db 8
  !fs5
  db 7
  !b4
  db 8
  !gs5
  db 7
  !b4
  db 8
  !fs5
  db 7
  !b4
  db 8
  !gs5
  db 7
  !b4
  db 8
  !fs5
  db 7
  !b4
  db 8
  !gs5
  db 7
  !b4
  db 8
  !gs5
  db 7
  !a4
  db 8
  !a5
  db 7
  !cs5
  db 8
  !gs5
  db 7
  !a4
  db 8
  !a5
  db 7
  !cs5
  db 8
  !gs5
  db 7
  !a4
  db 8
  !a5
  db 7
  !cs5
  db 8
  !gs5
  db 7
  !a4
  db 8
  !a5
  db 7
  !cs5
  db 8
  !a5
  db 7
  !d5
  db 8
  !as5
  db 7
  !d5
  db 8
  !a5
  db 7
  !d5
  db 8
  !as5
  db 7
  !d5
  db 8
  !a5
  db 7
  !d5
  db 8
  !as5
  db 7
  !d5
  db 8
  !a5
  db 7
  !d5
  db 8
  !as5
  db 7
  !d5
  db 8
  !g5
  db 7
  !c5
  db 8
  !c6
  db 7
  !c5
  db 8
  !g5
  db 7
  !c5
  db 8
  !c6
  db 7
  !c5
  db 8
  !g5
  db 7
  !c5
  db 8
  !c6
  db 7
  !c5
  db 8
  !g5
  db 7
  !c5
  db 8
  !c6
  db 7
  !c5
  !loop : dw .sub5402 : db 2
  !end

.pattern3_0
  !loop : dw .sub542B : db 3
  !pan,10
  !instr,!instr23
  db 8,$78
  !f5
  !pan,12
  !instr,!instr27
  db 7,$74
  !c5
  db 8,$77
  !c5
  db 7,$74
  !c5
  !pan,10
  !instr,!instr27
  db 15,$7B
  !d4
  !pan,8
  db 8,$77
  !c5
  db 7,$74
  !c5
  !pan,10
  !instr,!instr23
  db 8,$78
  !f5
  !pan,12
  !instr,!instr27
  db 7,$74
  !c5
  db 8,$77
  !c5
  !pan,10
  !instr,!instr25
  db 7,$78
  !a4
  db 15,$7A
  !a4
  !pan,11
  db 6
  !a4
  !pan,9
  db 5,$79
  !a4
  !pan,11
  db 4
  !a4
  !end

.pattern3_1
  db 15,$67
  !ds3
  db 8
  !ds3
  db 7,$65
  !ds4
  db 8
  !ds4
  db 7
  !ds4
  db 8,$67
  !as3
  db 7
  !as3
  db 15
  !cs3
  db 8
  !cs3
  db 7,$65
  !cs4
  db 8
  !cs4
  db 7
  !cs4
  db 8,$67
  !gs3
  db 7
  !gs3
  db 15
  !b2
  db 8
  !b2
  db 7
  !b3
  db 8
  !b3
  db 7
  !b3
  db 8
  !fs3
  db 7
  !fs3
  db 15
  !as2
  db 8
  !as2
  db 7
  !as3
  db 8
  !as3
  db 7
  !as3
  db 8
  !f3
  db 7
  !f3
  db 15,$68
  !gs2
  db 8,$67
  !gs2
  db 7
  !gs3
  db 8
  !gs3
  db 7
  !gs3
  db 8
  !ds3
  db 7
  !ds3
  db 15,$6B
  !ds2
  db 8,$69
  !ds2
  db 7,$67
  !ds3
  db 8
  !ds3
  db 7
  !ds3
  db 8
  !as2
  db 7
  !as2
  db 15
  !cs3
  db 8
  !cs3
  db 7,$65
  !cs4
  db 8
  !cs4
  db 7
  !cs4
  db 8,$67
  !gs3
  db 7
  !gs3
  db 15
  !cs3
  db 8
  !cs3
  db 7,$65
  !cs4
  db 8
  !cs4
  db 7
  !cs4
  db 8,$67
  !gs3
  db 7
  !gs3
  !end

.pattern3_2
  !slideIn,0,8,1
  db 23,$65
  !g7
  !endSlide
  db 22,$66
  !ds7
  db 15,$67
  !as6
  db 23,$65
  !f7
  db 22,$67
  !cs7
  db 15
  !gs6
  !slideIn,0,8,1
  db 23,$66
  !ds7
  !endSlide
  db 22,$67
  !b6
  db 15
  !fs6
  db 23
  !f6
  db 22
  !as6
  db 15,$66
  !cs7
  !slideIn,0,8,1
  db 23,$67
  !b6
  !endSlide
  db 22
  !as6
  db 15
  !gs6
  db 23
  !fs6
  db 25
  !ds6
  db 12,$77
  !fs6
  db 17
  !tie
  db 103
  !gs6
  !end

.pattern3_3
  !subtranspose,0
  !instr,!instr1D
  !volume,150
  db 8,$57
  !gs5
  db 7
  !as4
  db 8
  !g5
  db 7
  !as4
  db 8
  !gs5
  db 7
  !as4
  db 8
  !g5
  db 7
  !as4
  db 8
  !fs5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !fs5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !fs4
  db 8
  !ds5
  db 7
  !fs4
  db 8
  !ds5
  db 7
  !fs4
  db 8
  !as4
  db 7
  !fs4
  db 8
  !cs5
  db 7
  !f4
  db 8
  !gs4
  db 7
  !f4
  db 8
  !cs5
  db 7
  !f4
  db 8
  !gs4
  db 7
  !f4
  db 8
  !ds5
  db 7
  !as4
  db 8
  !b4
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !as4
  db 8
  !b4
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !fs4
  db 8
  !as4
  db 7
  !fs4
  db 8
  !ds5
  db 7
  !fs4
  db 8
  !as4
  db 7
  !fs4
  db 8
  !c5
  db 7
  !f4
  db 8
  !c5
  db 7
  !f4
  db 8
  !cs5
  db 7
  !f4
  db 8
  !c5
  db 7
  !f4
  db 8
  !cs5
  db 7
  !f4
  db 8
  !c5
  db 7
  !f4
  db 8
  !cs5
  db 7
  !f4
  db 8
  !c5
  db 7
  !f4
  !end

.pattern3_4
  !subtranspose,0
  !instr,!instr1D
  !volume,150
  db 8,$57
  !as5
  db 7
  !ds5
  db 8
  !as5
  db 7
  !ds5
  db 8
  !as5
  db 7
  !ds5
  db 8
  !as5
  db 7
  !ds5
  db 8
  !gs5
  db 7
  !cs5
  db 8
  !gs5
  db 7
  !cs5
  db 8
  !gs5
  db 7
  !cs5
  db 8
  !gs5
  db 7
  !cs5
  db 8
  !fs5
  db 7
  !b4
  db 8
  !fs5
  db 7
  !b4
  db 8
  !fs5
  db 7
  !b4
  db 8
  !ds5
  db 7
  !b4
  db 8
  !f5
  db 7
  !as4
  db 8
  !cs5
  db 7
  !as4
  db 8
  !f5
  db 7
  !as4
  db 8
  !cs5
  db 7
  !as4
  db 8
  !fs5
  db 7
  !b4
  db 8
  !ds5
  db 7
  !b4
  db 8
  !fs5
  db 7
  !b4
  db 8
  !ds5
  db 7
  !b4
  db 8
  !fs5
  db 7
  !as4
  db 8
  !cs5
  db 7
  !as4
  db 8
  !fs5
  db 7
  !as4
  db 8
  !cs5
  db 7
  !as4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !gs4
  db 8
  !f5
  db 7
  !gs4
  db 8
  !ds5
  db 7
  !gs4
  !end

.pattern4_0
  !loop : dw .sub5352 : db 3
  !pan,10
  !instr,!instr23
  db 8,$78
  !f5
  !pan,12
  !instr,!instr27
  db 7,$74
  !c5
  db 8,$77
  !c5
  db 7,$74
  !c5
  !instr,!instr26
  !pan,10
  db 8,$78
  !g3
  !pan,8
  !instr,!instr27
  db 7,$74
  !c5
  db 8,$77
  !c5
  db 7,$74
  !c5
  !pan,10
  !instr,!instr23
  db 8,$78
  !f5
  !instr,!instr27
  db 7,$74
  !c5
  !pan,12
  db 8,$77
  !c5
  !pan,8
  db 7,$74
  !c5
  !pan,10
  db 15,$7B
  !d4
  !instr,!instr25
  !pan,8
  db 8,$7A
  !a4
  !pan,12
  db 7,$7B
  !f4
  !end

.pattern4_1
  db 15,$67
  !cs3
  db 8
  !cs3
  db 7,$65
  !cs4
  db 8
  !cs4
  db 7
  !cs4
  db 8,$67
  !gs3
  db 7
  !gs3
  db 15
  !ds3
  db 8
  !ds3
  db 7,$65
  !ds4
  db 8
  !ds4
  db 7
  !ds4
  db 8,$67
  !as3
  db 7
  !as3
  db 15
  !f3
  db 8
  !f3
  db 7,$65
  !f4
  db 8
  !f4
  db 7
  !f4
  db 8,$66
  !c4
  db 7
  !c4
  db 15,$67
  !f3
  db 8
  !f3
  db 7,$65
  !f4
  db 8
  !f4
  db 7
  !f4
  db 8,$66
  !c4
  db 7
  !c4
  db 15,$69
  !fs2
  db 8,$67
  !fs2
  db 7
  !fs3
  db 8
  !fs3
  db 7
  !fs3
  db 8
  !cs3
  db 7
  !cs3
  db 15,$68
  !gs2
  db 8,$67
  !gs2
  db 7
  !gs2
  db 8
  !gs3
  db 7
  !gs3
  db 8
  !ds3
  db 7
  !ds3
  db 15
  !as2
  db 8
  !as2
  db 7
  !as3
  db 8
  !as3
  db 7
  !as3
  db 8
  !f3
  db 7
  !f3
  db 15
  !as2
  db 8
  !as2
  db 7
  !as3
  db 8
  !as3
  db 7
  !as3
  db 8
  !f3
  db 7
  !f3
  !end

.pattern4_2
  !transpose,0
  !instr,!instr06
  !subtranspose,0
  !volume,200
  !pan,7
  !dynamicPan,60,13
  db 8,$67
  !gs4
  db 7
  !cs5
  db 8
  !e5
  db 7
  !gs5
  db 8
  !cs6
  db 7,$66
  !e6
  db 8,$65
  !gs6
  db 7
  !cs7
  !dynamicPan,60,7
  db 8,$67
  !as4
  db 7
  !ds5
  db 8
  !fs5
  db 7
  !as5
  db 8
  !ds6
  db 7,$66
  !fs6
  db 8,$65
  !as6
  db 7
  !ds7
  !dynamicPan,60,13
  db 8,$67
  !c5
  db 7
  !f5
  db 8
  !gs5
  db 7
  !c6
  db 8
  !f6
  db 7,$66
  !gs6
  db 8,$65
  !c7
  db 7
  !f7
  !dynamicPan,60,7
  db 8,$67
  !c5
  db 7
  !f5
  db 8
  !gs5
  db 7
  !c6
  db 8
  !f6
  db 7,$66
  !gs6
  db 8,$65
  !c7
  db 7
  !f7
  !dynamicPan,60,13
  db 8,$67
  !as4
  db 7
  !cs5
  db 8
  !fs5
  db 7
  !as5
  db 8
  !cs6
  db 7,$66
  !fs6
  db 8,$65
  !as6
  db 7
  !cs7
  !dynamicPan,60,7
  db 8,$67
  !gs4
  db 7
  !c5
  db 8
  !ds5
  db 7
  !g5
  db 8
  !c6
  db 7,$66
  !ds6
  db 8,$65
  !gs6
  db 7
  !c7
  !dynamicPan,60,13
  db 8,$67
  !as4
  db 7
  !d5
  db 8
  !f5
  db 7
  !as5
  db 8
  !d6
  db 7,$66
  !f6
  db 8,$65
  !as6
  db 7
  !d7
  !dynamicPan,60,7
  db 8,$67
  !as4
  db 7
  !d5
  db 8
  !f5
  db 7
  !as5
  db 8
  !d6
  db 7,$66
  !f6
  db 8,$65
  !a6
  db 7
  !d7
  !end

.pattern4_3
  !pan,11
  !subtranspose,0
  !instr,!instr01
  !volume,170
  !vibrato,10,20,30
  db 23,$67
  !b5
  db 22
  !gs5
  db 15,$77
  !b5
  db 23,$67
  !cs6
  db 22
  !as5
  db 15,$77
  !cs6
  db 53
  !ds6
  db 7,$79
  !c6
  db 23,$77
  !ds6
  db 7,$79
  !gs5
  db 30,$67
  !ds6
  db 23
  !cs6
  db 22
  !as5
  db 15,$77
  !cs6
  db 23,$67
  !ds6
  db 22
  !c6
  db 15,$77
  !ds6
  db 53
  !f6
  db 7,$79
  !d6
  db 23,$77
  !d6
  db 7,$79
  !e6
  db 30,$67
  !as5
  !end

.pattern4_4
  !pan,9
  !subtranspose,0
  !instr,!instr01
  !volume,170
  !vibrato,10,20,30
  db 23,$67
  !e6
  db 22
  !cs6
  db 15,$77
  !e6
  db 23,$67
  !fs6
  db 22
  !ds6
  db 15,$77
  !fs6
  db 53
  !gs6
  db 7,$79
  !ds6
  db 23,$77
  !gs6
  db 7,$79
  !ds6
  db 30,$67
  !gs6
  db 23
  !gs6
  db 22
  !f6
  db 15,$77
  !gs6
  db 23,$67
  !g6
  db 22
  !ds6
  db 15,$77
  !g6
  db 53
  !a6
  db 7,$79
  !e6
  db 23,$77
  !f6
  db 7,$79
  !g6
  db 30,$67
  !d6
  !end

.pattern5_0
  !loop : dw .sub5474 : db 3
  !pan,10
  !instr,!instr23
  db 15,$78
  !f5
  !pan,12
  !instr,!instr27
  db 8,$77
  !c5
  db 7,$74
  !c5
  !pan,10
  !instr,!instr27
  db 15,$7B
  !d4
  !pan,8
  db 8,$78
  !c5
  db 7,$76
  !c5
  !pan,10
  !instr,!instr25
  db 15,$7A
  !d4
  !d4
  !pan,12
  db 8
  !c5
  db 7
  !c5
  !pan,8
  db 8
  !gs4
  db 7
  !gs4
  !end

.pattern5_1
  db 15,$67
  !ds3
  db 8
  !ds3
  db 7
  !as3
  db 8
  !as3
  db 7
  !as3
  db 8
  !ds3
  db 7
  !ds3
  db 15
  !a2
  db 8
  !a2
  db 7
  !a3
  db 8
  !a3
  db 7
  !a3
  db 8
  !a2
  db 7
  !a2
  db 15
  !d3
  db 8
  !d3
  db 7
  !a3
  db 8
  !a3
  db 7
  !a3
  db 8
  !d3
  db 7
  !d3
  db 15
  !d3
  db 8
  !d3
  db 7
  !a3
  db 8
  !a3
  db 7
  !a3
  db 8
  !d3
  db 7
  !d3
  db 15
  !c3
  db 8
  !c3
  db 7
  !c3
  db 8
  !c3
  db 7
  !c3
  db 8
  !c3
  db 7
  !c3
  db 15
  !d3
  db 8
  !d3
  db 7
  !d3
  db 8
  !d3
  db 7
  !d3
  db 8
  !d3
  db 7
  !d3
  db 15,$6B
  !ds2
  db 8
  !ds2
  db 7,$67
  !ds3
  db 8
  !ds3
  db 7
  !ds3
  db 8,$6B
  !ds2
  db 7
  !ds2
  db 23
  !f2
  db 7,$67
  !f3
  db 15,$6B
  !f2
  db 15,$69
  !f3
  !end

.pattern5_2
  !subtranspose,60
  !pan,10
  !instr,!instr19
  !vibrato,0,20,50
  !volume,90
  !dynamicVolume,37,190
  db 45,$77
  !d7
  db 8,$78
  !c7
  db 7
  !d7
  db 15,$67
  !as6
  !c7
  !a6
  !g6
  db 8,$68
  !fs6
  db 7
  !g6
  db 30,$67
  !a6
  db 15,$78
  !g6
  !pitchSlide,4,1 : !a6
  !pitchSlide,4,1 : !g6
  db 30,$67
  !fs6
  !d6
  db 8,$68
  !ds6
  db 7
  !f6
  db 30,$67
  !g6
  db 8,$68
  !f6
  db 7
  !g6
  db 30,$67
  !a6
  db 23
  !g6
  db 7,$78
  !a6
  db 8
  !as6
  db 7
  !c7
  db 30,$67
  !d7
  db 8,$68
  !c7
  db 7
  !as6
  !subtranspose,0
  !instr,!instr29
  !volume,205
  db 23,$67
  !gs5
  db 22
  !c6
  db 15,$68
  !f5
  !end

.pattern5_3
  !instr,!instr29
  !pan,12
  !volume,175
  !endVibrato
  db 8,$77
  !d5
  db 7
  !g5
  db 8
  !as5
  db 7
  !d5
  db 8
  !g5
  db 7
  !as5
  db 8
  !d5
  db 7
  !g5
  db 8
  !c5
  db 7
  !ds5
  db 8
  !g5
  db 7
  !c5
  db 8
  !ds5
  db 7
  !g5
  db 8
  !c5
  db 7
  !ds5
  db 8
  !a4
  db 7
  !fs5
  db 8
  !a5
  db 7
  !a4
  db 8
  !fs5
  db 7
  !a5
  db 8
  !a4
  db 7
  !fs5
  db 8
  !a4
  db 7
  !fs5
  db 8
  !a5
  db 7
  !a4
  db 8
  !fs5
  db 7
  !a5
  db 8
  !a4
  db 7
  !fs5
  db 8
  !as4
  db 7
  !ds5
  db 8
  !g5
  db 7
  !as4
  db 8
  !ds5
  db 7
  !g5
  db 8
  !as4
  db 7
  !ds5
  db 8
  !c5
  db 7
  !f5
  db 8
  !a5
  db 7
  !c5
  db 8
  !f5
  db 7
  !a5
  db 8
  !c5
  db 7
  !f5
  db 8
  !d5
  db 7
  !g5
  db 8
  !as5
  db 7
  !d5
  db 8
  !g5
  db 7
  !as5
  db 8
  !d5
  db 7
  !g5
  !instr,!instr29
  !volume,205
  db 23,$67
  !ds5
  db 22
  !gs5
  db 15,$68
  !c5
  !end

.pattern5_4
  !instr,!instr29
  !pan,8
  !volume,175
  !endVibrato
  db 8,$77
  !ds5
  db 7
  !as5
  db 8
  !d6
  db 7
  !ds5
  db 8
  !as5
  db 7
  !d6
  db 8
  !ds5
  db 7
  !as5
  db 8
  !ds5
  db 7
  !a5
  db 8
  !c6
  db 7
  !ds5
  db 8
  !a5
  db 7
  !c6
  db 8
  !ds5
  db 7
  !a5
  db 8
  !d5
  db 7
  !a5
  db 8
  !c6
  db 7
  !d5
  db 8
  !a5
  db 7
  !c6
  db 8
  !d5
  db 7
  !a5
  db 8
  !d5
  db 7
  !a5
  db 8
  !c6
  db 7
  !d5
  db 8
  !a5
  db 7
  !c6
  db 8
  !d5
  db 7
  !a5
  db 8
  !c5
  db 7
  !g5
  db 8
  !as5
  db 7
  !c5
  db 8
  !g5
  db 7
  !as5
  db 8
  !c5
  db 7
  !g5
  db 8
  !d5
  db 7
  !a5
  db 8
  !c6
  db 7
  !d5
  db 8
  !a5
  db 7
  !c6
  db 8
  !d5
  db 7
  !a5
  db 8
  !ds5
  db 7
  !as5
  db 8
  !d6
  db 7
  !ds5
  db 8
  !as5
  db 7
  !d6
  db 8
  !ds5
  db 7
  !as5
  !instr,!instr29
  !volume,205
  db 23,$67
  !c5
  db 22
  !ds5
  db 15,$68
  !gs4
  !end

.sub5352
  !pan,10
  !instr,!instr23
  db 8,$78
  !f5
  !pan,12
  !instr,!instr27
  db 7,$74
  !c5
  db 8,$77
  !c5
  db 7,$74
  !c5
  !instr,!instr26
  !pan,10
  db 8,$78
  !g3
  !pan,8
  !instr,!instr27
  db 7,$74
  !c5
  db 8,$77
  !c5
  db 7,$74
  !c5
  !pan,10
  !instr,!instr23
  db 8,$78
  !f5
  !instr,!instr27
  db 7,$74
  !c5
  !pan,12
  db 8,$77
  !c5
  !pan,8
  db 7,$74
  !c5
  !pan,10
  db 15,$7B
  !d4
  !pan,8
  db 8,$77
  !c5
  !pan,12
  db 7
  !c5
  !end

.sub539F
  db 15,$69
  !fs2
  db 8,$67
  !fs2
  db 7
  !fs3
  db 8
  !fs3
  db 7
  !fs3
  db 8
  !cs3
  db 7
  !cs3
  db 15,$69
  !fs2
  db 8,$67
  !fs2
  db 7
  !fs3
  db 8
  !fs3
  db 7
  !fs3
  db 8
  !cs3
  db 7
  !cs3
  !end

.sub53C0
  db 15
  !cs3
  db 8
  !cs3
  db 7,$65
  !cs4
  db 8
  !cs4
  db 7
  !cs4
  db 8,$67
  !gs3
  db 7
  !gs3
  db 15
  !cs3
  db 8
  !cs3
  db 7,$65
  !cs4
  db 8
  !cs4
  db 7
  !cs4
  db 8,$67
  !gs3
  db 7
  !gs3
  !end

.sub53E1
  db 8
  !gs5
  db 7
  !c5
  db 8
  !c6
  db 7
  !c5
  db 8
  !gs5
  db 7
  !c5
  db 8
  !c6
  db 7
  !c5
  db 8
  !gs5
  db 7
  !c5
  db 8
  !c6
  db 7
  !c5
  db 8
  !gs5
  db 7
  !c5
  db 8
  !c6
  db 7
  !c5
  !end

.sub5402
  db 8
  !c6
  db 7
  !ds5
  db 8,$66
  !ds6
  db 7,$67
  !f5
  db 8
  !c6
  db 7
  !ds5
  db 8,$66
  !ds6
  db 7,$67
  !f5
  db 8
  !c6
  db 7
  !ds5
  db 8,$66
  !ds6
  db 7,$67
  !f5
  db 8
  !c6
  db 7
  !ds5
  db 8,$66
  !ds6
  db 7,$67
  !f5
  !end

.sub542B
  !pan,10
  !instr,!instr23
  db 8,$78
  !f5
  !pan,12
  !instr,!instr27
  db 7,$74
  !c5
  db 8,$77
  !c5
  db 7,$74
  !c5
  !pan,10
  !instr,!instr27
  db 15,$7B
  !d4
  !pan,8
  db 8,$77
  !c5
  db 7,$74
  !c5
  !pan,10
  !instr,!instr23
  db 8,$78
  !f5
  !pan,12
  !instr,!instr27
  db 7,$74
  !c5
  db 8,$77
  !c5
  db 7,$74
  !c5
  !pan,10
  !instr,!instr27
  db 15,$7B
  !d4
  !pan,8
  db 8,$77
  !c5
  !pan,12
  db 7,$74
  !c5
  !end

.sub5474
  !pan,10
  !instr,!instr23
  db 15,$78
  !f5
  !pan,12
  !instr,!instr27
  db 8,$77
  !c5
  db 7,$74
  !c5
  !pan,10
  !instr,!instr27
  db 15,$7B
  !d4
  !pan,8
  db 8,$77
  !c5
  db 7,$74
  !c5
  !pan,10
  !instr,!instr23
  db 15,$78
  !f5
  !pan,12
  !instr,!instr27
  db 8,$77
  !c5
  db 7,$74
  !c5
  !pan,10
  !instr,!instr27
  db 15,$7B
  !d4
  !pan,8
  db 8,$77
  !c5
  !pan,12
  db 7,$74
  !c5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
