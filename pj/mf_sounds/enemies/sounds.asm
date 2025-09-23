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

!sampleHornoadHalzynCry = $16
!sampleMotoYamebaSciserYardChootCry = $17
!sampleSidehopperCry = $18
!sampleZombieCry = $19
!sampleHornoadSpit = $1A
!sampleSovaHurt = $1B
!sampleGeronHurt0 = $1C
!sampleGeronHurt1 = $1D
!sampleZeelaShoot0 = $1E
!sampleZeelaShoot1 = $1F
!sampleZeelaHurt = $20
!sampleHornoadJump = $21
!sampleSciserShoot = $22
!sampleFireBeamStart = $23
!sampleSpin = $24
!samplePuyoHurt = $25
!sampleGenesisHurt = $26
!sampleRipperHurt = $27
!sampleOwtchHurt = $28
!sampleSovaHurtFade = $29
!sampleZozoroHurt = $2A
!samplePowampHurt = $2B
!sampleWaterFootstep = $2C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !sampleHornoadHalzynCry,$FF,$E0,$00,$02,$84
  db !sampleMotoYamebaSciserYardChootCry,$FF,$E0,$00,$02,$84
  db !sampleSidehopperCry,$FF,$E0,$00,$02,$62
  db !sampleZombieCry,$FF,$E0,$00,$02,$84
  db !sampleHornoadSpit,$FF,$E0,$00,$02,$84
  db !sampleSovaHurt,$FF,$E0,$00,$01,$2F
  db !sampleGeronHurt0,$FF,$E0,$00,$02,$84
  db !sampleGeronHurt1,$FF,$E0,$00,$01,$EA
  db !sampleZeelaShoot0,$FF,$E0,$00,$02,$84
  db !sampleZeelaShoot1,$FF,$E0,$00,$02,$84
  db !sampleZeelaHurt,$FF,$E0,$00,$02,$84
  db !sampleHornoadJump,$FF,$E0,$00,$02,$84
  db !sampleSciserShoot,$FF,$E0,$00,$01,$32
  db !sampleFireBeamStart,$FF,$E0,$00,$02,$84
  db !sampleSpin,$FF,$E0,$00,$02,$84
  db !samplePuyoHurt,$FF,$E0,$00,$02,$84
  db !sampleGenesisHurt,$FF,$E0,$00,$02,$84
  db !sampleRipperHurt,$FF,$E0,$00,$02,$84
  db !sampleOwtchHurt,$FF,$E0,$00,$02,$84
  db !sampleSovaHurtFade,$FF,$F6,$00,$01,$2F
  db !sampleZozoroHurt,$FF,$E0,$00,$02,$84
  db !samplePowampHurt,$FF,$E0,$00,$02,$84
  db !sampleWaterFootstep,$FF,$E0,$00,$02,$84
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw SampleHornoadHalzynCry,0
  dw SampleMotoYamebaSciserYardChootCry,SampleMotoYamebaSciserYardChootCry+16*9/16
  dw SampleSidehopperCry,SampleSidehopperCry+16*9/16
  dw SampleZombieCry,0
  dw SampleHornoadSpit,0
  dw SampleSovaHurt,SampleSovaHurt+16*9/16
  dw SampleGeronHurt0,0
  dw SampleGeronHurt1,0
  dw SampleZeelaShoot0,0
  dw SampleZeelaShoot1,0
  dw SampleZeelaHurt,0
  dw SampleHornoadJump,SampleHornoadJump+16*9/16
  dw SampleSciserShoot,0
  dw SampleFireBeamStart,0
  dw SampleSpin,0
  dw SamplePuyoHurt,0
  dw SampleGenesisHurt,0
  dw SampleRipperHurt,0
  dw SampleOwtchHurt,0
  dw SampleSovaHurt,SampleSovaHurt+16*9/16
  dw SampleZozoroHurt,0
  dw SamplePowampHurt,0
  dw SampleWaterFootstep,0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  SampleHornoadHalzynCry: incbin "hornoad_halzyn_cry_10512_noloop.brr"
  SampleMotoYamebaSciserYardChootCry: incbin "moto_yameba_sciser_yard_choot_cry_10512_loop0.brr"
  SampleSidehopperCry: incbin "sidehopper_cry_9956.52_loop16.brr"
  SampleZombieCry: incbin "zombie_cry_10512_noloop.brr"
  SampleHornoadSpit: incbin "hornoad_spit_10512_noloop.brr"
  SampleSovaHurt: incbin "sova_hurt_4953.705_0.brr"
  SampleGeronHurt0: incbin "geron_hurt_0_10512_noloop.brr"
  SampleGeronHurt1: incbin "geron_hurt_1_8000_noloop.brr"
  SampleZeelaShoot0: incbin "zeela_shoot_0_10512_noloop.brr"
  SampleZeelaShoot1: incbin "zeela_shoot_1_10512_noloop.brr"
  SampleZeelaHurt: incbin "zeela_hurt_10512_noloop.brr"
  SampleHornoadJump: incbin "hornoad_jump_10512_16.brr"
  SampleSciserShoot: incbin "sciser_shoot_5000_noloop.brr"
  SampleFireBeamStart: incbin "../fire_beam_start_10512_noloop.brr"
  SampleSpin: incbin "../spin_10512_noloop.brr"
  SamplePuyoHurt: incbin "puyo_hurt_10512_noloop.brr"
  SampleGenesisHurt: incbin "genesis_hurt_10512_noloop.brr"
  SampleRipperHurt: incbin "ripper_hurt_10512_noloop.brr"
  SampleOwtchHurt: incbin "owtch_hurt_10512_noloop.brr"
  SampleZozoroHurt: incbin "zozoro_hurt_10512_noloop.brr"
  SamplePowampHurt: incbin "powamp_hurt_10512_noloop.brr"
  SampleWaterFootstep: incbin "../water_footstep_10512_noloop.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker5

Tracker5:
  dw $0000

Sounds:
  dw SoundHornoadHurt ; C0
  dw SoundHornoadSpit ; C1
  dw SoundHornoadJump ; C2
  dw SoundHalzynHurt ; C3
  dw SoundHalzynLunge ; C4
  dw SoundHalzynLand ; C5
  dw SoundHalzynFlap ; C6
  dw SoundMotoHurt ; C7
  dw SoundZebesianHurt ; C8
  dw SoundYamebaHurt ; C9
  dw SoundGeronHurt ; CA
  dw SoundSciserPrepareToShoot ; CB
  dw SoundSciserShoot ; CC
  dw SoundSciserHurt ; CD
  dw SoundGoldSciserHurt ; CE
  dw SoundGeemerHurt ; CF
  dw SoundZoroHurt ; D0
  dw SoundBlueZoroHurt ; D1
  dw SoundKihunterHurt ; D2
  dw SoundSidehopperShakeHead ; D3
  dw SoundSidehopperHurt ; D4
  dw SoundDessgeegaShakeHead ; D5
  dw SoundDessgeegaHurt ; D6
  dw SoundReoHurt ; D7
  dw SoundFuneHurt ; D8
  dw SoundNamiheHurt ; D9
  dw SoundGerudaHurt ; DA
  dw SoundSovaHurt ; DB
  dw SoundSkulteraSmallHurt ; DC
  dw SoundSkulteraLargeHurt ; DD
  dw SoundYardHurt ; DE
  dw SoundGerubossHurt ; DF
  dw SoundChootHurt ; E0
  dw SoundWaverHurt ; E1
  dw SoundEvirHurt ; E2
  dw SoundPuyoHurt ; E3
  dw SoundGenesisHurt ; E4
  dw SoundZeelaShoot ; E5
  dw SoundZeelaHurt ; E6
  dw SoundPowampHurt ; E7
  dw SoundZozoroHurt ; E8
  dw SoundRipperHurt ; E9
  dw SoundOwtchHurt ; EA

SoundHornoadHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !c5,255*200/255,8
  db $FF

; but hornoads don't spit in x-fusion
SoundHornoadSpit:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadSpit
  !c5,255*200/255,4
  db $FF

SoundHornoadJump:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadJump
  !c5,255*200/255,5
  db $FF

SoundHalzynHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !fs5,255*200/255,4-1
  !as4,160*200/255,5
  db $FF

SoundHalzynLunge:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !c4,160*200/255,3-1
  !g4,200*200/255,4-1
  !c5,255*200/255,3-1
  !c5,0,21-1
  !e5,255*200/255,6-1
  !e5,104*200/255,4-1
  !e5,40*200/255,4
  db $FF

SoundHalzynLand:
  db $01 : dw .voice0
.voice0
  db !sampleFireBeamStart
  !c5,224*200/255,4-1
  db !sampleHornoadJump
  !c5,255*200/255,3
  db $FF

SoundHalzynFlap:
  db $01 : dw .voice0
.voice0
  db !sampleSpin
  !c5,255*200/255,8
  db $FF

SoundMotoHurt:
  db $01 : dw .voice0
.voice0
  db !sampleMotoYamebaSciserYardChootCry
  !d3,160*200/255,4-1
  !c4,255*200/255,4-1
  !g3,160*200/255,10
  db $FF

SoundZebesianHurt:
  db $01 : dw .voice0
.voice0
  db $F5,0 : !b7 ; enable legato
  db !sampleZombieCry
  !fs5,160*200/255,2
  %make_sound_subnote("!c6", 3/64*12, 160*200/255, 3)
  %make_sound_subnote("!c6", 7/64*12, 160*200/255, 2)
  %make_sound_subnote("!c6", 5/64*12, 160*200/255, 2)
  !c6,160*200/255,1
  db $FF

SoundYamebaHurt:
  db $01 : dw .voice0
.voice0
  db !sampleMotoYamebaSciserYardChootCry
  !f5,255*200/255,6-1
  !c5,104*200/255,7
  db $FF

SoundGeronHurt:
  db $01 : dw .voice0
.voice0
  db !sampleGeronHurt0
  !c5,255*200/255,3-1
  db !sampleGeronHurt1
  !c5,240*200/255,5-1
  !f5,240*200/255,5-1
  !c5,240*200/255,5-1
  !a4,240*200/255,5
  db $FF

SoundSciserPrepareToShoot:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadJump
  !e4,40*200/255,7-1
  !e4,104*200/255,7-1
  !e4,160*200/255,7-1
  !e4,255*200/255,7
  db $FF

SoundSciserShoot:
  db $01 : dw .voice0
.voice0
  db !sampleMotoYamebaSciserYardChootCry
  !b3,120*200/255,5-1
  db !sampleSciserShoot
  !c4,224*200/255,5-1
  !c4,160*200/255,4-1
  !c4,80*200/255,4
  db $FF

SoundSciserHurt:
  db $01 : dw .voice0
.voice0
  db !sampleMotoYamebaSciserYardChootCry
  !d4,255*200/255,4-1
  !a3,160*200/255,4-1
  !f3,104*200/255,4
  db $FF

SoundGoldSciserHurt:
  db $01 : dw .voice0
.voice0
  db !sampleMotoYamebaSciserYardChootCry
  !gs4,255*200/255,4-1
  !cs4,160*200/255,4-1
  !a3,104*200/255,4
  db $FF

SoundGeemerHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !a5,160*200/255,4-1
  !c6,104*200/255,4-1
  !f6,104*200/255,4
  db $FF

SoundZoroHurt:
  db $01 : dw .voice0
.voice0
  db !sampleZombieCry
  !b3,255*200/255,5-1
  !f4,160*200/255,10
  db $FF

SoundBlueZoroHurt:
  db $01 : dw .voice0
.voice0
  db !sampleZombieCry
  !ds4,255*200/255,5-1
  !a4,160*200/255,10
  db $FF

SoundKihunterHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !a4,160*200/255,3-1
  !g5,160*200/255,3-1
  !e5,160*200/255,3-1
  db $FF

SoundSidehopperShakeHead:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !c4,0,8-1
  !c4,200*200/255,6-1
  !f4,160*200/255,3-1
  !f4,120*200/255,3-1
  !f4,0,7-1
  !g4,120*200/255,3-1
  !b4,120*200/255,3
  db $FF

SoundSidehopperHurt:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !a5,255*200/255,5-1
  !f5,224*200/255,9
  db $FF

SoundDessgeegaShakeHead:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !e4,0,8-1
  !e4,200*200/255,6-1
  !a4,160*200/255,3-1
  !a4,120*200/255,3-1
  !a4,0,7-1
  !b4,120*200/255,3-1
  !d5,120*200/255,3
  db $FF

SoundDessgeegaHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadSpit
  !as5,255*200/255,2-1
  db !sampleSidehopperCry
  !a4,255*200/255,5-1
  !c5,224*200/255,9
  db $FF

SoundReoHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !d4,160*200/255,3-1
  !d5,160*200/255,3-1
  !a4,160*200/255,13
  db $FF

SoundFuneHurt:
  db $01 : dw .voice0
.voice0
  db !sampleZombieCry
  !b3,255*200/255,38
  db $FF

SoundNamiheHurt:
  db $01 : dw .voice0
.voice0
  db !sampleZombieCry
  !g3,255*200/255,38
  db $FF

SoundGerudaHurt:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !c5,255*200/255,5-1
  db !sampleHornoadHalzynCry
  !f5,200*200/255,10
  db $FF

SoundSovaHurt:
  db $01 : dw .voice0
.voice0
  db !sampleSovaHurt
  !a4,255*200/255,4-1
  !e5,200*200/255,4-1
  db $F5,0 : !b7 ; enable legato
  ;!c5,200*200/255,7
  ;!c5,200*200/255*32/47,3
  ;!c5,200*200/255*18/47,3
  ;!c5,200*200/255*8/47,1
  db !sampleSovaHurtFade
  !c5,200*200/255,14
  db $FF

SoundSkulteraSmallHurt:
  db $01 : dw .voice0
.voice0
  db $F5,0 : !b7 ; enable legato
  db !sampleSidehopperCry
  !ds4,160*55/70,2
  %make_sound_subnote("!a4", -29/64*12, 160*55/70, 2)
  %make_sound_subnote("!a4", -26/64*12, 160*55/70, 2)
  %make_sound_subnote("!a4", -23/64*12, 160*55/70, 2)
  %make_sound_subnote("!a4", -19/64*12, 160*55/70, 1)
  %make_sound_subnote("!a4", -19/64*12, 160*70/70, 1)
  %make_sound_subnote("!a4", -13/64*12, 160*55/70, 1)
  %make_sound_subnote("!a4", -9/64*12, 160*41/70, 1)
  %make_sound_subnote("!a4", -9/64*12, 160*29/70, 2)
  db $FF

SoundSkulteraLargeHurt:
  db $01 : dw .voice0
.voice0
  db $F5,0 : !b7 ; enable legato
  db !sampleSidehopperCry
  !c4,200*55/70,2
  %make_sound_subnote("!c4", -1/64*12, 200*55/70, 1)
  %make_sound_subnote("!c4", -1/64*12, 200*53/70, 3)
  %make_sound_subnote("!c4", -3/64*12, 200*50/70, 3)
  %make_sound_subnote("!c4", -3/64*12, 200*46/70, 2)
  %make_sound_subnote("!c4", -10/64*12, 200*46/70, 1)
  %make_sound_subnote("!c4", -10/64*12, 200*40/70, 3)
  %make_sound_subnote("!c4", -19/64*12, 200*31/70, 3)
  %make_sound_subnote("!c4", -19/64*12, 200*11/70, 1)
  db $FF

SoundYardHurt:
  db $01 : dw .voice0
.voice0
  db !sampleMotoYamebaSciserYardChootCry
  !f4,255*200/255,7-1
  db !sampleSidehopperCry
  !c4,200*200/255,7-1
  db !sampleMotoYamebaSciserYardChootCry
  !c4,160*200/255,5
  db $FF

SoundGerubossHurt:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !g4,255*200/255,4-1
  !g5,255*200/255,4-1
  !c5,200*200/255,4-1
  !d5,200*200/255,6
  db $FF

SoundChootHurt:
  db $01 : dw .voice0
.voice0
  db !sampleWaterFootstep
  !e5,255*200/255,5-1
  db !sampleMotoYamebaSciserYardChootCry
  !f5,200*200/255,5
  db $FF

SoundWaverHurt:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !c4,200*200/255,4-1
  !f4,255*200/255,10
  db $FF

; minus the bubbles
SoundEvirHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !g4,200*200/255,4
  db $FF

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
