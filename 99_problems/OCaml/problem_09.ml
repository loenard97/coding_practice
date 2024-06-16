(* 9. Pack consecutive duplicates of list elements into sublists. (medium) *)

let pack lst = 
        let rec aux cur acc = function
        | [] -> []
        | [x] -> (x :: cur) :: acc
        | a :: (b :: _ as t) -> 
                if a = b
                then aux (a :: cur) acc t
                else aux [] ((a :: cur) :: acc) t
        in List.rev (aux [] [] lst)

let string_from_list_list lst = 
        let aux lst = 
                let elem = List.map (Printf.sprintf "%s") lst in
                "[" ^ (String.concat "; " elem) ^ "]"
        in
        let elem = List.map aux lst in
        "[" ^ (String.concat "; " elem) ^ "]"


let () =
        let l = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] in
        let res = pack l in
        let result = string_from_list_list res in
        print_endline result
