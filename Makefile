all: cake

cake.S: cake.S.xz
	unxz -f --keep cake.S.xz

cake: cake.o basis_ffi.o

%.cake.out: %.ml cake compile.sh
	./compile.sh $< $@

test: test.sh test/test.cake.out
	./test.sh

clean:
	rm -f cake.o basis_ffi.o cake.S cake test/*.out

.PHONY: clean
