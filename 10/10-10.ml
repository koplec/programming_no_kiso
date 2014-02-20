#use "metro.ml";;
(* 目的 ローマ字の駅名と駅名リストを受け取ったら、その駅の漢字表記を返す *)
(* romaji_to_kanji : string -> ekimei_t list -> string *)
let rec romaji_to_kanji romaji lst1 = match lst1 with
    [] -> ""
  | {kanji = k; kana = ka; romaji=ro; shozoku=sh} :: rest -> ""

(* test *)
let test1 = romaji_to_kanji 							       
