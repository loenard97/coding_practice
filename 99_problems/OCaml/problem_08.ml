(* 8. Eliminate consecutive duplicates of list elements. (medium) *)

let rec compress = function
        | a :: (b :: _ as t) -> if a = b then compress t else a :: compress t
        | xs -> xs


let () =
        let l = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] in
        let res = compress l in
        List.iter (Printf.printf "%s ") res;
        print_newline ();
