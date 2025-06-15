asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr1C = $17
!instr28 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$EA,$54,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr28,$FF,$E0,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05_06,Sample05_06+216
  dw Sample1C,Sample1C+27
  dw Sample28_29,Sample28_29+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample28_29: incbin "Sample_01fe8df875cb069feb4911581de8164e.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
-
  dw .pattern0
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,255
  !tempo,46
  !echo,%00011111,53,53
  !echoParameters,4,157,0
  !pan,20
  !instr,!instr28
  !vibrato,0,30,240
  !volume,70
  !dynamicVolume,30,150
  db 72,$77
  !f3
  !pitchSlide,0,255 : !c4
  !tie
  !loop : dw .sub48D4 : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub4900 : db 1
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_1
  !pan,0
  !instr,!instr28
  !subtranspose,200
  !vibrato,0,30,240
  !volume,70
  !dynamicVolume,30,150
  db 72,$77
  !f3
  !pitchSlide,0,255 : !c4
  !tie
  !loop : dw .sub48D4 : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub48DF : db 1
  !tie
  !loop : dw .sub4900 : db 1
  !tie
  !tie
  !tie
  !tie
  !end

.pattern0_2
  !instr,!instr1C
  !volume,80
  !dynamicVolume,20,110
  !pan,10
  !tremolo,2,10,200
  db 84,$78
  !g6
  !tie
  !loop : dw .sub4911 : db 1
  !tie
  db 84,$77
  !b6
  !loop : dw .sub491B : db 1
  db 84,$78
  !g6
  !tie
  !loop : dw .sub4921 : db 1
  !tie
  !d6
  !loop : dw .sub491B : db 1
  db 84,$78
  !g6
  !tie
  !loop : dw .sub4911 : db 1
  !tie
  db 84,$77
  !b6
  !loop : dw .sub491B : db 1
  db 84,$78
  !g6
  !tie
  !loop : dw .sub4921 : db 1
  !tie
  !d6
  !loop : dw .sub491B : db 1
  db 84,$78
  !g6
  !tie
  !loop : dw .sub4911 : db 1
  !tie
  db 84,$77
  !b6
  !loop : dw .sub491B : db 1
  db 84,$78
  !g6
  !tie
  !loop : dw .sub4921 : db 1
  !tie
  !d6
  !loop : dw .sub491B : db 1
  db 84,$78
  !g6
  !tie
  !loop : dw .sub4911 : db 1
  !tie
  db 84,$77
  !b6
  !loop : dw .sub491B : db 1
  db 84,$78
  !g6
  !tie
  !loop : dw .sub4921 : db 1
  !tie
  !d6
  !loop : dw .sub491B : db 1
  db 84,$78
  !g6
  !tie
  !loop : dw .sub4911 : db 1
  !tie
  db 84,$77
  !b6
  !loop : dw .sub491B : db 1
  db 84,$78
  !g6
  !tie
  !loop : dw .sub4921 : db 1
  !tie
  !d6
  !loop : dw .sub491B : db 1
  !end

.pattern0_3
  !pan,10
  !instr,!instr28
  !vibrato,0,2,241
  !volume,70
  !dynamicVolume,30,150
  db 72,$73
  !d4
  !pitchSlide,0,255 : !a4
  !tie
  !tie
  !tie
  !loop : dw .sub492A : db 1
  !loop : dw .sub4944 : db 1
  !loop : dw .sub494D : db 1
  !tie
  !tie
  !pitchSlide,0,255 : !as4
  !tie
  !tie
  !tie
  !loop : dw .sub4956 : db 1
  !loop : dw .sub4944 : db 6
  !tie
  !tie
  !tie
  !tie
  !instr,!instr05
  !volume,90
  !vibrato,0,14,20
  !loop : dw .sub495F : db 60
  !end

.pattern0_4
  !instr,!instr05
  !volume,90
  !vibrato,0,14,20
  !loop : dw .sub495F : db 60
  !end

.sub48D4
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !e4
  !tie
  !tie
  !tie
  !end

.sub48DF
  !tie
  !pitchSlide,0,255 : !c4
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !f3
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !c4
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !e4
  !tie
  !tie
  !tie
  !end

.sub4900
  !tie
  !pitchSlide,0,255 : !c4
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !f3
  !tie
  !tie
  !tie
  !end

.sub4911
  db 84,$77
  !a6
  db 42
  !tie
  !g6
  db 84,$76
  !d7
  !end

.sub491B
  !tie
  !rest
  !rest
  !rest
  !rest
  !end

.sub4921
  db 84,$77
  !a6
  db 42
  !tie
  !b6
  db 84
  !e6
  !end

.sub492A
  !tie
  !pitchSlide,0,255 : !cs5
  !tie
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !a4
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !d4
  !tie
  !tie
  !tie
  !end

.sub4944
  !tie
  !pitchSlide,0,255 : !a4
  !tie
  !tie
  !tie
  !end

.sub494D
  !tie
  !pitchSlide,0,255 : !cs5
  !tie
  !tie
  !tie
  !end

.sub4956
  !tie
  !pitchSlide,0,255 : !d4
  !tie
  !tie
  !tie
  !end

.sub495F
  !pan,0
  db 14,$78
  !d7
  !pan,8
  db 14,$75
  !g7
  !pan,12
  db 14,$77
  !b6
  !pan,20
  !e7
  !pan,0
  !b6
  !pan,8
  !e7
  !pan,12
  db 14,$78
  !d7
  !pan,20
  db 14,$75
  !g7
  !pan,0
  db 14,$77
  !b6
  !pan,8
  !e7
  !pan,12
  !b6
  !pan,20
  !e7
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
