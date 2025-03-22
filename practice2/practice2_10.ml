let leave_first l =
  match l with
  | [] -> []
  | x :: xs -> xs
;;

let get_first l =
  match l with
  | [] -> 0
  | x :: xs -> x
;;

let rec smallbf mem cmd =
  let ture_cmd = List.of_seq (String.to_seq cmd) in
  let rec smallbf_inside memleft cmd now memright =
    match cmd with
    | [] -> memleft @ [ now ] @ memright
    | '+' :: xs -> smallbf_inside memleft xs (now + 1) memright
    | '>' :: xs ->
      (match memright with
       | [] -> smallbf_inside [] xs (get_first memleft) (leave_first memleft @ [ now ])
       | x :: newright -> smallbf_inside (memleft @ [ now ]) xs x newright)
    | _ -> failwith "Invalid command"
  in
  smallbf_inside [] ture_cmd (get_first mem) (leave_first mem)
;;

let rec printlist l =
  match l with
  | [] -> ()
  | x :: xs ->
    print_int x;
    print_string " ";
    printlist xs
;;

let () = printlist (smallbf [ 0; 0; 0 ] "++>>+>++")
