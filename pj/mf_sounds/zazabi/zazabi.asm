asar 1.91
norom : org 0
incsrc "../../defines.asm"

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

!sampleZazabiOpenMouth = $16
!sampleZazabiHurt = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !sampleZazabiOpenMouth,$FF,$E0,$00,$01,$EA
  db !sampleZazabiHurt,$FF,$E0,$00,$02,$84
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw SampleZazabiOpenMouth,0
  dw SampleZazabiHurt,SampleZazabiHurt+16*9/16
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  SampleZazabiOpenMouth: incbin "zazabi_open_mouth_8000_noloop.brr"
  SampleZazabiHurt: incbin "zazabi_hurt_10512_16_fixed.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker5

Tracker5:
  dw $0000

Sounds:
  dw SoundZazabiOpenMouth ; C0
  dw SoundZazabiHurt ; C1

SoundZazabiOpenMouth:
  db $01 : dw .voice0
.voice0
  db !sampleZazabiOpenMouth
  !c4,120,10-1
  !c5,255,18-1
  !c5,80,18-1
  !c5,40,15
  db $FF

SoundZazabiHurt:
  db $02 : dw .voice0, .voice1
.voice1
  db !sampleZazabiHurt
  !c5,0,5-1
.voice0
  db $F5,0 : !b7 ; enable legato
  db !sampleZazabiHurt
  !c5,200,2
  %make_sound_subnote("!c5", 25/64*12, 200, 2)
  %make_sound_subnote("!c5", 35/64*12, 200, 2)
  %make_sound_subnote("!c5", 33/64*12, 200, 2)
  %make_sound_subnote("!c5", 25/64*12, 200, 2)
  %make_sound_subnote("!c5", -15/64*12, 200, 2)
  %make_sound_subnote("!c5", -21/64*12, 200, 2)
  %make_sound_subnote("!c5", -15/64*12, 200, 2)
  %make_sound_subnote("!c5", -7/64*12, 200, 2)
  %make_sound_subnote("!c5", 35/64*12, 200, 2)
  %make_sound_subnote("!c5", 51/64*12, 200, 2)
  db $F9,$FF,$F7
  %make_sound_subnote("!c5", 59/64*12, 200, 13)
  dw $FF

endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0 : dw Sounds
endspcblock execute !p_spcEngine
