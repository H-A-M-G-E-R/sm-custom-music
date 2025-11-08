; Track 60
; Converted from IT using mITroid (https://github.com/tewtal/mITroid),
; made tweaks by disassembling the generated SPC file using my tool (https://github.com/H-A-M-G-E-R/nspc-track-disassembler) 

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

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$00,$00,$7F,$0B,$06
  db !instr01,$00,$00,$7F,$03,$32
  db !instr02,$00,$00,$7F,$02,$85
  db !instr03,$8F,$F4,$00,$05,$49
  db !instr04,$8F,$F7,$00,$02,$A2
  db !instr05,$00,$00,$7F,$02,$3D
  db !instr06,$00,$00,$7F,$16,$0B
  db !instr07,$00,$00,$7F,$01,$51
  db !instr08,$00,$00,$7F,$02,$A4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1044
  dw Sample01,Sample01+1170
  dw Sample02,Sample02+243
  dw Sample03,Sample03+522
  dw Sample04,Sample04+27
  dw Sample05,Sample05+684
  dw Sample06,Sample06+1080
  dw Sample07,Sample07+1233
  dw Sample08,Sample08+3726
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_7ac453cdc8dac8fcf75cf44ba10d3d6e.brr"
  Sample01: incbin "Sample_a305c08b62da08d8595069b4e7e97601.brr"
  Sample02: incbin "Sample_f339dc030614af187c5038e83e75b669.brr"
  Sample03: incbin "Sample_3248d48ad43ab4e39ab60f6bec907064.brr"
  Sample04: incbin "Sample_149030ee529581d59da6056956d993b7.brr"
  Sample05: incbin "Sample_47155321507ff360c05252e12e450f37.brr"
  Sample06: incbin "Sample_9d0252b0d8006b11a255f352ec79540a.brr"
  Sample07: incbin "Sample_c95c18f8f092e58956fdfbb91cb359e9.brr"
  Sample08: incbin "Sample_1ca94b07738a785f8336e8baf3016bf8.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker5830

Tracker5830:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7

.pattern0_0
  !echo,%00001111,60,60
  !echoParameters,2,20,0
  !musicVolume,225
  !tempo,60
  !end

.pattern1_0
  !instr,!instr04
  !volume,215
  !pan,5
  db 12
  !as6
  !volume,187
  !b6
  !c7
  !cs7
  !volume,215
  !fs6
  !volume,187
  !g6
  !gs6
  !a6
  !volume,215
  !cs6
  !volume,187
  !d6
  !volume,215
  !cs7
  !volume,187
  !d7
  !ds7
  !e7
  !volume,215
  !as6
  !volume,187
  !b6
  !c7
  !cs7
  !volume,215
  !fs6
  !volume,187
  !g6
  !volume,239
  !gs6
  !volume,197
  !d6
  !volume,192
  !a5
  !volume,231
  !a6
  !volume,187
  !ds6
  !volume,178
  !as5
  !volume,219
  !as6
  !volume,172
  !as5
  !volume,197
  !f6
  !volume,187
  !fs6
  !g6
  !gs6
  !volume,202
  !a6
  !volume,215
  !as6
  !volume,231
  !b6
  !c7
  !end

.pattern1_1
  !instr,!instr05
  !volume,239
  db 48
  !f6
  !fs6
  !f6
  !fs6
  !f6
  !fs6
  !f6
  db 36
  !fs6
  db 12
  !b6
  !cs7
  !f7
  !b7
  !transpose,2
  !b7
  !end

.pattern1_2
  !instr,!instr04
  !volume,202
  !pan,14
  db 16
  !e6
  db 32
  !rest
  db 16
  !c6
  db 32
  !rest
  db 16
  !g5
  db 8
  !rest
  db 16
  !g6
  db 32
  !rest
  db 16
  !e6
  db 32
  !rest
  !volume,239
  db 24
  !g4
  db 36
  !as4
  !b4
  db 16
  !c5
  db 104
  !rest
  !end

.pattern1_3
  db 126
  !tie
  db 90
  !tie
  !instr,!instr05
  !volume,195
  !pan,3
  db 24
  !cs6
  db 36
  !e6
  !f6
  db 16
  !fs6
  db 104
  !rest
  !end

.pattern1_4
  !instr,!instr03
  !volume,210
  db 48
  !fs4
  !instr,!instr01
  !volume,222
  !c5
  !volume,226
  db 24
  !c5
  !instr,!instr03
  !volume,210
  db 48
  !fs4
  !instr,!instr01
  !volume,231
  !c5
  db 24
  !c5
  !instr,!instr03
  !volume,210
  db 36
  !fs4
  !fs4
  db 24
  !fs4
  !instr,!instr01
  !volume,226
  db 12
  !c5
  !c5
  !c5
  !c5
  db 8
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !end

.pattern1_5
  !instr,!instr00
  !volume,181
  db 12
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !b3
  !cs4
  !f4
  !b4
  !cs5
  !end

.pattern1_6
  db 2
  !tie
  !instr,!instr06
  !volume,181
  db 12
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !b3
  !cs3
  !f3
  !b3
  db 10
  !cs4
  !end

.pattern2_0
  !instr,!instr04
  !volume,202
  !pan,3
  db 12
  !c5
  !cs5
  !as4
  !c5
  !ds5
  !e5
  !cs5
  !d5
  !c5
  !cs5
  !as4
  !c5
  !ds5
  !e5
  !cs5
  !d5
  !instr,!instr07
  !ds5
  !e5
  !cs5
  !ds5
  !fs5
  !g5
  !e5
  !f5
  !ds5
  !e5
  !cs5
  !ds5
  !fs5
  !g5
  !e5
  !f5
  !instr,!instr04
  !fs5
  !g5
  !ds5
  !fs5
  !a5
  !as5
  !fs5
  !g5
  !a5
  !as5
  !fs5
  !g5
  !cs6
  !d6
  !as5
  !b5
  !f6
  !fs6
  !d6
  !ds6
  !a6
  !gs6
  !c7
  !b6
  !e7
  !ds7
  !d7
  !cs7
  !c7
  !b6
  !as6
  !a6
  !e5
  !f5
  !d5
  !e5
  !g5
  !gs5
  !f5
  !fs5
  !e5
  !f5
  !d5
  !e5
  !g5
  !gs5
  !f5
  !fs5
  !instr,!instr07
  !g5
  !gs5
  !f5
  !g5
  !as5
  !b5
  !gs5
  !a5
  !g5
  !gs5
  !f5
  !g5
  !as5
  !b5
  !gs5
  !a5
  !instr,!instr04
  !as5
  !b5
  !g5
  !as5
  !cs6
  !d6
  !as5
  !b5
  !cs6
  !d6
  !as5
  !b5
  !f6
  !fs6
  !d6
  !ds6
  !gs6
  !g6
  !c7
  !b6
  !d7
  !cs7
  !e7
  !ds7
  !fs7
  !f7
  !e7
  !ds7
  !d7
  !cs7
  !c7
  !b6
  !end

.pattern2_1
  !transpose,0
  !instr,!instr05
  !pan,15
  db 36
  !c6
  !c6
  db 24
  !c6
  db 36
  !c6
  !c6
  db 24
  !cs6
  db 36
  !c6
  !c6
  db 24
  !c6
  db 36
  !c6
  !c6
  db 24
  !cs6
  db 36
  !c6
  !c6
  db 24
  !c6
  db 36
  !c6
  !c6
  db 24
  !cs6
  db 36
  !c6
  !c6
  db 24
  !c6
  db 36
  !c6
  !c6
  db 24
  !cs6
  db 34
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 22
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 24
  !ds6
  db 34
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 22
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 24
  !ds6
  db 34
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 22
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 24
  !ds6
  db 34
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 22
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 34
  !d6
  db 2
  !rest
  db 24
  !ds6
  !end

.pattern2_2
  !instr,!instr05
  !volume,202
  !pan,4
  db 36
  !g6
  !g6
  db 24
  !g6
  db 36
  !g6
  !g6
  db 24
  !gs6
  !instr,!instr04
  !pan,14
  db 12
  !c5
  !cs5
  !as4
  !c5
  !ds5
  !e5
  !cs5
  !d5
  !c5
  !cs5
  !as4
  !c5
  !ds5
  !e5
  !cs5
  !d5
  !volume,239
  !c5
  !cs5
  !as4
  !c5
  !ds5
  !e5
  !cs5
  !d5
  !c5
  !cs5
  !as4
  !c5
  !ds5
  !e5
  !cs5
  !d5
  !c5
  !cs5
  !as4
  !c5
  !ds5
  !e5
  !cs5
  !d5
  !c5
  !cs5
  !as4
  !c5
  !ds5
  !e5
  !cs5
  !d5
  !instr,!instr05
  !volume,202
  !pan,4
  db 36
  !a6
  !a6
  db 24
  !a6
  db 36
  !a6
  !a6
  db 24
  !as6
  !instr,!instr04
  !pan,14
  db 12
  !e5
  !f5
  !d5
  !e5
  !g5
  !gs5
  !f5
  !fs5
  !e5
  !f5
  !d5
  !e5
  !g5
  !gs5
  !f5
  !fs5
  !volume,231
  !e5
  !f5
  !d5
  !e5
  !g5
  !gs5
  !f5
  !fs5
  !e5
  !f5
  !d5
  !e5
  !g5
  !gs5
  !f5
  !fs5
  !e5
  !f5
  !d5
  !e5
  !g5
  !gs5
  !f5
  !fs5
  !e5
  !f5
  !d5
  !e5
  !g5
  !gs5
  !f5
  !fs5
  !end

.pattern2_3
  db 126
  !rest
  db 66
  !tie
  !instr,!instr05
  !volume,172
  db 48
  !g6
  !g6
  !g6
  db 24
  !g6
  !gs6
  db 48
  !g6
  !g6
  !g6
  db 24
  !g6
  !gs6
  !instr,!instr04
  !volume,195
  db 12
  !ds5
  !e5
  !cs5
  !ds5
  !fs5
  !g5
  !e5
  !f5
  !ds5
  !e5
  !cs5
  !ds5
  !fs5
  !g5
  !e5
  !f5
  db 126
  !rest
  db 66
  !tie
  !instr,!instr05
  !volume,202
  db 48
  !a6
  !a6
  !a6
  db 24
  !a6
  !as6
  db 48
  !a6
  !a6
  !a6
  db 24
  !a6
  !as6
  !instr,!instr04
  !volume,195
  db 12
  !g5
  !gs5
  !f5
  !g5
  !as5
  !b5
  !gs5
  !a5
  !g5
  !gs5
  !f5
  !g5
  !as5
  !b5
  !gs5
  !a5
  !end

.pattern2_4
  !instr,!instr03
  !volume,231
  !pan,13
  db 126
  !fs4
  !tie
  !tie
  db 6
  !tie
  !instr,!instr01
  !volume,189
  db 12
  !c5
  !volume,120
  !c5
  !volume,160
  !c5
  !volume,111
  !c5
  !volume,189
  !c5
  !volume,143
  !c5
  !volume,189
  !c5
  !volume,160
  !c5
  !volume,200
  !c5
  !volume,160
  !c5
  !volume,200
  !c5
  !volume,172
  !c5
  !volume,200
  !c5
  !volume,210
  !c5
  !volume,226
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  db 8
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !volume,244
  db 6
  !c5
  !c5
  !c5
  !c5
  !volume,184
  db 36
  !c5
  !volume,128
  !c5
  db 24
  !c5
  !volume,184
  db 36
  !c5
  !volume,128
  !c5
  db 24
  !c5
  !volume,184
  db 36
  !c5
  !volume,128
  !c5
  db 24
  !c5
  !volume,184
  db 36
  !c5
  !volume,128
  !c5
  db 24
  !c5
  !volume,189
  db 12
  !c5
  !volume,120
  !c5
  !volume,160
  !c5
  !volume,111
  !c5
  !volume,189
  !c5
  !volume,143
  !c5
  !volume,189
  !c5
  !volume,160
  !c5
  !volume,200
  !c5
  !volume,160
  !c5
  !volume,200
  !c5
  !volume,172
  !c5
  !volume,200
  !c5
  !volume,210
  !c5
  !volume,226
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  db 8
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !end

.pattern2_5
  !instr,!instr00
  !volume,180
  !pan,10
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !d3
  db 10
  !rest
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !ds3
  db 10
  !rest
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !d3
  db 10
  !rest
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !ds3
  db 10
  !rest
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !d3
  db 10
  !rest
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !ds3
  db 10
  !rest
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !d3
  db 10
  !rest
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !ds3
  db 10
  !rest
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !d3
  db 10
  !rest
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !ds3
  db 10
  !rest
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !d3
  db 10
  !rest
  db 16
  !d3
  db 20
  !rest
  db 12
  !d3
  db 24
  !rest
  db 14
  !ds3
  db 10
  !rest
  !volume,181
  db 20
  !d3
  db 16
  !rest
  !d3
  db 20
  !rest
  db 18
  !ds3
  db 6
  !rest
  db 20
  !d3
  db 16
  !rest
  !d3
  db 20
  !rest
  db 18
  !ds3
  db 6
  !rest
  db 20
  !d3
  db 16
  !rest
  !d3
  db 20
  !rest
  db 18
  !ds3
  db 6
  !rest
  db 20
  !d3
  db 16
  !rest
  !ds3
  db 20
  !rest
  db 18
  !c3
  db 6
  !rest
  !end

.pattern2_6
  db 2
  !tie
  db 126
  !rest
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  db 22
  !tie
  !end

.pattern2_7
  db 126
  !rest
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  db 24
  !tie
  !end

.pattern3_0
  !instr,!instr04
  !volume,215
  !pan,14
  db 12
  !as6
  !volume,187
  !b6
  !c7
  !cs7
  !volume,215
  !fs6
  !volume,187
  !g6
  !gs6
  !a6
  !volume,215
  !cs6
  !volume,187
  !d6
  !volume,215
  !cs7
  !volume,187
  !d7
  !ds7
  !e7
  !volume,215
  !as6
  !volume,187
  !b6
  !c7
  !cs7
  !volume,215
  !fs6
  !volume,187
  !g6
  !volume,239
  !gs6
  !volume,197
  !d6
  !volume,192
  !a5
  !volume,231
  !a6
  !volume,187
  !ds6
  !volume,178
  !as5
  !volume,219
  !as6
  !volume,172
  !as5
  !volume,197
  !f6
  !volume,187
  !fs6
  !g6
  !gs6
  !volume,202
  !a6
  !volume,215
  !as6
  !volume,231
  !b6
  !c7
  db 36
  !c7
  !c7
  !volume,224
  db 24
  !cs7
  !volume,231
  db 36
  !c7
  !c7
  !volume,239
  db 24
  !ds7
  !volume,231
  db 36
  !f7
  !f7
  !volume,224
  db 24
  !fs7
  !volume,231
  db 36
  !f7
  !f7
  !volume,239
  db 24
  !a7
  !volume,244
  db 12
  !a7
  !volume,178
  db 24
  !a5
  !volume,219
  !a5
  !volume,255
  db 36
  !a5
  !volume,202
  !a5
  db 24
  !as5
  !volume,239
  !b5
  db 12
  !b5
  !volume,202
  !f5
  !fs5
  !g5
  !gs5
  !a5
  !volume,210
  !as5
  !volume,215
  !c6
  !volume,219
  !cs6
  !volume,224
  !f6
  !volume,231
  !fs6
  !volume,235
  !g6
  !volume,239
  db 10
  !gs6
  db 2
  !tie
  !end

.pattern3_1
  !instr,!instr05
  db 48
  !f6
  !fs6
  !f6
  !fs6
  !f6
  !fs6
  !f6
  db 36
  !fs6
  db 12
  !b6
  !cs7
  !f7
  !b7
  !transpose,2
  !b7
  !transpose,0
  db 48
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  !d6
  db 12
  !a6
  db 120
  !f6
  db 36
  !fs6
  db 24
  !g6
  db 52
  !rest
  !volume,255
  db 26
  !fs6
  db 46
  !tie
  !pitchSlide,0,10 : !c6
  !volume,239
  db 20
  !c6
  !end

.pattern3_2
  !instr,!instr04
  !volume,202
  !pan,5
  db 16
  !e6
  db 32
  !rest
  db 16
  !c6
  db 32
  !rest
  db 16
  !g5
  db 8
  !rest
  db 16
  !g6
  db 32
  !rest
  db 16
  !e6
  db 32
  !rest
  !volume,239
  db 24
  !g4
  db 36
  !as4
  !b4
  db 16
  !c5
  db 104
  !rest
  !volume,231
  db 36
  !d5
  !d5
  db 24
  !ds5
  db 36
  !d5
  !d5
  db 24
  !e5
  db 36
  !g5
  !g5
  db 24
  !gs5
  db 36
  !g5
  !g5
  db 10
  !b5
  db 14
  !rest
  !volume,254
  db 12
  !a4
  !volume,231
  db 24
  !f4
  !f4
  !volume,255
  db 12
  !f4
  !volume,250
  db 24
  !f3
  !volume,231
  db 12
  !f4
  db 24
  !rest
  !volume,219
  db 12
  !fs4
  db 24
  !rest
  !volume,224
  db 12
  !g4
  !volume,255
  !g3
  !instr,!instr08
  !volume,254
  !b4
  !c5
  !cs5
  !d5
  !fs4
  !f4
  !e4
  !ds4
  !d4
  !cs4
  !c4
  !b3
  !end

.pattern3_3
  db 126
  !rest
  db 90
  !tie
  !instr,!instr05
  db 24
  !cs6
  db 36
  !e6
  !f6
  db 16
  !fs6
  db 104
  !rest
  !volume,205
  db 36
  !gs6
  !gs6
  db 24
  !a6
  db 36
  !gs6
  !gs6
  db 24
  !as6
  !volume,195
  db 36
  !cs7
  !cs7
  db 24
  !d7
  db 36
  !cs7
  !cs7
  db 10
  !f7
  db 26
  !rest
  !instr,!instr07
  !volume,139
  db 24
  !g5
  !volume,175
  !g5
  !volume,172
  !g5
  db 12
  !rest
  db 24
  !g5
  db 12
  !rest
  db 24
  !gs5
  !volume,195
  db 12
  !a5
  !volume,172
  !c5
  !volume,195
  !a5
  db 48
  !rest
  !instr,!instr08
  !volume,172
  db 12
  !fs4
  !f4
  !e4
  !ds4
  !d4
  !cs4
  !c4
  !b3
  !end

.pattern3_4
  !instr,!instr03
  !volume,210
  db 48
  !fs4
  !instr,!instr01
  !volume,222
  !c5
  !volume,226
  db 24
  !c5
  !instr,!instr03
  !volume,210
  db 48
  !fs4
  !instr,!instr01
  !volume,231
  !c5
  db 24
  !c5
  !instr,!instr03
  !volume,210
  db 36
  !fs4
  !fs4
  db 24
  !fs4
  !instr,!instr01
  !volume,226
  db 12
  !c5
  !c5
  !c5
  !c5
  db 8
  !c5
  !c5
  !c5
  !c5
  !c5
  !c5
  !instr,!instr03
  !volume,215
  db 12
  !fs4
  !instr,!instr01
  !volume,178
  !c5
  !volume,189
  !c5
  !volume,195
  !c5
  !volume,200
  !c5
  !volume,160
  !c5
  !volume,239
  !c5
  !volume,172
  !c5
  !volume,222
  !c5
  !volume,178
  !c5
  !volume,189
  !c5
  !volume,205
  !c5
  !volume,200
  !c5
  !volume,160
  !c5
  !volume,231
  !c5
  !volume,172
  !c5
  !volume,215
  !c5
  !volume,178
  !c5
  !volume,189
  !c5
  !volume,195
  !c5
  !volume,200
  !c5
  !volume,160
  !c5
  !volume,239
  !c5
  !volume,172
  !c5
  !volume,195
  !c5
  !volume,178
  !c5
  !volume,189
  !c5
  !volume,210
  !c5
  !volume,200
  !c5
  !instr,!instr02
  !volume,248
  !as4
  !volume,255
  !gs4
  !volume,252
  !gs4
  !instr,!instr01
  !volume,215
  !c5
  !volume,178
  !c5
  !volume,189
  !c5
  !c5
  !volume,200
  !c5
  !volume,160
  !c5
  !volume,226
  !c5
  !volume,172
  !c5
  !volume,215
  !c5
  !volume,178
  !c5
  !volume,189
  !c5
  !instr,!instr02
  !volume,248
  !as4
  !instr,!instr01
  !volume,200
  !c5
  !volume,160
  !c5
  !instr,!instr02
  !volume,255
  !gs4
  !instr,!instr01
  !volume,172
  !c5
  !instr,!instr02
  !volume,231
  !f4
  !instr,!instr01
  !volume,166
  !c5
  !c5
  !c5
  !c5
  !volume,178
  !c5
  !volume,184
  !c5
  !volume,195
  !c5
  !volume,205
  !c5
  !volume,215
  !c5
  !volume,222
  db 8
  !c5
  !c5
  !volume,231
  !c5
  !end

.pattern3_5
  !instr,!instr00
  db 12
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !b3
  !cs4
  !f4
  !b4
  !cs5
  !volume,169
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !ds3
  !e3
  !ds3
  !c3
  !instr,!instr03
  !volume,152
  !pan,13
  db 96
  !fs4
  !volume,138
  db 60
  !fs4
  !volume,163
  db 36
  !fs4
  !instr,!instr07
  !volume,122
  !pan,6
  db 12
  !ds5
  !volume,128
  !e5
  !volume,138
  !f5
  !volume,143
  !fs5
  !volume,122
  !f5
  !volume,124
  !fs5
  !volume,128
  !gs5
  !volume,132
  !a5
  !volume,134
  !as5
  !volume,138
  !b5
  !volume,141
  !cs6
  !volume,143
  !d6
  !end

.pattern3_6
  db 2
  !tie
  !instr,!instr06
  db 12
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !fs3
  !f3
  !fs3
  !e3
  !f3
  !fs3
  !g3
  !f3
  !b3
  !cs3
  !f3
  !b3
  !cs4
  !volume,169
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !d3
  !ds3
  !c3
  !d3
  !ds3
  !e3
  !ds3
  !c3
  db 126
  !rest
  !tie
  db 82
  !tie
  !end

.pattern3_7
  db 126
  !tie
  db 126
  !tie
  db 126
  !tie
  db 54
  !tie
  !instr,!instr07
  !volume,172
  !pan,6
  db 10
  !fs5
  db 26
  !rest
  db 10
  !fs5
  db 26
  !rest
  db 10
  !g5
  db 14
  !rest
  !volume,181
  db 10
  !fs5
  db 26
  !rest
  db 10
  !fs5
  db 26
  !rest
  !volume,187
  db 10
  !a5
  db 14
  !rest
  !volume,172
  db 10
  !b5
  db 26
  !rest
  db 10
  !b5
  db 26
  !rest
  db 10
  !c6
  db 14
  !rest
  !volume,181
  db 10
  !b5
  db 26
  !rest
  db 10
  !b5
  db 26
  !rest
  !volume,187
  db 10
  !ds6
  db 126
  !rest
  !tie
  db 98
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
