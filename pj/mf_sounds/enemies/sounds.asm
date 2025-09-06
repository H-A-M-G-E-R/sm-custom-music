asar 1.91
norom : org 0
incsrc "../../defines.asm"

; nice trick to make subnotes
macro make_sound_subnote(note, subnote, vol, len)
  if <subnote> < 0
    db $F5,-<subnote>*256 : !c2
  else
    db $F5,<subnote>*256 : !b7
  endif
  <note>,<vol>,1
  if <len> > 1
    db $F5,0 : !b7
    db $F0,<vol>,<len>-1
  endif
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

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !sampleHornoadHalzynCry,$FF,$E0,$00,$02,$84
  db !sampleMotoYamebaSciserYardChootCry,$FF,$E0,$00,$02,$84
  db !sampleSidehopperCry,$FF,$E0,$00,$01,$2E
  db !sampleZombieCry,$FF,$E0,$00,$02,$84
  db !sampleHornoadSpit,$FF,$E0,$00,$02,$84
  db !sampleSovaHurt,$FF,$E0,$00,$01,$2F
  db !sampleGeronHurt0,$FF,$E0,$00,$02,$84
  db !sampleGeronHurt1,$FF,$E0,$00,$01,$EA
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
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  SampleHornoadHalzynCry: incbin "hornoad_halzyn_cry_10512_noloop.brr"
  SampleMotoYamebaSciserYardChootCry: incbin "moto_yameba_sciser_yard_choot_cry_10512_loop0.brr"
  SampleSidehopperCry: incbin "sidehopper_dessgeega_geruda_skultera_yard_geruboss_waver_cry_4935.345_loop0.brr"
  SampleZombieCry: incbin "zombie_cry_10512_noloop.brr"
  SampleHornoadSpit: incbin "hornoad_spit_10512_noloop.brr"
  SampleSovaHurt: incbin "sova_hurt_4953.705_0.brr"
  SampleGeronHurt0: incbin "geron_hurt_0_10512_noloop.brr"
  SampleGeronHurt1: incbin "geron_hurt_1_8000_noloop.brr"

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
  dw SoundHornoadHurt ; C0
  dw SoundHornoadSpit ; C1
  dw SoundHalzynHurt ; C2
  dw SoundHalzynLunge ; C3
  dw SoundMotoHurt ; C4
  dw SoundZebesianHurt ; C5
  dw SoundYamebaHurt ; C6
  dw SoundGeronHurt ; C7
  dw SoundSciserHurt ; C8
  dw SoundGoldSciserHurt ; C9
  dw SoundGeemerHurt ; CA
  dw SoundZoroHurt ; CB
  dw SoundBlueZoroHurt ; CC
  dw SoundKihunterHurt ; CD
  dw SoundSidehopperShakeHead ; CE
  dw SoundSidehopperHurt ; CF
  dw SoundDessgeegaShakeHead ; D0
  dw SoundDessgeegaHurt ; D1
  dw SoundReoHurt ; D2
  dw SoundFuneHurt ; D3
  dw SoundNamiheHurt ; D4
  dw SoundGerudaHurt ; D5
  dw SoundSovaHurt ; D6
  dw SoundSkulteraSmallHurt ; D7
  dw SoundSkulteraLargeHurt ; D8
  dw SoundYardHurt ; D9
  dw SoundGerubossHurt ; DA
  dw SoundWaverHurt ; DB
  dw SoundEvirHurt ; DC

SoundHornoadHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !c5,255,8
  db $FF

; but hornoads don't spit in x-fusion
SoundHornoadSpit:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadSpit
  !c5,255,4
  db $FF

SoundHalzynHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !fs5,255,4
  !as4,160,5
  db $FF

SoundHalzynLunge:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !c4,160,3
  !g4,200,4
  !c5,255,3
  !c5,0,20
  !e5,255,6
  !e5,104,4
  !e5,40,4
  db $FF

SoundMotoHurt:
  db $01 : dw .voice0
.voice0
  db !sampleMotoYamebaSciserYardChootCry
  !d3,160,4
  !c4,255,4
  !g3,160,10
  db $FF

SoundZebesianHurt:
  db $01 : dw .voice0
.voice0
  db $F5,0 : !b7 ; enable legato
  db !sampleZombieCry
  !fs5,160,2
  %make_sound_subnote("!c6", 3/64*12, 160, 3)
  %make_sound_subnote("!c6", 7/64*12, 160, 2)
  %make_sound_subnote("!c6", 5/64*12, 160, 2)
  !c6,160,1
  db $FF

SoundYamebaHurt:
  db $01 : dw .voice0
.voice0
  db !sampleMotoYamebaSciserYardChootCry
  !f5,255,6
  !c5,104,7
  db $FF

SoundGeronHurt:
  db $01 : dw .voice0
.voice0
  db !sampleGeronHurt0
  !c5,255,3
  db !sampleGeronHurt1
  !c5,240,5
  !f5,240,5
  !c5,240,5
  !a4,240,5
  db $FF

SoundSciserHurt:
  db $01 : dw .voice0
.voice0
  db !sampleMotoYamebaSciserYardChootCry
  !d4,255,4
  !a3,160,4
  !f3,104,4
  db $FF

SoundGoldSciserHurt:
  db $01 : dw .voice0
.voice0
  db !sampleMotoYamebaSciserYardChootCry
  !gs4,255,4
  !cs4,160,4
  !a3,104,4
  db $FF

SoundGeemerHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !a5,160,4
  !c6,104,4
  !f6,104,4
  db $FF

SoundZoroHurt:
  db $01 : dw .voice0
.voice0
  db !sampleZombieCry
  !b3,255,5
  !f4,160,10
  db $FF

SoundBlueZoroHurt:
  db $01 : dw .voice0
.voice0
  db !sampleZombieCry
  !ds4,255,5
  !a4,160,10
  db $FF

SoundKihunterHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !a4,160,3
  !g5,160,3
  !e5,160,3
  db $FF

SoundSidehopperShakeHead:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !c4,0,8
  !c4,200,6
  !f4,160,3
  !f4,120,3
  !f4,0,7
  !g4,120,3
  !b4,120,3
  db $FF

SoundSidehopperHurt:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !a5,255,5
  !f5,224,9
  db $FF

SoundDessgeegaShakeHead:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !e4,0,8
  !e4,200,6
  !a4,160,3
  !a4,120,3
  !a4,0,7
  !b4,120,3
  !d5,120,3
  db $FF

SoundDessgeegaHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadSpit
  !as5,255,2
  db !sampleSidehopperCry
  !a4,255,5
  !c5,224,9
  db $FF

SoundReoHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !d4,160,3
  !d5,160,3
  !a4,160,13
  db $FF

SoundFuneHurt:
  db $01 : dw .voice0
.voice0
  db !sampleZombieCry
  !b3,255,38
  db $FF

SoundNamiheHurt:
  db $01 : dw .voice0
.voice0
  db !sampleZombieCry
  !g3,255,38
  db $FF

SoundGerudaHurt:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !c5,255,5
  db !sampleHornoadHalzynCry
  !f5,200,10
  db $FF

SoundSovaHurt:
  db $01 : dw .voice0
.voice0
  db !sampleSovaHurt
  !a4,255,4
  !e5,200,4
  db $F5,0 : !b7 ; enable legato
  !c5,200,4
  !c5,94,3
  !c5,64,3
  !c5,36,3
  !c5,8,1
  db $FF

; TODO: it sounds bad
SoundSkulteraSmallHurt:
  db $01 : dw .voice0
.voice0
  db $F5,0 : !b7 ; enable legato
  db !sampleSidehopperCry
  !ds4,255,2
  %make_sound_subnote("!a4", -29/64*12, 255, 2)
  %make_sound_subnote("!a4", -26/64*12, 255, 2)
  %make_sound_subnote("!a4", -23/64*12, 255, 2)
  %make_sound_subnote("!a4", -19/64*12, 255, 2)
  %make_sound_subnote("!a4", -13/64*12, 255, 1)
  %make_sound_subnote("!a4", -9/64*12, 255, 3)
  db $FF

SoundSkulteraLargeHurt:
  db $FF

SoundYardHurt:
  db $01 : dw .voice0
.voice0
  db !sampleMotoYamebaSciserYardChootCry
  !f4,255,7
  db !sampleSidehopperCry
  !c4,200,7
  db !sampleMotoYamebaSciserYardChootCry
  !c4,160,5
  db $FF

SoundGerubossHurt:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !g4,255,4
  !g5,255,4
  !c5,200,4
  !d5,200,6
  db $FF

SoundWaverHurt:
  db $01 : dw .voice0
.voice0
  db !sampleSidehopperCry
  !c4,200,4
  !f4,255,10
  db $FF

; minus the bubbles
SoundEvirHurt:
  db $01 : dw .voice0
.voice0
  db !sampleHornoadHalzynCry
  !g4,200,4
  db $FF

endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0 : dw Sounds
endspcblock execute !p_spcEngine
