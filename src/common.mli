(** General exception type. For simplicity, we only use this one. *)
exception ChatException of string

(** TCP port number used by the application *)
val port: int
