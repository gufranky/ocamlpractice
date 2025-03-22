type expr =
  | Num of int
  | Add of expr * expr
  | Sub of expr * expr
  | Mul of expr * expr
  | Div of expr * expr

type token =
  | INT of int
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | EOF
