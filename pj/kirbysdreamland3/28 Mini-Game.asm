asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr04 = $18
!instr06 = $19
!instr10 = $1A
!instr1B = $1B
!instr1D = $1C
!instr23 = $1D
!instr24 = $1E
!instr27 = $1F

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr02,$AF,$B2,$B8,$0E,$F0
  db !instr04,$CF,$F5,$B8,$08,$F0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr10,$FF,$E0,$B8,$03,$B0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample02,Sample02+27
  dw Sample04,Sample04+1404
  dw Sample05_06,Sample05_06+216
  dw Sample10,Sample10+27
  dw Sample1B,Sample1B+1170
  dw Sample1D,Sample1D+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample02: incbin "Sample_1086e6fe5f17482c7f004cd2924d0b6b.brr"
  Sample04: incbin "Sample_ed5604d5b249b89747c4b04479c95eb2.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample10: incbin "Sample_00909a2c7ac12f30a998285388a5259c.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !musicVolume,255
  !tempo,47
  !echo,%00011100,26,26
  !echoParameters,4,50,0
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr27-!instr23)
  !pan,8
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  db 16,$74
  %percNote(!instr23-!instr23)
  db 16,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !loop : dw .sub4B86 : db 3
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr27-!instr23)
  %percNote(!instr23-!instr23)
  !pan,8
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,10
  %percNote(!instr27-!instr23)
  db 8,$75
  %percNote(!instr27-!instr23)
  db 8,$72
  %percNote(!instr27-!instr23)
  !end

.pattern0_1
  !instr,!instr02
  !volume,185
  db 16,$47
  !c3
  db 32
  !rest
  db 16
  !e3
  db 32
  !rest
  db 16
  !as3
  db 16,$46
  !c4
  db 32
  !rest
  db 16,$47
  !as3
  db 16,$46
  !c4
  db 16,$47
  !g3
  !as3
  db 16,$46
  !c4
  db 16,$47
  !e3
  !loop : dw .sub4BD3 : db 1
  !c3
  db 32
  !rest
  db 16
  !e3
  db 32
  !rest
  db 16
  !as3
  !c4
  db 32
  !rest
  db 16
  !as3
  !c4
  !g3
  !as3
  !c4
  !e3
  !loop : dw .sub4BD3 : db 1
  !end

.pattern0_2
  db 16
  !rest
  !pan,10
  !instr,!instr1B
  !volume,160
  db 16,$17
  !g6
  !slideIn,2,4,1
  db 16,$47
  !as6
  !endSlide
  db 16,$17
  !g6
  db 16,$47
  !as6
  db 16,$17
  !c7
  !rest
  !g6
  db 16,$47
  !as6
  db 16,$17
  !g6
  db 16,$47
  !as6
  db 16,$17
  !c7
  !rest
  !slideIn,3,3,1
  db 16,$47
  !e7
  !endSlide
  !d7
  !c7
  !a6
  db 16,$17
  !c7
  !rest
  !a6
  !rest
  db 16,$47
  !ds7
  !d7
  !c7
  !rest
  !f7
  !ds7
  !c7
  !slideIn,5,2,1
  !g7
  !endSlide
  !as7
  !slideIn,4,2,255
  !f7
  !endSlide
  !ds7
  !rest
  !instr,!instr1D
  !volume,130
  db 16,$18
  !g6
  !slideIn,2,4,1
  db 16,$47
  !as6
  !endSlide
  db 16,$17
  !g6
  db 16,$47
  !as6
  db 16,$17
  !c7
  !rest
  !slideIn,0,2,1
  !e7
  !rest
  !endSlide
  db 16,$47
  !e7
  !d7
  db 16,$17
  !c7
  !slideIn,3,3,1
  db 16,$47
  !as6
  !endSlide
  db 16,$17
  !c7
  !rest
  db 16,$47
  !g6
  !as6
  db 16,$17
  !c7
  !rest
  !ds7
  !rest
  db 16,$57
  !ds7
  !d7
  !c7
  !slideIn,4,3,1
  db 16,$46
  !fs7
  !slideIn,2,3,1
  !fs7
  db 16,$56
  !fs7
  !fs7
  !slideIn,0,4,1
  db 16,$66
  !g7
  !endSlide
  db 16,$47
  !as7
  !slideIn,3,3,255
  db 16,$48
  !f7
  !endSlide
  db 16,$47
  !ds7
  !end

.pattern0_3
  !instr,!instr10
  !volume,115
  !pan,8
  db 16,$17
  !g3
  !pan,12
  !e5
  !pan,8
  !g5
  !pan,12
  !c4
  !pan,8
  !e5
  !pan,12
  !g5
  !pan,8
  !e4
  !pan,12
  !e5
  !loop : dw .sub4BEA : db 1
  !pan,8
  !g3
  !pan,12
  !e5
  !pan,8
  !g5
  !pan,12
  !c4
  !pan,8
  !e5
  !pan,12
  !g5
  !pan,8
  !e4
  !pan,12
  !e5
  !loop : dw .sub4BEA : db 1
  !end

.pattern0_4
  !instr,!instr10
  !volume,115
  !pan,12
  db 16,$17
  !c4
  !pan,8
  !as5
  !pan,12
  !as5
  !pan,8
  !g4
  !pan,12
  !as5
  !pan,8
  !as5
  !pan,12
  !g4
  !pan,8
  !as5
  !loop : dw .sub4C33 : db 1
  !pan,12
  !c4
  !pan,8
  !as5
  !pan,12
  !as5
  !pan,8
  !g4
  !pan,12
  !as5
  !pan,8
  !as5
  !pan,12
  !g4
  !pan,8
  !as5
  !loop : dw .sub4C33 : db 1
  !end

.pattern1_0
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr27-!instr23)
  !pan,8
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  db 16,$74
  %percNote(!instr23-!instr23)
  db 16,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !loop : dw .sub4B86 : db 1
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr27-!instr23)
  %percNote(!instr23-!instr23)
  !pan,8
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$78
  %percNote(!instr27-!instr23)
  db 8
  %percNote(!instr27-!instr23)
  db 8,$75
  %percNote(!instr27-!instr23)
  db 8,$76
  !gs4
  db 8,$73
  !gs4
  !end

.pattern1_1
  db 16,$47
  !g3
  db 32
  !rest
  db 16
  !g3
  db 32
  !rest
  db 16
  !f3
  !g3
  !rest
  !ds3
  !f3
  db 16,$49
  !f2
  db 16,$47
  !ds3
  !f3
  db 16,$49
  !f2
  db 16,$47
  !f3
  !c3
  db 32
  !rest
  db 16
  !c3
  db 32
  !rest
  db 16
  !as2
  !c3
  !as2
  !rest
  !c3
  !e3
  !c3
  !g3
  !g3
  !rest
  !end

.pattern1_2
  !instr,!instr04
  !volume,145
  !pan,0
  db 8,$57
  !b4
  db 8,$52
  !b4
  !pan,20
  db 8,$57
  !d5
  db 8,$52
  !d5
  !pan,0
  db 8,$57
  !g5
  db 8,$52
  !g5
  !pan,20
  db 8,$57
  !d5
  db 8,$52
  !d5
  !pan,0
  db 8,$57
  !b4
  db 8,$52
  !b4
  !pan,20
  db 8,$57
  !d5
  db 8,$52
  !d5
  !pan,0
  db 8,$57
  !f5
  db 8,$52
  !f5
  !pan,20
  db 8,$57
  !g5
  db 8,$52
  !g5
  !pan,0
  db 8,$57
  !a4
  db 8,$52
  !a4
  !pan,20
  db 8,$57
  !c5
  db 8,$52
  !c5
  !pan,0
  db 8,$57
  !ds5
  db 8,$52
  !ds5
  !pan,20
  db 8,$57
  !f5
  db 8,$52
  !f5
  !pan,0
  db 8,$57
  !a4
  db 8,$52
  !a4
  !pan,20
  db 8,$57
  !f5
  db 8,$52
  !f5
  !pan,0
  db 8,$57
  !ds5
  db 8,$52
  !ds5
  !pan,20
  db 8,$57
  !c5
  db 8,$52
  !c5
  !pan,0
  db 8,$57
  !as4
  db 8,$52
  !as4
  !pan,20
  db 8,$57
  !c5
  db 8,$52
  !c5
  !pan,0
  db 8,$57
  !g5
  db 8,$52
  !g5
  !pan,20
  db 8,$57
  !c5
  db 8,$52
  !c5
  !pan,0
  db 8,$57
  !as4
  db 8,$52
  !as4
  !pan,20
  db 8,$57
  !c5
  db 8,$52
  !c5
  !pan,0
  db 8,$57
  !g5
  db 8,$52
  !g5
  !pan,20
  db 8,$57
  !c5
  db 8,$52
  !c5
  !pan,0
  db 8,$57
  !as4
  db 8,$52
  !as4
  !pan,20
  db 8,$57
  !c5
  db 8,$52
  !c5
  !pan,0
  db 8,$57
  !g5
  db 8,$52
  !g5
  !pan,20
  db 8,$57
  !c5
  db 8,$52
  !c5
  !pan,0
  db 8,$57
  !as4
  db 8,$52
  !as4
  !instr,!instr01
  !volume,165
  !pan,12
  db 16,$17
  !b5
  !pan,8
  !b5
  !rest
  !end

.pattern1_3
  !instr,!instr01
  !volume,160
  !vibrato,5,20,20
  !pan,12
  db 16,$47
  !d6
  !pan,8
  db 16,$17
  !f6
  !rest
  !pan,12
  !d6
  !rest
  !pan,8
  db 16,$47
  !f6
  !pan,12
  !g6
  !pan,8
  db 16,$77
  !c6
  db 16,$48
  !tie
  !pan,12
  db 16,$47
  !f6
  !pan,8
  !c6
  !pan,12
  !a5
  !pan,8
  !c6
  !pan,12
  !a5
  !pan,8
  !a5
  !pan,12
  !f5
  !pan,8
  !f5
  !pan,12
  db 16,$17
  !g5
  !rest
  !dynamicVolume,32,110
  db 32,$77
  !g5
  !endVibrato
  !instr,!instr06
  !pan,5
  !dynamicPan,80,15
  !dynamicVolume,32,155
  db 16,$57
  !f6
  !e6
  !as5
  !f6
  !e6
  !dynamicPan,48,5
  !as5
  db 16,$55
  !f6
  db 16,$53
  !e6
  !instr,!instr01
  !pan,8
  !volume,165
  db 16,$17
  !f6
  !pan,12
  !f6
  !rest
  !end

.pattern1_4
  !instr,!instr01
  !volume,160
  !pan,10
  !vibrato,5,20,20
  db 16,$47
  !g6
  db 16,$17
  !as6
  !rest
  !g6
  !rest
  db 16,$47
  !as6
  !c7
  db 16,$77
  !f6
  db 16,$47
  !tie
  !as6
  !f6
  !ds6
  !slideIn,3,3,255
  !f6
  !endSlide
  !ds6
  !c6
  !as5
  !as5
  db 16,$17
  !c6
  !rest
  !dynamicVolume,32,110
  db 32,$77
  !as5
  db 24
  !rest
  !endVibrato
  !instr,!instr06
  !pan,5
  !dynamicPan,80,15
  !dynamicVolume,32,155
  !subtranspose,10
  db 16,$57
  !f6
  !e6
  !as5
  !f6
  !e6
  !dynamicPan,24,5
  db 16,$55
  !as5
  db 8,$73
  !f6
  !subtranspose,0
  !instr,!instr01
  !volume,170
  !pan,10
  db 16,$17
  !as6
  !as6
  !rest
  !end

.sub4B86
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr27-!instr23)
  %percNote(!instr23-!instr23)
  !pan,8
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,10
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr27-!instr23)
  !pan,8
  db 16,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  db 16,$74
  %percNote(!instr23-!instr23)
  db 16,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !end

.sub4BD3
  !f3
  db 32
  !rest
  db 16
  !a3
  db 32
  !rest
  db 16
  !ds3
  !f3
  db 16,$49
  !f2
  !rest
  db 16,$47
  !ds3
  !f3
  !c3
  !ds3
  !f3
  !a2
  !end

.sub4BEA
  !pan,8
  !g3
  !pan,12
  !e5
  !pan,8
  !g5
  !pan,12
  !e4
  !pan,8
  !e5
  !pan,12
  !g5
  !pan,8
  !e4
  !pan,12
  !e5
  !pan,8
  !f3
  !pan,12
  !ds5
  !pan,8
  !f5
  !pan,12
  !c4
  !pan,8
  !ds5
  !pan,12
  !f5
  !pan,8
  !c4
  !pan,12
  !ds5
  !pan,8
  !c4
  !pan,12
  !ds5
  !pan,8
  !f5
  !pan,12
  !c5
  !pan,8
  !ds5
  !pan,12
  !f5
  !pan,8
  !ds5
  !pan,12
  !f5
  !end

.sub4C33
  !pan,12
  !c4
  !pan,8
  !as5
  !pan,12
  !as5
  !pan,8
  !g4
  !pan,12
  !a5
  !pan,8
  !as5
  !pan,12
  !g4
  !pan,8
  !g5
  !pan,12
  !c4
  !pan,8
  !a5
  !pan,12
  !a5
  !pan,8
  !f4
  !pan,12
  !a5
  !pan,8
  !a5
  !pan,12
  !f4
  !pan,8
  !a5
  !pan,12
  !f4
  !pan,8
  !a5
  !pan,12
  !a5
  !pan,8
  !a5
  !pan,12
  !a5
  !pan,8
  !a5
  !pan,12
  !g5
  !pan,8
  !a5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
