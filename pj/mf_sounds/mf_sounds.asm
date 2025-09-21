asar 1.91
norom : org 0
incsrc "../defines.asm"

; Pitch calculation: round(n*0x1000/0x1053B) or round(n*4096/66875) where n is the sample rate

macro make_sound_subnote_with_instr(instr, note, delta, vol, len)
  if <delta> < 0
    db $F7,-<delta>*256
  else
    db $F7,<delta>*256
  endif
  db <instr>
  <note>+<delta>,<vol>,<len>
endmacro

macro make_sound_subnote(note, delta, vol, len)
  if <delta> < 0
    db $F7,-<delta>*256
  else
    db $F7,<delta>*256
  endif
  <note>+<delta>,<vol>,<len>
endmacro

!sampleMissileLaunch = $16
!sampleSmallExplosion = $17
!sampleDoorOpen = $18
!sampleDoorClose = $19
!sampleAbsorbX0 = $1A
!sampleAbsorbX1 = $1B
!sampleHeatDamage = $1C
!sampleSamusHurt = $1D
!sampleMissileToggle = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !sampleMissileLaunch,$FF,$E0,$00,$01,$32
  db !sampleSmallExplosion,$FF,$E0,$00,$01,$32
  db !sampleDoorOpen,$FF,$E0,$00,$01,$42
  db !sampleDoorClose,$FF,$E0,$00,$01,$42
  db !sampleAbsorbX0,$FF,$E0,$00,$02,$81
  db !sampleAbsorbX1,$FF,$E0,$00,$02,$80
  db !sampleHeatDamage,$FF,$E0,$00,$02,$84
  db !sampleSamusHurt,$FF,$E0,$00,$02,$84
  db !sampleMissileToggle,$FF,$E0,$00,$02,$84
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw SampleMissileLaunch,0
  dw SampleSmallExplosion,0
  dw SampleDoorOpen,0
  dw SampleDoorClose,0
  dw SampleAbsorbX0,SampleAbsorbX0+1024*9/16
  dw SampleAbsorbX1,SampleAbsorbX1+16*9/16
  dw SampleHeatDamage,0
  dw SampleSamusHurt,0
  dw SampleMissileToggle,0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  SampleMissileLaunch: incbin "missile_launch_5000_noloop.brr"
  SampleSmallExplosion: incbin "small_explosion_5000_noloop.brr"
  SampleDoorOpen: incbin "door_open_5256_noloop.brr"
  SampleDoorClose: incbin "door_close_5256_noloop.brr"
  SampleAbsorbX0: incbin "absorb_x_0_10467.649872_1024.brr"
  SampleAbsorbX1: incbin "absorb_x_1_skid_10457.253504_16.brr"
  SampleHeatDamage: incbin "heat_damage_10512_noloop_fixed.brr"
  SampleSamusHurt: incbin "samus_hurt_10512_noloop.brr"
  SampleMissileToggle: incbin "missile_toggle_10512_noloop.brr"

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
  dw SoundHeatDamage ; C5
  dw SoundSamusHurt ; C6
  dw SoundMissileToggle ; C7

SoundMissileLaunch:
  db $01 : dw .voice0
.voice0
  db !sampleMissileLaunch
  !c5,220*1.15,14
  db $FF

SoundMissileExplode:
  db $01 : dw .voice0
.voice0
  db !sampleSmallExplosion
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
  db $F5,0 : !b7 ; enable legato
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -49/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", 4/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", 24/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", 35/64*12, 255, 3)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", 43/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", 28/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", 15/64*12, 255, 3)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", 5/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -5/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -13/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -27/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -37/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -44/64*12, 255, 3)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -51/64*12, 255, 1)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -57/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -51/64*12, 255, 3)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -43/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -32/64*12, 255, 2)
  %make_sound_subnote_with_instr(!sampleAbsorbX1, "!c6", -15/64*12, 255, 4)
  db $FF
.voice1
  db $F5,0 : !b7 ; enable legato
  %make_sound_subnote_with_instr(!sampleAbsorbX0, "!g5", -48/64*12, 224, 2)
  %make_sound_subnote("!g5", -45/64*12, 224, 2)
  %make_sound_subnote("!g5", -39/64*12, 224, 2)
  %make_sound_subnote("!g5", -31/64*12, 224, 3)
  %make_sound_subnote("!g5", -21/64*12, 224, 2)
  %make_sound_subnote("!g5", -1/64*12, 224, 2)
  %make_sound_subnote("!g5", 39/64*12, 224, 3)
  db $F8,0 : !b7 ; disable legato
  %make_sound_subnote("!g5", 39/64*12, 200, 7)
  %make_sound_subnote("!g5", 39/64*12, 200, 8)
  %make_sound_subnote("!g5", 39/64*12, 200, 12)
  db $FF

SoundHeatDamage:
  db $01 : dw .voice0
.voice0
  db !sampleHeatDamage
  !c5,40,2
  db $FF

SoundSamusHurt:
  db $01 : dw .voice0
.voice0
  db !sampleSamusHurt
  !c5,255,4-1
  !c5,80,4-1
  !c5,24,4
  db $FF

SoundMissileToggle:
  db $01 : dw .voice0
.voice0
  db !sampleMissileToggle
  !c5,255,3-1
  !c5,64,4
  db $FF

endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0 : dw Sounds
endspcblock execute !p_spcEngine
