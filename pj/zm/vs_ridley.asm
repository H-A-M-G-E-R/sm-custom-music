asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr03 = $19
!instr04 = $1A
!instr05 = $1B
!instr06 = $1C
!instr07 = $1D
!instr08 = $1E
!instr09 = $1F
!instr0A = $20
!instr0B = $21

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$00,$00,$7F,$2C,$05
  db !instr01,$00,$00,$7F,$02,$82
  db !instr02,$8F,$F4,$00,$05,$49
  db !instr03,$00,$00,$7F,$01,$1F
  db !instr04,$00,$00,$7F,$01,$52
  db !instr05,$00,$00,$7F,$02,$84
  db !instr06,$00,$00,$7F,$01,$52
  db !instr07,$00,$00,$7F,$03,$34
  db !instr08,$00,$00,$7F,$08,$5D
  db !instr09,$00,$00,$7F,$03,$39
  db !instr0A,$8B,$E7,$00,$02,$84
  db !instr0B,$00,$00,$7F,$01,$51
  db !instr0B,$8B,$EF,$00,$01,$51
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+9
  dw Sample01,Sample01+990
  dw Sample02,Sample02+522
  dw Sample03,Sample03+351
  dw Sample04,Sample04+1872
  dw Sample05,Sample05+540
  dw Sample06,Sample06+18
  dw Sample07,Sample07+45
  dw Sample08,Sample08+2160
  dw Sample09,Sample09+1287
  dw Sample0A,Sample0A+18
  dw Sample0B,Sample0B+1233
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_0d84b8261821e81761841ab875984399.brr"
  Sample01: incbin "Sample_03e54db9fb340f41d1ea185d92b2cf94.brr"
  Sample02: incbin "Sample_3248d48ad43ab4e39ab60f6bec907064.brr"
  Sample03: incbin "Sample_fafd75f9708536949c031838da3e6b1c.brr"
  Sample04: incbin "Sample_958b66e1bcc60841995532a31d21ff82.brr"
  Sample05: incbin "Sample_23360ccb94c60342b75feac89e9de62f.brr"
  Sample06: incbin "Sample_73f1e20bcf9475868d2789180ea38ed3.brr"
  Sample07: incbin "Sample_8d93dc28ddbd44f18582a01beaaa6d44.brr"
  Sample08: incbin "Sample_c942be65f9dfe13f850d89af8caf8b29.brr"
  Sample09: incbin "Sample_869aad196336c0ed58aa8c8ae9d90cb5.brr"
  Sample0A: incbin "Sample_49736d9aba314fce7fc8863498b2b0ef.brr"
  Sample0B: incbin "Sample_c95c18f8f092e58956fdfbb91cb359e9.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker5830

Tracker5830:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern4_4, .pattern4_5, 0, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern3_2, .pattern5_3, .pattern5_4, .pattern3_5, .pattern5_6, .pattern3_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, .pattern6_6, .pattern6_7

.pattern0_0
  !echo,%00011111,60,60
  !echoParameters,2,30,3
  !musicVolume,225
  !tempo,52
  !end

.pattern1_0
  !instr,!instr06
  !volume,255
  db 12
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !end

.pattern1_1
  !instr,!instr05
  !volume,246
  !pan,6
  db 12
  !as4
  db 24
  !rest
  db 12
  !as4
  db 24
  !rest
  db 12
  !b4
  !rest
  !gs4
  !rest
  !as4
  db 24
  !rest
  db 12
  !as4
  db 24
  !rest
  db 12
  !b4
  !rest
  !gs4
  !rest
  !as4
  db 24
  !rest
  db 12
  !as4
  db 24
  !rest
  db 12
  !b4
  !rest
  !gs4
  !rest
  !as4
  db 24
  !rest
  db 12
  !as4
  db 24
  !rest
  db 12
  !b4
  !rest
  !gs4
  !rest
  !end

.pattern1_2
  !instr,!instr04
  !volume,255
  !pan,13
  db 72
  !c4
  db 24
  !cs4
  !as3
  db 72
  !c4
  db 24
  !cs4
  !as3
  db 72
  !c4
  db 24
  !cs4
  !as3
  db 72
  !c4
  db 24
  !cs4
  !as3
  !end

.pattern1_3
  !instr,!instr03
  !volume,255
  !pan,8
  db 12
  !c6
  db 24
  !rest
  db 12
  !c6
  db 24
  !rest
  db 12
  !cs6
  !rest
  !as5
  !rest
  !c6
  db 24
  !rest
  db 12
  !c6
  db 24
  !rest
  db 12
  !cs6
  !rest
  !as5
  !rest
  !c6
  db 24
  !rest
  db 12
  !c6
  db 24
  !rest
  db 12
  !cs6
  !rest
  !as5
  !rest
  !c6
  db 24
  !rest
  db 12
  !c6
  db 24
  !rest
  db 12
  !cs6
  !rest
  !as5
  !rest
  !end

.pattern1_4
  db 12
  !tie
  !instr,!instr07
  !volume,237
  !pan,11
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  !rest
  !cs4
  !rest
  !cs5
  !rest
  !as3
  !rest
  !as4
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  !rest
  !cs4
  !rest
  !cs5
  !rest
  !as3
  !rest
  !as4
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  !rest
  !cs4
  !rest
  !cs5
  !rest
  !as3
  !rest
  !as4
  !rest
  !end

.pattern1_5
  !instr,!instr02
  !volume,255
  db 72
  !fs4
  !instr,!instr01
  !volume,139
  db 4
  !c5
  db 20
  !rest
  !volume,150
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !volume,200
  db 6
  !c5
  !rest
  !volume,229
  !d4
  !rest
  !instr,!instr01
  !volume,132
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 20
  !rest
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !volume,207
  db 6
  !f4
  !rest
  !instr,!instr01
  !volume,132
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !volume,184
  db 6
  !d4
  !rest
  !instr,!instr01
  !volume,124
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !volume,163
  db 6
  !c5
  db 18
  !rest
  !instr,!instr01
  !volume,124
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !volume,153
  db 6
  !f4
  !rest
  !volume,184
  !d4
  !rest
  !instr,!instr01
  !volume,132
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  !volume,153
  db 4
  !c5
  db 8
  !rest
  !volume,150
  db 4
  !c5
  db 8
  !rest
  !volume,169
  db 4
  !c5
  db 20
  !rest
  !volume,139
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !volume,217
  db 6
  !d4
  !rest
  !instr,!instr01
  !volume,175
  db 4
  !c5
  db 8
  !rest
  !end

.pattern1_6
  db 24
  !tie
  !instr,!instr08
  !volume,252
  !pan,8
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  db 30
  !rest
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  db 30
  !rest
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  db 30
  !rest
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  !rest
  !end

.pattern1_7
  !instr,!instr00
  !volume,109
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  !end

.pattern2_0
  !instr,!instr0B
  db 6
  !fs5
  !rest
  !c5
  !rest
  !ds5
  !rest
  db 60
  !g4
  db 6
  !gs4
  !rest
  !as4
  !rest
  !c5
  !rest
  db 60
  !g5
  db 6
  !fs5
  !rest
  !d5
  !rest
  db 72
  !a5
  db 36
  !as5
  db 30
  !b5
  db 6
  !rest
  !end

.pattern2_1
  !instr,!instr06
  !volume,244
  db 96
  !fs4
  !g4
  db 24
  !gs4
  db 72
  !a4
  !volume,255
  !pan,4
  db 36
  !as4
  db 30
  !b4
  db 6
  !rest
  !end

.pattern2_2
  !instr,!instr04
  db 96
  !g3
  !gs3
  !a3
  db 36
  !as3
  !b3
  !end

.pattern2_3
  !instr,!instr03
  !volume,166
  !pan,6
  db 96
  !c6
  !cs6
  db 24
  !d6
  db 72
  !ds6
  !volume,178
  !pan,15
  db 36
  !e6
  db 30
  !f6
  db 6
  !rest
  !end

.pattern2_4
  !instr,!instr0A
  !volume,139
  !pan,12
  db 96
  !fs4
  !g4
  !volume,160
  db 24
  !gs4
  db 72
  !a4
  !volume,189
  db 36
  !as4
  db 30
  !b4
  db 6
  !rest
  !end

.pattern2_5
  !instr,!instr09
  !volume,200
  db 6
  !d4
  !rest
  !instr,!instr01
  !volume,101
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  !volume,124
  db 4
  !c5
  db 8
  !rest
  !volume,115
  db 4
  !c5
  db 8
  !rest
  !volume,132
  db 4
  !c5
  db 8
  !rest
  !instr,!instr02
  !volume,139
  db 24
  !fs4
  !instr,!instr09
  !volume,229
  db 6
  !d4
  db 18
  !rest
  !instr,!instr01
  !volume,132
  db 4
  !c5
  db 8
  !rest
  !volume,153
  db 4
  !c5
  db 8
  !rest
  !volume,150
  db 4
  !c5
  db 8
  !rest
  !volume,163
  db 4
  !c5
  db 8
  !rest
  !instr,!instr02
  !volume,169
  db 24
  !fs4
  !instr,!instr09
  !volume,252
  db 6
  !d4
  db 18
  !rest
  !instr,!instr02
  !volume,229
  db 24
  !fs4
  !instr,!instr01
  !volume,132
  db 4
  !c5
  db 8
  !rest
  !volume,163
  db 4
  !c5
  db 20
  !rest
  !volume,132
  db 4
  !c5
  db 8
  !rest
  !instr,!instr02
  !volume,255
  db 36
  !fs4
  !fs4
  !end

.pattern2_7
  !instr,!instr00
  !volume,99
  db 96
  !fs3
  !g3
  !volume,102
  db 24
  !gs3
  db 72
  !a3
  !volume,111
  db 36
  !as3
  db 30
  !b3
  db 6
  !rest
  !end

.pattern3_0
  !instr,!instr06
  db 12
  !ds5
  db 24
  !rest
  db 12
  !ds5
  db 24
  !rest
  db 12
  !e5
  !rest
  !cs5
  !rest
  !ds5
  db 24
  !rest
  db 12
  !ds5
  db 24
  !rest
  db 12
  !e5
  !rest
  !cs5
  !rest
  !ds5
  db 24
  !rest
  db 12
  !ds5
  db 24
  !rest
  db 12
  !e5
  !rest
  !cs5
  !rest
  !ds5
  db 24
  !rest
  db 12
  !ds5
  db 24
  !rest
  db 12
  !e5
  !rest
  !cs5
  !rest
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !end

.pattern3_1
  !instr,!instr05
  !volume,246
  !pan,6
  db 12
  !cs5
  db 24
  !rest
  db 12
  !cs5
  db 24
  !rest
  db 12
  !d5
  !rest
  !b4
  !rest
  !cs5
  db 24
  !rest
  db 12
  !cs5
  db 24
  !rest
  db 12
  !d5
  !rest
  !b4
  !rest
  !instr,!instr06
  !volume,153
  !ds6
  !dynamicVolume,1,160
  db 14
  !tie
  !volume,169
  !dynamicVolume,7,172
  db 21
  !tie
  !dynamicVolume,1,181
  db 14
  !tie
  !dynamicVolume,1,187
  !tie
  !dynamicVolume,1,197
  !tie
  !dynamicVolume,1,205
  !tie
  !dynamicVolume,1,212
  !tie
  !dynamicVolume,1,217
  db 3
  !tie
  db 11
  !ds6
  !dynamicVolume,1,224
  db 14
  !tie
  !dynamicVolume,1,231
  !tie
  !dynamicVolume,1,235
  !tie
  !dynamicVolume,1,239
  !tie
  !dynamicVolume,1,246
  db 18
  !tie
  !dynamicVolume,1,254
  db 10
  !tie
  db 14
  !tie
  db 11
  !tie
  !dynamicVolume,1,250
  db 12
  !d6
  db 60
  !rest
  !instr,!instr05
  !dynamicVolume,1,157
  db 12
  !b4
  !rest
  !gs4
  !rest
  !dynamicVolume,1,166
  !as4
  db 24
  !rest
  !dynamicVolume,1,157
  db 12
  !as4
  db 24
  !rest
  db 12
  !b4
  !rest
  !gs4
  !rest
  !as4
  db 24
  !rest
  db 12
  !as4
  db 24
  !rest
  db 12
  !b4
  !rest
  !gs4
  !rest
  !dynamicVolume,1,178
  !as4
  db 24
  !rest
  db 12
  !as4
  db 24
  !rest
  db 12
  !b4
  !rest
  !gs4
  !rest
  !end

.pattern3_2
  !instr,!instr04
  db 72
  !ds4
  db 24
  !e4
  !cs4
  db 72
  !ds4
  db 24
  !e4
  !cs4
  db 72
  !ds4
  db 24
  !e4
  !cs4
  db 72
  !ds4
  db 24
  !e4
  !cs4
  db 72
  !c4
  db 24
  !cs4
  !as3
  db 72
  !c4
  db 24
  !cs4
  !as3
  db 72
  !c4
  db 24
  !cs4
  !as3
  db 72
  !c4
  db 24
  !cs4
  !as3
  !end

.pattern3_3
  !instr,!instr03
  db 18
  !ds3
  !rest
  !volume,255
  !pan,8
  db 12
  !ds6
  db 24
  !rest
  db 12
  !e6
  !rest
  !cs6
  !rest
  !ds6
  db 24
  !rest
  db 12
  !ds6
  db 24
  !rest
  db 12
  !e6
  !rest
  !cs6
  !rest
  !instr,!instr06
  !volume,181
  !pan,6
  db 11
  !cs6
  !dynamicVolume,1,157
  db 14
  !tie
  !dynamicVolume,1,166
  !tie
  !dynamicVolume,1,172
  db 13
  !tie
  !dynamicVolume,1,181
  db 14
  !tie
  !dynamicVolume,1,187
  !tie
  !dynamicVolume,1,197
  db 13
  !tie
  !dynamicVolume,1,205
  db 14
  !tie
  !dynamicVolume,1,212
  db 13
  !tie
  db 1
  !cs6
  !dynamicVolume,1,217
  db 13
  !tie
  !dynamicVolume,1,224
  db 14
  !tie
  !dynamicVolume,1,231
  db 13
  !tie
  !dynamicVolume,1,235
  db 14
  !tie
  !dynamicVolume,1,239
  !tie
  !dynamicVolume,1,246
  db 13
  !tie
  !dynamicVolume,1,252
  db 14
  !tie
  !dynamicVolume,1,254
  !tie
  db 10
  !tie
  !dynamicVolume,1,255
  db 12
  !c6
  db 24
  !rest
  !instr,!instr03
  !pan,8
  db 12
  !c6
  db 24
  !rest
  db 12
  !cs6
  !rest
  !as5
  !rest
  !c6
  db 24
  !rest
  db 12
  !c6
  db 24
  !rest
  db 12
  !cs6
  !rest
  !as5
  !rest
  !c6
  db 24
  !rest
  db 12
  !c6
  db 24
  !rest
  db 12
  !cs6
  !rest
  !as5
  !rest
  !c6
  db 24
  !rest
  db 12
  !c6
  db 24
  !rest
  db 12
  !cs6
  !rest
  !as5
  !rest
  !end

.pattern3_4
  !instr,!instr04
  !volume,210
  db 72
  !as4
  db 24
  !b4
  !gs4
  db 72
  !as4
  db 24
  !b4
  !gs4
  !volume,184
  db 72
  !as4
  db 24
  !b4
  !gs4
  db 72
  !as4
  db 24
  !b4
  !gs4
  db 12
  !rest
  !instr,!instr07
  !volume,237
  !pan,11
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  !rest
  !cs4
  !rest
  !cs5
  !rest
  !as3
  !rest
  !as4
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  !rest
  !cs4
  !rest
  !cs5
  !rest
  !as3
  !rest
  !as4
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  !rest
  !cs4
  !rest
  !cs5
  !rest
  !as3
  !rest
  !as4
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  !rest
  !cs4
  !rest
  !cs5
  !rest
  !as3
  !rest
  !as4
  !rest
  !end

.pattern3_5
  !instr,!instr02
  !volume,244
  db 25
  !fs4
  !volume,239
  !dynamicVolume,18,169
  db 23
  !tie
  !instr,!instr01
  !dynamicVolume,1,128
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,136
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,128
  db 4
  !c5
  db 20
  !rest
  !dynamicVolume,1,136
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !dynamicVolume,1,184
  db 6
  !c5
  !rest
  !d4
  !rest
  !instr,!instr01
  !dynamicVolume,1,101
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 20
  !rest
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !dynamicVolume,1,175
  db 6
  !f4
  !rest
  !instr,!instr01
  !dynamicVolume,1,101
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !dynamicVolume,1,200
  db 6
  !d4
  !rest
  !instr,!instr01
  !dynamicVolume,1,101
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,111
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,101
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,120
  db 4
  !c5
  db 20
  !rest
  !dynamicVolume,1,101
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,120
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !dynamicVolume,1,189
  db 6
  !f4
  !rest
  !dynamicVolume,1,252
  !d4
  !rest
  !instr,!instr01
  !dynamicVolume,1,128
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,150
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,143
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,160
  db 4
  !c5
  db 20
  !rest
  !instr,!instr09
  !dynamicVolume,1,200
  db 6
  !f4
  !rest
  !dynamicVolume,1,217
  !d4
  !rest
  !dynamicVolume,1,184
  !c5
  !rest
  !instr,!instr02
  !dynamicVolume,1,255
  db 37
  !fs4
  !dynamicVolume,29,178
  db 35
  !tie
  !instr,!instr01
  !dynamicVolume,1,143
  db 4
  !c5
  db 20
  !rest
  !dynamicVolume,1,160
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !dynamicVolume,1,184
  db 6
  !c5
  !rest
  !d4
  !rest
  !instr,!instr01
  !dynamicVolume,1,101
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 20
  !rest
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !dynamicVolume,1,175
  db 6
  !f4
  !rest
  !instr,!instr01
  !dynamicVolume,1,101
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !dynamicVolume,1,200
  db 6
  !d4
  !rest
  !instr,!instr01
  !dynamicVolume,1,101
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,111
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,101
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,120
  db 4
  !c5
  db 20
  !rest
  !dynamicVolume,1,101
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,120
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !dynamicVolume,1,189
  db 6
  !f4
  !rest
  !dynamicVolume,1,184
  !d4
  !rest
  !instr,!instr01
  !dynamicVolume,1,128
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,150
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,143
  db 4
  !c5
  db 8
  !rest
  !dynamicVolume,1,166
  db 4
  !c5
  db 20
  !rest
  !dynamicVolume,1,136
  db 4
  !c5
  db 8
  !rest
  !instr,!instr09
  !dynamicVolume,1,217
  db 6
  !d4
  !rest
  !instr,!instr01
  !dynamicVolume,1,172
  db 4
  !c5
  db 8
  !rest
  !end

.pattern3_6
  db 24
  !tie
  !instr,!instr08
  db 6
  !ds5
  db 30
  !rest
  db 6
  !ds5
  db 18
  !rest
  db 6
  !e5
  db 18
  !rest
  db 6
  !cs5
  db 30
  !rest
  db 6
  !ds5
  db 30
  !rest
  db 6
  !ds5
  db 18
  !rest
  db 6
  !e5
  db 18
  !rest
  db 6
  !cs5
  !rest
  !instr,!instr03
  !volume,248
  db 12
  !ds6
  db 24
  !rest
  db 12
  !ds6
  db 24
  !rest
  db 12
  !e6
  !rest
  !cs6
  !rest
  !ds6
  db 24
  !rest
  db 12
  !ds6
  db 24
  !rest
  db 12
  !e6
  !rest
  !cs6
  !rest
  !instr,!instr08
  !cs6
  !rest
  !volume,244
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  db 30
  !rest
  !volume,231
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  db 30
  !rest
  !volume,222
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  db 30
  !rest
  !volume,244
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  !rest
  !end

.pattern3_7
  !instr,!instr00
  !volume,109
  db 12
  !ds3
  !rest
  db 6
  !ds3
  !rest
  db 12
  !ds3
  !rest
  db 6
  !ds3
  !rest
  db 12
  !e3
  db 6
  !e3
  !rest
  db 12
  !e3
  db 6
  !e3
  !rest
  db 12
  !ds3
  !rest
  db 6
  !ds3
  !rest
  db 12
  !ds3
  !rest
  db 6
  !ds3
  !rest
  db 12
  !e3
  db 6
  !e3
  !rest
  db 12
  !e3
  db 6
  !e3
  !rest
  db 12
  !ds3
  !rest
  db 6
  !ds3
  !rest
  db 12
  !ds3
  !rest
  db 6
  !ds3
  !rest
  db 12
  !e3
  db 6
  !e3
  !rest
  db 12
  !e3
  db 6
  !e3
  !rest
  db 12
  !ds3
  !rest
  db 6
  !ds3
  !rest
  db 12
  !ds3
  !rest
  db 6
  !ds3
  !rest
  db 12
  !e3
  db 6
  !e3
  !rest
  db 12
  !e3
  db 6
  !e3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !c3
  !rest
  db 6
  !c3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  db 12
  !cs3
  db 6
  !cs3
  !rest
  !end

.pattern4_4
  !instr,!instr0A
  !volume,139
  !pan,12
  db 96
  !fs4
  !g4
  !volume,160
  db 24
  !gs4
  db 72
  !a4
  !volume,187
  db 36
  !as4
  db 30
  !b4
  db 6
  !rest
  !end

.pattern4_5
  !instr,!instr09
  !volume,200
  db 6
  !d4
  !rest
  !instr,!instr01
  !volume,101
  db 4
  !c5
  db 8
  !rest
  db 4
  !c5
  db 8
  !rest
  !volume,120
  db 4
  !c5
  db 8
  !rest
  !volume,111
  db 4
  !c5
  db 8
  !rest
  !volume,128
  db 4
  !c5
  db 8
  !rest
  !instr,!instr02
  !volume,136
  db 24
  !fs4
  !instr,!instr09
  !volume,229
  db 6
  !d4
  db 18
  !rest
  !instr,!instr01
  !volume,128
  db 4
  !c5
  db 8
  !rest
  !volume,150
  db 4
  !c5
  db 8
  !rest
  !volume,143
  db 4
  !c5
  db 8
  !rest
  !volume,160
  db 4
  !c5
  db 8
  !rest
  !instr,!instr02
  !volume,166
  db 24
  !fs4
  !instr,!instr09
  !volume,252
  db 6
  !d4
  db 18
  !rest
  !instr,!instr02
  !volume,222
  db 24
  !fs4
  !instr,!instr01
  !volume,128
  db 4
  !c5
  db 8
  !rest
  !volume,160
  db 4
  !c5
  db 20
  !rest
  !volume,128
  db 4
  !c5
  db 8
  !rest
  !instr,!instr02
  !volume,252
  db 36
  !fs4
  !fs4
  !end

.pattern4_7
  !instr,!instr00
  !volume,99
  db 96
  !fs3
  !g3
  !volume,102
  db 24
  !gs3
  db 72
  !a3
  !volume,111
  db 36
  !as3
  db 30
  !b3
  db 6
  !rest
  !end

.pattern5_0
  !instr,!instr06
  db 12
  !ds5
  db 24
  !rest
  db 12
  !ds5
  db 24
  !rest
  db 12
  !e5
  !rest
  !cs5
  !rest
  !ds5
  db 24
  !rest
  db 12
  !ds5
  db 24
  !rest
  db 12
  !e5
  !rest
  !cs5
  !rest
  !ds5
  db 24
  !rest
  db 12
  !ds5
  db 24
  !rest
  db 12
  !e5
  !rest
  !cs5
  !rest
  !ds5
  db 24
  !rest
  db 12
  !ds5
  db 24
  !rest
  db 12
  !e5
  !rest
  !cs5
  !rest
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !volume,250
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !volume,255
  !c5
  db 24
  !rest
  db 12
  !c5
  db 24
  !rest
  db 12
  !cs5
  !rest
  !as4
  !rest
  !end

.pattern5_1
  !instr,!instr05
  !volume,166
  !pan,6
  db 12
  !cs5
  db 24
  !rest
  db 12
  !cs5
  db 24
  !rest
  db 12
  !d5
  !rest
  !b4
  !rest
  !volume,150
  !cs5
  db 24
  !rest
  db 12
  !cs5
  db 24
  !rest
  db 12
  !d5
  !rest
  !b4
  !rest
  !instr,!instr06
  !volume,153
  !ds6
  !dynamicVolume,1,160
  db 14
  !tie
  !volume,169
  !dynamicVolume,7,172
  db 21
  !tie
  !dynamicVolume,1,181
  db 14
  !tie
  !dynamicVolume,1,187
  !tie
  !dynamicVolume,1,197
  !tie
  !dynamicVolume,1,205
  !tie
  !dynamicVolume,1,212
  !tie
  !dynamicVolume,1,217
  db 3
  !tie
  db 11
  !ds6
  !dynamicVolume,1,224
  db 14
  !tie
  !dynamicVolume,1,231
  !tie
  !dynamicVolume,1,235
  !tie
  !dynamicVolume,1,239
  !tie
  !dynamicVolume,1,246
  db 18
  !tie
  !dynamicVolume,1,254
  db 10
  !tie
  db 14
  !tie
  db 11
  !tie
  !dynamicVolume,1,237
  db 12
  !d6
  db 60
  !rest
  !instr,!instr05
  !dynamicVolume,1,150
  db 12
  !b4
  !rest
  !gs4
  !rest
  !dynamicVolume,1,166
  !as4
  db 24
  !rest
  !dynamicVolume,1,157
  db 12
  !as4
  db 24
  !rest
  db 12
  !b4
  !rest
  !gs4
  !rest
  !dynamicVolume,1,150
  !as4
  db 24
  !rest
  db 12
  !as4
  db 24
  !rest
  db 12
  !b4
  !rest
  !gs4
  !rest
  !dynamicVolume,1,169
  !as4
  db 24
  !rest
  db 12
  !as4
  db 24
  !rest
  db 12
  !b4
  !rest
  !gs4
  !rest
  !end

.pattern5_3
  !instr,!instr03
  db 18
  !ds3
  !rest
  !volume,255
  !pan,8
  db 12
  !ds6
  db 24
  !rest
  db 12
  !e6
  !rest
  !cs6
  !rest
  !ds6
  db 24
  !rest
  db 12
  !ds6
  db 24
  !rest
  db 12
  !e6
  !rest
  !cs6
  !rest
  !instr,!instr06
  !volume,181
  !pan,6
  db 11
  !cs6
  !dynamicVolume,1,157
  db 14
  !tie
  !dynamicVolume,1,166
  !tie
  !dynamicVolume,1,172
  db 13
  !tie
  !dynamicVolume,1,181
  db 14
  !tie
  !dynamicVolume,1,187
  !tie
  !dynamicVolume,1,197
  db 13
  !tie
  !dynamicVolume,1,205
  db 14
  !tie
  !dynamicVolume,1,212
  db 13
  !tie
  db 1
  !cs6
  !dynamicVolume,1,217
  db 13
  !tie
  !dynamicVolume,1,224
  db 14
  !tie
  !dynamicVolume,1,231
  db 13
  !tie
  !dynamicVolume,1,235
  db 14
  !tie
  !dynamicVolume,1,239
  !tie
  !dynamicVolume,1,246
  db 13
  !tie
  !dynamicVolume,1,252
  db 14
  !tie
  !dynamicVolume,1,254
  !tie
  db 10
  !tie
  !dynamicVolume,1,255
  db 12
  !c6
  db 24
  !rest
  !instr,!instr03
  !pan,8
  db 12
  !c6
  db 24
  !rest
  db 12
  !cs6
  !rest
  !as5
  !rest
  !c6
  db 24
  !rest
  db 12
  !c6
  db 24
  !rest
  db 12
  !cs6
  !rest
  !as5
  !rest
  !dynamicVolume,1,248
  !c6
  db 24
  !rest
  db 12
  !c6
  db 24
  !rest
  db 12
  !cs6
  !rest
  !as5
  !rest
  !c6
  db 24
  !rest
  db 12
  !c6
  db 24
  !rest
  !dynamicVolume,1,255
  db 12
  !cs6
  !rest
  !as5
  !rest
  !end

.pattern5_4
  !instr,!instr04
  !volume,210
  db 72
  !as4
  db 24
  !b4
  !gs4
  !volume,200
  db 72
  !as4
  db 24
  !b4
  !gs4
  !volume,184
  db 72
  !as4
  db 24
  !b4
  !gs4
  db 72
  !as4
  db 24
  !b4
  !gs4
  db 12
  !rest
  !instr,!instr07
  !volume,210
  !pan,11
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  !rest
  !volume,200
  !cs4
  !rest
  !cs5
  !rest
  !as3
  !rest
  !as4
  db 18
  !rest
  !volume,150
  db 6
  !c4
  !rest
  !volume,132
  !c5
  db 18
  !rest
  !volume,150
  db 6
  !c4
  !rest
  !volume,132
  !c5
  !rest
  !volume,150
  !cs4
  !rest
  !volume,132
  !cs5
  !rest
  !volume,150
  !as3
  !rest
  !volume,132
  !as4
  db 18
  !rest
  !volume,150
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !c4
  !rest
  !c5
  !rest
  !cs4
  !rest
  !cs5
  !rest
  !as3
  !rest
  !as4
  db 18
  !rest
  !volume,184
  db 6
  !c4
  !rest
  !c5
  db 18
  !rest
  db 6
  !c4
  !rest
  !volume,189
  !c5
  !rest
  !volume,229
  !cs4
  !rest
  !cs5
  !rest
  !volume,237
  !as3
  !rest
  !as4
  !rest
  !end

.pattern5_6
  db 24
  !tie
  !instr,!instr08
  db 6
  !ds5
  db 30
  !rest
  db 6
  !ds5
  db 18
  !rest
  db 6
  !e5
  db 18
  !rest
  db 6
  !cs5
  db 30
  !rest
  !volume,231
  db 6
  !ds5
  db 30
  !rest
  db 6
  !ds5
  db 18
  !rest
  db 6
  !e5
  db 18
  !rest
  db 6
  !cs5
  !rest
  !instr,!instr03
  !volume,248
  db 12
  !ds6
  db 24
  !rest
  db 12
  !ds6
  db 24
  !rest
  db 12
  !e6
  !rest
  !cs6
  !rest
  !ds6
  db 24
  !rest
  db 12
  !ds6
  db 24
  !rest
  db 12
  !e6
  !rest
  !cs6
  !rest
  !instr,!instr08
  !cs6
  !rest
  !volume,244
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  db 30
  !rest
  !volume,231
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  db 30
  !rest
  !volume,222
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  db 30
  !rest
  !volume,244
  db 6
  !c5
  db 30
  !rest
  db 6
  !c5
  db 18
  !rest
  db 6
  !cs5
  db 18
  !rest
  db 6
  !as4
  !rest
  !end

.pattern6_0
  !instr,!instr0C
  !volume,197
  db 48
  !as4
  db 8
  !a4
  !as4
  !a4
  db 48
  !fs4
  db 24
  !a4
  db 48
  !as4
  db 8
  !a4
  !as4
  !a4
  db 48
  !fs4
  db 24
  !a4
  !volume,226
  db 48
  !cs5
  db 8
  !c5
  !cs5
  !c5
  db 48
  !a4
  db 24
  !c5
  !volume,246
  db 48
  !ds5
  db 8
  !d5
  !ds5
  !d5
  !volume,255
  db 48
  !fs5
  db 8
  !f5
  !fs5
  !f5
  db 12
  !ds5
  !d5
  !fs5
  !f5
  !ds5
  !d5
  !fs5
  db 6
  !f5
  !end

.pattern6_1
  !instr,!instr06
  !volume,143
  db 72
  !c5
  !volume,128
  !ds5
  !volume,111
  !fs5
  !a5
  !ds5
  !fs5
  !volume,136
  !a5
  !volume,150
  !c6
  !volume,248
  db 36
  !ds6
  db 28
  !fs6
  db 26
  !a6
  !end

.pattern6_2
  !instr,!instr04
  !volume,184
  db 72
  !ds4
  !c4
  !ds4
  !fs4
  !volume,200
  !a4
  !fs4
  !volume,210
  !a4
  !volume,231
  !c5
  !volume,255
  db 36
  !ds4
  db 28
  !fs4
  db 26
  !a4
  !end

.pattern6_3
  !instr,!instr03
  !volume,172
  !pan,6
  db 72
  !c6
  !c6
  !c6
  !c6
  !fs6
  !ds6
  !fs6
  !volume,181
  !a6
  !instr,!instr06
  !volume,233
  db 36
  !a5
  db 28
  !c6
  !volume,248
  db 26
  !ds6
  !end

.pattern6_4
  db 127
  !tie
  db 127
  !tie
  db 34
  !tie
  !instr,!instr0A
  !volume,78
  !pan,12
  db 127
  !a4
  db 17
  !tie
  db 127
  !c5
  db 17
  !tie
  !instr,!instr03
  !volume,189
  db 36
  !a5
  db 28
  !c6
  !instr,!instr0A
  !volume,242
  db 26
  !ds5
  !end

.pattern6_5
  db 108
  !tie
  !instr,!instr09
  !volume,136
  db 6
  !c5
  !rest
  !d4
  db 90
  !rest
  !volume,143
  db 6
  !f4
  db 18
  !rest
  !volume,166
  db 6
  !d4
  db 102
  !rest
  !volume,172
  db 6
  !f4
  !rest
  !volume,195
  !d4
  db 78
  !rest
  !instr,!instr01
  !volume,111
  db 6
  !c5
  !rest
  !instr,!instr09
  !volume,143
  !c5
  !rest
  !instr,!instr01
  !volume,120
  !c5
  db 30
  !rest
  !volume,166
  db 6
  !c5
  db 18
  !rest
  !volume,172
  db 6
  !c5
  !rest
  !volume,128
  !c5
  !rest
  !instr,!instr09
  !volume,222
  !d4
  !rest
  !instr,!instr01
  !volume,111
  !c5
  !rest
  !instr,!instr09
  !volume,222
  !d4
  !rest
  !instr,!instr01
  !volume,128
  !c5
  !rest
  !c5
  !rest
  !instr,!instr09
  !volume,222
  !d4
  !rest
  !instr,!instr01
  !volume,128
  !c5
  !rest
  !instr,!instr02
  !volume,255
  db 30
  !fs4
  !end

.pattern6_6
  db 127
  !tie
  db 127
  !tie
  db 34
  !tie
  !instr,!instr08
  !volume,166
  db 6
  !a4
  !rest
  !volume,189
  db 12
  !a3
  !rest
  !volume,160
  db 6
  !a4
  !rest
  !volume,189
  db 12
  !a3
  !volume,160
  db 6
  !a4
  !rest
  !volume,205
  db 12
  !c4
  !rest
  !volume,160
  db 6
  !c5
  !rest
  !volume,200
  db 12
  !c4
  !rest
  !volume,166
  db 6
  !c5
  !rest
  !volume,200
  db 12
  !a3
  !volume,120
  db 6
  !a4
  db 18
  !rest
  !volume,200
  db 12
  !a3
  !volume,172
  db 6
  !a4
  db 18
  !rest
  !volume,239
  db 12
  !c4
  !rest
  !volume,200
  db 6
  !c5
  !rest
  !volume,233
  db 12
  !c4
  !rest
  !volume,200
  db 6
  !c5
  !rest
  !volume,239
  db 12
  !ds4
  !rest
  !volume,210
  db 6
  !ds5
  !rest
  !volume,255
  db 12
  !fs4
  !volume,222
  db 6
  !fs5
  !rest
  !volume,255
  !a3
  db 24
  !rest
  !end

.pattern6_7
  db 127
  !tie
  db 127
  !tie
  db 34
  !tie
  !instr,!instr00
  !volume,91
  db 6
  !a3
  !rest
  db 12
  !a3
  !rest
  db 6
  !a3
  !rest
  db 12
  !a3
  db 6
  !a3
  !rest
  db 12
  !c4
  !rest
  db 6
  !c4
  !rest
  db 12
  !c4
  !rest
  db 6
  !c4
  !rest
  db 12
  !a3
  db 6
  !a3
  db 18
  !rest
  db 12
  !a3
  db 6
  !a3
  db 18
  !rest
  !volume,109
  db 12
  !c4
  !rest
  db 6
  !c4
  !rest
  db 12
  !c4
  !rest
  db 6
  !c4
  !rest
  db 12
  !ds3
  !rest
  db 6
  !ds3
  !rest
  !volume,111
  db 12
  !fs3
  db 6
  !fs3
  !rest
  !a3
  db 24
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
