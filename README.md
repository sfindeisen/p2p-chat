# p2p-chat

Simple 1:1 network chat implemented in OCaml

## How to build

```
make
```

## How to run

1. Start the server

   ```
   chat.native
   ```

2. Start the client

   ```
   chat.native localhost
   ```

   Instead of `localhost` you can use any other host to connect to.

In order to enable exception **stack traces**, set your `OCAMLRUNPARAM` environment variable to `b`. That's all
what is needed, because the application is compiled with debug information on.

## How to clean

```
make clean
```

