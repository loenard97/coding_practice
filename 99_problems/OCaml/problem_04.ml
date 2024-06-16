(* 4. Find the number of elements of a list. (easy) *)

let len lst =
        let rec aux n = function
        | [] -> n
        | _ :: t -> aux (n + 1) t
        in aux 0 lst


let () =
        let res = len [1; 2; 3; 4] in
        Printf.printf "%d\n" res
