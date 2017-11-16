open Unix;;

open Message;;

type endpoint = EndPoint of (Unix.file_descr);;

(** Sends the given message to the other site.
    Returns the roundtrip time (in milliseconds).
 *)
val send_message : Message.msg -> int ;;

(** Receives a message from this endpoint
    (a blocking call).
 *)
val recv_message : unit -> Message.msg ;;
