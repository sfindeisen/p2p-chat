open Thread

open Common
open Client
open Endpoint
open Message
open Server

let rec receiver ep =
  let msg_raw = Endpoint.recv_message ep in begin
    match Message.decode msg_raw with
    | Utils.Left(error_msg)   -> print_line("Error decoding message: " ^ error_msg)
    | Utils.Right(Decoded(m)) -> print_line("Got msg: " ^ m)
    | _ -> print_line("Unknown error decoding message!");
    receiver ep
  end
;;

let operate ep =
  let receiver_thread = Thread.create receiver ep in
    print_line "Receiver thread successfully created!"

let main () =
  let endPoint = 
    if (2 <= (Array.length Sys.argv)) then
      let host = Sys.argv.(1) in
        print_line ("Trying to connect to " ^ host ^ ":" ^ (string_of_int port) ^ "...");
        Client.connect host Common.port
    else begin
      print_line ("Listening on TCP port " ^ (string_of_int port) ^ "...");
      Server.serve Common.port
    end
  in
    operate endPoint
;;

main ()
