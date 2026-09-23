;../asar.exe --fix-checksum=off pj\adsr_test.asm pj\adsr_test.nspc
;python3 build_spc.py pj\adsr_test.nspc
asar 1.91
norom : org 0
incsrc "defines.asm"

spcblock !p_songSpecificData nspc
dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2A50

Tracker2A50:
-
  dw .pattern0
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_0, .pattern0_0, .pattern0_0, .pattern0_0, .pattern0_0, .pattern0_0, .pattern0_0

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !musicVolume,100
  !tempo,24;24.576 or 60 bpm
  !setDPMiscCommand,!musicTempo,147;0.576*256
  !volume,255
  !instr,$0B
  !adsrGain,$7F,$F0
  db 48,$7F
  !subloop,0
  ;!adsrGain,$7F,$F0
  ;!c4
  ;!adsrGain,$80,$CA
  !c4
  ;!restoreInstrument
  !subloop,255
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
