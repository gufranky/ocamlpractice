let squarelist l = List.map (fun x -> x * x) l

let rec printlist l =
  match l with
  | [] -> ()
  | x :: xs ->
    print_int x;
    print_string " ";
    printlist xs
;;

printlist (squarelist [ 1; 2; 3; 4; 5; 6; 7; 8; 9; 10 ])
