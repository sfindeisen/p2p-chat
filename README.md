# p2p-chat
Simple 1:1 network chat implemented in OCaml

## How to build

```
make
```

## How to run

```
chat.native
chat.native localhost
```

In order to enable exception **stack traces**, set your `OCAMLRUNPARAM` environment variable to `b`: `OCAMLRUNPARAM=b`. That's all
what is needed, because the programs are compiled with debug information on.

## How to clean

```
make clean
```

