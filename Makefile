SCRIPTS=common.sh compile.sh test.sh

all: cake

cake.S: cake.S.xz
	unxz -f --keep cake.S.xz

cake: cake.o basis_ffi.o

%.cake.out: %.ml cake $(SCRIPTS)
	./compile.sh $< $@

test: test/test.cake.out $(SCRIPTS)
	./test.sh

clean:
	rm -f cake.o basis_ffi.o cake.S cake test/*.out

.PHONY: clean
