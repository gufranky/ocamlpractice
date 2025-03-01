let rec prod a =
  match a with
  | [] -> 1
  | h :: t -> h * prod t
;;

let result = prod [ 1; 2; 3; 4; 5 ]

let () =
  print_int result;
  print_newline ()
;;
