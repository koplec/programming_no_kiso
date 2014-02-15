(* 駅と駅の接続状況を表すレコード型 *)
type ekikan_t = {
  kiten: string; (* 起点の駅名（漢字） *)
  shuten: string; (* 終点の駅名（漢字） *)
  keiyu: string; (* 経由する路線名 *)
  kyori: float; (* ２駅間の距離 km  *)
  jikan: int; (* 分 *)
}
