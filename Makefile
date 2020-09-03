all: calc

calc: src/Main.hs 
	mkdir build
	ghc ./src/Main.hs -isrc -outputdir build -o build/huffman

clean:
	rm  ./build/*
	rmdir build
