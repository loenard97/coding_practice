(* 7. Flatten a nested list structure. (medium) *)

type 'a node =
        | One of 'a
        | Many of 'a node list


let flatten lst =
        let rec aux acc = function
        | [] -> acc
        | One x :: t -> aux (x :: acc) t
        | Many x :: t -> aux (aux acc x) t
        in List.rev (aux [] lst)


let () =
        let l = [One "a"; Many [One "b"; Many [One "c"; One "d"]; One "e"]] in
        let res = flatten l in
        List.iter (Printf.printf "%s ") res;
        print_newline ();
