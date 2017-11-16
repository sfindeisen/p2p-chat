open Common
open Client
open Server

let print_line s =
  print_string s;
  print_newline ()
;;

let operate ep =
  print_line "success!"

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
