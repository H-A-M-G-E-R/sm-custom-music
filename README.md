# H A M's Super Metroid custom music
This repository contains my ports of music from other games using the N-SPC engine.

The pj/ directory contains custom music intended to be used by [PJ's optimized SPC engine](https://github.com/H-A-M-G-E-R/SM-SPC).

The org/ directory contains orgs needed to build SPCs.

# How to build
To assemble one of the ASM files with [asar 1.91](https://github.com/RPGHacker/asar/releases/tag/v1.91) (for example, "Main Theme" from Pocky & Rocky), run:

`asar --fix-checksum=off "pj/pockyandrocky/01 Main Theme.asm" "pj/pockyandrocky/01 Main Theme.nspc"`

If you already compiled it, delete the .nspc file before rebuilding.

To build all the NSPC files, run:

`python build_all.py <asar_path>`

To build all the SPC files, run:

`python build_spc.py`

You don't need to delete all the .nspc files before rebuilding using the script above.

# Credits
Pocky & Rocky music by Hiroyuki Iwatsuki

Pocky & Rocky 2 music by Hiroyuki Iwatsuki, Kinuyo Yamashita, Haruo Ohashi, Asuka Yamao

Kirby Super Star music by Jun Ishikawa, Dan Miyakawa

Kirby's Dream Land 3 music by Jun Ishikawa

Yoshi's Island music by Koji Kondo

SPCs from https://www.zophar.net/music/nintendo-snes-spc

I use my [sm-nspc-tools](https://github.com/H-A-M-G-E-R/sm-nspc-tools) to port these songs.
