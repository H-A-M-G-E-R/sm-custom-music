asar 1.91
norom : org 0
incsrc "../../defines.asm"

; Pitch calculation: round(n*0x1000/0x1053B) or round(n*4096/66875) where n is the sample rate

!sampleFreezeSprite = $16
!sampleIceExplosion = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !sampleFreezeSprite,$FF,$E0,$00,$02,$84
  db !sampleIceExplosion,$FF,$E0,$00,$01,$32
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw SampleFreezeSprite,SampleFreezeSprite+16*9/16
  dw SampleIceExplosion,0
endspcblock

spcblock !p_songSpecificData nspc ; sample data
  SampleFreezeSprite: incbin "freeze_sprite_0_10512_16.brr"
  SampleIceExplosion: incbin "../ice_explosion_5000_noloop.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker5

Tracker5:
  dw $0000

Sounds:
  dw SoundFreezeSprite ; C0

SoundFreezeSprite:
  db $12 : dw .voice0, .voice1
.voice0
  db $F5,0 : !b7 ; enable legato
  %make_sound_subnote_with_instr(!sampleFreezeSprite, "!c5", 49/64*12, 200, 2)
  %make_sound_subnote("!c5", 43/64*12, 200, 2)
  %make_sound_subnote("!c5", 39/64*12, 200, 2)
  %make_sound_subnote("!c5", 35/64*12, 200, 2)
  %make_sound_subnote("!c5", 33/64*12, 200, 2)
  %make_sound_subnote("!c5", 31/64*12, 200, 2)
  %make_sound_subnote("!c5", 39/64*12, 200, 2)
  %make_sound_subnote("!c5", 49/64*12, 200, 2)
  %make_sound_subnote("!c5", 57/64*12, 200, 2)
  %make_sound_subnote("!c5", 63/64*12, 200, 2)
  %make_sound_subnote("!c5", 37/64*12, 200, 2)
  %make_sound_subnote("!c5", 22/64*12, 200, 2)
  %make_sound_subnote("!c5", 12/64*12, 200, 2)
  %make_sound_subnote("!c5", 5/64*12, 200, 2)
  %make_sound_subnote("!c5", -1/64*12, 200, 2)
  %make_sound_subnote("!c5", 17/64*12, 200, 2)
  ;%make_sound_subnote("!c5", 57/64*12, 200, 1)
  db $FF

.voice1
  db !sampleIceExplosion
  !c5,255*160/255,16-1
  !c5,64*160/255,16-1
  !c5,24*160/255,31
  db $FF

endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0 : dw Sounds
endspcblock execute !p_spcEngine
