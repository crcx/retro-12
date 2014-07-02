default: vm kernel

full: 11 vm kernel stage2
	./retro --shrink --with stage2.rx

again: 12 vm stage2
	./retro --with kernel.na
	./retro --shrink --with stage2.rx

11:
	cp ngaro-asm-r11.rx ngaro-asm.rx

12:
	cp ngaro-asm-r12.rx ngaro-asm.rx

vm:
	$(CC) -Wall retro.c -o retro

kernel:
	./retro --with kernel.na --image oldRetroImage

stage2:
	cat stdlib.rx opt/types.rx opt/vectors.rx opt/prefix.rx opt/buffer.rx opt/each.rx opt/strings.rx opt/files.rx > stage2.rx
	echo save bye >> stage2.rx

clean:
	rm -f stage2.rx
	rm -f retro
	rm -f *~

