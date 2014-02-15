#use "10-01.ml";;

(* 目的：整数のリストを受け取ったら、それを昇順に整列したリストを返す *)
(* ins_sort : list -> list *)

let rec ins_sort lst = match lst with
    [] -> []
  | first :: rest -> insert (ins_sort rest) first

(* test *)
let test1 = ins_sort [] = []
let test2 = ins_sort [1;2;3;4] = [1;2;3;4]
let test3 = ins_sort [5;4;3;2;1] = [1;2;3;4;5]
let test4 = ins_sort [5;3;8;1;7;4] = [1;3;4;5;7;8]
