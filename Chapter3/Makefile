boot:
	qemu-system-i386 boot_sect.bin 
question:
	qemu-system-i386 question.bin
bb:
	nasm boot_sect.asm -f bin -o boot_sect.bin
bq:
	nasm question.asm -f bin -o question.bin