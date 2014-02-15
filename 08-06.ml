(* 目的：ekimei_t型のデータを受け取ったら、「路線名、駅名（かな）」の形式の文字列を返す関数hyoji  *)

(* hyoji : ekimei_t -> string *)

#use "08-05.ml";;

let hyoji ekimei = match ekimei with
    {kanji = k; kana = ka; romaji = ro; shozoku = sho} ->
    sho ^ "、" ^ k ^ "（"^ ka ^"）" 

let test1 = hyoji {kanji="茗荷谷"; kana="みょうがだに";
		   romaji="myogadani"; shozoku="丸の内線"}
		  = "丸の内線、茗荷谷（みょうがだに）"
