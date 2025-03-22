let rec fold_left f l acc =
  match l with
  | [] -> acc
  | x :: xs -> fold_left f xs (f x acc)
;;

let () = print_int (fold_left ( - ) [ 1; 3; 4 ] 2)
