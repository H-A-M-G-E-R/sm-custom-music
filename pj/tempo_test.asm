; tick_len_ms = 2
; beat_len_ticks = 48 (addmusic)
; beat_len_ms_max_tempo = beat_len_ticks * tick_len_ms = 96
; max_bpm = 60000 / beat_len_ms_max_tempo = 625
; bpm = 625 * tempo / 256 = tempo * 625 / 256
; tempo = bpm * 256 / 625
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

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !endEcho
  !musicVolume,255
  !tempo,24;24.576 or 60 bpm
  !setDPMiscCommand,!musicTempo,147;0.576*256
  !volume,255
  !instr,0
  db 48,$7F
  !subloop,0
  !c4
  !subloop,255
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
