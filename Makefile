default: vm kernel

full: vm kernel stage2
	./retro --shrink --with stage2.rx

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

