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
  !subloop,0
  !remoteCode : dw .remoteCode0 : db -1,0
  !remoteCode : dw .remoteCode1 : db 3,0
  db 48,$7F
  !c4
  !rest
  !c4
  !rest
  !remoteCode : dw .remoteCode2 : db 1,24
  !c4
  !rest
  !c4
  !rest
  !remoteCode : dw 0 : db 0,0
  !restoreInstrument
  !c4
  !rest
  !c4
  !rest
  !c4
  !remoteCode : dw .remoteCode1 : db 4,0
  !tie
  !remoteCode : dw .remoteCode0 : db 4,0
  !c4
  !remoteCode : dw .remoteCode1 : db 4,0
  !tie
  !subloop,255
  !end

.remoteCode0
  !restoreInstrument
  !end

.remoteCode1
  !adsrGain,$80,$87
  !end

.remoteCode2
  !adsrGain,$80,$8A
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
