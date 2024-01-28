PROGRAM_NAME = sbst

RISCV                    ?= ~/.riscv
RISCV_EXE_PREFIX         = $(RISCV)/bin/riscv32-unknown-elf-

all: $(PROGRAM_NAME).hex

$(PROGRAM_NAME).elf: crt0.S main.c syscalls.c vectors.S tests/*.S
	$(RISCV_EXE_PREFIX)gcc -march=rv32imcxpulpv2 -o $@ -w -Os -g -nostdlib \
		-Xlinker -Map=$(PROGRAM_NAME).map \
		-T link.ld \
		-static \
		$^  \
		-I $(RISCV)/riscv32-unknown-elf/include \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc

%.hex: %.elf
	$(RISCV_EXE_PREFIX)objcopy -O verilog $< $@
	sed -i 's/@0020/@001C/; s/@0021/@001D/; s/@0022/@001E/; s/@0023/@001F/' $@


clean:
	rm -rf $(PROGRAM_NAME).elf $(PROGRAM_NAME).hex $(PROGRAM_NAME).map 


