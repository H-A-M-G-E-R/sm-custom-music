asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr03 = $17
!instr05 = $18
!instr0D = $19
!instr0F = $1A
!instr10 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr0F,$FF,$E1,$B8,$03,$00
  db !instr10,$FF,$E1,$B8,$08,$F0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+27
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample0D,Sample0D+441
  dw Sample0F,Sample0F+27
  dw Sample10,Sample10+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample03: incbin "Sample03.brr"
  Sample05: incbin "Sample05.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerEF7B

TrackerEF7B:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, 0, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, 0, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, 0, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, 0, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, 0, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, 0, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, 0, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, 0, 0, 0, 0
.pattern9: dw .pattern9_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !musicVolume,210;240
  !tempo,30
  !volume,200
  !pan,10
  !echo,%11111111,20,20
  !echoParameters,4,80,0
  db 40
  !rest
  !instr,!instr0D
  db 24,$7F
  !e5
  db 48
  !f5
  !instr,!instr01
  db 24
  !f2
  !ds2
  !f2
  !b2
  !loop : dw .subF124 : db 3
  !end

.pattern0_1
  !volume,200
  !pan,10
  db 40
  !rest
  !instr,!instr0D
  db 24,$7F
  !b5
  db 48
  !c6
  db 96,$77
  !g4
  !pitchSlide,0,192 : !g2
  !tie
  !rest
  !rest
  !end

.pattern0_2
  !volume,200
  !pan,10
  db 40
  !rest
  !instr,!instr0D
  !subtranspose,10
  db 24,$7F
  !gs6
  db 48
  !a6
  !instr,!instr05
  db 24
  !f2
  !ds2
  !f2
  !b2
  !loop : dw .subF124 : db 3
  !end

.pattern0_3
  !volume,200
  !pan,10
  !instr,!instr10
  db 24,$7F
  !d3
  !pitchSlide,0,16 : !e4
  db 8,$5B
  !e4
  db 8,$57
  !e4
  db 8,$55
  !e4
  db 8,$53
  !e4
  db 8,$52
  !e4
  db 24
  !rest
  !rest
  !rest
  !rest
  !loop : dw .subF129 : db 3
  !rest
  !rest
  !end

.pattern0_4
  !volume,200
  !pan,10
  !instr,!instr10
  db 24,$7F
  !fs3
  !pitchSlide,0,16 : !g4
  db 8,$5B
  !g4
  db 8,$57
  !g4
  db 8,$55
  !g4
  db 8,$53
  !g4
  db 10,$32
  !g4
  !instr,!instr03
  db 104,$77
  !b4
  !pitchSlide,0,4 : !g7
  !pitchSlide,0,100 : !g2
  !loop : dw .subF12E : db 1
  !rest
  !rest
  !rest
  !rest
  !rest
  db 14
  !rest
  !end

.pattern0_5
  !volume,200
  !pan,10
  !instr,!instr10
  db 24,$7F
  !b3
  !pitchSlide,0,16 : !c5
  db 8,$5B
  !c5
  db 8,$57
  !c5
  db 8,$55
  !c5
  db 8,$53
  !c5
  db 8,$52
  !c5
  !loop : dw .subF12E : db 1
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.pattern0_7
  !volume,200
  !pan,10
  db 40
  !rest
  !instr,!instr0D
  !slideIn,0,4,252
  db 24,$7F
  !gs6
  db 48
  !a6
  !loop : dw .subF12E : db 1
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.pattern1_0
  db 24,$7F
  !f2
  !ds2
  !f2
  !b2
  !end

.pattern1_1
  !instr,!instr0F
  db 12,$2F
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !end

.pattern1_2
  db 24,$7F
  !f2
  !ds2
  !f2
  !b2
  !end

.pattern1_3
  !instr,!instr0F
  db 12,$2F
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !cs4
  !end

.pattern2_0
  db 24,$7F
  !f2
  !ds2
  !f2
  !b2
  !end

.pattern2_1
  !instr,!instr0F
  db 12,$2F
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !end

.pattern2_2
  db 24,$7F
  !f2
  !ds2
  !f2
  !b2
  !end

.pattern2_3
  !instr,!instr0F
  db 12,$2F
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !cs4
  !end

.pattern3_0
  db 24,$7F
  !f2
  !ds2
  !f2
  !b2
  !end

.pattern3_1
  !instr,!instr0F
  db 12,$2F
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !end

.pattern3_2
  db 24,$7F
  !f2
  !ds2
  !f2
  !b2
  !end

.pattern3_3
  !instr,!instr0F
  db 12,$2F
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !cs4
  !end

.pattern4_0
  db 24,$7F
  !f2
  !ds2
  !f2
  !b2
  !end

.pattern4_1
  !instr,!instr0F
  db 12,$2F
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !end

.pattern4_2
  db 24,$7F
  !f2
  !ds2
  !f2
  !b2
  !end

.pattern4_3
  !instr,!instr0F
  db 12,$2F
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !c4
  !cs4
  !end

.pattern5_0
  db 12,$7F
  !a3
  !a4
  !e3
  !e4
  !a3
  !a4
  !as3
  !as4
  !end

.pattern5_1
  db 12,$2F
  !a3
  !a3
  !a3
  !a3
  !a3
  !a3
  !a3
  !as3
  !end

.pattern5_2
  db 12,$7F
  !a2
  !a3
  !e2
  !e3
  !a2
  !a3
  !as2
  !as3
  !end

.pattern5_3
  db 12,$2F
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !f4
  !end

.pattern6_0
  db 12,$7F
  !a3
  !a4
  !e3
  !e4
  !a3
  !a4
  !as3
  !as4
  !end

.pattern6_1
  db 12,$2F
  !a3
  !a3
  !a3
  !a3
  !a3
  !a3
  !a3
  !as3
  !end

.pattern6_2
  db 12,$7F
  !a2
  !a3
  !e2
  !e3
  !a2
  !a3
  !as2
  !as3
  !end

.pattern6_3
  db 12,$2F
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !f4
  !end

.pattern7_0
  db 12,$7F
  !a3
  !a4
  !e3
  !e4
  !a3
  !a4
  !as3
  !as4
  !end

.pattern7_1
  db 12,$2F
  !a3
  !a3
  !a3
  !a3
  !a3
  !a3
  !a3
  !as3
  !end

.pattern7_2
  db 12,$7F
  !a2
  !a3
  !e2
  !e3
  !a2
  !a3
  !as2
  !as3
  !end

.pattern7_3
  db 12,$2F
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !f4
  !end

.pattern8_0
  db 12,$7F
  !a3
  !a4
  !e3
  !e4
  !a3
  !a4
  !as3
  !as4
  !end

.pattern8_1
  db 12,$2F
  !a3
  !a3
  !a3
  !a3
  !a3
  !a3
  !a3
  !as3
  !end

.pattern8_2
  db 12,$7F
  !a2
  !a3
  !e2
  !e3
  !a2
  !a3
  !as2
  !as3
  !end

.pattern8_3
  db 12,$2F
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !e4
  !f4
  !end

.pattern9_0
  !instr,!instr03
  db 8,$7F
  !g3
  !pitchSlide,0,8 : !g7
  !end

.subF124
  !f2
  !ds2
  !f2
  !b2
  !end

.subF129
  !rest
  !rest
  !rest
  !rest
  !end

.subF12E
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
