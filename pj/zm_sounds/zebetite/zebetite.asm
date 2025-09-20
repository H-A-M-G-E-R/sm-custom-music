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

!sampleZebetiteHurt = $16

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !sampleZebetiteHurt,$FF,$E0,$00,$03,$33
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw SampleZebetiteHurt,0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  SampleZebetiteHurt: incbin "zebetite_hurt_13379_noloop.brr"

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
  dw SoundZebetiteHurt1 ; C0
  dw SoundZebetiteHurt2 ; C1

SoundZebetiteHurt1:
  db $01 : dw .voice0
.voice0
  db !sampleZebetiteHurt
  !e5,0,4-1
  !e5,200*255/255,10-1
  !e5,104*255/255,10-1
  !e5,40*255/255,10
  db $FF

SoundZebetiteHurt2:
  db $01 : dw .voice0
.voice0
  db !sampleZebetiteHurt
  !e5,200*255/255,10-1
  !g5,104*255/255,10-1
  !g5,40*255/255,10
  db $FF

endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0 : dw Sounds
endspcblock execute !p_spcEngine
