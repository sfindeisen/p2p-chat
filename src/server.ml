open Unix

open Common
open Endpoint

let serve port =
  let fd = Unix.socket Unix.PF_INET Unix.SOCK_STREAM 0 in
  let _  = Unix.bind fd (ADDR_INET(Unix.inet_addr_loopback, Common.port)) in
  let _  = Unix.clear_nonblock fd in    (* all IO calls should be blocking *)
  let _  = Unix.set_close_on_exec fd in (* automatically close this file descriptor on exec *)
    Endpoint.make_endpoint fd
