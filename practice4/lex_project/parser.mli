type token =
  | INT of int
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | EOF

val main : (Lexing.lexbuf -> Ast.token) -> Lexing.lexbuf -> Ast.expr
