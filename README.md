# Super Famicom Aging Program (reverse-engineered by Martin Eesmaa)

Please take it note, this is for archival purposes, educational and other purposes of decompiled SHVC-AGING SNES ROM.

It can emulate ROM reverse-engineered, including original to the SNES emulators, others & real hardwares.

## Requirement

You need MAKE from GCC and also [wla-dx](https://github.com/vhelin/wla-dx) 10.0 and later to compile the decompiled assembly files.

1. Compile it using `make`

And the result ROM file game is game.smc.

Original MD5 sum of SHVC-AGING V1.00 SNES LoRom: `eaf9f580b4798470f26786d9340922ab`

Decompiled MD5 sum of SHVC-AGING V1.00 SNES LoRom: `59029b262fde1c5d83a7f919ff9b442c`

If you want to recompile again, first clean and then remake it again:

```
make clean
make
```

## Pre-decompile the game

Precopy of original SNES ROM of Aging Test Cartridge is available on OBIN folder.

Taken from Internet Archive: https://archive.org/details/super-famicom-aging-program-ver-1-00

Used to decompile using [snes2asm] python wrapper.

Command:

```
snes2asm -nl -o SHVC SHVC-AGING.scf
```

- Martin Eesmaa
