asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr1B = $18
!instr1C = $19
!instr1D = $1A
!instr23 = $1B
!instr24 = $1C
!instr25 = $1D
!instr26 = $1E
!instr27 = $1F
!instr29 = $20
!instr2A = $21

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$07,$00
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr26,$BF,$D3,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr29,$FF,$E0,$B8,$04,$80
  db !instr2A,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+819
  dw Sample01,Sample01+1098
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample1D,Sample1D+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample26_27,Sample26_27+1683
  dw Sample29,Sample29+1620
  dw Sample2A,Sample2A+1638
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_daee1fba1349bada3b2b763cd04133f4.brr"
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample29: incbin "Sample_ce04077ea3405bc500288eaedde7f293.brr"
  Sample2A: incbin "Sample_22f1c3ddac7e136236eac1eb0e82a501.brr"

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
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !echo,%00011110,26,26
  !echoParameters,4,50,0
  !musicVolume,255
  !tempo,48
  !volume,255
  !pan,10
  !instr,!instr26
  db 15,$78
  !c3
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr26
  db 15,$78
  !c3
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr26
  db 15,$78
  !c3
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr26
  db 15,$78
  !c3
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr26
  db 30,$28
  !c3
  db 30,$77
  %percNote(!instr23-!instr23)
  !end

.pattern0_1
  !volume,245
  !instr,!instr25
  db 60,$73
  !g2
  !g2
  db 30
  !g2
  !g2
  db 30,$23
  !g2
  db 30,$75
  !d2
  !end

.pattern0_2
  !instr,!instr1D
  !volume,200
  db 15,$59
  !as2
  db 15,$37
  !as3
  !f3
  !as3
  db 15,$38
  !c3
  db 15,$37
  !c4
  db 15,$3B
  !g2
  db 15,$37
  !g3
  db 15,$38
  !cs3
  db 15,$37
  !cs4
  db 15,$38
  !cs3
  db 15,$37
  !cs4
  !c4
  !rest
  db 30,$18
  !c3
  !end

.pattern0_3
  !instr,!instr01
  !volume,150
  !pan,9
  db 15,$57
  !gs6
  !rest
  db 15,$17
  !g6
  !f6
  !ds6
  !as5
  db 15,$67
  !g5
  !rest
  db 15,$17
  !cs6
  !ds6
  !f6
  !g6
  db 15,$27
  !e6
  db 45
  !rest
  !end

.pattern0_4
  !instr,!instr01
  !volume,150
  !pan,11
  db 15,$57
  !c7
  !rest
  db 15,$17
  !as6
  !gs6
  !g6
  !ds6
  db 15,$67
  !c6
  !rest
  db 15,$17
  !f6
  !g6
  !gs6
  !as6
  db 15,$27
  !g6
  db 45
  !rest
  !end

.pattern1_0
  !loop : dw .sub51CF : db 3
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !loop : dw .sub51CF : db 3
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !end

.pattern1_1
  !instr,!instr1B
  !volume,175
  !pan,10
  !slideIn,0,2,1
  !vibrato,33,25,30
  db 60,$47
  !f7
  !c7
  !loop : dw .sub51FC : db 1
  !f7
  !c7
  db 30
  !gs6
  !g6
  !f6
  db 15,$57
  !f6
  !g6
  db 30
  !gs6
  !as6
  !g6
  !ds6
  !f6
  !c6
  db 60,$47
  !f6
  !end

.pattern1_2
  !loop : dw .sub520F : db 2
  db 30,$27
  !as3
  !f3
  !as3
  db 30,$29
  !as2
  !loop : dw .sub520F : db 3
  db 30,$29
  !as2
  db 30,$27
  !as3
  !c4
  db 30,$28
  !c3
  db 30,$27
  !f3
  db 30,$28
  !c3
  db 30,$27
  !f3
  db 30,$28
  !c3
  !end

.pattern1_3
  !volume,185
  db 15,$27
  !c4
  !c5
  !f3
  !c5
  !c4
  !c5
  !f3
  !c5
  !c4
  !c5
  !f3
  !c5
  !c4
  !c5
  !f3
  !c5
  !f4
  !cs5
  !as3
  !cs5
  !f4
  !cs5
  !as3
  !cs5
  !loop : dw .sub521C : db 3
  !as3
  !cs5
  !f4
  !cs5
  !g4
  !ds5
  !c4
  !ds5
  !c4
  !c5
  !f3
  !c5
  !c4
  !c5
  !f3
  !c5
  !end

.pattern1_4
  !volume,180
  db 15,$27
  !f4
  !gs5
  !c4
  !gs5
  !f4
  !gs5
  !c4
  !gs5
  !f4
  !gs5
  !c4
  !gs5
  !f4
  !gs5
  !c4
  !gs5
  !as4
  !f5
  !f4
  !f5
  !as4
  !f5
  !f4
  !f5
  !loop : dw .sub5225 : db 3
  !f4
  !f5
  !as4
  !f5
  !as4
  !g5
  !g4
  !g5
  !f4
  !gs5
  !c4
  !gs5
  !f4
  !gs5
  !c4
  !gs5
  !end

.pattern2_0
  !loop : dw .sub51CF : db 3
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !loop : dw .sub51CF : db 3
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !end

.pattern2_1
  !instr,!instr2A
  !volume,200
  !pan,10
  !vibrato,20,12,200
  db 60,$45
  !f7
  db 60,$46
  !c7
  !loop : dw .sub51FC : db 1
  db 60,$45
  !f7
  db 60,$46
  !c7
  !slideIn,0,8,1
  db 30,$47
  !gs6
  !endSlide
  !as6
  !c7
  !f6
  !slideIn,0,8,1
  db 30,$57
  !g6
  !endSlide
  !as6
  !g6
  !ds6
  !slideIn,0,30,1
  !dynamicVolume,105,100
  db 105,$67
  !f6
  !endSlide
  db 15
  !rest
  !end

.pattern2_2
  !loop : dw .sub520F : db 2
  db 30,$27
  !as3
  !f3
  !as3
  db 30,$29
  !as2
  !loop : dw .sub520F : db 2
  db 30,$27
  !as3
  !f3
  !as3
  db 30,$29
  !as2
  db 30,$28
  !c3
  db 30,$27
  !as3
  !c4
  db 30,$28
  !c3
  db 30,$27
  !f3
  db 30,$28
  !c3
  db 30,$27
  !f3
  db 30,$28
  !c3
  !end

.pattern2_3
  !instr,!instr29
  !volume,180
  !pan,9
  db 14,$27
  !f4
  db 15
  !f5
  !pan,11
  !f3
  !f5
  !pan,9
  !f4
  !f5
  !pan,11
  !f3
  !f5
  !pan,9
  !f4
  !f5
  !pan,11
  !f3
  !f5
  !pan,9
  !f4
  !f5
  !pan,11
  !f3
  !f5
  !pan,9
  db 15,$26
  !as4
  !as5
  !pan,11
  !as3
  !as5
  !pan,9
  !as4
  !as5
  !pan,11
  !as3
  !as5
  !pan,9
  db 15,$27
  !f4
  !f5
  !pan,11
  !f3
  !f5
  !pan,9
  !f4
  !f5
  !pan,11
  !f3
  !f5
  !pan,9
  !f4
  !f5
  !pan,11
  !f3
  !f5
  !pan,9
  !f4
  !f5
  !pan,11
  !f3
  !f5
  !pan,9
  !as4
  !f5
  !pan,11
  !as3
  !f5
  !pan,9
  !as4
  !f5
  !pan,11
  !as3
  !f5
  !pan,9
  !c4
  !ds5
  !pan,11
  !c3
  !ds5
  !pan,9
  !c4
  !ds5
  !pan,11
  !c3
  !ds5
  !pan,9
  !f4
  !f5
  !pan,11
  !f3
  !f5
  !pan,9
  !f4
  !f5
  !pan,11
  !f3
  db 16
  !f5
  !end

.pattern2_4
  !instr,!instr2A
  !volume,180
  !pan,11
  db 14,$27
  !f3
  db 15
  !gs5
  !pan,9
  !c4
  !gs5
  !pan,11
  !f3
  !gs5
  !pan,9
  !c4
  !gs5
  !pan,11
  !f3
  !gs5
  !pan,9
  !c4
  !gs5
  !pan,11
  !f3
  !gs5
  !pan,9
  !c4
  !gs5
  !pan,11
  !as3
  !cs5
  !pan,9
  !f4
  !cs5
  !pan,11
  !as3
  !cs5
  !pan,9
  !f4
  !cs5
  !loop : dw .sub522E : db 2
  !pan,11
  !as3
  !cs5
  !pan,9
  !f4
  !cs5
  !pan,11
  !as3
  !cs5
  !pan,9
  !f4
  !cs5
  !pan,11
  !c3
  !g5
  !pan,9
  !g3
  !g5
  !pan,11
  !c3
  !g5
  !pan,9
  !g3
  !g5
  !pan,11
  !f3
  !gs5
  !pan,9
  !c4
  !gs5
  !pan,11
  !f3
  !gs5
  !pan,9
  !c4
  db 16
  !gs5
  !end

.pattern3_0
  !loop : dw .sub523F : db 4
  !end

.pattern3_1
  !pan,10
  !subtranspose,10
  !instr,!instr01
  !volume,230
  db 30,$38
  !as3
  !as3
  db 30,$37
  !cs4
  !f4
  !gs4
  !g4
  !f4
  !c4
  db 30,$38
  !as3
  !as3
  db 30,$37
  !cs4
  !f4
  !gs4
  !as4
  db 60,$56
  !c5
  !end

.pattern3_2
  db 30,$39
  !as2
  !as2
  db 30,$37
  !cs3
  !f3
  !gs3
  !g3
  !f3
  db 30,$38
  !c3
  db 30,$39
  !as2
  !as2
  db 30,$37
  !cs3
  !f3
  !gs3
  !as3
  db 60,$56
  !c4
  !end

.pattern3_3
  !volume,150
  !dynamicVolume,120,210
  db 14
  !rest
  !instr,!instr29
  !pan,11
  db 15,$37
  !as5
  !rest
  !pan,9
  !as5
  !rest
  !pan,11
  !as5
  !rest
  !pan,9
  !as5
  !dynamicVolume,120,150
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !dynamicVolume,120,210
  !rest
  !pan,11
  !as5
  !rest
  !pan,9
  !as5
  !rest
  !pan,11
  !as5
  !rest
  !pan,9
  !as5
  !dynamicVolume,120,150
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  db 16
  !f5
  !end

.pattern3_4
  !volume,150
  !dynamicVolume,120,210
  db 14
  !rest
  !instr,!instr2A
  !pan,9
  db 15,$37
  !cs5
  !rest
  !pan,11
  !cs5
  !rest
  !pan,9
  !cs5
  !rest
  !pan,11
  !cs5
  !dynamicVolume,120,150
  !rest
  !pan,9
  !gs5
  !rest
  !pan,11
  !gs5
  !rest
  !pan,9
  !gs5
  !rest
  !pan,11
  !gs5
  !dynamicVolume,120,210
  !rest
  !pan,9
  !cs5
  !rest
  !pan,11
  !cs5
  !rest
  !pan,9
  !cs5
  !rest
  !pan,11
  !cs5
  !dynamicVolume,120,150
  !rest
  !pan,9
  !gs5
  !rest
  !pan,11
  !gs5
  !rest
  !pan,9
  !gs5
  !rest
  !pan,11
  db 16
  !gs5
  !end

.pattern4_0
  !loop : dw .sub51CF : db 3
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !end

.pattern4_1
  db 14
  !rest
  !instr,!instr29
  !endVibrato
  !volume,170
  !subtranspose,0
  !pan,9
  db 15,$37
  !as5
  !rest
  !pan,11
  !as5
  !rest
  !pan,9
  !as5
  !rest
  !pan,11
  !as5
  !loop : dw .sub5278 : db 1
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  db 16
  !f5
  !end

.pattern4_2
  !loop : dw .sub5299 : db 1
  !f3
  !c4
  !f3
  db 30,$28
  !c3
  !end

.pattern4_3
  !instr,!instr00
  !volume,160
  !vibrato,16,20,30
  !pan,11
  db 45,$47
  !as6
  db 15,$27
  !gs6
  db 30,$17
  !f6
  db 15,$27
  !f6
  !g6
  db 30,$17
  !gs6
  !c6
  db 60,$27
  !gs6
  db 23,$57
  !g6
  db 7,$68
  !g6
  db 15,$27
  !g6
  !f6
  db 30,$17
  !ds6
  db 15,$27
  !f6
  !g6
  db 30,$17
  !f6
  !g6
  db 30,$47
  !gs6
  !f6
  !end

.pattern4_4
  !instr,!instr00
  !volume,165
  !vibrato,16,20,30
  !pan,10
  db 45,$47
  !cs7
  db 15,$27
  !c7
  db 30,$17
  !as6
  db 15,$27
  !gs6
  !as6
  db 30,$17
  !c7
  !f6
  db 60,$27
  !c7
  db 23,$57
  !as6
  db 7,$68
  !as6
  db 15,$27
  !as6
  !gs6
  db 30,$17
  !g6
  db 15,$27
  !gs6
  !as6
  db 30,$17
  !gs6
  !as6
  db 30,$47
  !c7
  !gs6
  !end

.pattern5_0
  !loop : dw .sub523F : db 4
  !end

.pattern5_1
  !pan,10
  !subtranspose,10
  !instr,!instr01
  !volume,230
  db 30,$38
  !as3
  !as3
  db 30,$37
  !cs4
  !f4
  !gs4
  !g4
  !f4
  !c4
  db 30,$38
  !as3
  !as3
  db 30,$37
  !cs4
  !f4
  !gs4
  !as4
  db 60,$56
  !c5
  !end

.pattern5_2
  db 30,$39
  !as2
  !as2
  db 30,$37
  !cs3
  !f3
  !gs3
  !g3
  !f3
  db 30,$38
  !c3
  db 30,$39
  !as2
  !as2
  db 30,$37
  !cs3
  !f3
  !gs3
  !as3
  db 60,$56
  !c4
  !end

.pattern5_3
  !volume,150
  !dynamicVolume,120,210
  db 14
  !rest
  !instr,!instr29
  !pan,11
  db 15,$37
  !as5
  !rest
  !pan,9
  !as5
  !rest
  !pan,11
  !as5
  !rest
  !pan,9
  !as5
  !dynamicVolume,120,150
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !dynamicVolume,120,210
  !rest
  !pan,11
  !as5
  !rest
  !pan,9
  !as5
  !rest
  !pan,11
  !as5
  !rest
  !pan,9
  !as5
  !dynamicVolume,120,150
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  db 16
  !f5
  !end

.pattern5_4
  !volume,150
  !dynamicVolume,120,210
  db 14
  !rest
  !instr,!instr2A
  !pan,9
  db 15,$37
  !cs5
  !rest
  !pan,11
  !cs5
  !rest
  !pan,9
  !cs5
  !rest
  !pan,11
  !cs5
  !dynamicVolume,120,150
  !rest
  !pan,9
  !gs5
  !rest
  !pan,11
  !gs5
  !rest
  !pan,9
  !gs5
  !rest
  !pan,11
  !gs5
  !dynamicVolume,120,210
  !rest
  !pan,9
  !cs5
  !rest
  !pan,11
  !cs5
  !rest
  !pan,9
  !cs5
  !rest
  !pan,11
  !cs5
  !dynamicVolume,120,150
  !rest
  !pan,9
  !gs5
  !rest
  !pan,11
  !gs5
  !rest
  !pan,9
  !gs5
  !rest
  !pan,11
  db 16
  !gs5
  !end

.pattern6_0
  !loop : dw .sub51CF : db 3
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 8,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 7,$71
  %percNote(!instr24-!instr23)
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 30,$77
  %percNote(!instr27-!instr23)
  !instr,!instr27
  !g2
  !end

.pattern6_1
  db 14
  !rest
  !instr,!instr29
  !endVibrato
  !volume,190
  !pan,9
  !subtranspose,0
  db 15,$37
  !as5
  !rest
  !pan,11
  !as5
  !rest
  !pan,9
  !as5
  !rest
  !pan,11
  !as5
  !loop : dw .sub5278 : db 1
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !pan,10
  !f5
  !rest
  db 31,$74
  !ds5
  !end

.pattern6_2
  !loop : dw .sub5299 : db 1
  !f3
  !c4
  db 30,$17
  !f3
  db 30,$77
  !ds3
  !end

.pattern6_3
  !instr,!instr01
  !volume,145
  !vibrato,16,20,30
  !pan,11
  db 45,$57
  !as6
  db 15,$37
  !gs6
  db 23,$17
  !g6
  db 7,$77
  !g6
  db 15,$67
  !as6
  !c7
  db 30,$27
  !c7
  !gs6
  !f6
  db 30,$38
  !c6
  db 23,$57
  !ds6
  db 7,$67
  !ds6
  db 15
  !ds6
  !g6
  db 23
  !ds6
  db 7
  !c6
  db 15
  !g5
  !c6
  db 60,$77
  !gs5
  db 30
  !rest
  !g5
  !end

.pattern6_4
  !instr,!instr01
  !volume,145
  !vibrato,16,20,30
  !pan,10
  db 45,$57
  !cs7
  db 15,$37
  !c7
  db 23,$17
  !as6
  db 7,$77
  !as6
  db 15,$67
  !cs7
  !ds7
  db 30,$27
  !f7
  !c7
  !gs6
  db 30,$38
  !f6
  db 23,$57
  !g6
  db 7,$67
  !g6
  db 15
  !g6
  !as6
  db 23
  !g6
  db 7,$78
  !ds6
  db 15,$67
  !c6
  !ds6
  db 60,$77
  !f6
  db 30
  !rest
  !ds6
  !end

.pattern7_0
  !loop : dw .sub51CF : db 3
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !loop : dw .sub51CF : db 3
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !end

.pattern7_1
  !vibrato,20,20,30
  !instr,!instr1C
  !volume,165
  !pan,10
  !loop : dw .sub52B6 : db 1
  db 15,$27
  !cs6
  db 8,$57
  !cs6
  db 7
  !cs6
  db 15,$27
  !cs6
  !ds6
  !f6
  db 8,$67
  !f6
  db 7
  !f6
  db 15,$27
  !ds6
  !cs6
  !c6
  db 8,$57
  !c6
  db 7
  !ds6
  db 15,$27
  !gs6
  !as6
  db 30,$77
  !gs6
  !ds6
  db 15,$27
  !gs6
  db 8,$58
  !gs6
  db 7,$57
  !gs6
  db 15,$27
  !gs6
  !as6
  !b6
  !b6
  !cs7
  !b6
  !as6
  db 8,$67
  !as6
  db 7
  !as6
  db 15,$27
  !as6
  !b6
  db 30,$77
  !as6
  db 15
  !rest
  !instr,!instr01
  !volume,160
  db 8,$65
  !c7
  db 7,$66
  !as6
  !end

.pattern7_2
  !loop : dw .sub52FE : db 1
  db 15,$48
  !as2
  db 15,$23
  !as3
  db 15,$47
  !f3
  db 15,$23
  !as3
  db 15,$47
  !ds3
  db 15,$22
  !ds4
  db 15,$49
  !as2
  db 15,$22
  !ds4
  db 15,$49
  !gs2
  db 15,$23
  !gs3
  db 15,$47
  !ds3
  db 15,$23
  !gs3
  db 15,$49
  !gs2
  db 15,$23
  !gs3
  db 15,$47
  !ds3
  db 15,$23
  !gs3
  db 15,$47
  !e3
  db 15,$22
  !e4
  db 15,$47
  !b2
  db 15,$22
  !e4
  db 15,$47
  !e3
  db 15,$22
  !e4
  db 15,$47
  !b2
  db 15,$22
  !e4
  db 15,$47
  !ds3
  db 15,$22
  !ds4
  db 15,$47
  !as3
  db 15,$22
  !ds4
  db 15,$47
  !ds3
  db 15,$52
  !ds4
  db 15,$59
  !as2
  db 15,$52
  !ds4
  !end

.pattern7_3
  !pan,9
  !loop : dw .sub535F : db 1
  db 15
  !rest
  db 15,$27
  !ds5
  !rest
  !ds5
  !rest
  db 8,$68
  !ds5
  db 7,$67
  !ds5
  db 15
  !rest
  db 8
  !ds5
  db 7,$66
  !ds5
  db 15
  !rest
  db 15,$27
  !e5
  !rest
  !e5
  !rest
  db 8,$68
  !e5
  db 7,$67
  !e5
  db 15
  !rest
  db 8
  !e5
  db 7,$66
  !e5
  db 15
  !rest
  db 15,$27
  !ds5
  !rest
  !ds5
  !rest
  db 8,$68
  !ds5
  db 7,$67
  !ds5
  db 15
  !rest
  db 8
  !ds5
  db 7,$66
  !ds5
  !end

.pattern7_4
  !pan,11
  !loop : dw .sub53CE : db 1
  db 15
  !rest
  db 15,$27
  !c6
  !rest
  !c6
  !rest
  db 8,$68
  !c6
  db 7,$67
  !c6
  db 15
  !rest
  db 8
  !c6
  db 7,$66
  !c6
  db 15
  !rest
  db 15,$27
  !b5
  !rest
  !b5
  !rest
  db 8,$68
  !b5
  db 7,$67
  !b5
  db 15
  !rest
  db 8
  !b5
  db 7,$66
  !b5
  db 15
  !rest
  db 15,$27
  !as5
  !rest
  !as5
  !rest
  db 8,$68
  !as5
  db 7,$67
  !as5
  db 15
  !rest
  db 8
  !as5
  db 7,$66
  !as5
  !end

.pattern8_0
  !loop : dw .sub51CF : db 3
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$72
  %percNote(!instr24-!instr23)
  db 7,$71
  %percNote(!instr24-!instr23)
  !loop : dw .sub51CF : db 2
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr23)
  db 7,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr23)
  db 7,$72
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr23)
  db 7,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr23)
  db 7,$72
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr23)
  db 7,$72
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr23)
  db 7,$72
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 30,$77
  !e5
  !instr,!instr27
  !g2
  !end

.pattern8_1
  !loop : dw .sub52B6 : db 1
  db 15,$27
  !cs6
  db 8,$57
  !cs6
  db 7
  !cs6
  db 15,$27
  !cs6
  !ds6
  !f6
  db 8,$67
  !f6
  db 7
  !f6
  db 15,$27
  !g6
  !as6
  !c7
  db 8,$57
  !c7
  db 7
  !c7
  db 15,$27
  !c7
  !ds7
  !c7
  db 15,$47
  !c7
  db 15,$67
  !as6
  !gs6
  db 15,$27
  !g6
  db 15,$67
  !as6
  db 15,$27
  !c7
  !g6
  db 15,$67
  !as6
  db 15,$27
  !c7
  !g6
  db 15,$67
  !as6
  db 15,$27
  !g6
  db 15,$67
  !as6
  db 15,$27
  !c7
  !f7
  db 30
  !e7
  !instr,!instr26
  !volume,255
  db 30,$7B
  !c3
  !end

.pattern8_2
  !loop : dw .sub52FE : db 1
  db 15,$48
  !as2
  db 15,$33
  !as3
  db 15,$47
  !f3
  db 15,$33
  !as3
  db 15,$47
  !ds3
  db 15,$32
  !ds4
  db 15,$49
  !as2
  db 15,$32
  !ds4
  db 15,$59
  !gs2
  db 15,$44
  !gs3
  db 15,$57
  !ds3
  db 15,$44
  !gs3
  db 15,$57
  !cs3
  db 15,$44
  !cs4
  db 15,$57
  !gs3
  db 15,$45
  !cs4
  db 15,$6B
  !g2
  db 15,$56
  !g3
  db 15,$67
  !d3
  db 15,$56
  !g3
  db 15,$69
  !g2
  db 15,$56
  !g3
  db 15,$67
  !d3
  db 15,$56
  !g3
  db 15,$68
  !c3
  db 15,$57
  !c4
  db 15,$67
  !g3
  db 15,$57
  !c4
  db 30,$28
  !c3
  db 30,$79
  !c3
  !end

.pattern8_3
  !loop : dw .sub535F : db 1
  db 15
  !rest
  db 15,$27
  !ds5
  !rest
  !ds5
  !rest
  db 8,$68
  !f5
  db 7,$67
  !f5
  db 15
  !rest
  db 8
  !f5
  db 7,$66
  !f5
  db 15
  !rest
  db 15,$47
  !f5
  !rest
  !f5
  !rest
  db 8,$68
  !f5
  db 7,$67
  !f5
  db 15
  !rest
  db 8
  !f5
  db 7,$66
  !f5
  db 15
  !rest
  db 8,$68
  !g5
  db 7,$67
  !g5
  db 15
  !rest
  db 8,$68
  !f5
  db 7,$67
  !f5
  db 30,$28
  !e5
  !instr,!instr01
  !volume,150
  db 30,$77
  !g5
  !pitchSlide,15,15 : !gs6
  !end

.pattern8_4
  !loop : dw .sub53CE : db 1
  db 15
  !rest
  db 15,$27
  !c6
  !rest
  !c6
  !rest
  db 8,$68
  !gs5
  db 7,$67
  !gs5
  db 15
  !rest
  db 8
  !gs5
  db 7,$66
  !gs5
  db 15
  !rest
  db 15,$47
  !d6
  !rest
  !d6
  !rest
  db 8,$68
  !d6
  db 7,$67
  !d6
  db 15
  !rest
  db 8
  !d6
  db 7,$66
  !d6
  db 15
  !rest
  db 8,$68
  !as5
  db 7,$67
  !as5
  db 15
  !rest
  db 8,$68
  !as5
  db 7,$67
  !as5
  db 30,$28
  !c6
  !instr,!instr01
  !volume,150
  db 30,$77
  !c6
  !pitchSlide,15,15 : !c7
  !end

.sub51CF
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 15,$71
  %percNote(!instr24-!instr23)
  !end

.sub51FC
  db 30,$57
  !gs6
  !g6
  db 60,$47
  !f6
  db 30,$57
  !f6
  !g6
  !gs6
  !f6
  !ds6
  !f6
  db 60,$47
  !c6
  !end

.sub520F
  db 30,$27
  !f3
  db 30,$28
  !c3
  db 30,$27
  !f3
  db 30,$28
  !c3
  !end

.sub521C
  !c4
  !c5
  !f3
  !c5
  !c4
  !c5
  !f3
  !c5
  !end

.sub5225
  !f4
  !gs5
  !c4
  !gs5
  !f4
  !gs5
  !c4
  !gs5
  !end

.sub522E
  !pan,11
  !f3
  !gs5
  !pan,9
  !c4
  !gs5
  !pan,11
  !f3
  !gs5
  !pan,9
  !c4
  !gs5
  !end

.sub523F
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr23)
  db 7,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr23)
  db 7,$72
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr23
  db 15,$77
  !e5
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr23)
  db 7,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 15,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$73
  %percNote(!instr24-!instr23)
  db 7,$72
  %percNote(!instr24-!instr23)
  !end

.sub5278
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !f5
  !rest
  !pan,11
  !f5
  !rest
  !pan,9
  !ds5
  !rest
  !pan,11
  !ds5
  !rest
  !pan,9
  !ds5
  !rest
  !pan,11
  !ds5
  !end

.sub5299
  db 30,$29
  !as2
  db 30,$27
  !f3
  db 30,$29
  !as2
  db 30,$27
  !as3
  !f3
  !c4
  !f3
  db 30,$28
  !c3
  !c3
  db 30,$27
  !c4
  db 30,$28
  !c3
  db 30,$27
  !c4
  !end

.sub52B6
  db 15,$27
  !gs6
  db 8,$57
  !gs6
  db 7
  !gs6
  db 15,$27
  !gs6
  !as6
  !c7
  !c7
  !as6
  !gs6
  !g6
  db 8,$57
  !g6
  db 7
  !g6
  db 15,$27
  !g6
  !gs6
  db 30,$77
  !g6
  db 15
  !rest
  db 8
  !gs6
  db 7
  !g6
  db 15,$27
  !f6
  db 8,$57
  !f6
  db 7
  !f6
  db 15,$27
  !f6
  !g6
  !gs6
  !gs6
  !g6
  !f6
  !ds6
  db 8,$57
  !ds6
  db 7
  !ds6
  db 15,$27
  !ds6
  !f6
  db 30,$77
  !g6
  db 15
  !rest
  db 8,$67
  !f6
  db 7
  !ds6
  !end

.sub52FE
  db 15,$49
  !gs2
  db 15,$23
  !gs3
  db 15,$48
  !c3
  db 15,$23
  !gs3
  db 15,$47
  !ds3
  db 15,$23
  !gs3
  db 15,$48
  !c3
  db 15,$23
  !gs3
  db 15,$47
  !ds3
  db 15,$22
  !ds4
  db 15,$47
  !as3
  db 15,$22
  !ds4
  db 15,$47
  !ds3
  db 15,$22
  !ds4
  db 15,$49
  !as2
  db 15,$22
  !ds4
  db 15,$47
  !f3
  db 15,$22
  !f4
  db 15,$48
  !c3
  db 15,$22
  !f4
  db 15,$47
  !f3
  db 15,$22
  !f4
  db 15,$48
  !c3
  db 15,$22
  !f4
  db 15,$48
  !c3
  db 15,$23
  !c4
  db 15,$47
  !g3
  db 15,$23
  !c4
  db 15,$48
  !c3
  db 15,$23
  !c4
  db 15,$47
  !g3
  db 15,$23
  !c4
  !end

.sub535F
  db 15
  !rest
  !instr,!instr00
  !volume,150
  !endVibrato
  db 15,$27
  !ds5
  !rest
  !ds5
  !rest
  db 8,$68
  !ds5
  db 7,$67
  !ds5
  db 15
  !rest
  db 8
  !ds5
  db 7,$66
  !ds5
  db 15
  !rest
  db 15,$27
  !ds5
  !rest
  !ds5
  !rest
  db 8,$68
  !ds5
  db 7,$67
  !ds5
  db 15
  !rest
  db 8
  !ds5
  db 7,$66
  !ds5
  db 15
  !rest
  db 15,$27
  !f5
  !rest
  !f5
  !rest
  db 8,$68
  !f5
  db 7
  !f5
  db 15
  !rest
  db 8,$67
  !f5
  db 7,$66
  !f5
  db 15
  !rest
  db 15,$27
  !ds5
  !rest
  !ds5
  !rest
  db 8,$68
  !ds5
  db 7,$67
  !ds5
  db 15
  !rest
  db 8
  !ds5
  db 7,$66
  !ds5
  db 15
  !rest
  db 15,$27
  !cs5
  !rest
  !cs5
  !rest
  db 8,$68
  !ds5
  db 7,$67
  !ds5
  db 15
  !rest
  db 8
  !ds5
  db 7,$66
  !ds5
  !end

.sub53CE
  db 15
  !rest
  !instr,!instr00
  !volume,150
  !endVibrato
  db 15,$27
  !c6
  !rest
  !c6
  !rest
  db 8,$68
  !c6
  db 7,$67
  !c6
  db 15
  !rest
  db 8
  !c6
  db 7,$66
  !c6
  db 15
  !rest
  db 15,$27
  !as5
  !rest
  !as5
  !rest
  db 8,$68
  !as5
  db 7,$67
  !as5
  db 15
  !rest
  db 8
  !as5
  db 7,$66
  !as5
  db 15
  !rest
  db 15,$27
  !c6
  !rest
  !c6
  !rest
  db 8,$68
  !c6
  db 7,$67
  !c6
  db 15
  !rest
  db 8
  !c6
  db 7,$66
  !c6
  db 15
  !rest
  db 15,$27
  !as5
  !rest
  !as5
  !rest
  db 8,$68
  !as5
  db 7,$67
  !as5
  db 15
  !rest
  db 8
  !as5
  db 7,$66
  !as5
  db 15
  !rest
  db 15,$27
  !gs5
  !rest
  !gs5
  !rest
  db 8,$68
  !as5
  db 7,$67
  !as5
  db 15
  !rest
  db 8
  !as5
  db 7,$66
  !as5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
