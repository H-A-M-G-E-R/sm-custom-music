asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr06 = $17
!instr21 = $18
!instr23 = $19
!instr24 = $1A
!instr27 = $1B
!instr28 = $1C
!instr2A = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$07,$00
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$88,$87,$B8,$02,$40
  db !instr2A,$FF,$E0,$B8,$05,$B0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+819
  dw Sample05_06,Sample05_06+216
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample26_27,Sample26_27+1683
  dw Sample28_29,Sample28_29+27
  dw Sample2A,Sample2A+2961
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_daee1fba1349bada3b2b763cd04133f4.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28_29: incbin "Sample_dd4b4e31068add6398abfb06f6e7a0ba.brr"
  Sample2A: incbin "Sample_e53ba613fb166fae8b26e3da095f04c3.brr"

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

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echo,%01111000,34,34
  !echoParameters,3,75,0
  !musicVolume,255
  !tempo,46
  !loop : dw .sub4A28 : db 4
  !end

.pattern0_1
  !volume,240
  !loop : dw .sub4A53 : db 2
  !end

.pattern0_2
  !instr,!instr21
  !volume,220
  db 41,$38
  !f2
  db 31
  !f2
  db 24,$48
  !f2
  db 17
  !rest
  db 16,$38
  !gs2
  db 15
  !rest
  db 17
  !gs2
  db 7,$58
  !gs2
  db 24,$48
  !gs2
  db 41,$37
  !as2
  db 31
  !as2
  db 24,$47
  !as2
  db 17
  !rest
  db 16,$37
  !c3
  db 15
  !rest
  db 17
  !c3
  db 7,$57
  !c3
  db 24,$47
  !c3
  db 41,$38
  !f2
  db 31
  !f2
  db 24,$48
  !f2
  db 17
  !rest
  db 16,$38
  !gs2
  db 15
  !rest
  db 17
  !gs2
  db 7,$58
  !gs2
  db 24,$48
  !gs2
  db 41,$37
  !as2
  db 31
  !as2
  db 24,$47
  !as2
  db 17
  !rest
  db 16,$37
  !c3
  db 15
  !rest
  db 17
  !c3
  db 7,$57
  !c3
  db 17,$47
  !c3
  db 7
  !c3
  !end

.pattern0_3
  !instr,!instr00
  !pan,12
  !volume,155
  db 41,$07
  !gs4
  !pan,8
  db 31
  !gs4
  !pan,12
  db 17,$37
  !gs4
  !pan,8
  db 12,$77
  !c5
  !rest
  !pan,12
  db 7,$57
  !c5
  !pan,8
  db 24,$17
  !c5
  !pan,12
  db 17,$27
  !as4
  !pan,8
  db 7,$57
  !c5
  !pan,12
  db 24,$47
  !c5
  !pan,8
  db 41,$07
  !gs4
  !pan,12
  db 31
  !as4
  !pan,8
  db 24,$37
  !gs4
  db 17
  !rest
  !pan,12
  db 7,$67
  !e4
  !pan,8
  db 24,$17
  !g4
  !pan,12
  db 17,$27
  !d4
  !pan,8
  db 7,$57
  !e4
  !pan,12
  db 24,$47
  !e4
  db 41,$07
  !gs4
  !pan,8
  db 31
  !gs4
  !pan,12
  db 17,$37
  !gs4
  !pan,8
  db 12,$77
  !c5
  !rest
  !pan,12
  db 7,$57
  !c5
  !pan,8
  db 24,$17
  !c5
  !pan,12
  db 17,$27
  !as4
  !pan,8
  db 7,$57
  !c5
  !pan,12
  db 24,$47
  !c5
  !pan,8
  db 41,$07
  !gs4
  !pan,12
  db 31
  !as4
  !pan,8
  db 24,$37
  !gs4
  db 17
  !rest
  !pan,12
  db 7,$67
  !e4
  !pan,8
  db 24,$17
  !g4
  !pan,12
  db 17,$37
  !d4
  !pan,8
  db 7,$67
  !e4
  !pan,12
  db 24,$37
  !e4
  !end

.pattern0_4
  !instr,!instr00
  !pan,9
  !volume,170
  db 41,$07
  !ds5
  !pan,11
  db 31
  !ds5
  !pan,9
  db 17,$37
  !c5
  !pan,11
  db 12,$77
  !f5
  !rest
  !pan,9
  db 7,$57
  !ds5
  !pan,11
  db 24,$17
  !ds5
  !pan,9
  db 17,$27
  !ds5
  !pan,11
  db 7,$57
  !ds5
  !pan,9
  db 24,$47
  !ds5
  !pan,11
  db 41,$07
  !d5
  !pan,9
  db 31
  !d5
  !pan,11
  db 24,$37
  !d5
  db 17
  !rest
  !pan,9
  db 7,$67
  !c5
  !pan,11
  db 24,$17
  !c5
  !pan,9
  db 17,$27
  !as4
  !pan,11
  db 7,$57
  !c5
  !pan,9
  db 24,$47
  !c5
  db 41,$07
  !ds5
  !pan,11
  db 31
  !ds5
  !pan,9
  db 17,$37
  !c5
  !pan,11
  db 12,$77
  !f5
  !rest
  !pan,9
  db 7,$57
  !ds5
  !pan,11
  db 24,$17
  !ds5
  !pan,9
  db 17,$27
  !ds5
  !pan,11
  db 7,$57
  !ds5
  !pan,9
  db 24,$47
  !ds5
  !pan,11
  db 41,$07
  !d5
  !pan,9
  db 31
  !d5
  !pan,11
  db 24,$37
  !d5
  db 17
  !rest
  !pan,9
  db 7,$67
  !c5
  !pan,11
  db 24,$17
  !c5
  !pan,9
  db 17,$37
  !as4
  !pan,11
  db 7,$67
  !c5
  !pan,9
  db 24,$37
  !c5
  !end

.pattern0_5
  !vibrato,20,14,100
  !instr,!instr28
  !volume,150
  !pan,14
  !dynamicPan,96,6
  db 96,$77
  !c6
  !dynamicPan,96,14
  db 48,$78
  !as5
  db 48,$77
  !c6
  !dynamicPan,96,6
  db 96
  !f6
  !dynamicPan,96,14
  db 48
  !as6
  !c7
  !dynamicPan,96,6
  db 96
  !g6
  !dynamicPan,96,14
  db 48,$79
  !as5
  db 48,$78
  !c6
  !dynamicPan,96,6
  db 48,$77
  !f6
  !ds6
  !dynamicPan,96,14
  db 48,$79
  !g5
  db 48,$77
  !ds6
  !end

.pattern0_6
  db 16
  !rest
  !instr,!instr06
  !pan,8
  !volume,135
  db 9,$47
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16,$27
  !f7
  db 9,$47
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16
  !rest
  db 9
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16,$27
  !f7
  db 9,$47
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16
  !rest
  db 9
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16,$27
  !f7
  db 9,$47
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16,$27
  !f7
  db 9,$47
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16,$27
  !f7
  db 8,$47
  !g7
  db 15,$27
  !ds7
  db 8,$47
  !as6
  db 16
  !rest
  db 9
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16,$27
  !f7
  db 9,$47
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16
  !rest
  db 9
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16,$27
  !f7
  db 9,$47
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16
  !rest
  db 9
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16,$27
  !f7
  db 9,$47
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16,$27
  !f7
  db 9,$47
  !c7
  db 15,$27
  !ds7
  db 8,$47
  !c7
  db 16,$27
  !f7
  db 8,$47
  !g7
  db 15,$27
  !ds7
  db 8,$47
  !as6
  db 2
  !rest
  !end

.sub4A28
  !instr,!instr23
  db 24,$77
  !f5
  !f5
  !instr,!instr27
  db 24,$07
  !cs5
  !instr,!instr23
  db 17,$77
  !f5
  db 24
  !f5
  db 7,$76
  !f5
  db 24,$77
  !f5
  !instr,!instr27
  db 17,$07
  !cs5
  !instr,!instr23
  db 7,$76
  !d5
  db 17,$78
  !d5
  !instr,!instr27
  db 7,$75
  !cs5
  !end

.sub4A53
  !pan,12
  !instr,!instr24
  db 16,$74
  !as4
  db 9,$72
  !as4
  db 15,$73
  !as4
  db 8,$72
  !as4
  db 16,$74
  !as4
  db 9,$72
  !as4
  db 15,$73
  !as4
  db 8,$72
  !as4
  db 16,$74
  !as4
  db 9,$72
  !as4
  db 15,$73
  !as4
  db 8,$72
  !as4
  db 16,$74
  !as4
  db 8,$72
  !as4
  !instr,!instr2A
  db 24,$77
  !b4
  !pan,12
  !instr,!instr24
  db 16,$74
  !as4
  db 9,$72
  !as4
  db 15,$73
  !as4
  db 8,$72
  !as4
  db 16,$74
  !as4
  db 9,$72
  !as4
  db 15,$73
  !as4
  db 8,$72
  !as4
  db 16,$74
  !as4
  db 8,$72
  !as4
  !instr,!instr2A
  db 24,$77
  !b4
  !instr,!instr24
  db 16,$74
  !as4
  db 8,$72
  !as4
  !instr,!instr2A
  db 24,$77
  !b4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
