let rec sum_iter l nowsum =
  match l with
  | [] -> nowsum
  | x :: xs -> sum_iter xs (nowsum + x)
;;

let many_ones = List.init 9999999 (Fun.const 1)
let () = print_int (sum_iter many_ones 0)
