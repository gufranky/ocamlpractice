open Lex_project

let stdin = "2+35*+--4"

let () =
  let lexbuf = Lexing.from_string stdin in
  try
    let _result = Parser.main Lexer.read lexbuf in
    (* 处理解析结果 *)
    print_endline "Parsing succeeded."
  with
  | Parsing.Parse_error ->
    Printf.fprintf stderr "At offset %d: syntax error.\n%!" (Lexing.lexeme_start lexbuf)
;;
