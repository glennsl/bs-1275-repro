type t

let map f = function
| Some v -> Some (f v)
| None -> None

external make : ?foo:string -> unit -> t = "" [@@bs.obj]

let a = make ()
let b = make ~foo:"42" ()

let make ?foo:(foo: int option) = 
	make ?foo:(map string_of_int foo)

let a' = make ()
let b' = make ~foo:42 ()