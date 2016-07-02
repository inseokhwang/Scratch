run:
	qemu-system-i386 boot_sect.bin 
build_boot:
	nasm boot_sect.asm -f bin -o boot_sect.bin