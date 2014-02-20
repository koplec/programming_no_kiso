(* 目的：lst1とlst2を受け取りそれらの長さを比較し同じかどうかを判定する *)
(* equal_length : 'a list -> 'a list -> boolean *)
let rec equal_length lst1 lst2 = match (lst1 ,lst2) with
    ([], []) -> true
  | ([], first2 :: rest2) -> false
  | (first1 :: rest1, []) -> false
  | (first1 :: rest1 , first2 :: rest2) -> equal_length rest1 rest2

(* test *)
let test1 = equal_length [] [] = true
let test2 = equal_length [] [1] = false
let test3 = equal_length [1] [] = false
let test4 = equal_length ["a"] ["b"] = true
let test5 = equal_length ["a";"b";"c"] ["d";"e";"f"] = true
let test5 = equal_length ["a";"b";"c"] [] = false
