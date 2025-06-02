asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr0F = $16
!instr11 = $17
!instr13 = $18
!instr31 = $19
!instr32 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr0F,$8F,$E0,$B8,$02,$80
  db !instr11,$81,$E7,$B8,$03,$90
  db !instr13,$FF,$E0,$B8,$03,$90
  db !instr31,$FF,$E0,$B8,$02,$40
  db !instr32,$CF,$F3,$B8,$07,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample0C_0D_0E_0F,Sample0C_0D_0E_0F+522
  dw Sample11_12_13,Sample11_12_13+27
  dw Sample11_12_13,Sample11_12_13+27
  dw Sample31,Sample31+882
  dw Sample32,Sample32+531
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample0C_0D_0E_0F: incbin "Sample_8d4615259210c4eb3093dde046a5d3c0.brr"
  Sample11_12_13: incbin "Sample_6c7fe9ffa3b0e176fc82c19308fbb5a4.brr"
  Sample31: incbin "Sample_442afca3bba3de54876f1457a5f15b03.brr"
  Sample32: incbin "Sample_ae62a29c1b9a657742910b2c135d0a2d.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
-
  dw .pattern1
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,255
  !tempo,51
  !volume,200
  !pan,9
  !echoParameters,4,176,0
  !echo,%00011111,23,23
  !vibrato,80,9,40
  !instr,!instr31
  db 10,$7A
  !e5
  db 9,$79
  !b5
  db 9,$78
  !a5
  db 20,$76
  !f5
  !dynamicVolume,30,90
  db 30
  !tie
  !dynamicVolume,80,190
  db 66
  !tie
  !tremolo,0,11,80
  db 40
  !tie
  !dynamicEcho,72,0,0
  !dynamicVolume,72,40
  db 72
  !tie
  !endEcho
  !transpose,6
  !pan,0
  !dynamicPan,144,20
  !tremolo,0,1,50
  !vibrato,0,24,242
  !instr,!instr0F
  !volume,40
  !dynamicVolume,80,120
  !slideIn,0,255,6
  db 72,$79
  !e5
  !tie
  !dynamicPan,144,20
  !tie
  !tie
  !loop : dw .sub512A : db 1
  !loop : dw .sub5135 : db 1
  !loop : dw .sub512A : db 1
  !loop : dw .sub5152 : db 1
  !loop : dw .sub512A : db 2
  !dynamicVolume,144,40
  !tie
  !tie
  !tie
  !end

.pattern0_1
  db 2
  !rest
  !instr,!instr32
  !pan,11
  !volume,250
  !vibrato,0,10,20
  db 6,$5B
  !e4
  db 7,$58
  !e4
  db 62,$79
  !e4
  !endTremolo
  !vibrato,0,1,245
  !instr,!instr13
  !volume,40
  !dynamicVolume,255,140
  !pan,20
  db 67
  !d3
  db 40
  !tie
  db 72
  !tie
  !tie
  !loop : dw .sub5161 : db 16
  !dynamicVolume,144,40
  !tie
  !tie

.pattern0_2
  db 1
  !rest
  !pan,12
  !instr,!instr32
  !volume,240
  !vibrato,0,10,20
  db 6,$5B
  !a4
  db 7,$58
  !a4
  db 62,$79
  !a4
  !pan,0
  !endTremolo
  !vibrato,0,1,245
  !instr,!instr13
  !volume,40
  !dynamicVolume,255,140
  db 68
  !ds3
  db 40
  !tie
  db 72
  !tie
  !tie
  !loop : dw .sub5161 : db 16
  !dynamicVolume,144,40
  !tie
  !tie

.pattern0_3
  !pan,12
  !instr,!instr32
  !volume,230
  !vibrato,0,11,20
  db 6,$5B
  !e5
  db 7,$58
  !e5
  db 62,$79
  !e5
  db 69
  !rest
  db 40
  !rest
  db 72
  !rest
  !rest
  !vibrato,0,2,243
  !pan,8
  !instr,!instr11
  !volume,200
  db 72,$71
  !g6
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !b4
  !loop : dw .sub5161 : db 5
  !pan,7
  !b4
  !pitchSlide,0,100 : !fs6
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !a4
  !tie
  !loop : dw .sub5161 : db 5
  !dynamicVolume,144,40
  !tie
  !tie

.pattern0_4
  db 72
  !rest
  !rest
  db 40
  !rest
  db 72
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !vibrato,0,3,243
  !pan,13
  !instr,!instr11
  !volume,200
  db 72,$71
  !a6
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !c5
  !loop : dw .sub5161 : db 5
  !pan,12
  !c5
  !pitchSlide,0,100 : !f6
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !as4
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !dynamicVolume,144,40
  !tie
  !tie

.pattern1_0
  db 72
  !rest
  !transpose,6
  !pan,0
  !dynamicPan,144,20
  !tremolo,0,1,50
  !vibrato,0,24,242
  !instr,!instr0F
  !volume,40
  !dynamicVolume,200,120
  !slideIn,0,255,6
  db 72,$79
  !e5
  !tie
  !dynamicPan,144,20
  !tie
  !tie
  !loop : dw .sub512A : db 1
  !loop : dw .sub5135 : db 1
  !loop : dw .sub512A : db 1
  !loop : dw .sub5152 : db 1
  !loop : dw .sub512A : db 3
  !dynamicPan,144,0
  !tie
  !tie
  !dynamicVolume,255,40
  !dynamicPan,144,20
  !tie
  !tie
  !tie
  !tie
  !end

.pattern1_1
  !endTremolo
  !vibrato,0,1,245
  !instr,!instr13
  !volume,40
  !dynamicVolume,255,140
  !pan,20
  db 72,$79
  !d3
  !tie
  !tie
  !loop : dw .sub5161 : db 18
  !dynamicVolume,255,40
  !tie
  !tie
  !tie
  !tie

.pattern1_2
  !pan,0
  !endTremolo
  !vibrato,0,1,245
  !instr,!instr13
  !volume,40
  !dynamicVolume,255,140
  db 72,$79
  !ds3
  !tie
  !tie
  !loop : dw .sub5161 : db 18
  !dynamicVolume,255,40
  !tie
  !tie
  !tie
  !tie

.pattern1_3
  !vibrato,0,2,243
  !pan,8
  !instr,!instr11
  !volume,180
  db 72,$71
  !g6
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !b4
  !loop : dw .sub5161 : db 4
  !pan,7
  !b4
  !pitchSlide,0,100 : !fs6
  !tie
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
  !tie
  !tie
  !tie
  !as4
  !pitchSlide,0,255 : !fs6
  !tie
  !loop : dw .sub5161 : db 5
  !dynamicVolume,255,40
  !tie
  !tie
  !tie
  !tie

.pattern1_4
  db 72
  !rest
  !vibrato,0,3,243
  !pan,13
  !instr,!instr11
  !volume,180
  db 72,$71
  !a6
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !c5
  !loop : dw .sub5161 : db 4
  !pan,12
  !c5
  !pitchSlide,0,100 : !f6
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !pitchSlide,0,255 : !as4
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !tie
  !b4
  !pitchSlide,0,255 : !f6
  !tie
  !loop : dw .sub5161 : db 5
  !dynamicVolume,255,40
  !tie
  !tie
  !tie
  !tie

.sub512A
  !dynamicPan,144,0
  !tie
  !tie
  !dynamicPan,144,20
  !tie
  !tie
  !end

.sub5135
  !dynamicPan,144,0
  !pitchSlide,0,255 : !c5
  !tie
  !tie
  !dynamicPan,144,20
  !tie
  !tie
  !dynamicPan,144,0
  !tie
  !tie
  !dynamicPan,144,20
  !pitchSlide,0,255 : !ds5
  !tie
  !tie
  !end

.sub5152
  !dynamicPan,144,0
  !tie
  !tie
  !dynamicPan,144,20
  !tie
  !pitchSlide,0,255 : !cs5
  !tie
  !end

.sub5161
  !tie
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
