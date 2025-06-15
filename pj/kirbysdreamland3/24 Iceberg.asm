asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr03 = $18
!instr04 = $19
!instr0A = $1A
!instr10 = $1B
!instr19 = $1C
!instr1D = $1D
!instr21 = $1E
!instr23 = $1F
!instr24 = $20
!instr25 = $21
!instr26 = $22
!instr27 = $23
!instr28 = $24
!instr29 = $25

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$07,$00
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr04,$CF,$F5,$B8,$08,$F0
  db !instr0A,$DF,$F6,$B8,$04,$20
  db !instr10,$FF,$E0,$B8,$03,$B0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr26,$BF,$D3,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$FF,$E0,$B8,$07,$A0
  db !instr29,$FF,$EE,$B8,$11,$F0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+819
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample04,Sample04+1404
  dw Sample0A_0B,Sample0A_0B+18
  dw Sample10,Sample10+27
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1D,Sample1D+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample26_27,Sample26_27+1683
  dw Sample28,Sample28+2790
  dw Sample29,Sample29+1476
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_daee1fba1349bada3b2b763cd04133f4.brr"
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample04: incbin "Sample_ed5604d5b249b89747c4b04479c95eb2.brr"
  Sample0A_0B: incbin "Sample_41b87ab6bd87392c34946906c0cdc13d.brr"
  Sample10: incbin "Sample_00909a2c7ac12f30a998285388a5259c.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28: incbin "Sample_a60cbdef7fb6f5b108178954389137db.brr"
  Sample29: incbin "Sample_92e9fe732aa755393f2d795958071c3d.brr"

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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !echo,%00010000,1,1
  !echoParameters,4,2,0
  !musicVolume,255
  !tempo,47
  db 96
  !rest
  !rest
  !rest
  !rest
  !end

.pattern0_1
  db 96
  !rest
  !rest
  !rest
  !instr,!instr10
  !volume,160
  !pan,10
  db 32,$62
  !fs3
  db 32,$67
  !fs3
  db 32,$6A
  !gs3
  !end

.pattern0_2
  !instr,!instr10
  !volume,135
  !pan,8
  !vibrato,0,14,150
  db 16,$17
  !d5
  db 32,$04
  !d5
  !d5
  db 16,$12
  !d5
  db 32,$66
  !ds5
  db 32,$62
  !ds5
  db 32,$61
  !ds5
  db 16,$14
  !d5
  db 32,$02
  !d5
  !d5
  db 16,$11
  !d5
  db 32,$62
  !as4
  db 32,$67
  !as4
  db 32,$78
  !c5
  !end

.pattern0_3
  !instr,!instr10
  !volume,135
  !pan,12
  !vibrato,0,14,150
  db 16,$17
  !g5
  db 32,$04
  !g5
  !g5
  db 16,$12
  !g5
  db 32,$66
  !gs5
  db 32,$62
  !gs5
  db 32,$61
  !gs5
  db 16,$14
  !g5
  db 32,$02
  !g5
  !g5
  db 16,$11
  !g5
  db 32,$62
  !ds5
  db 32,$67
  !ds5
  db 32,$78
  !f5
  !end

.pattern0_4
  !instr,!instr10
  !volume,135
  !pan,10
  !vibrato,0,14,150
  db 16,$17
  !c6
  db 32,$04
  !c6
  !c6
  db 16,$12
  !c6
  db 32,$66
  !cs6
  db 32,$62
  !cs6
  db 32,$61
  !cs6
  db 16,$14
  !c6
  db 32,$02
  !c6
  !c6
  db 16,$11
  !c6
  db 32,$62
  !gs5
  db 32,$67
  !gs5
  db 32,$78
  !as5
  !end

.pattern1_0
  !volume,255
  !pan,10
  !echo,%00010000,53,53
  !echoParameters,4,120,0
  !loop : dw .sub52B8 : db 2
  !end

.pattern1_1
  !pan,12
  !volume,215
  !instr,!instr28
  db 25,$78
  !d5
  db 7,$72
  !d5
  db 16,$78
  !d5
  db 25,$72
  !d5
  db 7
  !d5
  db 16,$78
  !d5
  db 25
  !d5
  db 7,$72
  !d5
  !loop : dw .sub52FE : db 1
  db 25
  !d5
  db 7,$72
  !d5
  db 16,$78
  !d5
  db 25,$72
  !d5
  db 7
  !d5
  db 16,$78
  !d5
  db 25
  !d5
  db 7,$72
  !d5
  !loop : dw .sub52FE : db 1
  !end

.pattern1_2
  !transpose,0
  !subtranspose,0
  !instr,!instr24
  !endVibrato
  !volume,170
  !loop : dw .sub5374 : db 1
  !loop : dw .sub53F5 : db 2
  !end

.pattern1_3
  !pan,10
  !instr,!instr21
  !endVibrato
  !volume,205
  !loop : dw .sub54B6 : db 1
  db 16,$29
  !g3
  db 16,$47
  !g2
  !f3
  db 32,$48
  !g3
  db 16,$47
  !b2
  !c3
  !d3
  !f3
  db 32
  !a3
  !f3
  db 16
  !b2
  !d3
  !f3
  !end

.pattern1_4
  !pan,8
  !endVibrato
  !instr,!instr1D
  !volume,95
  db 64,$77
  !a6
  !pitchSlide,0,105 : !g7
  !tie
  !tie
  !pitchSlide,0,127 : !f7
  !tie
  !tie
  !pitchSlide,0,127 : !ds7
  !tie
  !tie
  !pitchSlide,0,127 : !cs7
  !tie
  !tie
  !pitchSlide,0,127 : !c7
  !tie
  !tie
  !pitchSlide,0,127 : !b6
  !tie
  !tie
  !pitchSlide,0,127 : !as6
  !tie
  !tie
  !pitchSlide,0,127 : !a6
  !tie
  !end

.pattern2_0
  !echo,%00010010,53,53
  !echoParameters,4,100,0
  !pan,10
  !loop : dw .sub552D : db 1
  db 17
  !rest
  db 15,$74
  !e4
  db 32,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 49,$07
  !e4
  db 15,$72
  !e4
  !loop : dw .sub552D : db 1
  db 17
  !rest
  db 15,$74
  !e4
  db 31,$77
  %percNote(!instr23-!instr23)
  !echo,%00010010,30,30
  !echoParameters,4,50,0
  !instr,!instr1D
  !pan,20
  !volume,125
  db 16,$27
  !as3
  !b3
  !as3
  db 17
  !b3
  !end

.pattern2_1
  !pan,11
  !instr,!instr10
  !volume,150
  db 17,$78
  !g4
  db 15,$76
  !b4
  db 12
  !d5
  db 9
  !f5
  db 7
  !a5
  !c6
  !e6
  !pan,20
  !volume,130
  !f5
  !a5
  !c6
  !dynamicVolume,160,70
  !e6
  !f5
  !a5
  !c6
  db 5
  !e6
  db 2
  !tie
  db 7
  !f5
  !a5
  !c6
  !e6
  !f5
  !a5
  !c6
  !e6
  !f5
  !a5
  !c6
  !e6
  !f5
  !a5
  !c6
  !e6
  !f5
  !a5
  !pan,11
  !volume,150
  !f4
  !g4
  !b4
  !d5
  !e5
  !g5
  !b5
  !d6
  !pan,20
  !volume,130
  !e5
  !g5
  !b5
  !d6
  !dynamicVolume,165,70
  !e5
  !g5
  !b5
  !d6
  !e5
  !g5
  db 2
  !b5
  db 5
  !tie
  db 7
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
  !e5
  !g5
  !b5
  !d6
  db 4
  !e5
  !instr,!instr03
  !pan,11
  !volume,145
  db 14,$15
  !b5
  !f6
  !a6
  !d6
  !pan,20
  !volume,110
  !b5
  !f6
  !a6
  !dynamicVolume,150,60
  !d6
  !b5
  db 2,$75
  !f6
  db 12,$15
  !tie
  db 14
  !a6
  !d6
  !b5
  !f6
  !a6
  !d6
  !b5
  !f6
  db 4
  !rest
  !pan,11
  !volume,145
  db 20
  !d7
  db 28
  !rest
  !pan,20
  !volume,105
  db 20
  !d7
  db 28
  !rest
  !dynamicVolume,150,70
  db 20
  !d7
  db 12
  !rest
  db 16
  !rest
  db 20
  !d7
  db 28
  !rest
  !pan,20
  !instr,!instr04
  !volume,135
  db 16,$17
  !as4
  !b4
  !as4
  !b4
  !end

.pattern2_2
  !pan,0
  !dynamicPan,255,20
  !volume,145
  !loop : dw .sub554B : db 2
  !dynamicPan,255,0
  !loop : dw .sub554B : db 2
  !dynamicPan,255,20
  !loop : dw .sub554B : db 2
  !dynamicPan,190,5
  db 17,$77
  !f4
  db 16,$75
  !e4
  db 16,$77
  !f4
  db 15,$75
  !e4
  db 17,$77
  !f4
  db 16,$75
  !e4
  db 16,$77
  !f4
  db 15,$75
  !e4
  db 17,$77
  !f4
  db 16,$75
  !e4
  db 16,$77
  !f4
  db 15,$75
  !e4
  !pan,0
  !instr,!instr1D
  !subtranspose,10
  !volume,125
  db 16,$27
  !as3
  !b3
  !as3
  !b3
  !end

.pattern2_3
  !volume,185
  !loop : dw .sub54B6 : db 1
  db 16,$37
  !g3
  db 16,$48
  !g2
  !g2
  db 16,$37
  !g3
  db 16,$48
  !g2
  !g2
  db 16,$47
  !g3
  db 16,$48
  !g2
  !g2
  db 16,$37
  !g3
  db 16,$48
  !g2
  !g2
  db 16,$28
  !as2
  !b2
  !as2
  !b2
  !end

.pattern2_4
  db 3
  !rest
  !subtranspose,20
  !pan,9
  !instr,!instr10
  !volume,150
  db 17,$78
  !g4
  db 15,$76
  !b4
  db 12
  !d5
  db 9
  !f5
  db 7
  !a5
  !c6
  !e6
  !pan,0
  !volume,130
  !f5
  !a5
  !c6
  !dynamicVolume,160,70
  !e6
  !f5
  !a5
  !c6
  db 5
  !e6
  db 2
  !tie
  db 7
  !f5
  !a5
  !c6
  !e6
  !f5
  !a5
  !c6
  !e6
  !f5
  !a5
  !c6
  !e6
  !f5
  !a5
  !c6
  !e6
  !f5
  !a5
  !pan,9
  !volume,150
  !f4
  !g4
  !b4
  !d5
  !e5
  !g5
  !b5
  !d6
  !pan,0
  !volume,130
  !e5
  !g5
  !b5
  !d6
  !dynamicVolume,165,70
  !e5
  !g5
  !b5
  !d6
  !e5
  !g5
  db 2
  !b5
  db 5
  !tie
  db 7
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
  !e5
  !g5
  !b5
  !d6
  db 4
  !e5
  !instr,!instr03
  !pan,9
  !volume,145
  db 14,$15
  !b5
  !f6
  !a6
  !d6
  !pan,0
  !volume,110
  !b5
  !f6
  !a6
  !dynamicVolume,150,60
  !d6
  !b5
  db 2,$75
  !f6
  db 12,$15
  !tie
  db 14
  !a6
  !d6
  !b5
  !f6
  !a6
  !d6
  !b5
  !f6
  db 4
  !rest
  !pan,9
  !volume,145
  db 20
  !d7
  db 28
  !rest
  !pan,0
  !volume,105
  db 20
  !d7
  db 28
  !rest
  !dynamicVolume,150,70
  db 20
  !d7
  db 12
  !rest
  db 16
  !rest
  db 20
  !d7
  db 24
  !rest
  !pan,0
  !subtranspose,10
  !instr,!instr04
  !volume,135
  db 16,$17
  !as4
  !b4
  !as4
  db 17
  !b4
  !end

.pattern3_0
  !volume,230
  !pan,10
  !echo,%00011100,38,38
  !echoParameters,4,50,0
  !loop : dw .sub52B8 : db 1
  !loop : dw .sub5564 : db 1
  db 16,$19
  !c5
  !instr,!instr26
  db 32,$79
  !b2
  db 16,$74
  !b2
  db 16,$7A
  !b2
  !instr,!instr25
  !fs4
  db 6
  !fs4
  db 5,$73
  !fs4
  !fs4
  db 16,$7A
  !fs4
  !end

.pattern3_1
  !subtranspose,0
  !pan,12
  !volume,200
  !instr,!instr28
  db 25,$78
  !cs5
  db 7,$72
  !cs5
  db 16,$78
  !cs5
  db 25,$72
  !cs5
  db 7
  !cs5
  db 16,$78
  !cs5
  db 25
  !cs5
  db 7,$72
  !cs5
  db 9
  !cs5
  db 7,$70
  !cs5
  db 9,$71
  !cs5
  db 7,$70
  !cs5
  db 16,$78
  !cs5
  db 9,$72
  !cs5
  db 7,$70
  !cs5
  db 9,$72
  !cs5
  db 7,$70
  !cs5
  db 16,$78
  !cs5
  db 9,$72
  !cs5
  db 7,$70
  !cs5
  db 9,$78
  !cs5
  db 7,$72
  !cs5
  db 25
  !cs5
  db 7
  !cs5
  db 16,$78
  !cs5
  db 25,$72
  !cs5
  db 7,$74
  !cs5
  db 16,$78
  !cs5
  db 9,$72
  !cs5
  db 7
  !cs5
  db 9,$78
  !cs5
  db 7,$71
  !cs5
  db 5,$72
  !cs5
  db 5,$70
  !cs5
  db 5,$71
  !cs5
  db 5,$70
  !cs5
  db 5,$71
  !cs5
  db 7,$74
  !cs5
  db 16,$78
  !cs5
  db 9,$74
  !cs5
  db 7,$72
  !cs5
  db 9,$70
  !cs5
  db 7
  !cs5
  db 9,$78
  !cs5
  db 7,$74
  !cs5
  db 9,$70
  !cs5
  db 7
  !cs5
  db 9,$76
  !cs5
  db 7,$78
  !cs5
  db 25
  !cs5
  db 7,$72
  !cs5
  db 16,$78
  !cs5
  db 25,$72
  !cs5
  db 7
  !cs5
  db 16,$78
  !cs5
  db 25
  !cs5
  db 7,$72
  !cs5
  db 9
  !cs5
  db 7,$70
  !cs5
  db 9,$71
  !cs5
  db 7,$70
  !cs5
  db 16,$78
  !cs5
  db 9,$72
  !cs5
  db 7,$70
  !cs5
  db 9,$72
  !cs5
  db 7,$70
  !cs5
  db 16,$78
  !cs5
  db 9,$72
  !cs5
  db 7,$70
  !cs5
  db 9,$78
  !cs5
  db 7,$72
  !cs5
  !instr,!instr24
  !endVibrato
  !volume,150
  !loop : dw .sub5374 : db 1
  !end

.pattern3_2
  !instr,!instr00
  !subtranspose,0
  !pan,8
  !volume,175
  !vibrato,12,11,10
  db 16,$37
  !d5
  !d5
  db 48
  !rest
  db 16
  !d5
  !d5
  !rest
  !rest
  db 32
  !ds5
  db 48
  !ds5
  db 32
  !rest
  db 16
  !f5
  !f5
  db 32
  !rest
  db 24,$04
  !f5
  db 24,$27
  !f5
  db 16,$37
  !f5
  db 24,$47
  !fs4
  db 24,$23
  !fs4
  db 32,$67
  !fs4
  db 48
  !rest
  db 16
  !rest
  db 16,$37
  !f4
  !fs5
  !rest
  db 24,$17
  !f5
  !e5
  db 16,$37
  !ds5
  !rest
  !d5
  !cs5
  !c5
  !rest
  !d5
  !rest
  !f5
  db 48,$57
  !b4
  db 80,$77
  !b4
  db 87
  !rest
  !pan,20
  !volume,140
  !endVibrato
  !instr,!instr25
  db 16,$7A
  !b4
  db 6
  !b4
  db 5,$73
  !b4
  !b4
  db 9,$7A
  !b4
  !end

.pattern3_3
  !instr,!instr00
  !subtranspose,0
  !pan,12
  !volume,175
  !vibrato,12,11,10
  db 16,$37
  !g5
  !g5
  db 48
  !rest
  db 16
  !g5
  !g5
  !rest
  !rest
  db 32
  !gs5
  db 48
  !gs5
  db 32
  !rest
  db 16
  !g5
  !g5
  db 32
  !rest
  db 24,$04
  !g5
  db 24,$27
  !g5
  db 16,$37
  !g5
  db 24,$47
  !as4
  db 24,$23
  !c5
  db 32,$67
  !cs5
  db 48
  !rest
  db 16
  !rest
  db 16,$37
  !c5
  !c6
  !rest
  db 24,$17
  !b5
  !as5
  db 16,$37
  !a5
  !rest
  !gs5
  !g5
  !fs5
  !rest
  !f5
  !rest
  !as5
  db 48,$57
  !e5
  db 80,$77
  !e5
  db 88
  !rest
  !pan,0
  !volume,140
  !endVibrato
  !instr,!instr25
  db 16,$7A
  !b4
  db 6
  !b4
  db 5,$73
  !b4
  !b4
  db 8,$7A
  !b4
  !end

.pattern3_4
  !instr,!instr01
  !subtranspose,0
  !pan,10
  !volume,175
  !vibrato,12,11,10
  db 16,$37
  !c6
  !c6
  db 48
  !rest
  db 16
  !c6
  !c6
  !rest
  !rest
  db 32
  !cs6
  db 48
  !cs6
  db 32
  !rest
  db 16
  !c6
  !c6
  db 32
  !rest
  db 24,$04
  !c6
  db 24,$27
  !c6
  db 16,$37
  !c6
  db 24,$47
  !gs5
  db 24,$23
  !gs5
  db 32,$67
  !gs5
  db 48
  !rest
  db 16
  !rest
  db 16,$37
  !g5
  !f6
  !rest
  db 24,$17
  !e6
  !ds6
  db 16,$37
  !d6
  !rest
  !cs6
  !c6
  !b5
  !rest
  !as5
  !rest
  !ds6
  db 48,$57
  !a5
  db 80,$77
  !a5
  !rest
  !volume,190
  !endVibrato
  !instr,!instr25
  db 16,$7A
  !b4
  db 6
  !b4
  db 5,$73
  !b4
  !b4
  db 16,$7A
  !b4
  !end

.pattern4_0
  !volume,255
  !pan,10
  !echo,%00001001,38,38
  !echoParameters,4,50,0
  !loop : dw .sub52B8 : db 1
  !loop : dw .sub5564 : db 1
  db 16,$19
  !c5
  !instr,!instr26
  db 48,$79
  !b2
  db 25,$7A
  !b2
  !instr,!instr25
  !echo,%00001101,45,45
  db 7,$77
  !c5
  db 32,$78
  !gs2
  !end

.pattern4_1
  !pan,12
  !volume,220
  !instr,!instr28
  db 25,$78
  !d5
  db 7,$72
  !d5
  db 16,$78
  !d5
  db 25,$72
  !d5
  db 7
  !d5
  db 16,$78
  !d5
  db 25
  !d5
  db 7,$72
  !d5
  !loop : dw .sub52FE : db 1
  db 25
  !d5
  db 7,$72
  !d5
  db 16,$78
  !d5
  db 25,$72
  !d5
  db 7
  !d5
  db 16,$78
  !d5
  db 25
  !d5
  db 7,$72
  !d5
  !loop : dw .sub564B : db 1
  db 5,$72
  !d5
  db 5,$70
  !d5
  db 5,$71
  !d5
  db 5,$70
  !d5
  db 5,$71
  !d5
  db 7,$74
  !d5
  db 16,$78
  !d5
  db 9,$74
  !d5
  db 7,$72
  !d5
  db 9,$70
  !d5
  db 7
  !d5
  db 9,$78
  !d5
  db 7,$74
  !d5
  db 16,$78
  !d5
  !d5
  !end

.pattern4_2
  !instr,!instr24
  !endVibrato
  !volume,170
  !loop : dw .sub5374 : db 1
  !loop : dw .sub55CA : db 1
  !pan,10
  !subtranspose,20
  !instr,!instr29
  !pan,8
  !endVibrato
  !transpose,19
  !volume,150
  !loop : dw .sub5690 : db 1
  db 8,$6A
  !g3
  db 8,$68
  !g2
  !f3
  db 16,$69
  !g3
  db 8,$68
  !b2
  !c3
  !d3
  !f3
  db 16
  !a3
  db 8,$78
  !f3
  !transpose,0
  !instr,!instr01
  !volume,180
  db 8,$57
  !b5
  !d6
  db 16,$16
  !f6
  !end

.pattern4_3
  !subtranspose,20
  !pan,10
  !instr,!instr29
  !endVibrato
  !volume,255
  !loop : dw .sub5690 : db 1
  db 8,$6A
  !g3
  db 8,$68
  !g2
  !f3
  db 16,$69
  !g3
  db 8,$68
  !b2
  !c3
  !d3
  !f3
  db 16
  !a3
  !f3
  db 8
  !b2
  !d3
  !f3
  !g3
  db 8,$69
  !g2
  !g2
  db 8,$68
  !g3
  db 8,$69
  !g2
  !g2
  db 8,$67
  !as3
  db 8,$66
  !b3
  db 8,$68
  !g3
  db 16
  !b2
  db 8
  !f3
  !g3
  db 8,$65
  !c4
  db 8,$66
  !b3
  db 8,$68
  !f3
  !loop : dw .sub56F9 : db 1
  db 8,$6A
  !g3
  db 8,$68
  !g2
  !f3
  db 16,$69
  !g3
  db 8,$68
  !b2
  !c3
  !d3
  !f3
  db 16
  !a3
  db 8
  !f3
  db 8,$7B
  !b2
  !d3
  db 16,$79
  !f3
  !end

.pattern4_4
  !instr,!instr25
  !volume,220
  !pan,8
  !loop : dw .sub573D : db 7
  db 16,$77
  !as4
  db 9
  !as4
  db 7,$74
  !as4
  db 9,$77
  !as4
  db 7,$74
  !as4
  db 9,$72
  !as4
  db 7,$78
  !as4
  db 9,$72
  !as4
  db 7,$78
  !as4
  db 9,$74
  !as4
  db 7,$77
  !as4
  db 8
  !as4
  db 8,$74
  !as4
  db 8,$77
  !as4
  db 8,$74
  !as4
  !end

.pattern5_0
  !pan,10
  !echo,%00011100,60,60
  !echoParameters,4,90,0
  !volume,255
  !instr,!instr0A
  !loop : dw .sub5769 : db 8
  !end

.pattern5_1
  !transpose,0
  !subtranspose,0
  !pan,12
  !volume,215
  !instr,!instr27
  db 25,$76
  !a4
  db 7,$72
  !a4
  db 16,$78
  !a4
  db 25,$72
  !a4
  db 7
  !a4
  db 16,$78
  !a4
  db 25
  !a4
  db 7,$72
  !a4
  !loop : dw .sub57BE : db 1
  db 25
  !a4
  db 7,$72
  !a4
  db 16,$78
  !a4
  db 25,$72
  !a4
  db 7
  !a4
  db 16,$78
  !a4
  db 25
  !a4
  db 7,$72
  !a4
  !loop : dw .sub57BE : db 1
  !transpose,0
  !subtranspose,0
  !instr,!instr24
  !endVibrato
  !volume,170
  !pan,10
  db 9
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !loop : dw .sub53F5 : db 2
  !end

.pattern5_2
  !transpose,0
  !subtranspose,60
  !volume,70
  !dynamicVolume,120,165
  !instr,!instr19
  !pan,12
  db 64,$77
  !as4
  !tie
  !tie
  !tie
  !vibrato,0,13,70
  !a4
  !tie
  !tie
  !tie
  !gs4
  !tie
  !tie
  !tie
  !g4
  !tie
  !tie
  !tie
  !fs4
  !tie
  !tie
  !tie
  !f4
  !tie
  !tie
  !tie
  !e4
  !tie
  !tie
  !tie
  !ds4
  !tie
  !tie
  !volume,140
  !dynamicVolume,60,255
  db 64,$78
  !gs4
  !end

.pattern5_3
  !transpose,0
  !subtranspose,60
  !volume,70
  !dynamicVolume,120,165
  !instr,!instr19
  !pan,8
  db 64,$77
  !e5
  !tie
  !tie
  !tie
  !vibrato,0,13,70
  !d5
  !tie
  !tie
  !tie
  !c5
  !tie
  !tie
  !tie
  !c5
  !tie
  !pitchSlide,56,15 : !as4
  !tie
  !tie
  !as4
  !tie
  !tie
  !tie
  !as4
  !tie
  !pitchSlide,60,8 : !a4
  !tie
  !tie
  !a4
  !tie
  !tie
  !tie
  !gs4
  !tie
  !tie
  !volume,140
  !dynamicVolume,60,255
  db 64,$78
  !g4
  !end

.pattern5_4
  !transpose,0
  !subtranspose,60
  !volume,70
  !dynamicVolume,120,165
  !instr,!instr19
  !pan,10
  db 64,$77
  !a5
  !tie
  !tie
  !tie
  !vibrato,0,12,70
  !g5
  !tie
  !tie
  !tie
  !g5
  !tie
  !tie
  !tie
  !f5
  !tie
  !tie
  !tie
  !f5
  !tie
  !tie
  !tie
  !ds5
  !tie
  !tie
  !tie
  !ds5
  !tie
  !cs5
  !tie
  !cs5
  !tie
  !c5
  !volume,140
  !dynamicVolume,60,255
  !b4
  !end

.pattern6_0
  !volume,220
  !pan,10
  !echo,%00011100,26,26
  !echoParameters,4,50,0
  !loop : dw .sub5594 : db 3
  !echo,%00011101,26,26
  !pan,10
  !instr,!instr26
  db 25,$7A
  !b2
  !pan,8
  !instr,!instr25
  db 7,$75
  !c5
  db 16,$77
  !c5
  db 32,$23
  !c5
  !pan,10
  !instr,!instr26
  db 16,$7A
  !b2
  !b2
  !pan,12
  !instr,!instr27
  db 9,$77
  !b4
  db 7
  !b4
  db 9
  !b4
  db 7
  !b4
  db 9
  !b4
  db 7
  !b4
  !echo,%00011100,26,26
  !pan,10
  !instr,!instr26
  db 25,$7A
  !b2
  !pan,8
  !instr,!instr25
  db 7,$75
  !c5
  db 16,$77
  !c5
  db 32,$23
  !c5
  !pan,10
  !instr,!instr26
  db 16,$7A
  !b2
  !b2
  !pan,12
  !instr,!instr27
  db 9,$77
  !b4
  db 7
  !b4
  !pan,10
  !instr,!instr26
  db 16,$7A
  !as2
  !pan,12
  !instr,!instr27
  db 9,$77
  !b4
  db 7
  !b4
  !pan,10
  !instr,!instr26
  db 25,$7A
  !b2
  !pan,8
  !instr,!instr25
  db 7,$75
  !c5
  db 16,$77
  !c5
  db 32,$23
  !c5
  !pan,10
  !instr,!instr26
  db 16,$7A
  !b2
  !instr,!instr27
  db 9,$78
  !b4
  db 7,$75
  !b4
  db 9
  !b4
  db 7
  !b4
  db 9,$78
  !b4
  db 7,$75
  !b4
  db 9
  !b4
  db 7
  !b4
  db 32
  !rest
  !end

.pattern6_1
  !transpose,0
  !subtranspose,0
  !instr,!instr24
  !endVibrato
  !volume,170
  !loop : dw .sub5374 : db 1
  !loop : dw .sub53F5 : db 1
  !loop : dw .sub55CA : db 1
  !instr,!instr10
  !volume,160
  !pan,10
  db 32,$62
  !fs3
  db 32,$67
  !fs3
  db 32,$6A
  !gs3
  !end

.pattern6_2
  !subtranspose,0
  !vibrato,0,14,150
  !pan,8
  !volume,145
  !instr,!instr10
  db 16,$57
  !g4
  db 32,$17
  !g4
  !g4
  db 16,$57
  !g4
  db 32
  !a4
  !a4
  db 16
  !g4
  db 32,$17
  !g4
  !g4
  db 16,$57
  !g4
  !a4
  db 16,$54
  !cs5
  db 32,$57
  !a4
  db 16,$37
  !b4
  db 32,$04
  !a4
  db 16,$57
  !b4
  !a4
  !b4
  db 32
  !a4
  db 16,$54
  !b4
  !a4
  db 16,$57
  !ds4
  db 32,$17
  !e4
  !f4
  !fs4
  db 16,$57
  !g4
  db 32
  !c5
  !endVibrato
  !instr,!instr01
  !volume,190
  db 16,$27
  !as4
  !g4
  db 64
  !rest
  db 16
  !as4
  !g4
  db 32
  !rest
  db 16
  !rest
  !as4
  !g4
  db 32,$07
  !as4
  db 16
  !g4
  !instr,!instr10
  !volume,135
  db 32,$62
  !as4
  db 32,$67
  !as4
  db 32,$78
  !c5
  !end

.pattern6_3
  !subtranspose,0
  !vibrato,0,14,150
  !pan,12
  !volume,145
  !instr,!instr10
  db 16,$57
  !b4
  db 32,$17
  !b4
  !b4
  db 16,$57
  !b4
  db 32
  !cs5
  !cs5
  db 16
  !b4
  db 32,$17
  !b4
  !b4
  db 16,$57
  !b4
  !cs5
  db 16,$54
  !f5
  db 32,$57
  !cs5
  db 16,$37
  !ds5
  db 32,$04
  !cs5
  db 16,$57
  !ds5
  !cs5
  !ds5
  db 32
  !cs5
  db 16,$54
  !ds5
  !cs5
  db 16,$57
  !a4
  db 32,$17
  !as4
  !b4
  !c5
  db 16,$57
  !cs5
  db 32
  !fs5
  !endVibrato
  !instr,!instr01
  !volume,190
  db 16,$27
  !e5
  !cs5
  db 64
  !rest
  db 16
  !e5
  !cs5
  db 32
  !rest
  db 16
  !rest
  !e5
  !cs5
  db 32,$07
  !e5
  db 16,$27
  !cs5
  !volume,135
  !instr,!instr10
  db 32,$62
  !ds5
  db 32,$67
  !ds5
  db 32,$78
  !f5
  !end

.pattern6_4
  !subtranspose,0
  !vibrato,0,14,150
  !pan,10
  !volume,145
  !instr,!instr10
  db 16,$57
  !ds5
  db 32,$17
  !ds5
  !ds5
  db 16,$57
  !ds5
  db 32
  !f5
  !f5
  db 16
  !ds5
  db 32,$17
  !ds5
  !ds5
  db 16,$57
  !ds5
  !f5
  db 16,$54
  !a5
  db 32,$57
  !f5
  db 16,$37
  !g5
  db 32,$04
  !f5
  db 16,$57
  !g5
  !f5
  !g5
  db 32
  !f5
  db 16,$54
  !g5
  !f5
  db 16,$57
  !d5
  db 32,$17
  !ds5
  !e5
  !f5
  db 16,$57
  !fs5
  db 32
  !as5
  !endVibrato
  !instr,!instr01
  !volume,190
  db 16,$27
  !a5
  !fs5
  db 64
  !rest
  db 16
  !a5
  !fs5
  db 32
  !rest
  db 16
  !rest
  !a5
  !fs5
  db 32,$07
  !a5
  db 16,$27
  !fs5
  !volume,135
  !instr,!instr10
  db 32,$62
  !gs5
  db 32,$67
  !gs5
  db 32,$78
  !as5
  !end

.sub52B8
  !instr,!instr26
  db 48,$7A
  !b2
  db 32
  !b2
  !instr,!instr25
  db 16,$16
  !c5
  !instr,!instr26
  db 32,$7A
  !b2
  db 16
  !rest
  db 32
  !b2
  db 41
  !b2
  !instr,!instr25
  db 7,$76
  !c5
  db 25,$48
  !g2
  db 7,$24
  !c5
  !instr,!instr26
  db 48,$7A
  !b2
  db 32
  !b2
  !b2
  !instr,!instr25
  db 16,$34
  !c5
  db 16,$19
  !c5
  !instr,!instr26
  db 48,$79
  !b2
  db 25,$7A
  !b2
  !instr,!instr25
  db 7,$77
  !c5
  db 16,$08
  !a4
  db 16,$36
  !d5
  !end

.sub52FE
  db 9
  !d5
  db 7,$70
  !d5
  db 9,$71
  !d5
  db 7,$70
  !d5
  db 16,$78
  !d5
  db 9,$72
  !d5
  db 7,$70
  !d5
  db 9,$72
  !d5
  db 7,$70
  !d5
  db 16,$78
  !d5
  db 9,$72
  !d5
  db 7,$70
  !d5
  db 9,$78
  !d5
  db 7,$72
  !d5
  db 25
  !d5
  db 7
  !d5
  db 16,$78
  !d5
  db 25,$72
  !d5
  db 7,$74
  !d5
  db 16,$78
  !d5
  db 9,$72
  !d5
  db 7
  !d5
  db 9,$78
  !d5
  db 7,$71
  !d5
  db 5,$72
  !d5
  db 5,$70
  !d5
  db 5,$71
  !d5
  db 5,$70
  !d5
  db 5,$71
  !d5
  db 7,$74
  !d5
  db 16,$78
  !d5
  db 9,$74
  !d5
  db 7,$72
  !d5
  db 9,$70
  !d5
  db 7
  !d5
  db 9,$78
  !d5
  db 7,$74
  !d5
  db 9,$70
  !d5
  db 7
  !d5
  db 9,$76
  !d5
  db 7,$78
  !d5
  !end

.sub5374
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !end

.sub53F5
  !pan,12
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !end

.sub54B6
  db 16,$47
  !g3
  db 16,$58
  !g2
  db 16,$48
  !g2
  db 16,$47
  !g3
  db 16,$58
  !g2
  db 16,$38
  !g2
  db 16,$46
  !as3
  db 16,$45
  !b3
  db 16,$47
  !g3
  db 32,$57
  !b2
  db 16
  !f3
  db 16,$37
  !g3
  db 16,$34
  !c4
  db 16,$45
  !b3
  db 16,$47
  !f3
  !g3
  db 16,$58
  !g2
  db 16,$48
  !g2
  db 16,$47
  !g3
  db 16,$58
  !g2
  db 16,$38
  !g2
  db 16,$46
  !as3
  db 16,$45
  !b3
  db 16,$47
  !g3
  db 32,$57
  !b2
  db 16
  !f3
  db 16,$37
  !g3
  db 16,$34
  !c4
  db 16,$47
  !b3
  db 16,$45
  !d4
  db 16,$27
  !f4
  db 32,$45
  !d4
  db 32,$44
  !c4
  db 32,$46
  !b3
  db 16,$34
  !d4
  db 16,$47
  !g3
  db 16,$44
  !c4
  db 16,$45
  !b3
  db 32,$28
  !f3
  db 16,$47
  !c3
  !d3
  !f3
  !end

.sub552D
  db 64,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 64,$07
  !e4
  db 32
  !rest
  db 32,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 64,$07
  !e4
  db 64,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  db 49,$07
  !e4
  db 15,$72
  !e4
  !end

.sub554B
  db 17,$77
  !f4
  db 16,$75
  !e4
  db 16,$77
  !f4
  db 15,$75
  !e4
  db 17,$77
  !f4
  db 16,$75
  !e4
  db 16,$77
  !f4
  db 15,$75
  !e4
  !end

.sub5564
  !instr,!instr26
  db 48,$7A
  !b2
  db 32
  !b2
  !instr,!instr25
  db 16,$16
  !c5
  !instr,!instr26
  db 32,$7A
  !b2
  db 16
  !rest
  db 32
  !b2
  db 41
  !b2
  !instr,!instr25
  db 7,$76
  !c5
  db 25,$48
  !g2
  db 7,$24
  !c5
  !instr,!instr26
  db 48,$7A
  !b2
  db 32
  !b2
  !b2
  !instr,!instr25
  db 16,$34
  !c5
  !end

.sub564B
  db 9
  !d5
  db 7,$70
  !d5
  db 9,$71
  !d5
  db 7,$70
  !d5
  db 16,$78
  !d5
  db 9,$72
  !d5
  db 7,$70
  !d5
  db 9,$72
  !d5
  db 7,$70
  !d5
  db 16,$78
  !d5
  db 9,$72
  !d5
  db 7,$70
  !d5
  db 9,$78
  !d5
  db 7,$72
  !d5
  db 25
  !d5
  db 7
  !d5
  db 16,$78
  !d5
  db 25,$72
  !d5
  db 7,$74
  !d5
  db 16,$78
  !d5
  db 9,$72
  !d5
  db 7
  !d5
  db 9,$78
  !d5
  db 7,$71
  !d5
  !end

.sub55CA
  !pan,12
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,8
  db 9,$78
  !b4
  db 7,$74
  !g4
  !pan,10
  db 9,$78
  !d5
  db 7,$74
  !g4
  !pan,12
  db 9,$78
  !b4
  db 7,$74
  !g4
  !end

.sub5690
  db 8,$68
  !g3
  db 8,$69
  !g2
  !g2
  db 8,$68
  !g3
  db 8,$69
  !g2
  !g2
  db 8,$67
  !as3
  db 8,$66
  !b3
  db 8,$68
  !g3
  db 16
  !b2
  db 8
  !f3
  !g3
  db 8,$65
  !c4
  db 8,$66
  !b3
  db 8,$68
  !f3
  !g3
  db 8,$69
  !g2
  !g2
  db 8,$68
  !g3
  db 8,$69
  !g2
  !g2
  db 8,$67
  !as3
  db 8,$66
  !b3
  db 8,$68
  !g3
  db 16
  !b2
  db 8
  !f3
  !g3
  db 8,$65
  !c4
  db 8,$68
  !b3
  db 8,$66
  !d4
  db 8,$68
  !f4
  db 16,$66
  !d4
  db 16,$65
  !c4
  db 16,$67
  !b3
  db 8,$65
  !d4
  db 8,$68
  !g3
  db 8,$65
  !c4
  db 8,$66
  !b3
  db 16,$69
  !f3
  db 8,$68
  !c3
  !d3
  !f3
  !end

.sub56F9
  !g3
  db 8,$69
  !g2
  !g2
  db 8,$68
  !g3
  db 8,$69
  !g2
  !g2
  db 8,$67
  !as3
  db 8,$66
  !b3
  db 8,$68
  !g3
  db 16
  !b2
  db 8
  !f3
  !g3
  db 8,$65
  !c4
  db 8,$68
  !b3
  db 8,$66
  !d4
  db 8,$68
  !f4
  db 16,$66
  !d4
  db 16,$65
  !c4
  db 16,$67
  !b3
  db 8,$65
  !d4
  db 8,$68
  !g3
  db 8,$65
  !c4
  db 8,$66
  !b3
  db 16,$69
  !f3
  db 8,$68
  !c3
  !d3
  !f3
  !end

.sub573D
  db 16,$77
  !as4
  db 9
  !as4
  db 7,$74
  !as4
  db 9,$77
  !as4
  db 7,$74
  !as4
  db 9,$72
  !as4
  db 7,$78
  !as4
  db 9,$72
  !as4
  db 7,$78
  !as4
  db 9,$74
  !as4
  db 7,$77
  !as4
  db 9
  !as4
  db 7,$74
  !as4
  db 9,$77
  !as4
  db 7,$74
  !as4
  !end

.sub5769
  !slideOut,0,25,1
  db 25,$79
  !d5
  !endSlide
  db 7,$67
  !ds5
  db 16,$4A
  !ds5
  !slideOut,0,25,1
  db 25,$79
  !ds5
  !endSlide
  db 7,$67
  !e5
  db 16,$4A
  !e5
  !slideOut,0,16,1
  db 16,$79
  !e5
  !endSlide
  db 9,$67
  !f5
  db 7
  !f5
  db 16,$4A
  !f5
  !slideOut,0,25,255
  db 25,$79
  !f5
  !endSlide
  db 7,$67
  !e5
  db 16,$4A
  !e5
  !slideOut,0,16,255
  db 16,$69
  !e5
  !endSlide
  db 9,$67
  !ds5
  db 7
  !ds5
  !slideOut,0,16,255
  db 16,$69
  !ds5
  !endSlide
  db 9,$67
  !d5
  db 7
  !d5
  !end

.sub57BE
  db 9
  !a4
  db 7,$70
  !a4
  db 9,$71
  !a4
  db 7,$70
  !a4
  db 16,$78
  !a4
  db 9,$72
  !a4
  db 7,$70
  !a4
  db 9,$72
  !a4
  db 7,$70
  !a4
  db 16,$78
  !a4
  db 9,$72
  !a4
  db 7,$70
  !a4
  db 9,$78
  !a4
  db 7,$72
  !a4
  db 25
  !a4
  db 7
  !a4
  db 16,$78
  !a4
  db 25,$72
  !a4
  db 7,$74
  !a4
  db 16,$78
  !a4
  db 9,$72
  !a4
  db 7
  !a4
  db 9,$78
  !a4
  db 7,$71
  !a4
  db 5,$72
  !a4
  db 5,$70
  !a4
  db 5,$71
  !a4
  db 5,$70
  !a4
  db 5,$71
  !a4
  db 7,$74
  !a4
  db 16,$78
  !a4
  db 9,$74
  !a4
  db 7,$72
  !a4
  db 9,$70
  !a4
  db 7
  !a4
  db 9,$78
  !a4
  db 7,$74
  !a4
  db 9,$70
  !a4
  db 7
  !a4
  db 9,$76
  !a4
  db 7,$78
  !a4
  !end

.sub5594
  !pan,10
  !instr,!instr26
  db 25,$7A
  !b2
  !pan,8
  !instr,!instr25
  db 7,$75
  !c5
  db 16,$77
  !c5
  db 32,$23
  !c5
  !pan,10
  !instr,!instr26
  db 16,$7A
  !b2
  !b2
  !pan,12
  !instr,!instr27
  db 9,$77
  !b4
  db 7
  !b4
  !pan,10
  !instr,!instr26
  db 16,$7A
  !as2
  !pan,12
  !instr,!instr27
  db 9,$77
  !b4
  db 7
  !b4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
