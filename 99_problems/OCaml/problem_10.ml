(* 10. Run-length encoding of a list. (easy) *)

let encode lst = 
        let rec aux n acc = function
        | [] -> []
        | [x] -> (n + 1, x) :: acc
        | a :: (b :: _ as t) ->
                if a = b
                then aux (n + 1) acc t
                else aux 0 ((n + 1, a) :: acc) t
        in List.rev (aux 0 [] lst)

let string_list lst =
        let aux x =
                let (i, s) = x in
                Printf.sprintf "(%d, %s)" i s
        in
        let elem = List.map aux lst in
        "[" ^ (String.concat "; " elem) ^ "]"

let () =
        let l = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] in
        let res = encode l in 
        print_endline (string_list res)
