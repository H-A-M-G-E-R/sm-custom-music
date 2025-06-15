asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr1D = $17
!instr21 = $18
!instr23 = $19
!instr27 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample1D,Sample1D+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !transpose,2
  !echo,%00011100,35,35
  !echoParameters,4,50,0
  !pan,10
  !volume,255
  !musicVolume,255
  !tempo,46
  !loop : dw .sub49DA : db 3
  db 8,$78
  %percNote(!instr23-!instr23)
  db 7,$71
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr27-!instr23)
  db 7,$72
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr23-!instr23)
  db 7,$71
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr27-!instr23)
  db 7,$72
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr23-!instr23)
  db 7,$71
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr27-!instr23)
  db 7,$72
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr27-!instr23)
  db 7,$73
  %percNote(!instr27-!instr23)
  db 5,$78
  %percNote(!instr27-!instr23)
  db 5,$72
  %percNote(!instr27-!instr23)
  %percNote(!instr27-!instr23)
  !end

.pattern0_1
  !volume,190
  !instr,!instr21
  db 23,$68
  !as2
  db 7,$57
  !as2
  db 8,$56
  !as3
  db 15,$47
  !as2
  db 7,$56
  !as3
  db 15,$29
  !f2
  db 23,$49
  !f2
  db 15,$47
  !c3
  db 7,$59
  !f2
  db 15,$2B
  !ds2
  db 15,$4B
  !ds2
  db 8,$58
  !ds3
  db 15,$4B
  !ds2
  db 7,$56
  !ds3
  db 23,$59
  !f2
  db 7
  !f2
  db 8,$57
  !f3
  db 15,$49
  !f2
  db 7,$57
  !f3
  db 15,$28
  !as2
  db 15,$46
  !as3
  db 8,$57
  !as2
  db 15,$46
  !as3
  db 7,$57
  !as2
  db 15,$28
  !as2
  db 15,$46
  !as3
  db 8,$57
  !as2
  db 15,$46
  !as3
  db 7,$57
  !as2
  db 15,$2B
  !ds2
  db 15,$4B
  !ds2
  db 8,$57
  !ds3
  db 15,$4B
  !ds2
  db 7,$57
  !ds3
  db 8,$5B
  !ds2
  db 7,$57
  !ds3
  db 15,$6B
  !ds2
  db 8,$67
  !ds3
  db 15,$7B
  !ds2
  db 7,$57
  !ds3
  !end

.pattern0_2
  !instr,!instr1D
  !volume,125
  !pan,12
  db 8,$57
  !f5
  db 7
  !as5
  db 8
  !f5
  db 7
  !as5
  db 8
  !f5
  db 7
  !as5
  db 8
  !f5
  db 7
  !as5
  db 8
  !a5
  db 7
  !c6
  db 8
  !a5
  db 7
  !c6
  db 8
  !c5
  db 7
  !f5
  db 8
  !c5
  db 7
  !f5
  db 8
  !as5
  db 7
  !d6
  db 8
  !as5
  db 7
  !d6
  db 8
  !g5
  db 7
  !as5
  db 8
  !as5
  db 7
  !d6
  db 8
  !a5
  db 7
  !c6
  db 8
  !a5
  db 7
  !c6
  db 8
  !c5
  db 7
  !f5
  db 8
  !c5
  db 7
  !f5
  db 8,$58
  !f6
  db 7,$56
  !d6
  db 8,$55
  !d6
  db 7
  !f6
  db 8,$58
  !d6
  db 7,$56
  !d6
  db 8,$55
  !as5
  db 7
  !d6
  db 8,$58
  !d6
  db 7,$56
  !as5
  db 8,$55
  !as5
  db 7
  !as5
  db 8,$58
  !d6
  db 7,$56
  !as5
  db 8,$55
  !as5
  db 7
  !d6
  db 8,$57
  !g5
  db 7
  !as5
  db 8
  !g5
  db 7
  !as5
  db 8
  !g5
  db 7
  !as5
  db 8
  !g5
  db 7
  !as5
  db 8,$59
  !g5
  db 7,$69
  !ds5
  db 8
  !g5
  db 7
  !as5
  db 8,$68
  !g5
  db 7
  !as5
  db 8
  !cs6
  db 7
  !f6
  !end

.pattern0_3
  !vibrato,0,20,17
  !endSlide
  !instr,!instr01
  !volume,165
  !pan,8
  db 19,$57
  !d6
  !pan,0
  db 19,$51
  !d6
  !pan,8
  db 15,$56
  !d6
  db 7,$66
  !d6
  db 15,$77
  !f6
  !pan,0
  db 15,$71
  !f6
  !pan,8
  db 15,$76
  !a5
  !pan,0
  db 15,$71
  !a5
  !pan,8
  db 15,$27
  !ds6
  db 15,$56
  !ds6
  !pan,0
  db 8,$51
  !ds6
  !pan,8
  db 15,$56
  !ds6
  db 7,$66
  !ds6
  db 15,$77
  !f6
  !pan,0
  db 15,$71
  !f6
  !pan,8
  db 15,$76
  !a5
  !pan,0
  db 15,$71
  !a5
  !pan,8
  db 8,$68
  !a6
  db 7,$66
  !g6
  db 8
  !f6
  db 7
  !a6
  db 8,$68
  !g6
  db 7,$66
  !f6
  db 8
  !d6
  db 7
  !g6
  db 8,$68
  !f6
  db 7,$66
  !d6
  db 8
  !d6
  db 7
  !f6
  db 8,$68
  !d6
  db 7,$66
  !d6
  db 8
  !d6
  db 7
  !f6
  db 20,$67
  !cs6
  !pan,0
  db 20,$41
  !cs6
  !cs6
  !slideIn,0,3,1
  !pan,8
  db 20,$66
  !cs7
  !pan,0
  db 20,$41
  !cs7
  !cs7
  !end

.pattern0_4
  !vibrato,0,25,17
  !endSlide
  !instr,!instr01
  !volume,180
  !pan,10
  db 19,$57
  !g6
  !pan,20
  db 19,$50
  !g6
  !pan,10
  db 15,$56
  !f6
  db 7,$66
  !g6
  db 15,$77
  !a6
  !pan,20
  db 15,$70
  !a6
  !pan,10
  db 15,$76
  !c6
  !pan,20
  db 15,$70
  !c6
  !pan,10
  db 15,$27
  !g6
  db 15,$56
  !g6
  !pan,20
  db 8,$50
  !g6
  !pan,10
  db 15,$56
  !f6
  db 7,$66
  !g6
  db 15,$77
  !a6
  !pan,20
  db 15,$70
  !a6
  !pan,10
  db 15,$76
  !c6
  !pan,20
  db 15,$70
  !c6
  !pan,10
  db 8,$68
  !c7
  db 7,$66
  !as6
  db 8
  !a6
  db 7
  !c7
  db 8,$68
  !as6
  db 7,$66
  !a6
  db 8
  !g6
  db 7
  !as6
  db 8,$68
  !a6
  db 7,$66
  !g6
  db 8
  !f6
  db 7
  !a6
  db 8,$68
  !g6
  db 7,$66
  !f6
  db 8
  !g6
  db 7
  !a6
  db 20,$67
  !f6
  !pan,20
  db 20,$40
  !f6
  !f6
  !slideIn,0,3,1
  !pan,10
  db 20,$66
  !f7
  !pan,20
  db 20,$40
  !f7
  !f7
  !end

.sub49DA
  db 8,$78
  %percNote(!instr23-!instr23)
  db 7,$71
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr27-!instr23)
  db 7,$72
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr23-!instr23)
  db 7,$71
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr27-!instr23)
  db 7,$72
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr23-!instr23)
  db 7,$71
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr27-!instr23)
  db 7,$72
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr23-!instr23)
  db 7,$71
  %percNote(!instr27-!instr23)
  db 8,$78
  %percNote(!instr27-!instr23)
  db 7,$72
  %percNote(!instr27-!instr23)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
