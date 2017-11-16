.PHONY: all clean byte native debug

OCB_FLAGS = -pkg unix -I src
OCB = ocamlbuild $(OCB_FLAGS)
PROGRAM=chat

all: native byte

clean:
	$(OCB) -clean

native:
	$(OCB) $(PROGRAM).native

byte:
	$(OCB) $(PROGRAM).byte

