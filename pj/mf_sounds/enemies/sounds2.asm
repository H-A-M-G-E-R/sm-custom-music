asar 1.91
norom : org 0
incsrc "../../defines.asm"

macro make_sound_subnote(note, delta, vol, len)
  if <delta> < 0
    db $F7,-<delta>*256
  else
    db $F7,<delta>*256
  endif
  <note>+<delta>,<vol>,<len>
endmacro

; Pitch calculation: round(n*0x1000/0x1053B) or round(n*4096/66875) where n is the sample rate

!samplePuyoHurt = $16
!sampleGenesisHurt = $17
!sampleZeelaShoot0 = $18
!sampleZeelaShoot1 = $19
!sampleZeelaHurt = $1A
!samplePowampHurt = $1B
!sampleZozoroHurt = $1C
!sampleRipperHurt = $1D
!sampleOwtchHurt = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !samplePuyoHurt,$FF,$E0,$00,$02,$84
  db !sampleGenesisHurt,$FF,$E0,$00,$02,$84
  db !sampleZeelaShoot0,$FF,$E0,$00,$02,$84
  db !sampleZeelaShoot1,$FF,$E0,$00,$02,$84
  db !sampleZeelaHurt,$FF,$E0,$00,$02,$84
  db !samplePowampHurt,$FF,$E0,$00,$02,$84
  db !sampleZozoroHurt,$FF,$E0,$00,$02,$84
  db !sampleRipperHurt,$FF,$E0,$00,$02,$84
  db !sampleOwtchHurt,$FF,$E0,$00,$02,$84
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw SamplePuyoHurt,0
  dw SampleGenesisHurt,0
  dw SampleZeelaShoot0,0
  dw SampleZeelaShoot1,0
  dw SampleZeelaHurt,0
  dw SamplePowampHurt,0
  dw SampleZozoroHurt,0
  dw SampleRipperHurt,0
  dw SampleOwtchHurt,0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  SamplePuyoHurt: incbin "puyo_hurt_10512_noloop.brr"
  SampleGenesisHurt: incbin "genesis_hurt_10512_noloop.brr"
  SampleZeelaShoot0: incbin "zeela_shoot_0_10512_noloop.brr"
  SampleZeelaShoot1: incbin "zeela_shoot_1_10512_noloop.brr"
  SampleZeelaHurt: incbin "zeela_hurt_10512_noloop.brr"
  SamplePowampHurt: incbin "powamp_hurt_10512_noloop.brr"
  SampleZozoroHurt: incbin "zozoro_hurt_10512_noloop.brr"
  SampleRipperHurt: incbin "ripper_hurt_10512_noloop.brr"
  SampleOwtchHurt: incbin "owtch_hurt_10512_noloop.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker5

Tracker5:
  dw $0000

Sounds:
  dw SoundPuyoHurt ; E0
  dw SoundGenesisHurt ; E1
  dw SoundZeelaShoot ; E2
  dw SoundZeelaHurt ; E3
  dw SoundPowampHurt ; E4
  dw SoundZozoroHurt ; E5
  dw SoundRipperHurt ; E6
  dw SoundOwtchHurt ; E7

SoundPuyoHurt:
  db $01 : dw .voice0
.voice0
  db !samplePuyoHurt
  !c5,255,11
  db $FF

SoundGenesisHurt:
  db $01 : dw .voice0
.voice0
  db !sampleGenesisHurt
  !c5,255,14
  db $FF

SoundZeelaShoot:
  db $01 : dw .voice0
.voice0
  db !sampleZeelaShoot0
  !c5,0,16
  !c5,12*4,8-1
  db !sampleZeelaShoot1
  !c5,20*4,8
  db $FF

SoundZeelaHurt:
  db $01 : dw .voice0
.voice0
  db !sampleZeelaHurt
  !c5,64*4-1,16
  db $FF

SoundPowampHurt:
  db $01 : dw .voice0
.voice0
  db !samplePowampHurt
  !c5,200,11
  db $FF

SoundZozoroHurt:
  db $01 : dw .voice0
.voice0
  db !sampleZozoroHurt
  !c5,200*24/32,4-1
  !d5,200*24/32,4-1
  !e5,200*24/32,4-1
  !fs5,200*24/32,4-1
  !gs5,200*32/32,4
  db $FF

SoundRipperHurt:
  db $01 : dw .voice0
.voice0
  db !sampleRipperHurt
  !c5,200,14
  db $FF

SoundOwtchHurt:
  db $01 : dw .voice0
.voice0
  db !sampleOwtchHurt
  !c5,150,9
  db $FF

endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0 : dw Sounds
endspcblock execute !p_spcEngine
