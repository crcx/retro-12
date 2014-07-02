default: full

full: vm kernel stdlib

stdlib:
	./retro --shrink --with stdlib.rx

vm:
	$(CC) -Wall retro.c -o retro

kernel:
	cp ngaro-asm-r12.rx ngaro-asm.rx
	./retro --with kernel.na

clean:
	rm -f stage2.rx
	rm -f retro
	rm -f *~

