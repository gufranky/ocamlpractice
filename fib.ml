let rec fib n =
  match n with
  | 0 -> 0
  | 1 -> 1
  | n when n > 1 -> fib (n - 1) + fib (n - 2)
  | _ -> -1
;;

let () =
  print_int (fib 10);
  print_newline ()
;;
