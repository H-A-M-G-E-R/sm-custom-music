asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr04 = $18
!instr10 = $19
!instr1B = $1A
!instr1D = $1B
!instr21 = $1C
!instr23 = $1D
!instr24 = $1E
!instr25 = $1F
!instr27 = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr04,$CF,$F5,$B8,$08,$F0
  db !instr10,$FF,$E0,$B8,$03,$B0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample04,Sample04+1404
  dw Sample10,Sample10+27
  dw Sample1B,Sample1B+1170
  dw Sample1D,Sample1D+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample04: incbin "Sample_ed5604d5b249b89747c4b04479c95eb2.brr"
  Sample10: incbin "Sample_00909a2c7ac12f30a998285388a5259c.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"

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

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !musicVolume,255
  !tempo,46
  !echo,%00011000,30,30
  !echoParameters,4,176,0
  !loop : dw .sub5504 : db 1
  !end

.pattern0_1
  !instr,!instr27
  !volume,215
  !pan,10
  db 24,$36
  !f3
  db 8,$72
  !b4
  db 16,$77
  !b4
  db 8,$72
  !b4
  db 8,$74
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 5,$74
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8
  !b4
  db 8,$77
  !b4
  db 6,$72
  !b4
  db 5,$71
  !b4
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$76
  !b4
  db 16
  !b4
  !volume,210
  !instr,!instr25
  !pan,11
  db 8,$78
  !a4
  !pan,9
  db 5,$76
  !a4
  !a4
  !pan,11
  !a4
  db 5,$74
  !a4
  !pan,9
  db 4,$73
  !a4
  db 7,$78
  !a4
  !pan,11
  db 4,$76
  !a4
  db 5,$74
  !a4
  !end

.pattern0_2
  db 16
  !rest
  !pan,10
  !instr,!instr21
  !volume,160
  db 32,$07
  !d3
  db 16,$47
  !d3
  !a3
  db 32
  !d3
  db 16,$44
  !d4
  !rest
  !volume,180
  db 16,$47
  !g3
  db 16,$48
  !g2
  !g2
  db 16,$47
  !g3
  db 16,$48
  !g2
  db 16,$47
  !g3
  db 16,$48
  !g2
  !end

.pattern0_3
  !vibrato,0,15,20
  !instr,!instr1B
  !volume,110
  !dynamicVolume,90,165
  !pan,8
  db 96,$78
  !a6
  db 16,$67
  !g6
  !a6
  db 16,$66
  !a6
  !pan,12
  !f6
  !pan,8
  !c6
  !pan,12
  !f6
  !pan,8
  db 16,$56
  !b5
  !pan,20
  !b5
  !pan,0
  !b5
  !pan,0
  !b5
  !end

.pattern0_4
  !vibrato,0,15,20
  !instr,!instr1B
  !volume,110
  !dynamicVolume,90,165
  !pan,12
  db 96,$78
  !c7
  db 16,$67
  !b6
  !c7
  db 64
  !d7
  db 16,$57
  !g6
  !pan,20
  db 16,$56
  !g6
  !pan,0
  !g6
  !pan,20
  !g6
  !end

.pattern1_0
  !loop : dw .sub53A1 : db 1
  !loop : dw .sub5477 : db 1
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,0
  db 4
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,20
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$77
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$70
  %percNote(!instr24-!instr23)
  !pan,0
  !instr,!instr25
  db 15,$21
  !gs4
  !loop : dw .sub5504 : db 1
  !end

.pattern1_1
  !pan,10
  !volume,215
  !instr,!instr27
  db 24,$36
  !f3
  db 8,$72
  !b4
  db 16,$77
  !b4
  db 8,$72
  !b4
  db 8,$74
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 5,$74
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  !loop : dw .sub558E : db 3
  db 8
  !b4
  db 8,$77
  !b4
  db 6,$72
  !b4
  db 5,$71
  !b4
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$76
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 4,$71
  !b4
  !b4
  db 8,$77
  !b4
  !end

.pattern1_2
  !pan,10
  !instr,!instr21
  !volume,180
  !loop : dw .sub55ED : db 1
  db 48,$38
  !f2
  db 16,$28
  !f2
  db 16,$17
  !c3
  db 32,$58
  !f2
  db 16,$27
  !c3
  !rest
  db 32,$18
  !g2
  db 16
  !g2
  db 16,$27
  !d3
  db 32,$68
  !g2
  db 16,$27
  !g3
  !loop : dw .sub55ED : db 1
  db 48,$37
  !e3
  db 16,$27
  !e3
  !b2
  db 32,$57
  !e3
  db 16,$27
  !b2
  !rest
  db 16,$26
  !a3
  db 32,$67
  !a2
  db 16,$17
  !a3
  db 32,$67
  !a2
  db 16,$56
  !a3
  !end

.pattern1_3
  !slideIn,0,2,1
  !endVibrato
  !instr,!instr03
  !volume,155
  !pan,10
  db 16,$47
  !e6
  !pan,5
  db 16,$41
  !e6
  !pan,15
  !e6
  !pan,10
  db 16,$47
  !g6
  !pan,5
  db 16,$41
  !g6
  !pan,15
  !g6
  !pan,10
  db 16,$47
  !g6
  !pan,5
  db 16,$41
  !g6
  !pan,10
  db 16,$47
  !c6
  !pan,5
  db 16,$41
  !c6
  !pan,15
  !c6
  !pan,10
  db 16,$47
  !e6
  !pan,5
  db 16,$41
  !e6
  !pan,15
  !e6
  !pan,8
  !endSlide
  !instr,!instr01
  !volume,150
  !vibrato,5,16,45
  db 16,$57
  !g6
  !a6
  db 48,$27
  !c7
  db 48,$37
  !a6
  db 32,$67
  !a6
  !slideIn,0,5,1
  db 48,$37
  !g6
  !endSlide
  !a6
  db 32,$77
  !b6
  !slideIn,0,2,1
  !endVibrato
  !volume,155
  !instr,!instr03
  !pan,10
  db 16,$47
  !e6
  !pan,5
  db 16,$41
  !e6
  !pan,15
  !e6
  !pan,10
  db 16,$47
  !g6
  !pan,5
  db 16,$41
  !g6
  !pan,15
  !g6
  !pan,10
  db 16,$47
  !g6
  !pan,5
  db 16,$41
  !g6
  !pan,10
  db 16,$47
  !c6
  !e6
  !pan,5
  db 16,$41
  !e6
  !pan,10
  db 16,$47
  !e6
  !pan,15
  db 16,$41
  !e6
  !volume,165
  !pan,8
  !vibrato,0,18,20
  !instr,!instr1B
  !endSlide
  db 16,$47
  !g6
  !a6
  !c7
  db 48
  !e7
  !d7
  db 32,$67
  !d7
  db 48,$47
  !cs7
  !d7
  !slideIn,0,5,1
  db 32,$77
  !cs7
  !end

.pattern1_4
  !slideIn,0,2,1
  !endVibrato
  !instr,!instr03
  !volume,165
  !pan,10
  db 16,$47
  !g6
  !pan,5
  db 16,$41
  !g6
  !pan,15
  !g6
  !pan,10
  db 16,$47
  !c7
  !pan,5
  db 16,$41
  !c7
  !pan,15
  !c7
  !pan,10
  db 16,$47
  !b6
  !pan,5
  db 16,$41
  !b6
  !pan,10
  db 16,$47
  !e6
  !pan,5
  db 16,$41
  !e6
  !pan,15
  !e6
  !pan,10
  db 16,$47
  !g6
  !pan,5
  db 16,$41
  !g6
  !pan,15
  !g6
  !pan,12
  !endSlide
  !instr,!instr01
  !volume,150
  !vibrato,5,16,45
  db 16,$57
  !c7
  !d7
  db 48,$27
  !e7
  db 48,$37
  !d7
  db 32,$67
  !c7
  !slideIn,0,5,1
  db 48,$37
  !b6
  !endSlide
  !c7
  db 32,$77
  !d7
  !slideIn,0,2,1
  !endVibrato
  !volume,165
  !instr,!instr03
  !pan,10
  db 16,$47
  !g6
  !pan,5
  db 16,$41
  !g6
  !pan,15
  !g6
  !pan,10
  db 16,$47
  !c7
  !pan,5
  db 16,$41
  !c7
  !pan,15
  !c7
  !pan,10
  db 16,$47
  !b6
  !pan,5
  db 16,$41
  !b6
  !pan,10
  db 16,$47
  !e6
  !a6
  !pan,5
  db 16,$41
  !a6
  !pan,10
  db 16,$47
  !g6
  !pan,15
  db 16,$41
  !g6
  !volume,180
  !vibrato,0,18,20
  !pan,12
  !instr,!instr1B
  !endSlide
  db 16,$47
  !c7
  !d7
  !e7
  db 48,$46
  !a7
  db 48,$47
  !g7
  db 32,$67
  !f7
  db 48,$47
  !e7
  !f7
  !slideIn,0,5,1
  db 32,$77
  !g7
  !end

.pattern2_0
  !loop : dw .sub53A1 : db 1
  !pan,0
  db 4,$70
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,20
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$16
  !d5
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$78
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$70
  %percNote(!instr24-!instr23)
  !pan,20
  !instr,!instr25
  db 15,$21
  !gs4
  !loop : dw .sub53A1 : db 1
  !pan,0
  db 4,$70
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,20
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$16
  !d5
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 17,$78
  !a4
  !pan,9
  db 16,$75
  !f4
  !pan,11
  db 6
  !a4
  db 5,$73
  !a4
  !a4
  !pan,9
  db 15,$75
  !f4
  !end

.pattern2_1
  db 24,$36
  !f3
  db 8,$72
  !b4
  db 16,$77
  !b4
  db 8,$72
  !b4
  db 8,$74
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 5,$74
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  !loop : dw .sub558E : db 3
  db 8
  !b4
  db 8,$77
  !b4
  db 6,$72
  !b4
  db 5,$71
  !b4
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$76
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 4,$71
  !b4
  !b4
  db 8,$77
  !b4
  !end

.pattern2_2
  db 48,$47
  !d3
  db 16,$27
  !d3
  db 16,$57
  !a2
  db 32,$17
  !d3
  db 16,$37
  !a2
  !rest
  db 16,$47
  !f3
  !f3
  !f3
  !c3
  !c3
  !c3
  !f3
  db 48
  !c3
  db 16
  !c3
  db 16,$48
  !g2
  db 32,$17
  !c3
  db 16,$28
  !g2
  !rest
  db 16,$47
  !a2
  !a2
  !a2
  !e3
  db 32
  !a2
  db 16
  !e3
  db 48
  !d3
  db 16,$27
  !d3
  db 16,$57
  !a2
  db 32,$17
  !d3
  db 16,$37
  !a2
  !rest
  db 16,$48
  !g2
  db 16,$47
  !g3
  db 16,$48
  !g2
  db 16,$47
  !g3
  db 32,$68
  !g2
  db 16,$47
  !d3
  !rest
  db 32,$17
  !c3
  db 16,$27
  !c3
  db 32,$58
  !g2
  db 16,$47
  !c3
  db 16,$48
  !g2
  !rest
  db 16,$47
  !a2
  !a2
  !a2
  !a3
  !a2
  !a3
  !a2
  !end

.pattern2_3
  !endSlide
  !instr,!instr04
  !endVibrato
  !volume,145
  db 16
  !rest
  !pan,12
  db 16,$07
  !c5
  !pan,8
  !f5
  !pan,12
  !c5
  !pan,4
  !a5
  !pan,16
  !d5
  !pan,8
  !f5
  !pan,12
  !c5
  !rest
  !pan,12
  !c5
  !pan,8
  !ds5
  !pan,12
  !c5
  !pan,4
  !gs5
  !pan,16
  !c5
  !pan,8
  !ds5
  !pan,12
  !c5
  !rest
  !pan,12
  !a4
  !pan,8
  !e5
  !pan,12
  !c5
  !pan,4
  !g5
  !pan,16
  !c5
  !pan,8
  !e5
  !pan,12
  !a4
  !rest
  !pan,12
  !a4
  !pan,8
  !e5
  !pan,12
  !c5
  !pan,4
  !g5
  !pan,16
  !c5
  !pan,8
  !e5
  !pan,12
  !c5
  !rest
  !pan,12
  !d5
  !pan,8
  !f5
  !pan,12
  !d5
  !pan,4
  !a5
  !pan,16
  !d5
  !pan,8
  !f5
  !pan,12
  !c5
  !rest
  !pan,12
  !d5
  !pan,8
  !f5
  !pan,12
  !d5
  !pan,4
  !a5
  !pan,16
  !d5
  !pan,8
  !f5
  !pan,12
  !d5
  !rest
  !pan,12
  !c5
  !pan,8
  !e5
  !pan,12
  !c5
  !pan,4
  !g5
  !pan,16
  !c5
  !pan,8
  !e5
  !pan,12
  !c5
  !rest
  !pan,11
  !instr,!instr1B
  !volume,175
  !slideIn,0,3,2
  !vibrato,6,10,50
  db 16,$57
  !cs6
  !e6
  db 16,$47
  !e6
  !g6
  db 16,$37
  !a6
  !cs7
  !e7
  !end

.pattern2_4
  !pan,10
  !instr,!instr1B
  !volume,185
  !slideIn,0,3,2
  !vibrato,6,10,50
  !pan,10
  db 16,$37
  !e7
  db 32
  !c7
  !c7
  db 16
  !a6
  db 16,$27
  !c7
  !d7
  db 16,$37
  !ds7
  db 32
  !c7
  !c7
  db 16,$27
  !gs6
  db 16,$37
  !c7
  !gs6
  !g6
  db 32,$17
  !a6
  db 32,$37
  !c7
  db 16
  !d7
  !e7
  !c7
  !g7
  db 32,$17
  !e7
  db 32,$46
  !e7
  db 16,$57
  !c7
  db 16,$26
  !d7
  !c7
  db 16,$37
  !e7
  db 32,$16
  !a7
  db 16,$26
  !e7
  db 32,$36
  !a7
  db 16,$33
  !e7
  db 16,$72
  !a7
  !rest
  db 16,$33
  !e7
  db 32,$16
  !a7
  db 16,$2B
  !e7
  db 16,$37
  !a7
  !d7
  !c7
  db 16,$27
  !e7
  db 32,$17
  !a6
  db 32,$37
  !e7
  db 16,$17
  !a6
  db 16,$57
  !g6
  !e6
  !rest
  !e6
  !g6
  db 16,$47
  !a6
  !cs7
  db 16,$37
  !d7
  !e7
  !g7
  !end

.pattern3_0
  !loop : dw .sub53A1 : db 1
  !loop : dw .sub5477 : db 1
  !loop : dw .sub560A : db 1
  !loop : dw .sub5477 : db 1
  !loop : dw .sub560A : db 1
  !loop : dw .sub5477 : db 1
  !loop : dw .sub560A : db 1
  !pan,0
  db 4,$70
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,20
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$16
  !d5
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$78
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$70
  %percNote(!instr24-!instr23)
  !pan,20
  !instr,!instr25
  db 15,$23
  !gs4
  !end

.pattern3_1
  db 24,$36
  !f3
  db 8,$72
  !b4
  db 16,$77
  !b4
  db 8,$72
  !b4
  db 8,$74
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 5,$74
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  !loop : dw .sub558E : db 7
  db 8
  !b4
  db 8,$77
  !b4
  db 6,$72
  !b4
  db 5,$71
  !b4
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$76
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 4,$71
  !b4
  !b4
  db 8,$77
  !b4
  !end

.pattern3_2
  !loop : dw .sub5698 : db 1
  db 48
  !ds3
  db 16
  !ds3
  !a2
  !a2
  !ds3
  !a2
  !rest
  !ds3
  !ds3
  !ds3
  !a2
  !a2
  !ds3
  !fs3
  db 48
  !g3
  db 16
  !g3
  !d3
  db 32,$17
  !d3
  db 16,$47
  !d3
  !rest
  db 32,$17
  !g3
  db 16,$47
  !g3
  db 32,$67
  !d3
  db 16,$47
  !g3
  !d3
  db 48
  !e3
  db 16
  !e3
  !b2
  db 32
  !e3
  db 16
  !b2
  !rest
  !e3
  !e3
  !e3
  !b2
  !b2
  !e3
  !b2
  db 32,$67
  !a2
  db 16,$47
  !a2
  !a2
  !e3
  !a2
  !a2
  !e3
  !a2
  !a2
  !e3
  !a2
  db 32,$67
  !e3
  db 16,$47
  !a2
  !e3
  db 32,$67
  !d3
  db 16,$47
  !d3
  !d3
  !a2
  !a2
  !d3
  !a2
  !rest
  db 32,$17
  !g3
  db 16,$47
  !g3
  !d3
  !d3
  !g3
  !d3
  db 48
  !c3
  db 16
  !c3
  db 32,$48
  !g2
  db 16,$47
  !c3
  db 16,$48
  !g2
  !rest
  db 16,$47
  !c3
  !c3
  !c3
  db 32,$48
  !g2
  db 16,$47
  !c3
  db 16,$48
  !g2
  db 32,$57
  !a2
  db 16,$47
  !a2
  !a2
  !e3
  !a2
  !a2
  !e3
  !a2
  !a2
  !e3
  !a2
  db 32
  !e3
  db 16
  !a2
  !a3
  !end

.pattern3_3
  !instr,!instr01
  !volume,160
  !pan,8
  !slideIn,0,8,1
  db 16,$57
  !c6
  !endSlide
  db 32,$17
  !a5
  !a5
  db 48
  !rest
  db 16
  !rest
  !instr,!instr1D
  !volume,125
  db 16,$57
  !c4
  !f4
  !c4
  db 32,$67
  !f4
  db 16,$57
  !c4
  !f4
  !instr,!instr01
  !volume,160
  !slideIn,0,8,1
  !c6
  !endSlide
  db 32,$17
  !a5
  db 16,$57
  !a5
  !pan,20
  db 21,$41
  !a5
  !a5
  db 22,$41
  !a5
  db 16
  !rest
  !pan,8
  !instr,!instr1D
  !volume,125
  db 16,$57
  !ds4
  !fs4
  !ds4
  db 32,$67
  !fs4
  db 16,$57
  !ds4
  !fs4
  !instr,!instr1B
  !volume,185
  !slideIn,0,7,1
  db 16,$37
  !d6
  !endSlide
  db 32,$07
  !b5
  !b5
  db 48
  !rest
  db 16
  !rest
  !instr,!instr1D
  !volume,125
  db 16,$57
  !fs4
  !b4
  !fs4
  db 32,$67
  !b4
  db 16,$57
  !fs4
  !d4
  db 48,$67
  !e4
  db 16,$57
  !e4
  db 32,$67
  !e4
  db 16,$57
  !fs4
  !e4
  !rest
  db 32,$67
  !e4
  db 16,$57
  !e4
  db 32,$67
  !e4
  !b3
  db 40
  !rest
  !subtranspose,50
  !instr,!instr10
  !vibrato,5,9,50
  !volume,90
  !pan,0
  !dynamicPan,128,20
  db 16
  !g5
  db 32,$17
  !c6
  db 32,$67
  !g5
  db 16
  !b5
  !c6
  !d6
  !dynamicPan,128,0
  !e6
  db 32,$17
  !g6
  db 32,$67
  !e6
  db 16
  !d6
  !c6
  !d6
  !dynamicPan,128,20
  !e6
  db 32,$17
  !a5
  db 32,$67
  !e6
  db 16
  !b5
  !c6
  !d6
  !dynamicPan,128,0
  !e6
  db 32,$17
  !g6
  db 32,$67
  !e6
  db 16
  !g6
  !a6
  !c7
  !dynamicPan,128,20
  !d7
  db 32,$16
  !e7
  db 16,$76
  !e7
  db 16,$67
  !d7
  db 32,$16
  !e7
  db 16,$76
  !e7
  !dynamicPan,87,0
  !dynamicVolume,87,50
  db 16,$67
  !d7
  db 32,$16
  !e7
  db 16,$76
  !e7
  db 16,$67
  !d7
  db 8,$76
  !e7
  !pan,12
  !subtranspose,0
  !instr,!instr1D
  !volume,60
  !dynamicVolume,70,115
  !vibrato,0,15,70
  db 96,$77
  !a5
  db 16
  !a5
  !a5
  db 64
  !g5
  !cs5
  !end

.pattern3_4
  !instr,!instr01
  !volume,160
  !pan,12
  !slideIn,0,8,1
  db 16,$57
  !e6
  !endSlide
  db 32,$17
  !c6
  !c6
  db 48
  !rest
  db 16
  !rest
  !instr,!instr1D
  !volume,125
  db 16,$57
  !f4
  !a4
  !f4
  db 32,$67
  !a4
  db 16,$57
  !f4
  !a4
  !instr,!instr01
  !volume,160
  !slideIn,0,8,1
  !ds6
  !endSlide
  db 32,$17
  !c6
  db 16,$57
  !c6
  !pan,0
  db 21,$41
  !c6
  !c6
  db 22,$41
  !c6
  db 16
  !rest
  !pan,12
  !instr,!instr1D
  !volume,125
  db 16,$57
  !fs4
  !a4
  !fs4
  db 32,$67
  !a4
  db 16,$57
  !fs4
  !a4
  !instr,!instr1B
  !volume,175
  !slideIn,0,7,1
  db 16,$37
  !fs7
  !endSlide
  db 32,$07
  !d7
  !d7
  db 48
  !rest
  db 16
  !rest
  !instr,!instr1D
  !volume,125
  db 16,$57
  !b4
  !d5
  !b4
  db 32,$67
  !d5
  db 16,$57
  !b4
  !fs4
  db 48,$67
  !a4
  db 16,$57
  !a4
  db 32,$67
  !a4
  db 16,$57
  !b4
  !a4
  !rest
  db 32,$67
  !gs4
  db 16,$57
  !a4
  db 32,$67
  !gs4
  !e4
  !instr,!instr10
  !vibrato,5,9,50
  !volume,140
  !pan,10
  db 16
  !g5
  db 32,$17
  !c6
  db 32,$67
  !g5
  db 16
  !b5
  !c6
  !d6
  !e6
  db 32,$17
  !g6
  db 32,$67
  !e6
  db 16
  !d6
  !c6
  !d6
  !e6
  db 32,$17
  !a5
  db 32,$67
  !e6
  db 16
  !b5
  !c6
  !d6
  !e6
  db 32,$17
  !g6
  db 32,$67
  !e6
  db 16
  !g6
  !a6
  !c7
  !d7
  db 32,$16
  !e7
  db 80,$76
  !e7
  !dynamicVolume,128,50
  db 64
  !tie
  !tie
  !pan,8
  !instr,!instr1D
  !volume,60
  !dynamicVolume,70,115
  !vibrato,0,15,70
  db 96,$77
  !d6
  db 16
  !e6
  !d6
  db 64
  !cs6
  !a5
  !end

.pattern4_0
  !loop : dw .sub53A1 : db 1
  !loop : dw .sub5477 : db 1
  !loop : dw .sub560A : db 1
  !pan,0
  db 4,$70
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,20
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$16
  !d5
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$78
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$70
  %percNote(!instr24-!instr23)
  !pan,20
  !instr,!instr25
  db 15,$23
  !gs4
  !end

.pattern4_1
  db 24,$36
  !f3
  db 8,$72
  !b4
  db 16,$77
  !b4
  db 8,$72
  !b4
  db 8,$74
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 5,$74
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  !loop : dw .sub558E : db 3
  db 8
  !b4
  db 8,$77
  !b4
  db 6,$72
  !b4
  db 5,$71
  !b4
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$76
  !b4
  db 16
  !b4
  !volume,210
  !instr,!instr25
  !pan,11
  db 8,$78
  !a4
  !pan,9
  db 5,$76
  !a4
  !a4
  !pan,11
  !a4
  db 5,$74
  !a4
  !pan,9
  db 4,$73
  !a4
  db 7,$78
  !a4
  !pan,11
  db 4,$76
  !a4
  db 5,$74
  !a4
  !end

.pattern4_2
  !loop : dw .sub5698 : db 1
  db 48,$48
  !g2
  db 16
  !g2
  db 16,$47
  !d3
  db 16,$48
  !g2
  !g2
  db 16,$47
  !d3
  !rest
  db 16,$48
  !g2
  db 16,$47
  !d3
  db 16,$48
  !g2
  db 16,$47
  !g3
  db 16,$48
  !g2
  db 16,$47
  !g3
  db 16,$48
  !g2
  db 48,$47
  !c3
  db 16
  !c3
  db 16,$48
  !g2
  db 32,$18
  !g2
  db 16,$47
  !g2
  !rest
  db 32,$17
  !c3
  db 16,$47
  !c3
  db 32,$68
  !g2
  db 16,$47
  !c3
  !g2
  db 48
  !d3
  db 16
  !d3
  !a3
  db 32
  !d3
  db 16
  !a3
  db 16,$48
  !g2
  db 16,$47
  !d3
  db 16,$48
  !g2
  !g2
  db 32,$47
  !g3
  db 16,$48
  !g2
  db 16,$47
  !g3
  !end

.pattern4_3
  !instr,!instr01
  !volume,135
  !vibrato,7,17,30
  !slideIn,0,4,1
  !pan,0
  db 48,$27
  !d6
  !pan,20
  !c6
  !pan,0
  db 32,$37
  !a5
  !pan,20
  db 48,$27
  !a5
  !pan,0
  !a5
  !pan,20
  !slideIn,0,8,1
  db 32,$77
  !c6
  !endSlide
  !pan,0
  !b5
  !instr,!instr21
  !volume,135
  !vibrato,0,20,200
  !pan,20
  db 24,$71
  !b6
  !pan,0
  !b6
  !pan,20
  db 24,$70
  !b6
  !pan,0
  !b6
  !instr,!instr1B
  !volume,155
  !vibrato,7,17,30
  !slideIn,0,7,1
  !pan,20
  db 48,$77
  !g5
  !pan,0
  !b5
  !pan,20
  db 32
  !ds6
  !slideIn,0,30,1
  !pan,8
  db 64
  !b5
  !dynamicVolume,64,60
  !tie
  !endSlide
  !volume,110
  !instr,!instr03
  !vibrato,20,11,100
  !pan,8
  db 24,$78
  !d7
  !pan,12
  db 24,$76
  !d7
  !pan,0
  db 24,$73
  !d7
  !pan,20
  db 24,$71
  !d7
  !pan,5
  db 32,$70
  !d7
  !instr,!instr21
  !volume,60
  !dynamicVolume,90,125
  !pan,8
  db 96,$77
  !a5
  db 16
  !g5
  !a5
  db 16,$76
  !a5
  !pan,12
  !f5
  !pan,8
  !c5
  !pan,12
  !f5
  !pan,8
  db 16,$77
  !b4
  !pan,20
  db 16,$66
  !b4
  !pan,0
  !b4
  !pan,0
  !b4
  !end

.pattern4_4
  !instr,!instr01
  !volume,150
  !pan,10
  !vibrato,7,17,30
  !slideIn,0,4,1
  db 48,$27
  !f6
  !e6
  db 32,$37
  !d6
  db 48,$27
  !c6
  !d6
  !slideIn,0,8,1
  db 32,$77
  !e6
  !endSlide
  !d6
  !vibrato,0,14,200
  !instr,!instr21
  !volume,135
  !pan,20
  db 24,$71
  !g6
  !pan,0
  !g6
  !pan,20
  db 24,$70
  !g6
  !pan,0
  !g6
  !instr,!instr1B
  !volume,155
  !vibrato,7,17,30
  !pan,10
  !slideIn,0,7,1
  db 48,$77
  !b5
  !ds6
  db 32
  !gs6
  !slideIn,0,30,1
  db 64
  !g6
  !dynamicVolume,64,60
  !tie
  !endSlide
  !volume,110
  !instr,!instr03
  !vibrato,20,11,100
  !pan,8
  db 24,$78
  !b7
  !pan,12
  db 24,$76
  !b7
  !pan,0
  db 24,$73
  !b7
  !pan,20
  db 24,$71
  !b7
  !pan,5
  db 32,$70
  !b7
  !instr,!instr21
  !volume,60
  !dynamicVolume,90,125
  !pan,12
  db 96,$77
  !c6
  db 16
  !b5
  !c6
  db 64
  !d6
  db 16
  !g5
  !pan,20
  db 16,$66
  !g5
  !pan,0
  !g5
  !pan,20
  !g5
  !end

.sub5504
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$77
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$23
  !gs4
  !pan,0
  db 4,$70
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,20
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$16
  !d5
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$78
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$70
  %percNote(!instr24-!instr23)
  !pan,20
  !instr,!instr25
  db 15,$23
  !gs4
  !end

.sub53A1
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$77
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,0
  db 4
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,20
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$77
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$70
  %percNote(!instr24-!instr23)
  !pan,0
  !instr,!instr25
  db 15,$23
  !gs4
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$77
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$23
  !gs4
  !end

.sub5477
  !pan,0
  db 4,$70
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,20
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$16
  !d5
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$78
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$70
  %percNote(!instr24-!instr23)
  !pan,20
  !instr,!instr25
  db 15,$23
  !gs4
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$77
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !end

.sub558E
  db 8
  !b4
  db 8,$77
  !b4
  db 6,$72
  !b4
  db 5,$71
  !b4
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$76
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 4,$71
  !b4
  !b4
  db 8,$77
  !b4
  db 24,$36
  !f3
  db 8,$72
  !b4
  db 16,$77
  !b4
  db 8,$72
  !b4
  db 8,$74
  !b4
  db 8,$71
  !b4
  db 8,$77
  !b4
  db 5,$72
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  db 8,$77
  !b4
  db 8,$72
  !b4
  db 5,$74
  !b4
  db 6,$71
  !b4
  db 5
  !b4
  !end

.sub55ED
  db 48,$47
  !c3
  db 16,$27
  !c3
  db 48,$48
  !g2
  db 16,$28
  !g2
  !rest
  db 32,$17
  !c3
  db 16,$27
  !c3
  db 32,$78
  !g2
  db 16,$57
  !c3
  db 16,$58
  !g2
  !end

.sub560A
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,0
  db 4
  %percNote(!instr24-!instr23)
  !pan,8
  %percNote(!instr24-!instr23)
  !pan,12
  %percNote(!instr24-!instr23)
  !pan,20
  %percNote(!instr24-!instr23)
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,8
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$77
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$70
  %percNote(!instr24-!instr23)
  !pan,0
  !instr,!instr25
  db 15,$23
  !gs4
  !pan,10
  db 16,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$77
  !gs4
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,12
  db 8,$71
  %percNote(!instr24-!instr23)
  !pan,8
  db 8,$70
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 16,$23
  !gs4
  !end

.sub5698
  db 48,$47
  !d3
  db 16
  !d3
  db 48
  !a2
  db 16
  !a2
  !rest
  db 32,$17
  !d3
  db 16,$27
  !d3
  db 32,$57
  !a2
  db 16,$47
  !d3
  !a2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
