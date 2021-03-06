open Unix

open Common
open Endpoint

let resolve host port =
  match Unix.getaddrinfo host (string_of_int port) [AI_SOCKTYPE(SOCK_STREAM)] with
  | [] -> raise (ChatException("unable to resolve host: " ^ host))
  | h::_ -> h

let connect host port =
  let addrinfo = resolve host port in
  let fd = Unix.socket addrinfo.ai_family addrinfo.ai_socktype 0 in
  let _  = print_line "Created client socket" in
  let _  = Unix.connect fd addrinfo.ai_addr in
  let _  = Unix.clear_nonblock fd in    (* all IO calls should be blocking *)
  let _  = Unix.set_close_on_exec fd in (* automatically close this file descriptor on exec *)
    Endpoint.make_endpoint fd
