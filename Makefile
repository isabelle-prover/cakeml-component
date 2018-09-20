cake.S: cake.S.xz
	unxz -f --keep cake.S.xz

cake: cake.o basis_ffi.o

clean:
	rm -f cake.o basis_ffi.o cake.S cake

.PHONY: clean
