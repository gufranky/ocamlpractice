(* let compose f g x = f (g x)
*)
let compose f g = fun x -> f (g x)
let double x = x * 2
let add1 x = x + 1
let f = compose double add1
let result = f 3
let () = print_int result
