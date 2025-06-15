asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr07 = $16
!instr1C = $17
!instr21 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr07,$8F,$EF,$B8,$04,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr21,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample07_08_09,Sample07_08_09+360
  dw Sample1C,Sample1C+27
  dw Sample21,Sample21+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample07_08_09: incbin "Sample_38e63eed215c29c5a4534a9767604a6d.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
-
  dw .pattern0
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echo,%00011101,34,34
  !echoParameters,4,157,0
  !musicVolume,255
  !tempo,46
  !volume,170
  !vibrato,0,9,50
  !instr,!instr07
  db 120,$77
  !a5
  db 60
  !b5
  !a5
  db 120
  !d6
  db 60
  !e6
  !d6
  db 120
  !g6
  !tie
  !b6
  db 60
  !g6
  !d6
  !end

.pattern0_1
  !instr,!instr21
  !volume,150
  !pan,10
  db 15,$11
  !g3
  !g3
  !g3
  !g3
  db 15,$12
  !g3
  !g3
  db 15,$13
  !g3
  !g3
  db 15,$14
  !g3
  !g3
  db 15,$15
  !g3
  !g3
  db 15,$16
  !g3
  !g3
  !g3
  !g3
  db 15,$17
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  !g3
  db 15,$16
  !g3
  !g3
  db 15,$15
  !g3
  db 15,$14
  !g3
  db 15,$13
  !g3
  db 15,$12
  !g3
  !g3
  db 15,$11
  !g3
  !f3
  !f3
  !f3
  !f3
  db 15,$12
  !f3
  !f3
  db 15,$13
  !f3
  !f3
  db 15,$14
  !f3
  !f3
  db 15,$15
  !f3
  !f3
  db 15,$16
  !f3
  !f3
  !f3
  !f3
  db 15,$17
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  !f3
  db 15,$16
  !f3
  !f3
  db 15,$15
  !f3
  db 15,$14
  !f3
  db 15,$13
  !f3
  db 15,$12
  !f3
  !f3
  db 15,$11
  !f3
  !end

.pattern0_2
  !instr,!instr1C
  !volume,130
  !pan,13
  db 15,$11
  !a5
  !d6
  !a5
  !d6
  db 15,$12
  !b5
  !d6
  db 15,$13
  !a5
  !d6
  db 15,$14
  !cs6
  !d6
  db 15,$15
  !a5
  !d6
  db 15,$16
  !b5
  !d6
  !a5
  !d6
  db 15,$17
  !a5
  !d6
  !a5
  !d6
  !b5
  !d6
  !a5
  !d6
  db 15,$16
  !cs6
  !d6
  db 15,$15
  !a5
  db 15,$14
  !d6
  db 15,$13
  !b5
  db 15,$12
  !d6
  !a5
  db 15,$11
  !d6
  !g5
  !c6
  !g5
  !c6
  db 15,$12
  !a5
  !c6
  db 15,$13
  !g5
  !c6
  db 15,$14
  !b5
  !c6
  db 15,$15
  !g5
  !c6
  db 15,$16
  !a5
  !c6
  !g5
  !c6
  db 15,$17
  !g5
  !c6
  !g5
  !c6
  !a5
  !c6
  !g5
  !c6
  db 15,$16
  !b5
  !c6
  db 15,$15
  !g5
  db 15,$14
  !c6
  db 15,$13
  !a5
  db 15,$12
  !c6
  !g5
  db 15,$11
  !c6
  !end

.pattern0_3
  !instr,!instr1C
  !volume,130
  !pan,7
  db 15,$11
  !d6
  !a5
  !d6
  !a5
  db 15,$12
  !d6
  !b5
  db 15,$13
  !d6
  !a5
  db 15,$14
  !d6
  !cs6
  db 15,$15
  !d6
  !a5
  db 15,$16
  !d6
  !b5
  !d6
  !a5
  db 15,$17
  !d6
  !a5
  !d6
  !a5
  !d6
  !b5
  !d6
  !a5
  db 15,$16
  !d6
  !cs6
  db 15,$15
  !d6
  db 15,$14
  !a5
  db 15,$13
  !d6
  db 15,$12
  !b5
  !d6
  db 15,$11
  !a5
  !c6
  !g5
  !c6
  !g5
  db 15,$12
  !c6
  !a5
  db 15,$13
  !c6
  !g5
  db 15,$14
  !c6
  !b5
  db 15,$15
  !c6
  !g5
  db 15,$16
  !c6
  !a5
  !c6
  !g5
  db 15,$17
  !c6
  !g5
  !c6
  !g5
  !c6
  !a5
  !c6
  !g5
  db 15,$16
  !c6
  !b5
  db 15,$15
  !c6
  db 15,$14
  !g5
  db 15,$13
  !c6
  db 15,$12
  !a5
  !c6
  db 15,$11
  !g5
  !end

.pattern0_4
  !instr,!instr1C
  !volume,130
  !pan,10
  db 15,$11
  !fs6
  !fs6
  !fs6
  !fs6
  db 15,$12
  !fs6
  !fs6
  db 15,$13
  !fs6
  !fs6
  db 15,$14
  !fs6
  !fs6
  db 15,$15
  !fs6
  !fs6
  db 15,$16
  !fs6
  !fs6
  !fs6
  !fs6
  db 15,$17
  !fs6
  !fs6
  !fs6
  !fs6
  !fs6
  !fs6
  !fs6
  !fs6
  db 15,$16
  !fs6
  !fs6
  db 15,$15
  !fs6
  db 15,$14
  !fs6
  db 15,$13
  !fs6
  db 15,$12
  !fs6
  !fs6
  db 15,$11
  !fs6
  !e6
  !e6
  !e6
  !e6
  db 15,$12
  !e6
  !e6
  db 15,$13
  !e6
  !e6
  db 15,$14
  !e6
  !e6
  db 15,$15
  !e6
  !e6
  db 15,$16
  !e6
  !e6
  !e6
  !e6
  db 15,$17
  !e6
  !e6
  !e6
  !e6
  !e6
  !e6
  !e6
  !e6
  db 15,$16
  !e6
  !e6
  db 15,$15
  !e6
  db 15,$14
  !e6
  db 15,$13
  !e6
  db 15,$12
  !e6
  !e6
  db 15,$11
  !e6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
