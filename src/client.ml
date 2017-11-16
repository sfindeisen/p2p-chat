open Unix;;

open Common;;
open Endpoint;;

let resolve host port =
  match Unix.getaddrinfo host (string_of_int port) [AI_SOCKTYPE(SOCK_STREAM)] with
  | [] -> raise (ChatException("unable to resolve host: " ^ host))
  | h::_ -> h
;;

let connect host port =
  let addrinfo = resolve host port in
  let fd = Unix.socket Unix.PF_INET Unix.SOCK_STREAM 0 in
  let _  = Unix.connect fd addrinfo.ai_addr in
  let _  = Unix.clear_nonblock fd in    (* all IO calls should be blocking *)
  let _  = Unix.set_close_on_exec fd in (* automatically close this file descriptor on exec *)
    EndPoint(fd)
;;
