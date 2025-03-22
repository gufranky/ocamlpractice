let rec list_max_iter l nowmax =
  match l with
  | [] -> failwith "empty list"
  | [ x ] -> x
  | x :: xs -> list_max_iter xs (max x nowmax)
;;

let list_max l = list_max_iter l 0
let () = print_int (list_max [ 1; 2; 3; 4; 5; 6; 7; 8; 9; 10 ])
