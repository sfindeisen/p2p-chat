open Endpoint

(** Starts the server on the given TCP port number. *)
val serve : int -> Endpoint.endpoint
