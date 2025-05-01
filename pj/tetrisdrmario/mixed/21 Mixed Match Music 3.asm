asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr03 = $17
!instr05 = $18
!instr07 = $19
!instr08 = $1A
!instr15 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr15,$FF,$E1,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+27
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample07,Sample07+1971
  dw Sample08,Sample08+1332
  dw Sample15,Sample15+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample03: incbin "Sample03.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample08: incbin "Sample08.brr"
  Sample15: incbin "Sample15.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDF3C

TrackerDF3C:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
-
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw .pattern10
  dw .pattern11
  dw .pattern12
  dw .pattern13
  dw .pattern14
  dw .pattern15
  dw .pattern16
  dw .pattern17
  dw .pattern18
  dw .pattern19
  dw .pattern20
  dw .pattern21
  dw .pattern22
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, 0, 0, 0
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, 0, 0, 0
.pattern10: dw .pattern10_0, .pattern10_1, .pattern10_2, .pattern10_3, .pattern10_4, 0, 0, 0
.pattern11: dw .pattern11_0, .pattern11_1, .pattern11_2, .pattern11_3, .pattern11_4, 0, 0, 0
.pattern12: dw .pattern12_0, .pattern12_1, .pattern12_2, .pattern12_3, .pattern12_4, 0, 0, 0
.pattern13: dw .pattern13_0, .pattern13_1, .pattern13_2, .pattern13_3, .pattern13_4, 0, 0, 0
.pattern14: dw .pattern14_0, .pattern14_1, .pattern14_2, .pattern14_3, .pattern14_4, 0, 0, 0
.pattern15: dw .pattern15_0, .pattern15_1, .pattern15_2, .pattern15_3, .pattern15_4, 0, 0, 0
.pattern16: dw .pattern16_0, .pattern16_1, .pattern16_2, .pattern16_3, .pattern16_4, 0, 0, 0
.pattern17: dw .pattern17_0, .pattern17_1, .pattern17_2, .pattern17_3, .pattern17_4, 0, 0, 0
.pattern18: dw .pattern18_0, .pattern18_1, .pattern18_2, .pattern18_3, .pattern18_4, 0, 0, 0
.pattern19: dw .pattern19_0, .pattern19_1, .pattern19_2, .pattern19_3, .pattern19_4, 0, 0, 0
.pattern20: dw .pattern20_0, .pattern20_1, .pattern20_2, .pattern20_3, .pattern20_4, 0, 0, 0
.pattern21: dw .pattern21_0, .pattern21_1, .pattern21_2, .pattern21_3, .pattern21_4, 0, 0, 0
.pattern22: dw .pattern22_0, .pattern22_1, .pattern22_2, .pattern22_3, .pattern22_4, 0, 0, 0

.pattern0_0
  !tempo,21
  !musicVolume,210;240
  !volume,200
  !pan,10
  !echo,%00011100,20,20
  !echoParameters,4,80,0
  db 24
  !rest
  !end

.pattern0_1
  !volume,240
  !pan,10
  db 24
  !rest

.pattern0_2
  !volume,200
  !pan,10
  db 24
  !rest

.pattern0_3
  !volume,200
  !pan,10
  db 24
  !rest

.pattern0_4
  !volume,200
  !pan,10
  db 24
  !rest

.pattern1_0
  !loop : dw .subE157 : db 1
  !end

.pattern1_1
  db 96
  !rest

.pattern1_2
  db 96
  !rest

.pattern1_3
  !loop : dw .subE17B : db 1

.pattern1_4
  db 96
  !rest

.pattern2_0
  !loop : dw .subE157 : db 1
  !end

.pattern2_1
  db 96
  !rest

.pattern2_2
  db 96
  !rest

.pattern2_3
  !loop : dw .subE17B : db 1

.pattern2_4
  db 96
  !rest

.pattern3_0
  !loop : dw .subE157 : db 1
  !end

.pattern3_1
  db 96
  !rest

.pattern3_2
  db 96
  !rest

.pattern3_3
  !loop : dw .subE17B : db 1

.pattern3_4
  db 96
  !rest

.pattern4_0
  !loop : dw .subE157 : db 1
  !end

.pattern4_1
  db 96
  !rest

.pattern4_2
  db 96
  !rest

.pattern4_3
  !loop : dw .subE17B : db 1

.pattern4_4
  db 96
  !rest

.pattern5_0
  !loop : dw .subE157 : db 1
  !end

.pattern5_1
  !instr,!instr05
  db 12,$3F
  !f2
  !f2
  !e2
  !e2
  !ds2
  !ds2
  !e2
  !e2

.pattern5_2
  !instr,!instr01
  db 12,$17
  !f4
  !f4
  !e4
  !e4
  !ds4
  !ds4
  !e4
  !e4

.pattern5_3
  !loop : dw .subE17B : db 1

.pattern5_4
  !instr,!instr01
  db 8,$07
  !f5
  db 4
  !c5
  db 8
  !f5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !ds5
  db 4
  !c5
  db 8
  !ds5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5

.pattern6_0
  !loop : dw .subE157 : db 1
  !end

.pattern6_1
  !instr,!instr05
  db 12,$3F
  !f2
  !f2
  !e2
  !e2
  !ds2
  !ds2
  !e2
  !e2

.pattern6_2
  !instr,!instr01
  db 12,$17
  !f4
  !f4
  !e4
  !e4
  !ds4
  !ds4
  !e4
  !e4

.pattern6_3
  !loop : dw .subE17B : db 1

.pattern6_4
  !instr,!instr01
  db 8,$07
  !f5
  db 4
  !c5
  db 8
  !f5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !ds5
  db 4
  !c5
  db 8
  !ds5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5

.pattern7_0
  !loop : dw .subE157 : db 1
  !end

.pattern7_1
  !instr,!instr05
  db 12,$3F
  !as2
  !as2
  !a2
  !a2
  !gs2
  !gs2
  !a2
  !a2

.pattern7_2
  !instr,!instr01
  db 12,$17
  !as4
  !as4
  !a4
  !a4
  !gs4
  !gs4
  !a4
  !a4

.pattern7_3
  !loop : dw .subE17B : db 1

.pattern7_4
  !instr,!instr01
  db 8,$07
  !as5
  db 4
  !f5
  db 8
  !as5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !gs5
  db 4
  !f5
  db 8
  !gs5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5

.pattern8_0
  !loop : dw .subE157 : db 1
  !end

.pattern8_1
  !instr,!instr05
  db 12,$3F
  !as2
  !as2
  !a2
  !a2
  !gs2
  !gs2
  !a2
  !a2

.pattern8_2
  !instr,!instr01
  db 12,$17
  !as4
  !as4
  !a4
  !a4
  !gs4
  !gs4
  !a4
  !a4

.pattern8_3
  !loop : dw .subE17B : db 1

.pattern8_4
  !instr,!instr01
  db 8,$07
  !as5
  db 4
  !f5
  db 8
  !as5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !gs5
  db 4
  !f5
  db 8
  !gs5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5

.pattern9_0
  !loop : dw .subE157 : db 1
  !end

.pattern9_1
  !instr,!instr05
  db 12,$3F
  !f2
  !f2
  !e2
  !e2
  !ds2
  !ds2
  !e2
  !e2

.pattern9_2
  !instr,!instr01
  db 12,$17
  !f4
  !f4
  !e4
  !e4
  !ds4
  !ds4
  !e4
  !e4

.pattern9_3
  !loop : dw .subE17B : db 1

.pattern9_4
  !instr,!instr01
  db 8,$07
  !f5
  db 4
  !c5
  db 8
  !f5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !ds5
  db 4
  !c5
  db 8
  !ds5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5

.pattern10_0
  !loop : dw .subE1A7 : db 1
  !end

.pattern10_1
  !instr,!instr05
  db 12,$3F
  !f2
  !f2
  !rest
  !f2
  !f2
  !rest
  !f2
  !f2

.pattern10_2
  !instr,!instr01
  db 12,$17
  !f4
  !f4
  !rest
  !f4
  !f4
  !rest
  !f4
  !f4

.pattern10_3
  !loop : dw .subE17B : db 1

.pattern10_4
  !instr,!instr15
  db 24
  !rest
  db 36,$27
  !g4
  !g4

.pattern11_0
  !loop : dw .subE157 : db 1
  !end

.pattern11_1
  !instr,!instr05
  db 12,$3F
  !f2
  !f2
  !e2
  !e2
  !ds2
  !ds2
  !e2
  !e2

.pattern11_2
  !instr,!instr01
  db 12,$17
  !f4
  !f4
  !e4
  !e4
  !ds4
  !ds4
  !e4
  !e4

.pattern11_3
  !loop : dw .subE17B : db 1

.pattern11_4
  !instr,!instr01
  db 8,$07
  !f5
  db 4
  !c5
  db 8
  !f5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !ds5
  db 4
  !c5
  db 8
  !ds5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5
  db 8
  !e5
  db 4
  !c5

.pattern12_0
  !loop : dw .subE157 : db 1
  !end

.pattern12_1
  !instr,!instr05
  db 12,$3F
  !f2
  db 84
  !rest

.pattern12_2
  !instr,!instr01
  db 12,$17
  !f2
  db 84
  !rest

.pattern12_3
  !loop : dw .subE17B : db 1

.pattern12_4
  !instr,!instr01
  db 8,$07
  !f5
  db 4
  !c5
  db 84
  !rest

.pattern13_0
  !loop : dw .subE157 : db 1
  !end

.pattern13_1
  !instr,!instr05
  db 12,$3F
  !as2
  !as2
  !a2
  !a2
  !gs2
  !gs2
  !a2
  !a2

.pattern13_2
  !instr,!instr01
  db 12,$17
  !as4
  !as4
  !a4
  !a4
  !gs4
  !gs4
  !a4
  !a4

.pattern13_3
  !loop : dw .subE17B : db 1

.pattern13_4
  !instr,!instr01
  db 8,$07
  !as5
  db 4
  !f5
  db 8
  !as5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !gs5
  db 4
  !f5
  db 8
  !gs5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5

.pattern14_0
  !loop : dw .subE157 : db 1
  !end

.pattern14_1
  !instr,!instr05
  db 12,$3F
  !as2
  !as2
  !a2
  !a2
  !gs2
  !gs2
  !a2
  !a2

.pattern14_2
  !instr,!instr01
  db 12,$17
  !as4
  !as4
  !a4
  !a4
  !gs4
  !gs4
  !a4
  !a4

.pattern14_3
  !loop : dw .subE17B : db 1

.pattern14_4
  !instr,!instr01
  db 8,$07
  !as5
  db 4
  !f5
  db 8
  !as5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !gs5
  db 4
  !f5
  db 8
  !gs5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5
  db 8
  !a5
  db 4
  !f5

.pattern15_0
  !loop : dw .subE157 : db 1
  !end

.pattern15_1
  db 96
  !rest

.pattern15_2
  !loop : dw .subE1CA : db 1

.pattern15_3
  !loop : dw .subE17B : db 1

.pattern15_4
  db 96
  !rest

.pattern16_0
  !loop : dw .subE1A7 : db 1
  !end

.pattern16_1
  db 96
  !rest

.pattern16_2
  !loop : dw .subE1CA : db 1

.pattern16_3
  !loop : dw .subE17B : db 1

.pattern16_4
  db 96
  !rest

.pattern17_0
  !loop : dw .subE157 : db 1
  !end

.pattern17_1
  !instr,!instr05
  db 12,$3F
  !f2
  db 84
  !rest

.pattern17_2
  !instr,!instr01
  db 12,$17
  !f2
  db 84
  !rest

.pattern17_3
  !loop : dw .subE17B : db 1

.pattern17_4
  !instr,!instr01
  db 8,$07
  !f5
  db 4
  !c5
  db 84
  !rest

.pattern18_0
  !loop : dw .subE157 : db 1
  !end

.pattern18_1
  db 96
  !rest

.pattern18_2
  db 96
  !rest

.pattern18_3
  !loop : dw .subE17B : db 1

.pattern18_4
  db 96
  !rest

.pattern19_0
  !loop : dw .subE157 : db 1
  !end

.pattern19_1
  !instr,!instr05
  db 8
  !rest
  db 4,$7F
  !as2
  db 8
  !ds3
  db 4
  !as2
  db 12
  !d3
  db 8
  !c3
  db 4
  !g2
  db 12
  !as2
  db 8
  !d3
  db 12,$2F
  !c3
  db 16
  !rest

.pattern19_2
  db 96
  !rest

.pattern19_3
  !loop : dw .subE17B : db 1

.pattern19_4
  db 96
  !rest

.pattern20_0
  !loop : dw .subE157 : db 1
  !end

.pattern20_1
  db 96
  !rest

.pattern20_2
  !loop : dw .subE1CA : db 1

.pattern20_3
  !loop : dw .subE17B : db 1

.pattern20_4
  db 96
  !rest

.pattern21_0
  !loop : dw .subE157 : db 1
  !end

.pattern21_1
  db 96
  !rest

.pattern21_2
  !loop : dw .subE1CA : db 1

.pattern21_3
  !loop : dw .subE17B : db 1

.pattern21_4
  db 96
  !rest

.pattern22_0
  !loop : dw .subE1A7 : db 1
  !end

.pattern22_1
  !instr,!instr05
  db 12,$3F
  !f2
  !f2
  !rest
  !f2
  !f2
  !rest
  !f2
  !f2

.pattern22_2
  !instr,!instr01
  db 12,$17
  !f4
  !f4
  !rest
  !f4
  !f4
  !rest
  !f4
  !f4

.pattern22_3
  !loop : dw .subE17B : db 1

.pattern22_4
  !instr,!instr15
  db 24
  !rest
  db 36,$27
  !g4
  !g4

.subE157
  !instr,!instr07
  db 8,$7F
  !g3
  db 4
  !g2
  db 8
  !g2
  db 4
  !g3
  db 8
  !g2
  db 4
  !g2
  db 8
  !g3
  db 4
  !g2
  db 8
  !g2
  db 4
  !g3
  db 8
  !g3
  db 4
  !g2
  db 8
  !g3
  db 4
  !g2
  db 8
  !g2
  db 4
  !g2
  !end

.subE17B
  !instr,!instr08
  db 8,$77
  !g2
  db 4
  !g2
  db 8,$7F
  !g2
  db 4,$77
  !g2
  db 8,$7F
  !g3
  db 4,$77
  !g2
  db 8
  !g2
  db 4,$7F
  !g3
  db 8,$77
  !g2
  db 4
  !g2
  db 8
  !g2
  db 4
  !g2
  db 8,$7F
  !g3
  db 4,$77
  !g2
  db 8
  !g2
  db 4
  !g2
  !end

.subE1A7
  !instr,!instr07
  db 8,$7F
  !g3
  db 4
  !g2
  db 8
  !g2
  db 4
  !g3
  db 8
  !g2
  db 4
  !g2
  db 8
  !g3
  db 4
  !g2
  db 8
  !g2
  db 4
  !g3
  db 8
  !g3
  db 4
  !g2
  !g5
  !g5
  !g5
  db 8
  !g3
  db 4
  !g3
  !end

.subE1CA
  !instr,!instr03
  db 8,$0F
  !b7
  db 12
  !rest
  db 4
  !b7
  db 12
  !rest
  db 8
  !b7
  db 16
  !rest
  db 8
  !b7
  db 4
  !rest
  db 8
  !b7
  db 16
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
