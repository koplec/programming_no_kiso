#use "add_to_each.ml";;
(* 目的:受け取ったlstの接頭語のリストを求める *)
(* prefix :  int -> list -> list *)
let rec prefix lst = match lst with
    [] -> []
  | first :: rest -> [first] :: add_to_each first (prefix rest)

(* test *)
let test5 = prefix [] = []
let test6 = prefix [1] = [[1]]
let test7 = prefix [1;2] = [[1]; [1;2]]
let test8 = prefix [1;2;3;4;] =  [[1]; [1;2]; [1;2;3]; [1;2;3;4]]
