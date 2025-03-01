let rec listfilter f l =
  match l with
  | [] -> []
  | [ x ] -> if f x then [ x ] else []
  | x :: xs -> if f x then x :: listfilter f xs else listfilter f xs
;;

let rec printlist l =
  match l with
  | [] -> ()
  | x :: xs ->
    print_int x;
    print_string " ";
    printlist xs
;;

printlist (listfilter (fun x -> x mod 2 = 0) [ 1; 2; 3; 4; 5; 6; 7; 8; 9; 10 ])
