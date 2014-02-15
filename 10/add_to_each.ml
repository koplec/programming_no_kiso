(* 目的 接頭語のリストを受け取ったら、各接頭語の先頭にもう一つ要素を付け加える関数 *)
(* add_to_each : 'a -> 'a list list -> 'a list list *)
let rec add_to_each n lst = match lst with
    [] -> []
  | first :: rest -> (n :: first) :: add_to_each n rest

(* test *)
let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[2]] = [[1; 2]]
let test3 = add_to_each 1 [[2]; [2; 3]] = [[1; 2]; [1;2;3]]
let test4 = add_to_each 1 [[2]; [2;3]; [2;3;4]] = [[1;2]; [1;2;3]; [1;2;3;4]]
