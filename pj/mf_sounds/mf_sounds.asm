asar 1.91
norom : org 0
incsrc "../defines.asm"

; Pitch calculation: round(n*0x1000/0x1053B) or round(n*4096/66875) where n is the sample rate

!sampleMissileLaunch = $16
!sampleMissileBombExplode = $17
!sampleDoorOpen = $18
!sampleDoorClose = $19
!sampleAbsorbX0 = $1A
!sampleAbsorbX1 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !sampleMissileLaunch,$FF,$E0,$00,$01,$32
  db !sampleMissileBombExplode,$FF,$E0,$00,$01,$32
  db !sampleDoorOpen,$FF,$E0,$00,$01,$42
  db !sampleDoorClose,$FF,$E0,$00,$01,$42
  db !sampleAbsorbX0,$FF,$E0,$00,$02,$81
  db !sampleAbsorbX1,$FF,$E0,$00,$02,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw SampleMissileLaunch,0
  dw SampleMissileBombExplode,0
  dw SampleDoorOpen,0
  dw SampleDoorClose,0
  dw SampleAbsorbX0,SampleAbsorbX0+1024*9/16
  dw SampleAbsorbX1,SampleAbsorbX1+16*9/16
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  SampleMissileLaunch: incbin "missile_launch_5000_noloop.brr"
  SampleMissileBombExplode: incbin "missile_bomb_explode_5000_noloop.brr"
  SampleDoorOpen: incbin "door_open_5256_noloop.brr"
  SampleDoorClose: incbin "door_close_5256_noloop.brr"
  SampleAbsorbX0: incbin "absorb_x_0_10467.649872_1024.brr"
  SampleAbsorbX1: incbin "absorb_x_1_10457.253504_16.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !endEcho
  db 1,$7F
  !rest
  !end

Sounds:
  dw SoundMissileLaunch ; C0
  dw SoundMissileExplode ; C1
  dw SoundDoorOpen ; C2
  dw SoundDoorClose ; C3
  dw SoundAbsorbX ; C4

SoundMissileLaunch:
  db $01 : dw .voice0
.voice0
  db !sampleMissileLaunch
  !c5,220*1.15,14
  db $FF

SoundMissileExplode:
  db $01 : dw .voice0
.voice0
  db !sampleMissileBombExplode
  !c5,200*1.15,20
  !c5,200*36/128*1.15,20
  !c5,200*12/128*1.15,20
  db $FF

SoundDoorOpen:
  db $01 : dw .voice0
.voice0
  db !sampleDoorOpen
  !c5,255,19
  db $FF

SoundDoorClose:
  db $01 : dw .voice0
.voice0
  db !sampleDoorClose
  !c5,255,19
  db $FF

; TODO: sounds bad
SoundAbsorbX:
  db $12 : dw .voice0, .voice1
.voice0
  db $F5,$800/9 : !gs6
  db !sampleAbsorbX1
  !c6,255,9
  db $F5,$800/21 : !ds5
  db $F0,128,21
  db $F5,$600/13 : !a5
  db $F0,64,13
  db $FF
.voice1
  db $F5,$500/9 : !ds5
  db !sampleAbsorbX0
  !as4,112,9
  db $F5,$6FF/7 : !d6
  db $F0,224,7
  !d6,200,5
  !d6,0,7-5
  !d6,104,5
  !d6,0,8-5
  !d6,32,5
  !d6,0,13-5
  db $FF

endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0 : dw Sounds
endspcblock execute !p_spcEngine
