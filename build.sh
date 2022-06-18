#!/usr/bin/env bash
INPUT=${1?ERROR: no file given}
nasm -f macho64 $INPUT.asm && ld -lSystem -o $INPUT $INPUT.o && ./$INPUT
