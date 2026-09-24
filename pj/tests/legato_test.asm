asar 1.91
norom : org 0
incsrc "../defines.asm"

spcblock !p_songSpecificData nspc
dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2A50

Tracker2A50:
-
  dw .pattern0
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !musicVolume,255
  !tempo,24;24.576 or 60 bpm
  !setDPMiscCommand,!musicTempo,147;0.576*256
  !volume,255
  !instr,$0B
  !adsrGain,$7F,$EB
  !toggleLegato
  db 48,$7F
  !subloop,0
  !c4
  !d4
  !e4
  !rest
  !subloop,255
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
