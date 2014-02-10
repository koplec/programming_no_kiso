(* 目的：(x,y)で表された平面座標を二つ受け取ったら、その中点の座標を返す関数chuten *)
(* chuten : float * float -> float * float -> float * flaot *)
let chuten point_1 point_2 = 
  match point_1 with 
    (x1, y1) ->
    match point_2 with
      (x2, y2) -> (0.5 *. (x1 +. x2) , 0.5 *. (y1 +. y2))

(* test *)
let test1 = chuten (0.0, 0.0) (1.0, 2.0) = (0.5, 1.0)
let test2 = chuten (-1.0, -1.0) (1.0, 1.0) = (0.0, 0.0)
let test3 = chuten (2.0, 3.0) (4.0, 5.0) = (3.0, 4.0)
