(* 2. Find the last but one (last and penultimate) elements of a list. (easy) *)
let rec penult lst =
        match lst with
        | [] | [_] -> None
        | [x; y] -> Some (x, y)
        | _ :: tail -> penult tail


let () =
        let l = [1; 2; 3; 4] in
        let v = penult l in
        match v with
        | None -> Printf.printf "None"
        | Some (x, y) -> Printf.printf "%d, %d\n" x y
