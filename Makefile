default:
	$(CC) -Wall retro.c -o retro
	./retro --with retro.na --image oldRetroImage
