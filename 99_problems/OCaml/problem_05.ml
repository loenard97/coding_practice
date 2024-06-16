(* 5. Reverse a list. (easy) *)

let rev lst =
        let rec aux acc = function
        | [] -> acc
        | h :: t -> aux (h :: acc) t
        in aux [] lst


let () =
        let l = ["a"; "b"; "c"] in
        let res = rev l in
        List.iter (Printf.printf "%s ") res;
        print_newline ();
