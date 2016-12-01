(defun power (x y) (if (= y 0) 1 (* x (power x (1- y)))))

(defun sphereVolume (radius)
	(* 
		(/ 22.0 7.0)
		(power radius 3)		
		(/ 4.0 3.0)
	)
)



(setq myvolume
	(sphereVolume 4)
)
(format t "Calculating the volume of a sphere with radius of 4: ~a" myvolume)

