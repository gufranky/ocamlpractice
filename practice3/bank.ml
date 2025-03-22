type transcation =
  | Dep of int
  | With of int

type bank_account =
  { id : string
  ; name : string
  ; mutable money : int
  ; mutable history : transcation list
  }

let deposit acc upmoney =
  match upmoney with
  | x when x > 0 ->
    acc.money <- acc.money + x;
    acc.history <- acc.history @ [ Dep upmoney ]
  | _ -> ()
;;

let withdraw acc upmoney =
  match acc.money - upmoney with
  | x when x > 0 ->
    acc.money <- acc.money - upmoney;
    acc.history <- acc.history @ [ With upmoney ]
  | _ -> ()
;;

let getbalance acc = acc.money

let rec printlist l =
  match l with
  | [] -> ()
  | x :: xs ->
    (match x with
     | Dep x ->
       print_int x;
       print_string " ";
       printlist xs
     | With x ->
       print_int x;
       print_string " ";
       printlist xs)
;;

let print_history acc = printlist acc.history
