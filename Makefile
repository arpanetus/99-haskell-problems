compnrun:
	mkdir -p target
	ghc -O2 -o target/out $(ex)
	./target/out