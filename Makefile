default: 120

116:
	$(CC) -Wall retro.c -o retro
	./retro --with retro.na --image oldRetroImage

120:
	$(CC) -Wall retro.c -o retro
	./retro --with retro-12.na --image oldRetroImage
