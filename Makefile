default: vm kernel

full: vm kernel stage2
	./retro --shrink --with stage2.rx

vm:
	$(CC) -Wall retro.c -o retro

kernel:
	./retro --with retro-12.na --image oldRetroImage

stage2:
	cat stdlib.rx opt/vectors.rx opt/prefix.rx > stage2.rx

