open Unix

open Endpoint

(** Creates a new client socket and connects it to the given host and TCP port number. *)
val connect : string -> int -> Endpoint.endpoint
