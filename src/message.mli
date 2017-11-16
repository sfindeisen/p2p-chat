open Utils

(** A single chat message - can be raw or base64-encoded. *)
type msg = Decoded of string
         | Encoded of string

(** Decodes the given message. *)
val decode : msg -> (string,msg) Utils.either
