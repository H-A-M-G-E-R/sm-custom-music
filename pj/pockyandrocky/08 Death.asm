asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr0A = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr0A,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample05,Sample05+1404
  dw Sample0A,Sample0A+2268
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample0A: incbin "Sample0A.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker241C

Tracker241C:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, 0, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, 0, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, 0

.pattern0_0
  !echo,%11111111,50,50
  !echoParameters,6,64,3
  !tempo,29
  !musicVolume,200
  !end

.pattern1_0
  !instr,!instr04
  !volume,200
  !vibrato,12,24,64
  !loop : dw .sub2680 : db 1
  db 64
  !g5
  db 32
  !a5
  db 80
  !e5
  db 16
  !d5
  db 96
  !e5
  !end

.pattern1_1
  !instr,!instr0A
  !volume,60
  !vibrato,12,32,72
  !loop : dw .sub2680 : db 1
  db 64
  !g5
  db 32
  !a5
  db 80
  !e5
  db 16
  !d5
  db 96
  !e5
  !end

.pattern1_2
  !instr,!instr0A
  !volume,150
  db 96,$7F
  !a4
  !g4
  !fs4
  !f4
  !e4
  !ds4
  !d4
  db 64
  !e4
  db 32
  !g4
  !end

.pattern1_4
  !instr,!instr05
  !volume,120
  !pan,5
  !loop : dw .sub269B : db 1
  !loop : dw .sub26B5 : db 2
  db 16
  !a5
  !d6
  !a6
  db 48
  !rest
  db 16
  !b5
  !e6
  !b6
  db 48
  !rest
  !end

.pattern1_5
  !instr,!instr05
  !volume,120
  !pan,15
  !loop : dw .sub26BC : db 1
  !loop : dw .sub26D6 : db 2
  db 16
  !a4
  !d5
  !a5
  db 48
  !rest
  db 16
  !b4
  !e5
  !b5
  db 48
  !rest
  !end

.pattern2_0
  !loop : dw .sub26DD : db 1
  db 96
  !a5
  db 64
  !tie
  db 32
  !c6
  !end

.pattern2_1
  !loop : dw .sub26DD : db 1
  db 96
  !a5
  db 64
  !tie
  !volume,100
  db 32
  !c6
  !end

.pattern2_2
  db 96,$7F
  !a4
  !g4
  !fs4
  !f4
  !g4
  !e4
  !a4
  !tie
  !end

.pattern2_4
  !loop : dw .sub269B : db 1
  !loop : dw .sub26B5 : db 2
  !loop : dw .sub26FD : db 2
  !end

.pattern2_5
  !loop : dw .sub26BC : db 1
  !loop : dw .sub26D6 : db 2
  !loop : dw .sub2704 : db 2
  !end

.pattern3_0
  !loop : dw .sub270B : db 1
  !end

.pattern3_1
  !loop : dw .sub270B : db 1
  !end

.pattern3_2
  db 96,$7F
  !f4
  !tie
  !e4
  !tie
  !d4
  db 64
  !tie
  db 32
  !g4
  db 96
  !a4
  !tie
  !end

.pattern3_3
  !instr,!instr0A
  !vibrato,12,24,48
  !subtranspose,24
  !volume,50
  !dynamicVolume,72,100
  !pan,0
  db 96,$7F
  !d6
  !dynamicVolume,72,50
  !tie
  !dynamicVolume,72,100
  !a5
  !dynamicVolume,72,50
  !tie
  !dynamicVolume,72,100
  !d6
  !dynamicVolume,72,50
  !tie
  !dynamicVolume,72,100
  !a5
  !dynamicVolume,72,50
  !tie
  !end

.pattern3_4
  db 3,$4F
  !f5
  !a5
  !c6
  !f6
  db 84
  !rest
  db 96
  !rest
  db 3
  !e5
  !g5
  !b5
  !e6
  db 84
  !rest
  db 96
  !rest
  db 3
  !f5
  !a5
  !c6
  !f6
  db 84
  !rest
  db 63
  !rest
  db 3
  !g5
  !b5
  !d6
  !g6
  db 21
  !rest
  db 3
  !a5
  !c6
  !e6
  !a6
  db 84
  !rest
  db 96
  !rest
  !end

.pattern3_5
  db 3,$4F
  !f4
  !a4
  !c5
  !f5
  db 84
  !rest
  db 96
  !rest
  db 3
  !e4
  !g4
  !b4
  !e5
  db 84
  !rest
  db 96
  !rest
  db 3
  !f4
  !a4
  !c5
  !f5
  db 84
  !rest
  db 63
  !rest
  db 3
  !g4
  !b4
  !d5
  !g5
  db 21
  !rest
  db 3
  !a4
  !c5
  !e5
  !a5
  db 84
  !rest
  db 96
  !rest
  !end

.pattern3_6
  !instr,!instr0A
  !vibrato,12,24,48
  !subtranspose,24
  !volume,50
  !dynamicVolume,72,100
  !pan,20
  db 96,$7F
  !a5
  !dynamicVolume,72,50
  !tie
  !dynamicVolume,72,100
  !e5
  !dynamicVolume,72,50
  !tie
  !dynamicVolume,72,100
  !a5
  !dynamicVolume,72,50
  !tie
  !dynamicVolume,72,100
  !e5
  !dynamicVolume,72,50
  !tie
  !end

.pattern4_0
  db 32,$7F
  !c6
  !b5
  !a5
  db 64
  !g5
  db 32
  !a5
  db 64
  !e5
  db 32
  !d5
  !e5
  !g5
  !a5
  !c6
  !b5
  !a5
  !g5
  !e5
  !g5
  db 80
  !a5
  db 16
  !g5
  db 96
  !a5
  !tie
  !end

.pattern4_1
  db 32,$7F
  !c6
  !b5
  !a5
  db 64
  !g5
  db 32
  !a5
  db 64
  !e5
  db 32
  !d5
  !e5
  !g5
  !a5
  !c6
  !b5
  !a5
  !g5
  !e5
  !g5
  db 80
  !a5
  db 16
  !g5
  db 96
  !a5
  !dynamicVolume,96,60
  !tie
  !end

.pattern4_2
  db 96,$7F
  !d4
  !e4
  !f4
  !e4
  !d4
  !e4
  !f4
  !as3
  !tie
  !end

.pattern4_3
  !volume,80
  db 96,$7F
  !a5
  !g5
  !a5
  !g5
  !a5
  !g5
  !a5
  !a5
  !dynamicVolume,96,40
  !tie
  !end

.pattern4_4
  !loop : dw .sub272D : db 1
  !rest
  !loop : dw .sub2734 : db 1
  db 96
  !rest
  !end

.pattern4_5
  !loop : dw .sub272D : db 1
  !rest
  !rest
  !loop : dw .sub2734 : db 1
  !end

.pattern4_6
  !volume,80
  db 96,$7F
  !f5
  !e5
  !f5
  !e5
  !f5
  !e5
  !f5
  !f5
  !dynamicVolume,96,40
  !tie
  !end

.sub2680
  db 16,$7F
  !a5
  !g5
  !a5
  !c6
  !a5
  !g5
  db 64
  !e5
  db 32
  !c5
  db 16
  !d5
  !e5
  !d5
  !c5
  !a4
  !c5
  db 64
  !a4
  db 32
  !g4
  !a4
  !c5
  !e5
  !end

.sub269B
  db 16,$7F
  !a5
  !e6
  !a6
  db 48
  !rest
  db 16
  !g5
  !d6
  !g6
  db 48
  !rest
  db 16
  !fs5
  !d6
  !fs6
  db 48
  !rest
  db 16
  !f5
  !c6
  !f6
  db 48
  !rest
  !end

.sub26B5
  db 16
  !g5
  !d6
  !g6
  db 48
  !rest
  !end

.sub26BC
  db 16,$7F
  !a4
  !e5
  !a5
  db 48
  !rest
  db 16
  !g4
  !d5
  !g5
  db 48
  !rest
  db 16
  !fs4
  !d5
  !fs5
  db 48
  !rest
  db 16
  !f4
  !c5
  !f5
  db 48
  !rest
  !end

.sub26D6
  db 16
  !g4
  !d5
  !g5
  db 48
  !rest
  !end

.sub26DD
  db 16,$7F
  !a5
  !g5
  !a5
  !c6
  !a5
  !g5
  db 64
  !e5
  db 32
  !g5
  db 16
  !a5
  !g5
  !a5
  !c6
  !a5
  !g5
  db 64
  !a5
  db 16
  !c6
  !a5
  db 32
  !g5
  !a5
  !c6
  !d6
  !c6
  !g5
  !end

.sub26FD
  db 16
  !a5
  !e6
  !a6
  db 48
  !rest
  !end

.sub2704
  db 16
  !a4
  !e5
  !a5
  db 48
  !rest
  !end

.sub270B
  db 32,$7F
  !d6
  !e6
  !c6
  db 64
  !d6
  db 32
  !g5
  !a5
  !c6
  !g5
  db 96
  !a5
  db 32
  !d6
  !e6
  !c6
  db 64
  !d6
  db 16
  !b5
  !g5
  db 32
  !a5
  !c6
  db 16
  !d6
  !e6
  db 64
  !c6
  db 32
  !b5
  !end

.sub272D
  db 96
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.sub2734
  !rest
  db 3,$4F
  !as4
  !d5
  !f5
  !as5
  db 6
  !rest
  db 3,$4A
  !as4
  !d5
  !f5
  !as5
  db 6
  !rest
  db 3,$46
  !as4
  !d5
  !f5
  !as5
  db 6
  !rest
  db 3,$42
  !as4
  !d5
  !f5
  !as5
  db 6
  !rest
  db 3,$40
  !as4
  !d5
  !f5
  !as5
  db 12
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
