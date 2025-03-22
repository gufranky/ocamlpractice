let rec parsee input =
  match input with
  | 'a' :: rest -> parseb (parsea rest)
  | 'b' :: rest -> parseb rest
  | _ -> failwith "Unknown character"

and parseb input =
  match input with
  | 'a' :: rest -> rest
  | 'b' :: rest -> parsea rest
  | _ -> failwith "Unknown character"

and parsea input =
  match input with
  | 'a' :: rest -> parseb rest
  | 'b' :: rest -> rest
  | _ -> failwith "Unknown character"
;;

let check input =
  match parsee input with
  | [] -> true
  | _ -> false
;;

let test_input = [ 'a'; 'a'; 'a'; 'a' ]
let _ = print_endline (string_of_bool (check test_input))
