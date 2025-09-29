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

!sampleChargingBeamCommon = $16
!sampleChargingChargeBeam = $17
!sampleChargingWideBeam = $18
!sampleChargingPlasmaBeam = $19
!sampleChargingWaveBeam = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !sampleChargingBeamCommon,$FF,$E0,$00,$02,$83
  db !sampleChargingChargeBeam,$FF,$E0,$00,$02,$84
  db !sampleChargingWideBeam,$FF,$E0,$00,$02,$81
  db !sampleChargingPlasmaBeam,$FF,$E0,$00,$02,$82
  db !sampleChargingWaveBeam,$FF,$E0,$00,$02,$82
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw SampleChargingBeamCommon,SampleChargingBeamCommon+16*9/16
  dw SampleChargingChargeBeam,SampleChargingChargeBeam+16*9/16
  dw SampleChargingWideBeam,SampleChargingWideBeam+16*9/16
  dw SampleChargingPlasmaBeam,SampleChargingPlasmaBeam+16*9/16
  dw SampleChargingWaveBeam,SampleChargingWaveBeam+16*9/16
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  SampleChargingBeamCommon: incbin "charging_beam_common_10503.579888_16.brr"
  SampleChargingChargeBeam: incbin "charging_charge_beam_10512_16.brr"
  SampleChargingWideBeam: incbin "charging_wide_beam_10468.921824_16.brr"
  SampleChargingPlasmaBeam: incbin "charging_plasma_beam_10476.805824_16.brr"
  SampleChargingWaveBeam: incbin "charging_wave_beam_10476.805824_16.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker5

Tracker5:
  dw $0000

Sounds:
  dw SoundChargingChargeBeam ; C0
  dw SoundChargingWideBeam ; C1
  dw SoundChargingPlasmaBeam ; C2
  dw SoundChargingWaveBeam ; C3

SoundChargingChargeBeam:
  db $02 : dw .voice0, .voice1
.voice0
  db $F5,(($A4+32/64*12)-($A4-47/64*12))/52*256 : !b7
  %make_sound_subnote_with_instr(!sampleChargingBeamCommon, "!c5", -47/64*12, 55*4, 52)
  db $F5,0 : !b7
  %make_sound_subnote("!c5", 32/64*12, 55*4, 255)

.voice1
  db $F5,(($A4+32/64*12)-($A4-47/64*12))/52*256 : !b7
  %make_sound_subnote_with_instr(!sampleChargingChargeBeam, "!c5", -47/64*12, 27*4, 52)
  db $F5,0 : !b7
  %make_sound_subnote("!c5", 32/64*12, 22*4, 255)

SoundChargingWideBeam:
  db $02 : dw .voice0, .voice1
.voice0
  db $F5,(($A4+39/64*12)-($A4-47/64*12))/52*256 : !b7
  %make_sound_subnote_with_instr(!sampleChargingBeamCommon, "!c5", -47/64*12, 55*4, 52)
  db $F5,0 : !b7
  %make_sound_subnote("!c5", 39/64*12, 55*4, 255)

.voice1
  db $F5,(($A4+32/64*12)-($A4-47/64*12))/52*256 : !b7
  %make_sound_subnote_with_instr(!sampleChargingWideBeam, "!c5", -47/64*12, 27*4, 52)
  db $F5,0 : !b7
  %make_sound_subnote("!c5", 32/64*12, 22*4, 255)

SoundChargingPlasmaBeam:
  db $02 : dw .voice0, .voice1
.voice0
  db $F5,(($A4+46/64*12)-($A4-47/64*12))/52*256 : !b7
  %make_sound_subnote_with_instr(!sampleChargingBeamCommon, "!c5", -47/64*12, 55*4, 52)
  db $F5,0 : !b7
  %make_sound_subnote("!c5", 46/64*12, 55*4, 255)

.voice1
  db $F5,(($A4+32/64*12)-($A4-47/64*12))/52*256 : !b7
  %make_sound_subnote_with_instr(!sampleChargingPlasmaBeam, "!c5", -47/64*12, 27*4, 52)
  db $F5,0 : !b7
  %make_sound_subnote("!c5", 32/64*12, 22*4, 255)

SoundChargingWaveBeam:
  db $02 : dw .voice0, .voice1
.voice0
  db $F5,(($A4+51/64*12)-($A4-47/64*12))/52*256 : !b7
  %make_sound_subnote_with_instr(!sampleChargingBeamCommon, "!c5", -47/64*12, 55*4*92/100, 52)
  db $F5,0 : !b7
  %make_sound_subnote("!c5", 51/64*12, 55*4*92/100, 255)

.voice1
  db $F5,(($A4+51/64*12)-($A4-47/64*12))/52*256 : !b7
  %make_sound_subnote_with_instr(!sampleChargingWaveBeam, "!c5", -47/64*12, 38*4, 52)
  db $F5,0 : !b7
  %make_sound_subnote("!c5", 51/64*12, 33*4, 255)

endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0 : dw Sounds
endspcblock execute !p_spcEngine
