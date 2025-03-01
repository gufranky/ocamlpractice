let rec for_all f c =
  match c with
  | [] -> true
  | h :: t -> if f h then for_all f t else false
;;

let is_positive x = x > 0
let is_even x = x mod 2 = 0
let r1 = for_all is_positive [ 1; 2; 3 ]
let r2 = for_all is_even [ 2; 4; 7 ]
let r3 = for_all is_positive []
let () = print_string (string_of_bool r1)
let () = print_newline ()
let () = print_string (string_of_bool r2)
let () = print_newline ()
let () = print_string (string_of_bool r3)
let () = print_newline ()
