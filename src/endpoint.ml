open Message;;

type endpoint = EndPoint of (Unix.file_descr);;

let send_message msg = 0
;;

let recv_message () = Raw("ala ma kota")
;;
