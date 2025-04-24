asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr07 = $18
!instr0A = $19
!instr0C = $1A
!instr0D = $1B
!instr0E = $1C
!instr0F = $1D
!instr10 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$8F,$E0,$B8,$01,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr07,$FF,$EE,$B8,$16,$F0
  db !instr0A,$FF,$E0,$B8,$04,$00
  db !instr0C,$8F,$E0,$B8,$07,$A0
  db !instr0D,$FF,$F6,$B8,$07,$B0
  db !instr0E,$FF,$E0,$B8,$05,$80
  db !instr0F,$8F,$E0,$B8,$07,$A0
  db !instr10,$8F,$E0,$B8,$07,$10
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+36
  dw Sample05,Sample05+1404
  dw Sample07,Sample07+1584
  dw Sample0A,Sample0A+2268
  dw Sample0C,Sample0C+1116
  dw Sample0D,Sample0D+234
  dw Sample0E,Sample0E+2979
  dw Sample0F,Sample0F+729
  dw Sample10,Sample10+3375
endspcblock

spcblock $B210-($6E00-!p_sampleData) nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample07: incbin "Sample07.brr"
  Sample0A: incbin "Sample0A.brr"
  Sample0C: incbin "Sample0C.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0E: incbin "Sample0E.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2420

Tracker2420:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $008C,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, .pattern4_7
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, .pattern5_7
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, 0, .pattern6_7

.pattern0_0
  !percBase,!instr0C
  !echo,%11110111,50,50
  !echoParameters,6,72,3
  !tempo,25
  !musicVolume,200;255
  !end

.pattern1_0
  !instr,!instr04
  !volume,220
  !vibrato,12,24,64
  !loop : dw .sub2704 : db 1
  !end

.pattern1_1
  !instr,!instr05
  !volume,200
  !vibrato,12,36,96
  !loop : dw .sub2704 : db 1

.pattern1_2
  !instr,!instr07
  !volume,200
  db 12,$7F
  !f3
  db 24
  !rest
  db 12
  !f3
  !e3
  db 36
  !rest
  db 12
  !d3
  db 24
  !rest
  db 12
  !d3
  !cs3
  db 36
  !rest
  db 12
  !c3
  db 24
  !rest
  db 12
  !c3
  !b2
  db 36
  !rest
  db 12
  !as2
  db 24
  !rest
  db 12
  !as2
  !c3
  !rest
  !c3
  !e3

.pattern1_3
  !volume,255
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub271C : db 3

.pattern1_4
  !instr,!instr0A
  !volume,120
  !vibrato,24,36,96
  db 48,$7F
  !f5
  !e5
  !d5
  !cs5
  !c5
  !e5
  !d5
  db 24
  !e5
  !g5

.pattern1_5
  !instr,!instr0A
  !volume,120
  !vibrato,24,36,96
  db 48,$7F
  !c5
  !c5
  !a4
  !a4
  !a4
  !b4
  !as4
  db 24
  !c5
  !e5

.pattern1_7
  !volume,255
  !loop : dw .sub2724 : db 1

.pattern2_0
  !loop : dw .sub274F : db 1
  !end

.pattern2_1
  !loop : dw .sub274F : db 1

.pattern2_2
  db 12,$7F
  !f3
  db 24
  !rest
  db 12
  !f3
  !e3
  db 36
  !rest
  db 12
  !d3
  db 24
  !rest
  db 12
  !d3
  !c3
  db 36
  !rest
  db 12
  !as2
  db 24
  !rest
  db 12
  !as2
  !c3
  db 36
  !rest
  db 12
  !d3
  db 24
  !rest
  db 12
  !d3
  !d3
  db 36
  !rest
  db 12
  !d3
  db 24
  !rest
  db 12
  !d3
  !d3
  !rest
  db 24
  !c3

.pattern2_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub271C : db 3
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0D-!instr0C)

.pattern2_4
  db 48,$7F
  !f5
  !e5
  !f5
  db 24
  !e5
  !c5
  db 48
  !d5
  !e5
  !f5
  !g5
  db 72
  !f5
  db 12
  !f5
  !g5

.pattern2_5
  db 48,$7F
  !c5
  !c5
  !d5
  db 24
  !c5
  !g4
  db 48
  !as4
  !c5
  !d5
  !d5
  db 72
  !d5
  db 12
  !d5
  !e5

.pattern2_7
  !loop : dw .sub2724 : db 1
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 12,$7F
  %percNote(!instr0E-!instr0C)
  %percNote(!instr0E-!instr0C)

.pattern3_0
  !loop : dw .sub2771 : db 1
  !loop : dw .sub277D : db 1
  !end

.pattern3_1
  !loop : dw .sub2771 : db 1
  !loop : dw .sub277D : db 1

.pattern3_2
  !loop : dw .sub2788 : db 1
  db 12
  !as2
  db 24
  !rest
  db 12
  !as2
  !as2
  db 36
  !rest
  db 12
  !a2
  db 24
  !rest
  db 12
  !a2
  !a2
  !rest
  db 24
  !a2

.pattern3_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub271C : db 3

.pattern3_4
  !loop : dw .sub279C : db 1
  !f5
  !a5
  !d6
  !f6
  !f5
  !a5
  !d6
  !f6
  !e5
  !g5
  !c6
  !e6
  !e5
  !g5
  !c6
  !e6

.pattern3_5
  !loop : dw .sub27AF : db 1
  !d5
  !f5
  !a5
  !d6
  !d5
  !f5
  !a5
  !d6
  !c5
  !e5
  !g5
  !c6
  !c5
  !e5
  !g5
  !c6

.pattern3_7
  !loop : dw .sub27C2 : db 1
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 12,$7F
  %percNote(!instr0E-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)

.pattern4_0
  db 60,$7D
  !a5
  db 12,$7F
  !g5
  !f5
  !a5
  db 36
  !g5
  db 60
  !c5
  db 24
  !d5
  !e5
  !f5
  !a5
  db 96
  !g5
  !end

.pattern4_1
  !loop : dw .sub2771 : db 1
  db 24
  !d5
  !e5
  !f5
  !a5
  db 96
  !g5

.pattern4_2
  !loop : dw .sub2788 : db 1
  db 12
  !g2
  db 24
  !rest
  db 12
  !g2
  !g2
  db 36
  !rest
  db 12
  !c3
  db 24
  !rest
  db 12
  !c3
  !c3
  !rest
  db 24
  !c3

.pattern4_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub271C : db 3

.pattern4_4
  !loop : dw .sub279C : db 1
  !f5
  !as5
  !d6
  !f6
  !f5
  !as5
  !d6
  !f6
  !e5
  !g5
  !c6
  !e6
  !e5
  !g5
  !c6
  !e6

.pattern4_5
  !loop : dw .sub27AF : db 1
  !d5
  !g5
  !a5
  !d6
  !d5
  !g5
  !a5
  !d6
  !c5
  !e5
  !g5
  !c6
  !c5
  !e5
  !g5
  !c6

.pattern4_7
  !loop : dw .sub27C2 : db 1
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 12,$7F
  %percNote(!instr0E-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)

.pattern5_0
  !loop : dw .sub2771 : db 1
  !loop : dw .sub277D : db 1
  !end

.pattern5_1
  !loop : dw .sub2771 : db 1
  !loop : dw .sub277D : db 1

.pattern5_2
  !loop : dw .sub2788 : db 1
  db 12
  !as2
  db 24
  !rest
  db 12
  !as2
  !as2
  db 36
  !rest
  db 12
  !a2
  db 24
  !rest
  db 12
  !a2
  !a2
  !rest
  db 24
  !a2

.pattern5_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub271C : db 3

.pattern5_4
  !loop : dw .sub279C : db 1
  !f5
  !a5
  !d6
  !f6
  !f5
  !a5
  !d6
  !f6
  !e5
  !g5
  !c6
  !e6
  !e5
  !g5
  !c6
  !e6

.pattern5_5
  !loop : dw .sub27AF : db 1
  !d5
  !f5
  !a5
  !d6
  !d5
  !f5
  !a5
  !d6
  !c5
  !e5
  !g5
  !c6
  !c5
  !e5
  !g5
  !c6

.pattern5_7
  !loop : dw .sub27C2 : db 1
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 12,$7F
  %percNote(!instr0E-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)

.pattern6_0
  !loop : dw .sub2771 : db 1
  !loop : dw .sub27E5 : db 1
  !end

.pattern6_1
  !loop : dw .sub2771 : db 1
  !loop : dw .sub27E5 : db 1

.pattern6_2
  !loop : dw .sub2788 : db 1
  db 12
  !g2
  db 24
  !rest
  db 12
  !g2
  !g2
  db 36
  !rest
  db 12
  !c3
  db 24
  !rest
  db 12
  !c3
  !c3
  db 36
  !rest

.pattern6_3
  db 24,$7F
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !loop : dw .sub271C : db 2
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 48
  %percNote(!instr0C-!instr0C)

.pattern6_4
  !loop : dw .sub279C : db 1
  !f5
  !as5
  !d6
  !f6
  !f5
  !as5
  !d6
  !f6
  !e5
  !g5
  !c6
  !e6
  !c7
  db 12,$39
  !c7
  db 12,$35
  !c7
  db 12,$32
  !c7

.pattern6_5
  !loop : dw .sub27AF : db 1
  !d5
  !g5
  !a5
  !d6
  !d5
  !g5
  !a5
  !d6
  !c5
  !e5
  !g5
  !c6
  !g6
  db 12,$39
  !g6
  db 12,$35
  !g6
  db 12,$32
  !g6

.pattern6_7
  !loop : dw .sub27C2 : db 1
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr10-!instr0C)
  db 48
  %percNote(!instr0F-!instr0C)

.sub2704
  db 24,$6F
  !c5
  db 12
  !d5
  !f5
  db 24
  !g5
  db 12
  !f5
  !c6
  db 72
  !a5
  db 24
  !g5
  !f5
  !a5
  !g5
  !c5
  !d5
  !a5
  db 48
  !g5
  !end

.sub271C
  %percNote(!instr0C-!instr0C)
  db 12
  %percNote(!instr0D-!instr0C)
  %percNote(!instr0C-!instr0C)
  db 24
  %percNote(!instr0C-!instr0C)
  %percNote(!instr0D-!instr0C)
  !end

.sub2724
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 12,$7F
  %percNote(!instr0E-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 12,$7F
  %percNote(!instr0E-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  !end

.sub274F
  db 24,$6F
  !c5
  db 12
  !d5
  !f5
  db 24
  !g5
  db 12
  !f5
  !c6
  db 72
  !a5
  db 12
  !g5
  !c5
  db 24
  !d5
  !f5
  db 12
  !g5
  !f5
  !e5
  !c5
  db 96
  !d5
  db 48
  !tie
  db 24
  !rest
  db 12
  !f5
  !g5
  !end

.sub2771
  db 60,$7F
  !a5
  db 12
  !g5
  !f5
  !a5
  db 36
  !g5
  db 60
  !c5
  !end

.sub277D
  !a5
  db 12
  !g5
  !f5
  !a5
  db 72
  !g5
  db 12
  !f5
  !g5
  !end

.sub2788
  db 12,$7F
  !as2
  db 24
  !rest
  db 12
  !as2
  !as2
  db 36
  !rest
  db 12
  !a2
  db 24
  !rest
  db 12
  !a2
  !a2
  db 36
  !rest
  !end

.sub279C
  db 12,$3F
  !f5
  !a5
  !d6
  !f6
  !f5
  !a5
  !d6
  !f6
  !e5
  !g5
  !c6
  !e6
  !e5
  !g5
  !c6
  !e6
  !end

.sub27AF
  db 12,$3F
  !d5
  !f5
  !a5
  !d6
  !d5
  !f5
  !a5
  !d6
  !c5
  !e5
  !g5
  !c6
  !c5
  !e5
  !g5
  !c6
  !end

.sub27C2
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  db 12,$7F
  %percNote(!instr0E-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  db 12,$7F
  %percNote(!instr0E-!instr0C)
  db 12,$75
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  %percNote(!instr0F-!instr0C)
  !end

.sub27E5
  db 24
  !d5
  !e5
  !f5
  !a5
  db 48
  !g5
  db 12
  !c6
  db 36
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
