asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr03 = $18
!instr04 = $19
!instr05 = $1A
!instr06 = $1B
!instr07 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr03,$8F,$EE,$B8,$06,$F0
  db !instr04,$FF,$F2,$B8,$03,$30
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$FF,$E0,$B8,$03,$C0
  db !instr07,$FC,$F1,$B8,$03,$E0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+153
  dw Sample02,Sample02+27
  dw Sample03,Sample03+513
  dw Sample04,Sample04+1791
  dw Sample05,Sample05+1116
  dw Sample06,Sample06+1530
  dw Sample07,Sample07+549
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample03: incbin "Sample_62618eece010f3c5a0a72afb41329680.brr"
  Sample04: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample05: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample06: incbin "Sample_c38c118110713ed94b98dc70871a6061.brr"
  Sample07: incbin "Sample_5cac8ed5aaaa86695a684f7f807906cc.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2404

Tracker2404:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr05
  !musicVolume,255
  !tempo,28
  !instr,!instr04
  !volume,166
  !transpose,12
  !subtranspose,54
  db 6,$77
  !b3
  db 6,$77
  !d4
  db 6,$77
  !e4
  db 6,$77
  !f4
  db 6,$77
  !b3
  db 6,$78
  !d4
  db 6,$78
  !e4
  db 6,$78
  !f4
  db 6,$78
  !b3
  db 6,$78
  !d4
  db 6,$79
  !e4
  db 6,$79
  !f4
  db 6,$79
  !b3
  db 6,$79
  !d4
  db 6,$7A
  !e4
  db 6,$7A
  !f4
  !b4
  !d5
  db 6,$7A
  !e5
  db 6,$7A
  !f5
  db 6,$7B
  !b4
  db 6,$7B
  !d5
  db 6,$7B
  !e5
  db 6,$7B
  !f5
  db 6,$7B
  !b4
  db 6,$7C
  !d5
  db 6,$7C
  !e5
  db 6,$7C
  !f5
  db 6,$7C
  !b4
  db 6,$7C
  !d5
  db 6,$7D
  !e5
  db 6,$7D
  !f5
  !end

.pattern0_1
  !instr,!instr02
  !volume,187
  !vibrato,36,27,96
  !subtranspose,29
  db 96,$79
  !b4
  db 96,$79
  !b5
  !end

.pattern0_2
  !instr,!instr01
  !volume,166
  db 96,$7E
  !b3
  db 96,$7D
  !b4
  !end

.pattern0_3
  !volume,198
  db 12,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  db 12,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  !end

.pattern0_4
  !instr,!instr02
  !volume,187
  !vibrato,36,27,96
  !pan,11
  !subtranspose,29
  db 96,$79
  !f4
  db 96,$79
  !f5
  !end

.pattern0_5
  !instr,!instr04
  !volume,166
  !subtranspose,54
  db 96
  !rest
  db 6,$7A
  !b4
  !d5
  db 6,$7A
  !e5
  db 6,$7A
  !f5
  db 6,$7B
  !b4
  db 6,$7B
  !d5
  db 6,$7B
  !e5
  db 6,$7B
  !f5
  db 6,$7B
  !b4
  db 6,$7C
  !d5
  db 6,$7C
  !e5
  db 6,$7C
  !f5
  db 6,$7C
  !b4
  db 6,$7C
  !d5
  db 6,$7D
  !e5
  db 6,$7D
  !f5
  !end

.pattern0_6
  !instr,!instr02
  !volume,187
  !pan,12
  !vibrato,36,27,96
  !subtranspose,29
  db 96,$79
  !d4
  db 96,$79
  !d5
  !end

.pattern1_0
  db 12,$7E
  !a4
  db 6,$7C
  !f4
  db 6,$7C
  !e4
  db 12,$7D
  !f4
  db 12,$7D
  !d4
  db 12,$7D
  !e4
  !f4
  db 12,$7D
  !a4
  db 12,$7D
  !b4
  db 36,$7E
  !e5
  db 6,$7E
  !f5
  !d5
  db 48,$7D
  !e5
  db 12,$7E
  !a4
  db 6,$7C
  !f4
  db 6,$7C
  !e4
  db 12,$7D
  !f4
  db 12,$7D
  !d4
  db 12,$7D
  !e4
  !f4
  db 12,$7D
  !a4
  db 12,$7D
  !b4
  !loop : dw .sub2B79 : db 3
  db 6,$7D
  !a5
  db 6,$7C
  !as5
  db 6,$7D
  !a5
  !f5
  db 6,$7D
  !e5
  db 6,$7C
  !d5
  db 6,$7C
  !e5
  db 6,$7C
  !g5
  db 6,$7D
  !a5
  db 6,$7C
  !as5
  db 6,$7D
  !a5
  !f5
  db 6,$7D
  !e5
  db 6,$7C
  !d5
  db 6,$7C
  !e5
  db 6,$7C
  !g5
  db 6,$7D
  !a5
  db 6,$7C
  !as5
  db 6,$7D
  !a5
  !f5
  db 6,$7D
  !e5
  db 6,$7C
  !d5
  db 6,$7C
  !e5
  db 6,$7C
  !g5
  db 48,$7D
  !a5
  !loop : dw .sub2B86 : db 2
  db 12,$7D
  !a5
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  db 12,$7C
  !f5
  db 6,$7D
  !e5
  !f5
  db 12,$7D
  !a5
  db 6,$7C
  !as5
  db 6,$7D
  !a5
  db 12,$7C
  !as5
  db 12,$7D
  !d6
  db 12,$7C
  !d6
  db 6,$7C
  !as5
  !a5
  db 12,$7D
  !d6
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  db 12,$7C
  !d6
  db 6,$7C
  !as5
  db 6,$7B
  !a5
  db 12,$7C
  !d6
  db 6,$7C
  !as5
  db 6,$7D
  !a5
  db 6,$7D
  !d6
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  !f5
  db 6,$7D
  !d6
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  !f5
  db 6,$7D
  !d6
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  !f5
  db 6,$7D
  !d6
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  !f5
  db 6,$7D
  !d6
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  !f5
  db 6,$7D
  !d6
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  !f5
  db 12,$7C
  !d6
  db 6,$7B
  !as5
  db 6,$7B
  !a5
  db 12,$7D
  !f5
  !e5
  db 18,$7C
  !a5
  db 18,$7C
  !f5
  db 24,$7C
  !e5
  db 12,$7C
  !d5
  !e5
  db 12,$7D
  !f5
  db 6,$7D
  !f5
  db 6,$7A
  !a5
  db 6,$7C
  !f5
  db 6,$7B
  !a5
  db 6,$7D
  !as5
  db 6,$7C
  !a5
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  db 6,$7C
  !f5
  db 6,$7C
  !a5
  !f5
  !a5
  db 6,$7D
  !as5
  db 6,$7B
  !a5
  db 6,$7C
  !as5
  db 6,$7D
  !a5
  db 12
  !a5
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  db 6,$7E
  !f5
  !e5
  db 24,$7D
  !d5
  db 12,$7C
  !e5
  db 12,$7E
  !f5
  db 12,$7D
  !a5
  db 12,$7D
  !e5
  db 6,$7D
  !d5
  db 6,$7B
  !e5
  db 12,$7D
  !f5
  db 12,$7C
  !a5
  db 12,$7D
  !a5
  db 6,$7C
  !as5
  !a5
  db 12,$7C
  !as5
  db 12,$7D
  !d6
  db 12,$7D
  !a5
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  db 6,$7E
  !f5
  !e5
  db 24,$7D
  !d5
  db 12,$7C
  !e5
  db 6,$7D
  !f5
  db 18,$7C
  !a5
  db 12,$7D
  !a5
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  db 6,$7E
  !f5
  !e5
  db 24,$7D
  !d5
  db 12,$7C
  !e5
  db 6,$7D
  !f5
  db 18,$7D
  !as5
  db 12,$7D
  !a5
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  db 6,$7E
  !f5
  !e5
  db 24,$7D
  !d5
  db 12,$7C
  !e5
  db 6,$7D
  !f5
  db 18,$7C
  !d6
  db 96,$7D
  !d6
  db 6,$7D
  !f6
  !e6
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  db 6,$7D
  !f6
  !e6
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  db 6,$7D
  !f6
  !e6
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  db 12,$7C
  !f5
  !e5
  !end

.pattern1_1
  !instr,!instr03
  !volume,125
  !pan,11
  db 12
  !rest
  db 12,$2C
  !e5
  !rest
  db 12,$2D
  !e5
  db 12,$23
  !e5
  db 12,$2D
  !e5
  db 12,$23
  !e5
  db 12,$2D
  !e5
  !loop : dw .sub2BCA : db 4
  db 12,$23
  !e5
  db 12,$2D
  !f5
  db 12,$23
  !e5
  db 12,$2C
  !f5
  db 12,$23
  !f5
  db 12,$2B
  !f5
  db 12,$23
  !f5
  db 12,$2B
  !f5
  db 12,$23
  !f5
  db 12,$2D
  !e5
  db 12,$23
  !f5
  db 12,$2D
  !e5
  db 12,$23
  !e5
  db 12,$2D
  !e5
  db 12,$23
  !e5
  db 12,$2D
  !e5
  db 12,$23
  !e5
  db 12,$2C
  !e5
  db 12,$23
  !e5
  db 12,$2D
  !e5
  db 12,$23
  !e5
  db 12,$2D
  !e5
  !e5
  db 12,$2D
  !e5
  !loop : dw .sub2BE3 : db 1
  db 12,$2A
  !a4
  db 12,$3C
  !a5
  db 6,$7A
  !a4
  db 12,$4B
  !a5
  db 6,$7A
  !a4
  db 12
  !a5
  db 6,$7B
  !a4
  db 12,$39
  !a5
  db 6,$78
  !a4
  db 12,$3A
  !a5
  !loop : dw .sub2BE3 : db 1
  !loop : dw .sub2C3C : db 3
  !loop : dw .sub2C66 : db 2
  db 12,$2B
  !d5
  !d6
  db 6,$7A
  !d5
  db 12,$1B
  !d6
  db 6,$7A
  !d5
  db 12,$7C
  !d6
  db 6,$7A
  !d5
  db 12,$2B
  !d6
  db 6,$7A
  !d5
  db 12,$2B
  !d6
  db 12,$2B
  !d5
  db 12,$1C
  !f6
  db 6,$7A
  !d5
  db 12,$2D
  !f6
  db 6,$7B
  !d5
  db 12,$6C
  !f6
  db 6,$7A
  !d5
  db 12,$2D
  !f6
  db 6,$7A
  !d5
  db 12,$6D
  !e6
  !end

.pattern1_2
  !loop : dw .sub2C73 : db 4
  db 12,$3E
  !as3
  db 12,$3D
  !as3
  db 12,$4E
  !as4
  db 6,$3D
  !as3
  db 12,$2D
  !as3
  db 12,$1D
  !as3
  db 6,$5D
  !as3
  db 12,$4F
  !as4
  db 12,$3D
  !as3
  db 12,$3E
  !b3
  db 12,$3D
  !b3
  db 12,$4E
  !b4
  db 6,$3D
  !b3
  db 12,$2D
  !b3
  db 12,$1D
  !b3
  db 6,$5D
  !b3
  db 12,$4F
  !b4
  db 12,$3D
  !b3
  !loop : dw .sub2C73 : db 2
  !loop : dw .sub2C8F : db 2
  !loop : dw .sub2CFC : db 2
  !loop : dw .sub2D2D : db 2
  !loop : dw .sub2CFC : db 1
  db 12,$3E
  !a3
  db 12,$3D
  !a3
  db 12,$4E
  !a4
  db 6,$3D
  !a3
  db 12,$2D
  !a3
  db 12,$1D
  !a3
  db 6,$5D
  !a3
  db 12,$5F
  !a4
  db 12,$3F
  !a3
  !end

.pattern1_3
  !loop : dw .sub2D43 : db 3
  !loop : dw .sub2D64 : db 2
  db 12,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  !loop : dw .sub2D43 : db 3
  !loop : dw .sub2D64 : db 1
  !loop : dw .sub2D43 : db 2
  db 12,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 18
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 12,$7B
  %percNote(!instr05-!instr05)
  !loop : dw .sub2DA0 : db 2
  !loop : dw .sub2DD8 : db 3
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  !end

.pattern1_4
  !instr,!instr02
  !volume,166
  !pan,9
  !subtranspose,29
  db 96,$7A
  !e5
  db 72
  !tie
  db 24,$79
  !d5
  db 96,$7B
  !e5
  db 72
  !tie
  db 24,$7A
  !d5
  db 72,$7A
  !e5
  db 24,$7A
  !e5
  db 96
  !f5
  db 48,$79
  !a5
  db 48,$7A
  !as5
  db 48,$7B
  !d6
  db 48,$7C
  !e6
  db 84,$7B
  !f6
  db 6,$79
  !e6
  db 6,$79
  !d6
  db 96,$7A
  !e6
  db 84,$7A
  !f6
  db 6,$7A
  !e6
  db 6,$5A
  !d6
  db 96,$7A
  !e6
  db 84,$7B
  !f6
  db 6,$7A
  !e6
  db 6,$7B
  !d6
  db 96,$7B
  !e6
  db 84
  !f6
  db 6,$7A
  !e6
  db 6,$7A
  !d6
  db 48,$7B
  !f6
  !e6
  db 18,$7A
  !a6
  db 18,$7B
  !g6
  db 60,$7B
  !f6
  db 72,$7B
  !e6
  db 24,$7A
  !d6
  db 18,$7A
  !a6
  db 18,$7B
  !g6
  db 60,$7B
  !f6
  db 72,$7A
  !g6
  db 12
  !f6
  db 12,$79
  !g6
  db 18,$79
  !d7
  db 18,$49
  !c7
  db 60,$79
  !as6
  db 18
  !d7
  db 18,$49
  !c7
  db 60,$79
  !as6
  db 18
  !f7
  db 18,$49
  !e7
  db 60,$79
  !d7
  db 12,$79
  !f6
  db 12,$79
  !a6
  db 12,$7A
  !as6
  db 12,$7A
  !a6
  db 12,$7A
  !as6
  db 12,$7A
  !a6
  db 12,$79
  !as6
  db 12,$7A
  !d7
  db 84,$78
  !d7
  db 12,$7A
  !e7
  !end

.pattern1_5
  !instr,!instr03
  !volume,125
  !pan,9
  db 12
  !rest
  db 12,$2B
  !a4
  !rest
  !a4
  db 12,$23
  !a4
  db 12,$2C
  !a4
  db 12,$23
  !a4
  db 12,$2C
  !a4
  !loop : dw .sub2DF1 : db 3
  db 12,$23
  !a4
  db 12,$2C
  !as4
  db 12,$23
  !a4
  db 12,$2C
  !as4
  db 12,$23
  !as4
  db 12,$2C
  !as4
  db 12,$23
  !as4
  db 12,$2D
  !as4
  db 12,$23
  !as4
  db 12,$2D
  !b4
  db 12,$23
  !as4
  db 12,$2C
  !b4
  db 12,$23
  !b4
  db 12,$2B
  !b4
  db 12,$23
  !b4
  db 12,$2B
  !b4
  db 12,$23
  !b4
  db 12,$2D
  !a4
  db 12,$23
  !b4
  db 12,$2D
  !a4
  db 12,$23
  !a4
  db 12,$2D
  !a4
  db 12,$23
  !a4
  db 12,$2D
  !a4
  db 12,$23
  !a4
  db 12,$2C
  !a4
  db 12,$23
  !a4
  db 12,$2D
  !a4
  db 12,$23
  !a4
  db 12,$2D
  !a4
  !a4
  db 12,$2D
  !a4
  !loop : dw .sub2E0A : db 1
  db 12,$2A
  !e4
  db 12,$3C
  !e5
  db 6,$7A
  !e4
  db 12,$4B
  !e5
  db 6,$7A
  !e4
  db 12
  !e5
  db 6,$7B
  !e4
  db 12,$39
  !e5
  db 6,$78
  !e4
  db 12,$3A
  !e5
  !loop : dw .sub2E0A : db 1
  db 12,$28
  !g4
  db 12,$28
  !g5
  db 6,$79
  !g4
  db 12,$4B
  !g5
  db 6,$78
  !g4
  db 12,$7C
  !g5
  db 6,$7A
  !g4
  db 12,$2B
  !g5
  db 6,$7A
  !g4
  db 12,$2C
  !g5
  db 6,$7D
  !a4
  db 12,$2B
  !a4
  db 18,$1F
  !g4
  db 60,$6F
  !f4
  !loop : dw .sub2E63 : db 2
  !loop : dw .sub2E8E : db 2
  db 12,$2B
  !a4
  !a5
  db 6,$7A
  !a4
  db 12,$1B
  !a5
  db 6,$7A
  !a4
  db 12,$7C
  !a5
  db 6,$7A
  !a4
  db 12,$2B
  !a5
  db 6,$7A
  !a4
  db 12,$2B
  !a5
  db 12,$2B
  !a4
  db 12,$1C
  !a5
  db 6,$7A
  !a4
  db 12,$2D
  !a5
  db 6,$7B
  !a4
  db 12,$7C
  !a5
  db 6,$7A
  !a4
  db 12,$2D
  !a5
  db 6,$7A
  !a4
  db 12,$6D
  !a5
  !end

.pattern1_6
  !instr,!instr02
  !volume,166
  !pan,11
  !subtranspose,29
  db 96,$79
  !b4
  db 72
  !tie
  db 24,$79
  !g4
  db 96,$7B
  !a4
  db 72
  !tie
  db 24,$7A
  !g4
  db 72,$7A
  !as4
  db 24,$7A
  !as4
  db 96
  !b4
  db 48,$79
  !d5
  db 48,$7A
  !e5
  db 48,$7B
  !g5
  db 48,$7C
  !a5
  db 24
  !rest
  db 72,$7A
  !f6
  !loop : dw .sub2E9B : db 3
  db 12
  !rest
  db 6,$78
  !e6
  !d6
  db 36
  !f6
  !e6
  db 18,$7B
  !a5
  db 18,$7B
  !g5
  db 60,$7B
  !f5
  db 72,$7B
  !e5
  db 24,$7A
  !e5
  db 18,$7A
  !a5
  db 18,$7B
  !g5
  db 60,$7B
  !f5
  db 72,$7A
  !g5
  db 12
  !f5
  db 12,$79
  !g5
  db 18,$79
  !a6
  db 18,$49
  !g6
  db 60,$79
  !f6
  db 18
  !a6
  db 18,$49
  !g6
  db 60,$79
  !f6
  db 18
  !d7
  db 18,$49
  !c7
  db 60,$79
  !as6
  db 12,$79
  !f5
  db 12,$79
  !a5
  db 12,$7A
  !as5
  db 12,$7A
  !a5
  db 12,$7A
  !as5
  db 12,$7A
  !a5
  db 12,$79
  !as5
  db 12,$7A
  !d6
  db 84,$78
  !d6
  db 12,$7A
  !e6
  !end

.pattern1_7
  db 96
  !rest
  !loop : dw .sub2EA9 : db 7
  !volume,198
  db 96,$7F
  %percNote(!instr07-!instr05)
  !loop : dw .sub2EA9 : db 7
  db 36,$7D
  %percNote(!instr07-!instr05)
  db 60
  %percNote(!instr07-!instr05)
  db 96
  !rest
  db 36,$7B
  %percNote(!instr07-!instr05)
  db 60
  %percNote(!instr07-!instr05)
  db 96
  !rest
  db 36,$7D
  %percNote(!instr07-!instr05)
  db 60
  %percNote(!instr07-!instr05)
  !loop : dw .sub2EAB : db 3
  db 24
  !rest
  !rest
  !rest
  !rest
  !end

.sub2B79
  db 36,$7E
  !e5
  db 6,$7E
  !f5
  db 6,$7D
  !d5
  db 48,$7D
  !e5
  !end

.sub2B86
  db 12,$7E
  !d5
  db 6,$7D
  !e5
  db 6,$7D
  !f5
  db 12,$7E
  !a5
  db 6,$7D
  !f5
  db 6,$7C
  !e5
  db 12,$7D
  !d5
  db 6,$7D
  !e5
  db 6,$7D
  !f5
  db 12,$7D
  !a5
  db 6,$7C
  !f5
  db 6,$7C
  !e5
  db 12,$7D
  !d5
  db 6,$7C
  !e5
  db 6,$7C
  !f5
  db 12,$7D
  !a5
  db 6,$7C
  !as5
  db 6,$7D
  !a5
  db 12,$7D
  !f5
  db 6,$7D
  !e5
  !d5
  db 12,$7D
  !e5
  db 12,$7D
  !f5
  !end

.sub2BCA
  db 12,$23
  !e5
  db 12,$2D
  !e5
  db 12,$23
  !e5
  db 12,$2D
  !e5
  db 12,$23
  !e5
  db 12,$2D
  !e5
  db 12,$23
  !e5
  db 12,$2D
  !e5
  !end

.sub2BE3
  db 12,$2B
  !d5
  !d6
  db 6,$7A
  !d5
  db 12,$1B
  !d6
  db 6,$7A
  !d5
  db 12,$7C
  !d6
  db 6,$7A
  !d5
  db 12,$2B
  !d6
  db 6,$7A
  !d5
  db 12,$2B
  !d6
  db 12,$28
  !c5
  db 12,$28
  !c6
  db 6,$79
  !c5
  db 12,$4B
  !c6
  db 6,$78
  !c5
  db 12,$7C
  !c6
  db 6,$7A
  !c5
  db 12,$2B
  !c6
  db 6,$7A
  !c5
  db 12,$2C
  !c6
  db 12,$2C
  !as4
  db 12,$2C
  !as5
  db 6,$7B
  !as4
  db 12,$2C
  !as5
  db 6,$7B
  !as4
  db 12,$7C
  !as5
  db 6,$7B
  !as4
  db 12,$3B
  !as5
  db 6,$7A
  !as4
  db 12,$2B
  !as5
  !end

.sub2C3C
  db 12,$2A
  !a4
  db 12,$3C
  !a5
  db 6,$7A
  !a4
  db 12,$4B
  !a5
  db 6,$7A
  !a4
  db 12
  !a5
  db 6,$7B
  !a4
  db 12,$39
  !a5
  db 6,$78
  !a4
  db 12,$3A
  !a5
  db 6,$7B
  !d5
  db 12,$29
  !d5
  db 18,$1C
  !c5
  db 60,$6D
  !as4
  !end

.sub2C66
  db 6,$7B
  !d5
  db 12,$29
  !d5
  db 18,$1C
  !c5
  db 60,$6D
  !as4
  !end

.sub2C73
  db 12,$3E
  !a3
  db 12,$3D
  !a3
  db 12,$4E
  !a4
  db 6,$3D
  !a3
  db 12,$2D
  !a3
  db 12,$1D
  !a3
  db 6,$5D
  !a3
  db 12,$5F
  !a4
  db 12,$3F
  !a3
  !end

.sub2C8F
  db 12,$3E
  !d4
  db 12,$3D
  !d4
  db 12,$4E
  !d5
  db 6,$3D
  !d4
  db 12,$2D
  !d4
  db 12,$1D
  !d4
  db 6,$5D
  !d4
  db 12,$4F
  !d5
  db 12,$3D
  !d4
  db 12,$3E
  !c4
  db 12,$3D
  !c4
  db 12,$4E
  !c5
  db 6,$3D
  !c4
  db 12,$2D
  !c4
  db 12,$1D
  !c4
  db 6,$5D
  !c4
  db 12,$4F
  !c5
  db 12,$3D
  !c4
  db 12,$3E
  !as3
  db 12,$3D
  !as3
  db 12,$4E
  !as4
  db 6,$3D
  !as3
  db 12,$2D
  !as3
  db 12,$1D
  !as3
  db 6,$5D
  !as3
  db 12,$4F
  !as4
  db 12,$3D
  !as3
  db 12,$3E
  !a3
  db 12,$3D
  !a3
  db 12,$4E
  !a4
  db 6,$3D
  !a3
  db 12,$2D
  !a3
  db 12,$1D
  !a3
  db 6,$5D
  !a3
  db 12,$5F
  !a4
  db 12,$3F
  !a3
  !end

.sub2CFC
  db 6,$4E
  !d4
  db 12,$1D
  !d4
  db 18,$1D
  !c4
  db 24,$4D
  !as3
  db 12,$2D
  !as4
  db 6,$5F
  !as3
  db 18,$5D
  !as4
  db 12,$3E
  !a3
  db 12,$3D
  !a3
  db 12,$4E
  !a4
  db 6,$3D
  !a3
  db 12,$2D
  !a3
  db 12,$1D
  !a3
  db 6,$5D
  !a3
  db 12,$5F
  !a4
  db 12,$3F
  !a3
  !end

.sub2D2D
  db 6,$4E
  !d4
  db 12,$1D
  !d4
  db 18,$1D
  !c4
  db 24,$4D
  !as3
  db 12,$2D
  !as4
  db 6,$5F
  !as3
  db 18,$5D
  !as4
  !end

.sub2D43
  db 12,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  !end

.sub2D64
  db 12,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  db 12,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  !end

.sub2DA0
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 6,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 18
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 12,$7B
  %percNote(!instr05-!instr05)
  !end

.sub2DD8
  db 6
  %percNote(!instr05-!instr05)
  db 18
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$7B
  %percNote(!instr05-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 12,$7B
  %percNote(!instr05-!instr05)
  !end

.sub2DF1
  db 12,$23
  !a4
  db 12,$2D
  !a4
  db 12,$23
  !a4
  db 12,$2D
  !a4
  db 12,$23
  !a4
  db 12,$2D
  !a4
  db 12,$23
  !a4
  db 12,$2D
  !a4
  !end

.sub2E0A
  db 12,$2B
  !a4
  !a5
  db 6,$7A
  !a4
  db 12,$1B
  !a5
  db 6,$7A
  !a4
  db 12,$7C
  !a5
  db 6,$7A
  !a4
  db 12,$2B
  !a5
  db 6,$7A
  !a4
  db 12,$2B
  !a5
  db 12,$28
  !g4
  db 12,$28
  !g5
  db 6,$79
  !g4
  db 12,$4B
  !g5
  db 6,$78
  !g4
  db 12,$7C
  !g5
  db 6,$7A
  !g4
  db 12,$2B
  !g5
  db 6,$7A
  !g4
  db 12,$2C
  !g5
  db 12,$2C
  !f4
  db 12,$2C
  !f5
  db 6,$7B
  !f4
  db 12,$2C
  !f5
  db 6,$7B
  !f4
  db 12,$7C
  !f5
  db 6,$7B
  !f4
  db 12,$3B
  !f5
  db 6,$7A
  !f4
  db 12,$2B
  !f5
  !end

.sub2E63
  db 12,$28
  !g4
  db 12,$28
  !g5
  db 6,$79
  !g4
  db 12,$4B
  !g5
  db 6,$78
  !g4
  db 12,$7C
  !g5
  db 6,$7A
  !g4
  db 12,$2B
  !g5
  db 6,$7A
  !g4
  db 12,$2C
  !g5
  db 6,$7B
  !a4
  db 12,$29
  !a4
  db 18,$1C
  !g4
  db 60,$6D
  !f4
  !end

.sub2E8E
  db 6,$7B
  !a4
  db 12,$29
  !a4
  db 18,$1C
  !g4
  db 60,$6D
  !f4
  !end

.sub2E9B
  db 12
  !rest
  db 6,$78
  !e6
  !d6
  db 72
  !e6
  db 24
  !rest
  db 72,$7A
  !f6
  !end

.sub2EA9
  !rest
  !end

.sub2EAB
  db 36
  %percNote(!instr07-!instr05)
  db 60
  %percNote(!instr07-!instr05)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
