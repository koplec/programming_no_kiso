(* 目的：あらかじめ昇順に並んでいる整数のリストlstと整数nを受け取ったら、lstを前から順番に見ていき、昇順となる位置にnを挿入したリストを返す関数  *)
(* insert : list -> int  -> list *)

let rec insert lst n = match lst with
    [] -> [n]
  | first :: rest -> if first < n then first :: (insert rest n)
		     else n :: first :: rest


(* test *)
let test1 = insert [] 1 = [1]
let test11 = insert [1] 2 = [1;2]
let test12 = insert [2] 1 = [1;2]
let test2 = insert [1;2;3] 4 = [1;2;3;4]
let test3 = insert [1;2;4;5] 3 = [1;2;3;4;5]
let test4 = insert [1;3;4;7;8] 5 = [1;3;4;5;7;8]
