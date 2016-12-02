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
(format t "Calculating the volume of a sphere with radius of 4: ~a ~%" myvolume)


(defun quadratic (A B C)
  (cond ((= A 0) (string "Not a quadratic equation."))
    (t
    (let ((D (- (* B B) (* 4 A C))))
      (cond ((= D 0) (concatenate 'string "x = " (write-to-string (/ (+ (- B) (sqrt D)) (* 2 A)))))
        (t
        (values (concatenate 'string "x1 = " (write-to-string (/ (+ (- B) (sqrt D)) (* 2 A))))
                (concatenate 'string "x2 = " (write-to-string (/ (- (- B) (sqrt D)) (* 2 A))))))))))
)


(setq roots
	(quadratic 10 7 1)
)
(format t "Calculating the roots of equation 10x^2 + 7x + 1: ~a ~%" (list (quadratic 10 7 1)))


;this is an alternative to the recursive implementation of getmin
; (defun getmin (aList)
	; (apply 'min aList)
; )

(defun getmin (m l)
; takes a list 
; return the minimum value
  (cond ((null (car l)) m)
        ((< (car l) m) (getmin (car l) (cdr l)))
        (t (getmin m  (cdr l))))
)

(defun getmax (m l)
; takes a list 
; return the minimum value
  (cond ((null (car l)) m)
        ((> (car l) m) (getmax (car l) (cdr l)))
        (t (getmax m  (cdr l))))
)
;create a list
(setq aList '(4 6 1 8 0.5 12))

(format t "The minimum of list (4 6 1 8 0.5 12) is : ~a ~%"  
	(getmin (car aList) aList)
)
(format t "The maximum of list (4 6 1 8 0.5 12) is : ~a ~%"  
	(getmax (car aList) aList)
)





; (defun minMax (aList)
	; (list (apply 'min aList)  (apply 'max aList)
	; )
; 