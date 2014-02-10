(* 目的：(x,y)の平面座標を受け取ったら、x軸のついて対称な点の座標を返す *)
(* taisho_x : float * float -> float * float *)
let taisho_x point = match point with
    (x, y) -> (x, (-1.0 *. y))

(* テスト*)
let test1 = taisho_x (0.0, 0.0) = (0.0, 0.0)
let test2 = taisho_x (1.2, 3.4) = (1.2, -3.4)
let test3 = taisho_x (-3.4, -2.1) = (-3.4, 2.1)
