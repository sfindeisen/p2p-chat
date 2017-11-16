open Unix

open Message

type endpoint

(** Given a file descriptor, creates an endpoint. *)
val make_endpoint: Unix.file_descr -> endpoint

(** Sends the given message to the other site and waits for the acknowledgement.
    This is a blocking call. Returns the roundtrip time (in milliseconds).
 *)
val send_message : endpoint -> Message.msg -> int

(** Receives a message from this endpoint. This is a blocking call. *)
val recv_message : endpoint -> Message.msg
