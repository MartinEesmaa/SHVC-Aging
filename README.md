# Super Famicom Aging Program (decompiled by Martin Eesmaa)

Please note that this is for archival purposes, educational and other purposes of decompiled SHVC-AGING SNES ROM.

It can emulate ROM decompiled, including original to the SNES emulators, others & real hardwares.

### Modded ROM based

To see my modded rom, here is first modded based on Hey Arnold!

Branch source code of heyarnold-mod-v1.00: [here](https://github.com/MartinEesmaa/SHVC-Aging/tree/heyarnold-mod-v1.00)

Mod folder is available on master branch:

```
SHVC-AGING-HA.sfc - Fan-based modded of Hey Arnold by Martin Eesmaa (taken original)
SHVC-AGING-HA-decompiled.sfc - Fan-based modded of Hey Arnold by Martin Eesmaa (decompiled to mess assembly, then recompiled)
```

If you're not sure you can go pick normal modded ROM without `-decompiled` surfix name, but it's always working okay.

## Tests

Emulators | Test successful?
--- | --- |
SNES9X/BSNES/HIGAN/ARES | ✅ (all tests)
ZSNES v1.51 | ❌ (failed for HV Timer only)

## Requirement

You need MAKE from GCC and also [wla-dx](https://github.com/vhelin/wla-dx) 10.0 and later to compile the decompiled assembly files.

1. Compile it using `make`

And the result ROM file game is game.smc.

Original MD5 sum of SHVC-AGING V1.00 SNES LoRom file: `eaf9f580b4798470f26786d9340922ab`

Decompiled MD5 sum of SHVC-AGING V1.00 SNES LoRom file: `59029b262fde1c5d83a7f919ff9b442c`

If you want to recompile again, first clean and then remake it again:

```
make clean
make
```

## Pre-decompile the game

Precopy of original SNES ROM of Aging Test Cartridge is available on OBIN folder.

Taken from Internet Archive: https://archive.org/details/super-famicom-aging-program-ver-1-00

Used to decompile using [snes2asm](https://github.com/nathancassano/snes2asm) python wrapper.

Command:

```
snes2asm -nl -o SHVC SHVC-AGING.scf
```

- Martin Eesmaa
