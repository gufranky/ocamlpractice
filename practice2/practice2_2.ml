let has_single_elem l =
  match l with
  | [ x ] -> true
  | _ -> false
;;

let () =
  print_string (string_of_bool (has_single_elem []));
  (* false *)
  print_string (string_of_bool (has_single_elem [ 1 ]));
  (* true *)
  print_string (string_of_bool (has_single_elem [ 2; 3; 4 ]))
;;
