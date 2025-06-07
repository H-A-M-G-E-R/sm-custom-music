asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr09 = $16
!instr22 = $17
!instr26 = $18
!instr27 = $19
!instr31 = $1A
!instr32 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr09,$8F,$F2,$B8,$01,$00
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr27,$8F,$E0,$B8,$03,$00
  db !instr31,$FF,$F0,$B8,$03,$D0
  db !instr32,$84,$AC,$B8,$09,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample08_09,Sample08_09+90
  dw Sample22,Sample22+315
  dw Sample26,Sample26+27
  dw Sample27,Sample27+45
  dw Sample31,Sample31+2556
  dw Sample32,Sample32+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample27: incbin "Sample_55365c24760b7ccb8bdcacbb9417c216.brr"
  Sample31: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample32: incbin "Sample_c07df7c89050e0a944054b1c016a6902.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,255
  !tempo,51
  !echo,%00011111,53,53
  !echoParameters,5,85,0
  !instr,!instr26
  !volume,190
  db 72,$73
  !as3
  !tie
  !loop : dw .sub5621 : db 1
  db 72,$76
  !g3
  !tie
  !tie
  !tie
  !f3
  !tie
  !tie
  !tie
  db 72,$73
  !as3
  !tie
  !loop : dw .sub5621 : db 1
  db 72,$78
  !fs3
  !tie
  !tie
  !tie
  db 72,$76
  !f3
  !tie
  !tie
  !tie
  !end

.pattern0_1
  !loop : dw .sub562A : db 1
  db 68
  !tie
  db 76,$79
  !f4

.pattern0_2
  !loop : dw .sub566F : db 1
  !loop : dw .sub569E : db 2
  !loop : dw .sub56B3 : db 1
  !loop : dw .sub5748 : db 2

.pattern0_3
  !loop : dw .sub575D : db 1
  !loop : dw .sub577E : db 2
  !loop : dw .sub578B : db 1
  !loop : dw .sub57BA : db 2
  !loop : dw .sub57C7 : db 1
  db 36,$08
  !e5
  db 36,$06
  !a5
  db 36,$05
  !c6
  db 35
  !e6

.pattern0_4
  db 2
  !rest
  !instr,!instr09
  !volume,130
  !pan,12
  db 36,$08
  !as5
  db 36,$06
  !f6
  db 36,$05
  !g6
  db 36,$06
  !f6
  db 36,$08
  !as5
  db 36,$06
  !f6
  db 36,$05
  !g6
  db 36,$06
  !f6
  !loop : dw .sub5804 : db 2
  !loop : dw .sub5811 : db 1
  !loop : dw .sub584C : db 1
  !loop : dw .sub5865 : db 1
  db 36,$08
  !a5
  db 36,$06
  !c6
  db 36,$05
  !e6
  db 34
  !g6

.pattern1_0
  !instr,!instr26
  !volume,190
  db 72,$73
  !as3
  !tie
  !loop : dw .sub5621 : db 1
  db 72,$76
  !g3
  !tie
  !tie
  !tie
  !f3
  !tie
  !tie
  !tie
  db 72,$73
  !as3
  !tie
  !loop : dw .sub5621 : db 1
  db 72,$78
  !fs3
  !tie
  !tie
  !tie
  db 72,$76
  !f3
  !tie
  db 72,$78
  !ds3
  !dynamicEcho,71,34,34
  !tie
  !end

.pattern1_1
  !loop : dw .sub562A : db 1
  db 72,$72
  !g4
  !tie

.pattern1_2
  !loop : dw .sub566F : db 1
  !loop : dw .sub569E : db 2
  !loop : dw .sub56B3 : db 1
  !f3
  !c4
  db 18,$04
  !g4
  db 18,$06
  !c4
  db 18,$04
  !a4
  db 18,$06
  !c4
  db 18,$04
  !f4
  db 18,$06
  !c4
  !ds3
  !as3
  db 18,$04
  !ds4
  db 18,$06
  !as3
  db 18,$03
  !f4
  db 18,$05
  !as3
  db 18,$03
  !ds4
  db 18,$04
  !as3

.pattern1_3
  !loop : dw .sub575D : db 1
  !loop : dw .sub577E : db 2
  !loop : dw .sub578B : db 1
  !loop : dw .sub57BA : db 2
  !loop : dw .sub57C7 : db 1
  db 36,$08
  !ds5
  db 36,$05
  !g5
  db 36,$04
  !as5
  db 35,$03
  !g5

.pattern1_4
  db 2
  !rest
  !instr,!instr09
  !volume,130
  !pan,12
  db 36,$08
  !as5
  db 36,$06
  !f6
  db 36,$05
  !g6
  db 36,$06
  !f6
  !loop : dw .sub584C : db 1
  db 36,$08
  !a5
  db 36,$06
  !e6
  db 36,$05
  !g6
  db 36,$06
  !e6
  !loop : dw .sub5811 : db 1
  !loop : dw .sub584C : db 1
  !loop : dw .sub5865 : db 1
  db 36,$08
  !g5
  db 36,$05
  !as5
  db 36,$04
  !d6
  db 34,$03
  !as5

.pattern2_0
  !pan,20
  !instr,!instr27
  !volume,145
  db 18,$58
  !gs3
  !ds4
  !g4
  db 18,$57
  !gs4
  !volume,165
  db 18,$58
  !gs3
  !ds4
  !g4
  db 18,$57
  !gs4
  !loop : dw .sub5896 : db 1
  !volume,193
  !as3
  !f4
  !volume,176
  db 18,$55
  !c5
  db 18,$58
  !f4
  !volume,165
  !as3
  !f4
  !volume,154
  db 18,$57
  !a4
  db 18,$56
  !as4
  !end

.pattern2_1
  !subtranspose,10
  db 9
  !rest
  !pan,0
  !instr,!instr27
  !volume,145
  db 18,$56
  !gs3
  !ds4
  !g4
  db 18,$55
  !gs4
  !volume,165
  db 18,$56
  !gs3
  !ds4
  !g4
  db 18,$55
  !gs4
  !loop : dw .sub5896 : db 1
  !volume,193
  !as3
  !f4
  !volume,176
  db 18,$55
  !c5
  db 18,$58
  !f4
  !volume,165
  !as3
  !f4
  !volume,154
  db 18,$57
  !a4
  db 9,$76
  !as4

.pattern2_2
  db 2
  !rest
  !instr,!instr31
  !volume,80
  !pan,13
  db 18,$58
  !g5
  db 18,$53
  !g5
  db 18,$58
  !ds5
  db 18,$53
  !ds5
  !volume,99
  !ds5
  !ds5
  db 18,$58
  !g5
  db 18,$53
  !g5
  !volume,110
  db 18,$58
  !ds5
  db 18,$53
  !ds5
  !volume,121
  !ds5
  !ds5
  db 18,$58
  !g5
  !volume,127
  db 18,$53
  !g5
  db 18,$58
  !ds5
  db 18,$53
  !ds5
  !volume,138
  db 18,$56
  !ds5
  db 18,$53
  !ds5
  db 18,$59
  !ds5
  db 18,$53
  !ds5
  db 18,$59
  !c5
  !volume,138
  db 18,$53
  !c5
  db 18,$57
  !c5
  db 18,$53
  !c5
  !volume,165
  db 18,$58
  !ds5
  db 18,$53
  !ds5
  db 18,$58
  !c5
  db 18,$53
  !c5
  !volume,138
  db 18,$57
  !c5
  db 18,$53
  !c5
  !volume,121
  db 18,$58
  !ds5
  db 18,$53
  !c5
  !volume,94
  db 18,$58
  !a5
  db 18,$53
  !a5
  !volume,99
  db 18,$58
  !f5
  db 18,$53
  !f5
  !volume,105
  !f5
  !f5
  !volume,110
  db 18,$58
  !a5
  db 18,$53
  !a5
  !volume,127
  db 18,$58
  !f5
  db 18,$53
  !f5
  !f5
  !f5
  !volume,138
  db 18,$58
  !a5
  db 18,$53
  !a5
  !volume,149
  db 18,$58
  !f5
  db 18,$53
  !f5
  !volume,160
  db 18,$54
  !d5
  db 18,$53
  !f5
  db 18,$59
  !f5
  db 18,$53
  !f5
  !volume,149
  db 18,$59
  !d5
  db 18,$53
  !d5
  !volume,138
  db 18,$57
  !d5
  db 18,$53
  !d5
  !volume,127
  db 18,$59
  !f5
  db 18,$53
  !f5
  db 18,$59
  !d5
  db 18,$53
  !d5
  !volume,105
  db 18,$57
  !d5
  db 18,$53
  !d5
  db 18,$58
  !f5
  db 16,$53
  !f5

.pattern2_3
  db 1
  !rest
  !instr,!instr31
  !volume,80
  !pan,7
  db 18,$58
  !as5
  db 18,$53
  !as5
  db 18,$58
  !g5
  db 18,$53
  !g5
  !volume,99
  !g5
  !g5
  db 18,$58
  !as5
  db 18,$53
  !as5
  !volume,110
  db 18,$58
  !g5
  db 18,$53
  !g5
  !volume,121
  !g5
  !g5
  db 18,$58
  !as5
  !volume,127
  db 18,$53
  !as5
  db 18,$58
  !g5
  db 18,$53
  !g5
  !volume,138
  !g5
  !g5
  db 18,$59
  !g5
  db 18,$53
  !g5
  db 18,$59
  !ds5
  !volume,149
  db 18,$53
  !ds5
  db 18,$57
  !ds5
  db 18,$53
  !ds5
  !volume,165
  db 18,$58
  !g5
  db 18,$53
  !g5
  db 18,$58
  !ds5
  db 18,$53
  !ds5
  !volume,138
  db 18,$57
  !ds5
  db 18,$53
  !ds5
  !volume,121
  db 18,$58
  !g5
  db 18,$53
  !ds5
  !volume,94
  db 18,$58
  !c6
  db 18,$53
  !c6
  !volume,99
  db 18,$58
  !a5
  db 18,$53
  !a5
  !volume,105
  !a5
  !a5
  !volume,110
  db 18,$58
  !c6
  db 18,$53
  !c6
  !volume,127
  db 18,$58
  !a5
  db 18,$53
  !a5
  !a5
  !a5
  !volume,138
  db 18,$58
  !c6
  db 18,$53
  !c6
  !volume,149
  db 18,$58
  !a5
  db 18,$53
  !a5
  !volume,160
  db 18,$54
  !f5
  db 18,$53
  !a5
  db 18,$59
  !a5
  db 18,$53
  !a5
  !volume,149
  db 18,$59
  !f5
  db 18,$53
  !f5
  !volume,138
  db 18,$57
  !f5
  db 18,$53
  !f5
  !volume,127
  db 18,$59
  !a5
  db 18,$53
  !a5
  db 18,$59
  !f5
  db 18,$53
  !f5
  !volume,105
  db 18,$57
  !f5
  db 18,$53
  !f5
  db 18,$58
  !a5
  db 17,$53
  !a5

.pattern2_4
  !instr,!instr31
  !volume,80
  !pan,10
  db 18,$58
  !d6
  db 18,$53
  !d6
  db 18,$58
  !as5
  db 18,$53
  !as5
  !volume,99
  !as5
  !as5
  db 18,$58
  !d6
  db 18,$53
  !d6
  !volume,110
  db 18,$58
  !as5
  db 18,$53
  !as5
  !volume,121
  db 18,$58
  !as5
  db 18,$53
  !as5
  !d6
  !volume,127
  !d6
  db 18,$58
  !as5
  db 18,$53
  !as5
  !volume,138
  !as5
  !as5
  db 18,$58
  !d6
  db 18,$53
  !d6
  db 18,$58
  !as5
  !volume,149
  db 18,$53
  !as5
  db 18,$57
  !g4
  db 18,$53
  !as5
  !volume,165
  db 18,$58
  !d6
  db 18,$53
  !d6
  db 18,$58
  !as5
  db 18,$53
  !as5
  !volume,138
  db 18,$57
  !g4
  db 18,$53
  !as5
  !volume,121
  db 18,$58
  !d6
  db 18,$53
  !as5
  !volume,94
  db 18,$58
  !e6
  db 18,$53
  !e6
  !volume,99
  db 18,$58
  !c6
  db 18,$53
  !c6
  !volume,105
  !c6
  !c6
  !volume,110
  db 18,$58
  !e6
  db 18,$53
  !e6
  !volume,127
  db 18,$58
  !c6
  db 18,$53
  !c6
  !c6
  !c6
  !volume,138
  db 18,$58
  !e6
  db 18,$53
  !e6
  !volume,149
  db 18,$58
  !c6
  db 18,$53
  !c6
  !volume,160
  !c6
  !c6
  db 18,$58
  !e6
  db 18,$53
  !e6
  !volume,149
  db 18,$58
  !c6
  db 18,$53
  !c6
  !volume,138
  db 18,$57
  !a4
  db 18,$53
  !c6
  !volume,127
  db 18,$58
  !e6
  db 18,$53
  !e6
  db 18,$58
  !c6
  db 18,$53
  !c6
  !volume,105
  db 18,$57
  !a4
  db 18,$53
  !c6
  db 18,$58
  !e6
  db 18,$53
  !c6

.pattern3_0
  !volume,165
  db 18,$58
  !b3
  !fs4
  !as4
  db 18,$57
  !b4
  db 18,$58
  !b3
  !fs4
  !as4
  db 18,$57
  !b4
  !loop : dw .sub5915 : db 1
  !volume,171
  !c4
  !g4
  db 18,$55
  !d5
  db 18,$58
  !g4
  !c4
  !g4
  db 18,$57
  !b4
  db 18,$56
  !c5
  !end

.pattern3_1
  db 9
  !rest
  !volume,165
  db 18,$58
  !b3
  !fs4
  !as4
  db 18,$57
  !b4
  db 18,$58
  !b3
  !fs4
  !as4
  db 18,$57
  !b4
  !loop : dw .sub5915 : db 1
  !volume,171
  !c4
  !g4
  db 18,$55
  !d5
  db 18,$58
  !g4
  !c4
  !g4
  db 18,$57
  !b4
  db 9,$76
  !c5

.pattern3_2
  db 2
  !rest
  !volume,88
  db 18,$58
  !as5
  db 18,$53
  !as5
  db 18,$58
  !fs5
  db 18,$53
  !fs5
  !volume,99
  !fs5
  !fs5
  db 18,$58
  !as5
  db 18,$53
  !as5
  !volume,110
  db 18,$58
  !fs5
  db 18,$53
  !fs5
  !volume,121
  !fs5
  !fs5
  db 18,$58
  !as5
  !volume,127
  db 18,$53
  !as5
  db 18,$58
  !fs5
  db 18,$53
  !fs5
  !volume,138
  !fs5
  !fs5
  db 18,$58
  !fs5
  db 18,$53
  !fs5
  db 18,$57
  !ds5
  !volume,138
  db 18,$53
  !ds5
  db 18,$57
  !ds5
  db 18,$53
  !ds5
  !volume,165
  db 18,$58
  !fs5
  db 18,$53
  !fs5
  db 18,$59
  !ds5
  db 18,$53
  !ds5
  !volume,138
  db 18,$57
  !ds5
  db 18,$53
  !ds5
  !volume,121
  db 18,$58
  !fs5
  db 18,$53
  !ds5
  !volume,94
  db 18,$58
  !b5
  db 18,$53
  !b5
  !volume,99
  db 18,$58
  !g5
  db 18,$53
  !g5
  !volume,105
  !g5
  !g5
  !volume,110
  db 18,$58
  !b5
  db 18,$53
  !b5
  !volume,127
  db 18,$58
  !g5
  db 18,$53
  !g5
  !g5
  !g5
  !volume,138
  db 18,$58
  !b5
  db 18,$53
  !b5
  !volume,149
  db 18,$58
  !g5
  db 18,$53
  !g5
  !volume,160
  !e5
  !g5
  db 18,$59
  !g5
  db 18,$53
  !g5
  !volume,149
  db 18,$59
  !e5
  db 18,$53
  !e5
  !volume,138
  db 18,$57
  !e5
  db 18,$53
  !e5
  !volume,127
  db 18,$58
  !g5
  db 18,$53
  !g5
  db 18,$58
  !e5
  db 18,$53
  !e5
  !volume,105
  db 18,$57
  !e5
  db 18,$53
  !e5
  db 18,$58
  !g5
  db 16,$53
  !g5

.pattern3_3
  db 1
  !rest
  !volume,88
  db 18,$58
  !cs6
  db 18,$53
  !cs6
  db 18,$58
  !as5
  db 18,$53
  !as5
  !volume,99
  !as5
  !as5
  db 18,$58
  !cs6
  db 18,$53
  !cs6
  !volume,110
  db 18,$58
  !as5
  db 18,$53
  !as5
  !volume,121
  !as5
  !as5
  db 18,$58
  !cs6
  !volume,127
  db 18,$53
  !cs6
  db 18,$58
  !as5
  db 18,$53
  !as5
  !volume,138
  !as5
  !as5
  db 18,$58
  !as5
  db 18,$53
  !as5
  db 18,$57
  !fs5
  !volume,149
  db 18,$53
  !fs5
  db 18,$57
  !fs5
  db 18,$53
  !fs5
  !volume,165
  db 18,$58
  !as5
  db 18,$53
  !as5
  db 18,$59
  !fs5
  db 18,$53
  !fs5
  !volume,138
  db 18,$57
  !fs5
  db 18,$53
  !fs5
  !volume,121
  db 18,$58
  !as5
  db 18,$53
  !fs5
  !volume,94
  db 18,$58
  !d6
  db 18,$53
  !d6
  !volume,99
  db 18,$58
  !b5
  db 18,$53
  !b5
  !volume,105
  !b5
  !b5
  !volume,110
  db 18,$58
  !d6
  db 18,$53
  !d6
  !volume,127
  db 18,$58
  !b5
  db 18,$53
  !b5
  !b5
  !b5
  !volume,138
  db 18,$58
  !d6
  db 18,$53
  !d6
  !volume,149
  db 18,$58
  !b5
  db 18,$53
  !b5
  !volume,160
  !g5
  !b5
  db 18,$59
  !b5
  db 18,$53
  !b5
  !volume,149
  db 18,$59
  !g5
  db 18,$53
  !g5
  !volume,138
  db 18,$57
  !g5
  db 18,$53
  !g5
  !volume,127
  db 18,$58
  !b5
  db 18,$53
  !b5
  db 18,$58
  !g5
  db 18,$53
  !g5
  !volume,105
  db 18,$57
  !g5
  db 18,$53
  !g5
  db 18,$58
  !b5
  db 17,$53
  !b5

.pattern3_4
  !volume,88
  db 18,$58
  !f6
  db 18,$53
  !f6
  db 18,$58
  !cs6
  db 18,$53
  !cs6
  !volume,99
  !cs6
  !cs6
  db 18,$58
  !f6
  db 18,$53
  !f6
  !volume,110
  db 18,$58
  !cs6
  db 18,$53
  !cs6
  !volume,121
  db 18,$58
  !cs6
  db 18,$53
  !cs6
  !f6
  !volume,127
  !f6
  db 18,$58
  !cs6
  db 18,$53
  !cs6
  !volume,138
  !cs6
  !cs6
  db 18,$58
  !f6
  db 18,$53
  !f6
  db 18,$58
  !cs6
  !volume,149
  db 18,$53
  !cs6
  db 18,$56
  !as4
  db 18,$53
  !cs6
  !volume,165
  db 18,$58
  !f6
  db 18,$53
  !f6
  db 18,$58
  !cs6
  db 18,$53
  !cs6
  !volume,138
  db 18,$57
  !as4
  db 18,$53
  !cs6
  !volume,121
  db 18,$58
  !f6
  db 18,$53
  !cs6
  !volume,94
  db 18,$58
  !fs6
  db 18,$53
  !fs6
  !volume,99
  db 18,$58
  !d6
  db 18,$53
  !d6
  !volume,105
  !d6
  !d6
  !volume,110
  db 18,$58
  !fs6
  db 18,$53
  !fs6
  !volume,127
  db 18,$58
  !d6
  db 18,$53
  !d6
  !b4
  !d6
  !volume,138
  db 18,$58
  !fs6
  db 18,$53
  !fs6
  !volume,149
  db 18,$58
  !d6
  db 18,$53
  !d6
  !volume,160
  !d6
  !d6
  db 18,$58
  !fs6
  db 18,$53
  !fs6
  !volume,149
  db 18,$58
  !d6
  db 18,$53
  !d6
  !volume,138
  db 18,$57
  !b4
  db 18,$53
  !d6
  !volume,127
  db 18,$58
  !fs6
  db 18,$53
  !fs6
  db 18,$58
  !d6
  db 18,$53
  !d6
  !volume,105
  db 18,$57
  !b4
  db 18,$53
  !d6
  db 18,$58
  !fs6
  db 18,$53
  !d6

.sub5621
  !tie
  !tie
  db 72,$75
  !a3
  !tie
  !tie
  !tie
  !end

.sub562A
  !pan,10
  !volume,210
  !vibrato,40,5,60
  !instr,!instr32
  db 72,$76
  !as4
  !tie
  !tie
  !tie
  !a4
  !tie
  db 72,$73
  !c5
  !tie
  !g4
  !tie
  !as4
  !g4
  !a4
  !tie
  db 48
  !f4
  db 48,$7C
  !a4
  !c5
  db 10
  !tie
  db 72,$75
  !f5
  db 62
  !tie
  db 72,$73
  !a4
  db 72,$75
  !f5
  db 72,$76
  !c5
  !tie
  !a4
  !tie
  db 72,$78
  !as4
  !tie
  db 68
  !tie
  db 76,$73
  !cs5
  db 9
  !tie
  db 72
  !f4
  db 63
  !tie
  !end

.sub566F
  !instr,!instr22
  !volume,165
  db 18,$06
  !as3
  !f4
  db 18,$04
  !as4
  db 18,$06
  !f4
  db 18,$04
  !c5
  db 18,$06
  !f4
  db 18,$04
  !as4
  db 18,$06
  !f4
  !as3
  !f4
  db 18,$04
  !as4
  db 18,$06
  !f4
  db 18,$04
  !c5
  db 18,$06
  !f4
  db 18,$04
  !as4
  db 18,$06
  !f4
  !end

.sub569E
  !a3
  !e4
  db 18,$04
  !c5
  db 18,$06
  !e4
  db 18,$04
  !b4
  db 18,$06
  !e4
  db 18,$04
  !c5
  db 18,$06
  !e4
  !end

.sub56B3
  !g3
  !d4
  db 18,$04
  !g4
  db 18,$06
  !d4
  db 18,$04
  !as4
  db 18,$06
  !d4
  db 18,$04
  !g4
  db 18,$06
  !d4
  !as3
  !d4
  db 18,$04
  !g4
  db 18,$06
  !d4
  db 18,$04
  !as4
  db 18,$06
  !d4
  db 18,$04
  !g4
  db 18,$06
  !d4
  !f3
  !c4
  db 18,$04
  !g4
  db 18,$06
  !c4
  db 18,$04
  !a4
  db 18,$06
  !c4
  db 18,$04
  !f4
  db 18,$06
  !c4
  !f3
  !c4
  db 18,$04
  !g4
  db 18,$06
  !c4
  db 18,$05
  !a4
  db 18,$06
  !c4
  db 18,$05
  !c5
  db 18,$06
  !c4
  !as3
  !f4
  !as4
  !f4
  !c5
  !f4
  !d5
  !f4
  !f5
  !as4
  !c5
  !f4
  !as4
  !f4
  !d4
  !as4
  !a3
  !e4
  !b4
  !e4
  !c5
  !e4
  !d5
  !e4
  !e5
  !a4
  !b4
  !c5
  !e5
  !b4
  !c5
  !e4
  !fs4
  !cs4
  !fs3
  !cs4
  db 18,$04
  !gs4
  db 18,$06
  !cs4
  db 18,$04
  !as4
  db 18,$06
  !cs4
  !fs3
  !cs4
  db 18,$04
  !gs4
  db 18,$06
  !cs4
  db 18,$04
  !as4
  db 18,$06
  !cs4
  db 18,$04
  !fs4
  db 18,$06
  !cs4
  !end

.sub5748
  !f3
  !c4
  db 18,$04
  !g4
  db 18,$06
  !c4
  db 18,$04
  !a4
  db 18,$06
  !c4
  db 18,$04
  !f4
  db 18,$06
  !c4
  !end

.sub575D
  db 1
  !rest
  !instr,!instr09
  !volume,130
  !pan,8
  db 36,$08
  !d5
  db 36,$06
  !d6
  db 36,$05
  !e6
  db 36,$06
  !d6
  db 36,$08
  !d5
  db 36,$06
  !d6
  db 36,$05
  !e6
  db 36,$06
  !d6
  !end

.sub577E
  db 36,$08
  !e5
  db 36,$06
  !a5
  db 36,$05
  !e6
  db 36,$06
  !a5
  !end

.sub578B
  db 36,$08
  !d5
  db 36,$06
  !as5
  db 36,$05
  !f6
  db 36,$06
  !as5
  db 36,$08
  !d5
  db 36,$06
  !as5
  db 36,$05
  !d6
  db 36,$06
  !as5
  db 36,$08
  !c5
  db 36,$06
  !a5
  db 36,$05
  !c6
  db 36,$06
  !a5
  db 36,$08
  !e5
  db 36,$06
  !a5
  db 36,$05
  !c6
  !e6
  !end

.sub57BA
  db 36,$08
  !d5
  db 36,$06
  !d6
  db 36,$05
  !e6
  db 36,$06
  !d6
  !end

.sub57C7
  db 36,$08
  !c5
  db 36,$06
  !c6
  db 36,$05
  !e6
  db 36,$06
  !c6
  db 36,$08
  !g5
  db 36,$06
  !c6
  db 36,$05
  !e6
  db 36,$06
  !e5
  db 36,$08
  !as4
  db 36,$05
  !cs6
  db 36,$04
  !f6
  db 36,$05
  !cs6
  db 36,$08
  !cs5
  db 36,$06
  !as5
  db 36,$05
  !cs6
  db 36,$06
  !as5
  db 36,$08
  !e5
  db 36,$06
  !a5
  db 36,$05
  !c6
  db 36,$06
  !a5
  !end

.sub5804
  db 36,$08
  !a5
  db 36,$06
  !e6
  db 36,$05
  !g6
  db 36,$06
  !e6
  !end

.sub5811
  db 36,$08
  !g5
  db 36,$06
  !d6
  db 36,$05
  !f6
  db 36,$06
  !d6
  db 36,$08
  !f5
  db 36,$06
  !d6
  db 36,$05
  !f6
  db 36,$06
  !d6
  db 36,$08
  !e5
  db 36,$06
  !c6
  db 36,$05
  !e6
  db 36,$06
  !c6
  db 36,$08
  !a5
  db 36,$06
  !c6
  db 36,$05
  !e6
  !g6
  db 36,$08
  !f5
  db 36,$06
  !f6
  db 36,$05
  !g6
  db 36,$06
  !f6
  !end

.sub584C
  db 36,$08
  !as5
  db 36,$06
  !f6
  db 36,$05
  !g6
  db 36,$06
  !f6
  db 36,$08
  !a5
  db 36,$06
  !e6
  db 36,$05
  !g6
  db 36,$06
  !e6
  !end

.sub5865
  db 36,$08
  !c6
  db 36,$06
  !e6
  db 36,$05
  !g6
  db 36,$06
  !a5
  db 36,$08
  !fs5
  db 36,$05
  !f6
  db 36,$04
  !gs6
  db 36,$05
  !f6
  db 36,$08
  !as5
  db 36,$06
  !cs6
  db 36,$05
  !f6
  db 36,$06
  !cs6
  db 36,$08
  !a5
  db 36,$06
  !c6
  db 36,$05
  !e6
  db 36,$06
  !c6
  !end

.sub5896
  !volume,176
  db 18,$58
  !gs3
  !ds4
  db 18,$57
  !gs4
  db 18,$58
  !ds4
  !volume,187
  !gs3
  !ds4
  !g4
  !ds4
  !volume,198
  !gs3
  !ds4
  !g4
  db 18,$57
  !gs4
  !volume,204
  db 18,$58
  !gs3
  !ds4
  db 18,$57
  !gs4
  db 18,$56
  !as4
  !volume,193
  db 18,$58
  !gs3
  !ds4
  !volume,176
  db 18,$56
  !as4
  db 18,$58
  !ds4
  !volume,165
  !gs3
  !ds4
  !volume,154
  !g4
  !ds4
  !as3
  !f4
  db 18,$57
  !a4
  db 18,$56
  !as4
  !volume,165
  db 18,$58
  !as3
  !f4
  db 18,$57
  !a4
  db 18,$56
  !as4
  !volume,176
  db 18,$58
  !as3
  !f4
  db 18,$56
  !as4
  db 18,$55
  !c5
  !volume,187
  db 18,$58
  !as3
  !f4
  db 18,$55
  !c5
  db 18,$58
  !f4
  !volume,198
  !as3
  !f4
  db 18,$56
  !as4
  db 18,$55
  !c5
  !volume,204
  db 18,$58
  !as3
  !f4
  db 18,$56
  !as4
  db 18,$58
  !f4
  !end

.sub5915
  !volume,171
  db 18,$58
  !b3
  !fs4
  db 18,$57
  !b4
  db 18,$58
  !fs4
  !b3
  !fs4
  !as4
  !fs4
  !volume,176
  !b3
  !fs4
  !as4
  db 18,$57
  !b4
  db 18,$58
  !b3
  !fs4
  db 18,$57
  !b4
  db 18,$56
  !cs5
  !volume,171
  db 18,$58
  !b3
  !fs4
  db 18,$56
  !cs5
  db 18,$58
  !fs4
  !b3
  !fs4
  !as4
  !fs4
  !volume,165
  !c4
  !g4
  db 18,$57
  !b4
  db 18,$56
  !c5
  db 18,$58
  !c4
  !g4
  db 18,$57
  !b4
  db 18,$56
  !c5
  !volume,171
  db 18,$58
  !c4
  !g4
  db 18,$56
  !c5
  db 18,$55
  !d5
  db 18,$58
  !c4
  !g4
  db 18,$55
  !d5
  db 18,$58
  !g4
  !volume,176
  !c4
  !g4
  db 18,$56
  !c5
  db 18,$55
  !d5
  db 18,$58
  !c4
  !g4
  db 18,$56
  !c5
  db 18,$58
  !g4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
