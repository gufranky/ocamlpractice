type expr =
  | Const of int
  | Add of expr * expr
  | Sub of expr * expr
  | Mult of expr * expr
  | Div of expr * expr

let rec evaluate (expr : expr) =
  match expr with
  | Const x -> Some x
  | Add (x, y) ->
    (match evaluate x, evaluate y with
     | Some x, Some y -> Some (x + y)
     | _ -> None)
  | Sub (x, y) ->
    (match evaluate x, evaluate y with
     | Some x, Some y -> Some (x - y)
     | _ -> None)
  | Mult (x, y) ->
    (match evaluate x, evaluate y with
     | Some x, Some y -> Some (x * y)
     | _ -> None)
  | Div (x, y) ->
    (match evaluate x, evaluate y with
     | Some _, Some 0 -> None
     | Some x, Some y -> Some (x / y)
     | _ -> None)
;;

let exp = Add (Const 3, Mult (Const 2, Const 5))
let result = evaluate exp;;

match result with
| Some value -> print_int value
| None -> print_endline "Error: evaluation resulted in None"
