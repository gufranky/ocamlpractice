let rec count_123 l =
  let rec inside_count_123 l nowcheck =
    match l with
    | [] -> 0
    | [ x ] -> 0
    | x :: xs ->
      if x == nowcheck
      then ((nowcheck + 1) / 3) + inside_count_123 xs ((nowcheck + 1) mod 3)
      else inside_count_123 xs 1
  in
  inside_count_123 l 1
;;

let () =
  print_int (count_123 [ 1; 2; 3 ]);
  print_newline ();
  print_int (count_123 [ 1; 2; 3; 1; 2; 3 ]);
  print_newline ();
  print_int (count_123 [ 1; 2; 3; 1; 2; 1; 2; 3 ]);
  print_newline ()
;;
