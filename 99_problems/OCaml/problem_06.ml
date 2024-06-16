(* 6. Find out whether a list is a palindrome. (easy) *)

let is_palindrom lst =
        lst = List.rev lst


let () =
        let l = [1; 2; 3; 4] in
        let res = is_palindrom l in
        match res with
        | true -> print_endline "list is a palindrom"
        | false -> print_endline "list is not a palindrom"
