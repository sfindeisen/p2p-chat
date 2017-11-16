exception ChatException of string

let port = 9954

let print_line s =
  print_string ("[" ^ (string_of_int (Thread.id (Thread.self ()))) ^ "]: " ^ s);
  print_newline ()        (* flushes the buffer *)
