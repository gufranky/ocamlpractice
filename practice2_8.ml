let rec diff l =
  match l with
  | [] -> []
  | [ x ] -> []
  | x :: y :: xs -> (y - x) :: diff (y :: xs)
;;

let rec printlist l =
  match l with
  | [] -> ()
  | x :: xs ->
    print_int x;
    print_string " ";
    printlist xs
;;

printlist (diff [ 1; 2; 3; 4; 5 ]);
print_newline ();
printlist (diff [ 1; 2; 4; 1; 1 ]);
print_newline ();
printlist (diff [ 1; 0; 1; 0; 1; 0; 0 ]);
print_newline ()
