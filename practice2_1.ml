let rec is_prime_helper x i =
  if i == 1 then true else x mod i != 0 && is_prime_helper x (i - 1)
;;

let x = is_prime_helper 1000000000 999999999

let () =
  print_string (string_of_bool x);
  print_newline ()
;;
