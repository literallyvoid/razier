OBJS=src/main.o src/texture.o src/model.o src/track.o src/ship.o src/particle.o src/sound.o src/font.o src/menu.o src/music.o src/loader.o

CFLAGS=`pkg-config --cflags glfw3` -O3 -g -Wall -Wextra
LDFLAGS=`pkg-config --static --libs glfw3 glu` -O3 -g -lopenal -lvorbis -lvorbisfile

razier: $(OBJS)
	$(CC) $(OBJS) -o $@ $(LDFLAGS)

clean:
	-rm razier src/*.o