.PHONY: all clean byte native debug

OCB_FLAGS = -tags debug,safe_string,thread -pkg unix -I src
OCB = ocamlbuild $(OCB_FLAGS)
PROGRAM=chat

all: native byte

clean:
	$(OCB) -clean

native:
	$(OCB) $(PROGRAM).native

byte:
	$(OCB) $(PROGRAM).byte

