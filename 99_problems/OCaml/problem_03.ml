(* 3. Find the K'th element of a list. (easy) *)

let rec at lst k =
        match lst with
        | [] -> None
        | head :: tail -> if k = 1 then Some head else at tail (k - 1)


let () = 
        let res = at [1; 2; 3; 4] 2 in
        match res with
        | None -> Printf.printf "None"
        | Some x -> Printf.printf "%d\n" x
