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

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr03,$8F,$F0,$B8,$03,$F0
  db !instr04,$FF,$E0,$B8,$02,$40
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$FF,$E0,$B8,$03,$C0
  db !instr07,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+27
  dw Sample03,Sample03+2421
  dw Sample04,Sample04+1908
  dw Sample05,Sample05+1116
  dw Sample06,Sample06+1503
  dw Sample07,Sample07+522
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample03: incbin "Sample_ad13fd1d1be59b4022dd8f5a20195d63.brr"
  Sample04: incbin "Sample_4235b6ef92740049ccb586036a9f8c94.brr"
  Sample05: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample06: incbin "Sample_026d88a43b7ee871f4669d4e958c1be7.brr"
  Sample07: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2402

Tracker2402:
-
  dw .pattern0
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr05
  !musicVolume,255
  !tempo,33
  !volume,125
  !pan,10
  !instr,!instr00
  !vibrato,24,30,64
  db 2,$7F
  !f6
  !fs6
  db 6
  !g6
  db 8
  !rest
  db 2,$75
  !f6
  !fs6
  db 6
  !g6
  db 6,$5F
  !e6
  db 12
  !rest
  db 6,$55
  !e6
  db 4,$7F
  !c6
  db 14
  !rest
  db 2,$75
  !c6
  db 2,$7F
  !g6
  !gs6
  db 6
  !a6
  !rest
  !a6
  db 6,$75
  !a6
  db 6,$7F
  !f6
  db 6,$75
  !a6
  !rest
  !f6
  db 12,$5F
  !c6
  db 6
  !rest
  db 6,$55
  !c6
  db 5,$7F
  !e6
  db 7
  !rest
  db 10
  !e6
  db 24
  !d6
  db 12,$75
  !d6
  db 10,$7F
  !c6
  db 2
  !rest
  db 2,$75
  !d6
  db 10,$7F
  !d6
  db 2,$75
  !c6
  db 6
  !d6
  db 10
  !d6
  db 40
  !rest
  db 2,$7F
  !f6
  !fs6
  db 5
  !g6
  db 9
  !rest
  db 2,$75
  !f6
  !fs6
  db 5
  !g6
  db 1
  !rest
  db 5,$7F
  !e6
  db 13
  !rest
  db 5,$75
  !e6
  db 1
  !rest
  db 4,$7F
  !c6
  db 14
  !rest
  db 2,$75
  !c6
  db 2,$7F
  !g6
  !gs6
  db 6
  !a6
  db 8
  !rest
  db 2,$75
  !g6
  !gs6
  db 6
  !a6
  db 10,$7F
  !b6
  db 8
  !rest
  db 6,$75
  !b6
  db 8,$7F
  !c7
  db 10
  !rest
  db 6,$75
  !c7
  db 5,$7F
  !e7
  db 7
  !rest
  db 6
  !e7
  db 6,$75
  !e7
  db 7,$7F
  !d7
  db 5,$75
  !e7
  db 8,$7F
  !c7
  db 4,$75
  !d7
  db 7,$7F
  !b6
  db 5,$75
  !c7
  db 5,$7F
  !d7
  db 1
  !rest
  db 6,$75
  !b6
  db 10,$7F
  !c7
  db 8
  !rest
  db 10,$75
  !c7
  db 44
  !rest
  db 12,$7F
  !a6
  !g6
  db 8
  !a6
  db 4,$75
  !g6
  db 6,$7F
  !b6
  db 6,$75
  !a6
  db 9,$7F
  !b6
  db 3,$75
  !b6
  db 6
  !rest
  !b6
  db 12,$7F
  !a6
  !g6
  db 6
  !a6
  db 6,$75
  !g6
  db 6,$7F
  !b6
  db 6,$75
  !a6
  db 8,$7F
  !b6
  db 4,$75
  !b6
  db 6
  !rest
  !b6
  db 14,$7F
  !d7
  db 4
  !rest
  db 14,$75
  !d7
  db 4
  !rest
  db 12,$7F
  !c7
  !b6
  !d7
  db 9
  !c7
  db 9,$75
  !d7
  db 6
  !c7
  db 12,$7F
  !c7
  !b6
  !a6
  !g6
  db 23
  !b6
  db 1,$75
  !g6
  db 12
  !b6
  db 5,$7F
  !b6
  db 7
  !rest
  db 10
  !b6
  db 2
  !rest
  db 6
  !rest
  db 6,$75
  !b6
  db 14,$7F
  !b6
  db 4
  !rest
  db 6,$75
  !b6
  db 13,$7F
  !c7
  db 5
  !rest
  db 6,$75
  !c7
  db 14,$7F
  !d7
  db 4
  !rest
  db 6,$75
  !d7
  db 72,$7F
  !d7
  db 13
  !c7
  db 5
  !rest
  db 13,$75
  !c7
  db 37
  !rest
  !end

.pattern0_1
  db 4
  !rest
  !instr,!instr04
  !volume,125
  !pan,3
  db 24
  !rest
  db 18,$38
  !g5
  db 6,$72
  !g5
  db 24,$78
  !g5
  db 18,$72
  !g5
  db 6
  !rest
  db 18,$38
  !c6
  db 6,$72
  !c6
  db 24,$78
  !c6
  db 18,$72
  !c6
  db 6
  !rest
  db 18,$38
  !a5
  db 6,$72
  !a5
  db 24,$78
  !a5
  db 18,$72
  !a5
  db 6
  !rest
  db 18,$38
  !d6
  db 6,$72
  !d6
  db 24,$78
  !d6
  db 18,$72
  !d6
  db 6
  !rest
  db 18,$38
  !g5
  db 6,$72
  !g5
  db 24,$78
  !g5
  db 18,$72
  !g5
  db 6
  !rest
  db 18,$38
  !c6
  db 6,$72
  !c6
  db 24,$78
  !c6
  db 18,$72
  !c6
  db 6
  !rest
  db 18,$38
  !a5
  db 6,$72
  !a5
  db 24,$78
  !b5
  db 10
  !g5
  db 8,$72
  !b5
  db 10
  !g5
  db 44
  !rest
  db 24
  !rest
  db 6,$78
  !d5
  !rest
  !d5
  db 6,$72
  !d5
  db 18,$78
  !d5
  db 6,$72
  !d5
  !loop : dw .sub27E3 : db 1
  db 12
  !tie
  !rest
  db 12,$78
  !a6
  !g6
  !f6
  !e6
  db 6,$72
  !f6
  db 12
  !e6
  db 6
  !rest
  db 6,$78
  !d5
  !rest
  !d5
  db 6,$72
  !d5
  db 18,$78
  !d5
  db 6,$72
  !d5
  !loop : dw .sub27E3 : db 1
  db 12
  !tie
  db 56
  !rest

.pattern0_2
  !volume,166
  !pan,10
  !instr,!instr01
  db 4
  !rest
  !loop : dw .sub2806 : db 1
  db 24
  !d4
  db 15
  !d5
  db 33
  !rest
  db 24
  !g4
  db 15
  !g5
  db 9
  !rest
  db 24,$7A
  !g5
  !loop : dw .sub2806 : db 1
  db 24
  !d4
  db 48
  !rest
  db 36,$0A
  !c4
  db 12,$7A
  !b3
  db 24
  !a3
  db 24,$1A
  !g3
  !rest
  !g3
  !g3
  !rest
  !g3
  !c4
  !rest
  !c4
  !c4
  !rest
  !c4
  !g3
  !rest
  !g3
  !g3
  !rest
  !g3
  !c4
  !rest
  !c4
  !c4
  db 44
  !rest

.pattern0_3
  !volume,198
  !pan,10
  db 4
  !rest
  db 48,$7F
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  !loop : dw .sub2814 : db 6
  db 72
  %percNote(!instr05-!instr05)
  !loop : dw .sub2814 : db 7
  db 68
  %percNote(!instr05-!instr05)

.pattern0_4
  !volume,198
  !pan,10
  db 4
  !rest
  !loop : dw .sub2819 : db 3
  db 24,$75
  %percNote(!instr07-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr06-!instr05)
  !loop : dw .sub2819 : db 3
  db 72
  %percNote(!instr06-!instr05)
  !loop : dw .sub2821 : db 7
  db 24,$75
  %percNote(!instr07-!instr05)
  db 24,$7F
  %percNote(!instr06-!instr05)
  db 20
  %percNote(!instr06-!instr05)

.pattern0_5
  !instr,!instr03
  !subtranspose,64
  !volume,125
  !pan,13
  db 4
  !rest
  db 72
  !rest
  !rest
  !rest
  db 24
  !rest
  db 18,$3A
  !g6
  db 6,$72
  !g6
  db 18,$3A
  !g6
  db 6,$72
  !g6
  db 4
  !tie
  db 68
  !rest
  db 72
  !rest
  !rest
  !rest
  !loop : dw .sub282B : db 2
  !loop : dw .sub283E : db 2
  !loop : dw .sub282B : db 2
  db 18,$3A
  !c6
  db 6,$72
  !c6
  db 18,$3A
  !e6
  db 6,$72
  !e6
  db 18,$3A
  !g6
  db 6,$72
  !g6
  db 18,$3A
  !c6
  db 6,$72
  !c6
  db 18,$3A
  !c7
  db 6,$72
  !c7
  db 18,$3A
  !c7
  db 2,$72
  !c7

.pattern0_6
  !volume,187
  !pan,13
  !instr,!instr02
  !subtranspose,29
  db 4
  !rest
  db 72,$76
  !g5
  !f5
  !fs5
  !g5
  !g5
  !a5
  db 48
  !a5
  db 24
  !b5
  db 14
  !c6
  db 4,$72
  !b5
  db 14
  !c6
  db 40
  !rest
  db 72,$76
  !g5
  !dynamicVolume,72,136
  !tie
  !volume,187
  !c6
  !dynamicVolume,72,136
  !tie
  !volume,187
  !g5
  !dynamicVolume,72,136
  !tie
  !volume,187
  !d6
  db 25
  !c6
  db 17,$72
  !c6
  db 26
  !rest

.pattern0_7
  db 4
  !rest
  !instr,!instr04
  !volume,125
  !pan,3
  db 24
  !rest
  db 18,$38
  !e5
  db 6,$72
  !e5
  db 24,$78
  !e5
  db 18,$72
  !e5
  db 6
  !rest
  db 18,$38
  !a5
  db 6,$72
  !a5
  db 24,$78
  !a5
  db 18,$72
  !a5
  db 6
  !rest
  db 18,$38
  !fs5
  db 6,$72
  !fs5
  db 24,$78
  !fs5
  db 18,$72
  !fs5
  db 6
  !rest
  db 18,$38
  !b5
  db 6,$72
  !b5
  db 24,$78
  !b5
  db 18,$72
  !b5
  db 6
  !rest
  db 18,$38
  !e5
  db 6,$72
  !e5
  db 24,$78
  !e5
  db 18,$72
  !e5
  db 6
  !rest
  db 18,$38
  !a5
  db 6,$72
  !a5
  db 24,$78
  !a5
  db 18,$72
  !a5
  db 6
  !rest
  db 18,$38
  !fs5
  db 6,$72
  !fs5
  db 24,$78
  !g5
  db 10
  !e5
  db 8,$72
  !g5
  db 10
  !e5
  db 44
  !rest
  db 24
  !rest
  db 6,$78
  !b4
  !rest
  !b4
  db 6,$72
  !b4
  db 18,$78
  !b4
  db 6,$72
  !b4
  db 12
  !tie
  !rest
  db 6,$78
  !b4
  !rest
  !b4
  db 6,$72
  !b4
  db 18,$78
  !b4
  db 6,$72
  !b4
  !loop : dw .sub2851 : db 2
  !loop : dw .sub2863 : db 2
  db 12
  !tie
  !rest
  db 6,$78
  !e5
  !rest
  !e5
  db 6,$72
  !e5
  db 18,$78
  !e5
  db 6,$72
  !e5
  db 12
  !tie
  db 56
  !rest

.sub27E3
  db 12
  !tie
  !rest
  db 6,$78
  !d5
  !rest
  !d5
  db 6,$72
  !d5
  db 18,$78
  !d5
  db 6,$72
  !d5
  db 12
  !tie
  !rest
  db 6,$78
  !g5
  !rest
  !g5
  db 6,$72
  !g5
  db 18,$78
  !g5
  db 6,$72
  !g5
  !end

.sub2806
  db 24,$4A
  !c4
  db 15
  !c5
  db 33
  !rest
  db 24
  !f4
  db 15
  !f5
  db 33
  !rest
  !end

.sub2814
  db 48
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  !end

.sub2819
  db 24,$75
  %percNote(!instr07-!instr05)
  db 24,$7F
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  !end

.sub2821
  db 24,$75
  %percNote(!instr07-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr06-!instr05)
  !end

.sub282B
  db 18,$3A
  !g5
  db 6,$72
  !g5
  db 18,$3A
  !b5
  db 6,$72
  !b5
  db 18,$3A
  !d6
  db 6,$72
  !d6
  !end

.sub283E
  db 18,$3A
  !c6
  db 6,$72
  !c6
  db 18,$3A
  !e6
  db 6,$72
  !e6
  db 18,$3A
  !g6
  db 6,$72
  !g6
  !end

.sub2851
  db 12
  !tie
  !rest
  db 6,$78
  !e5
  !rest
  !e5
  db 6,$72
  !e5
  db 18,$78
  !e5
  db 6,$72
  !e5
  !end

.sub2863
  db 12
  !tie
  !rest
  db 6,$78
  !b4
  !rest
  !b4
  db 6,$72
  !b4
  db 18,$78
  !b4
  db 6,$72
  !b4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
