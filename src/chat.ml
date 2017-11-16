open Common
open Client
open Server

let operate ep =
  print_string "success!"

let main () =
  let endPoint = 
    if (2 <= (Array.length Sys.argv)) then
        let host = Sys.argv.(1)
        in
            Client.connect host Common.port
    else
        Server.serve Common.port
  in
    operate endPoint
;;

main ()
