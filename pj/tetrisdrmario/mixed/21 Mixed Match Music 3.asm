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
  dw .pattern1
  dw .pattern1
  dw .pattern1
-
  dw .pattern2
  dw .pattern2
  dw .pattern3
  dw .pattern3
  dw .pattern2
  dw .pattern4
  dw .pattern2
  dw .pattern5
  dw .pattern3
  dw .pattern3
  dw .pattern6
  dw .pattern7
  dw .pattern5
  dw .pattern1
  dw .pattern8
  dw .pattern6
  dw .pattern6
  dw .pattern4
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern1_0, .pattern2_1, .pattern2_2, .pattern1_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern1_0, .pattern3_1, .pattern3_2, .pattern1_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern1_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern1_0, .pattern5_1, .pattern5_2, .pattern1_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern1_0, .pattern1_1, .pattern6_2, .pattern1_3, .pattern1_1, 0, 0, 0
.pattern7: dw .pattern4_0, .pattern1_1, .pattern6_2, .pattern1_3, .pattern1_1, 0, 0, 0
.pattern8: dw .pattern1_0, .pattern8_1, .pattern1_1, .pattern1_3, .pattern1_1, 0, 0, 0

.pattern0_0
  !tempo,21
  !musicVolume,210
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
  !end

.pattern0_2
  !volume,200
  !pan,10
  db 24
  !rest
  !end

.pattern0_3
  !volume,200
  !pan,10
  db 24
  !rest
  !end

.pattern0_4
  !volume,200
  !pan,10
  db 24
  !rest
  !end

.pattern1_0
  !loop : dw .subE157 : db 1
  !end

.pattern1_1
  db 96
  !rest
  !end

.pattern1_2
  db 96
  !rest
  !end

.pattern1_3
  !loop : dw .subE17B : db 1
  !end

.pattern1_4
  db 96
  !rest
  !end

.pattern2_1
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
  !end

.pattern2_2
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
  !end

.pattern2_4
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
  !end

.pattern3_1
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
  !end

.pattern3_2
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
  !end

.pattern3_4
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
  !end

.pattern4_0
  !loop : dw .subE1A7 : db 1
  !end

.pattern4_1
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
  !end

.pattern4_2
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
  !end

.pattern4_4
  !instr,!instr15
  db 24
  !rest
  db 36,$27
  !g4
  !g4
  !end

.pattern5_1
  !instr,!instr05
  db 12,$3F
  !f2
  db 84
  !rest
  !end

.pattern5_2
  !instr,!instr01
  db 12,$17
  !f2
  db 84
  !rest
  !end

.pattern5_4
  !instr,!instr01
  db 8,$07
  !f5
  db 4
  !c5
  db 84
  !rest
  !end

.pattern6_2
  !loop : dw .subE1CA : db 1
  !end

.pattern8_1
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
  !end

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
