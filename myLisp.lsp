(defun power (x y) (if (= y 0) 1 (* x (power x (1- y))))) 

(defun sphereVolume (radius)(* 3.14(* power radius 2)