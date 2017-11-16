open Message

type endpoint = EndPoint of (Unix.file_descr)

let make_endpoint fd = EndPoint(fd)

let send_message ep msg = 0

let recv_message ep = Raw("ala ma kota")
