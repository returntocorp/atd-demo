.PHONY: run
run: build
	./producer | python3 ./consumer.py

.PHONY: build
build:
	# ocaml
	atdgen -t Interface.atd
	atdgen -j -j-std Interface.atd
	ocamlfind opt \
	  Interface_t.mli Interface_t.ml \
	  Interface_j.mli Interface_j.ml \
	  Producer.ml \
	  -o producer -package atdgen-runtime -linkpkg
	# python
	atdpy Interface.atd
	mypy .

.PHONY: clean
clean:
	git clean -dfX
