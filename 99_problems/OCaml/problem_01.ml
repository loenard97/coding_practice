(* 1. Write a function last : 'a list -> 'a option that returns the last element of a list. (easy) *)
let rec last lst = 
        match lst with
        | [] -> None
        | [x] -> Some x
        | _ :: tail -> last tail


let () = 
        let l = [1; 2; 3] in
        let t = last l in
        match t with
        | Some x -> Printf.printf "%d\n" x
        | None -> Printf.printf "None"
