all: pbzx

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) -Wall

pbzx: pbzx.o
	$(CC) -o $@ $^ $(LDFLAGS) -lxar -llzma -lxml2 -lz -lbz2 -lssl -lcrypto
clean:
	rm -rf pbzx
