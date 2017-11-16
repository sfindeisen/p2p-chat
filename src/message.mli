(** A single chat message - can be raw or base64-encoded. *)
type msg = Raw of string
         | Encoded of string
