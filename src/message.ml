open Utils

type msg = Decoded of string
         | Encoded of string

let decode msg = match msg with
  | Decoded(s) -> Right(Decoded(s))
  | Encoded(s) -> Right(Decoded(s))
