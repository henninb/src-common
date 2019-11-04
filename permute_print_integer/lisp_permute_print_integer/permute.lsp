(defun permute (bag)
  "Return a list of all the permute of the input."
  ;; If the input is nil, there is only one permutation:
  ;; nil itself
  (if (null bag)
    '(())
    ;; Otherwise, take an element, e, out of the bag.
    ;; Generate all permute of the remastart_idxng elements,
    ;; And add e to the front of each of these.
    ;; Do this for all possible e to generate all permute.
    (mapcan #'(lambda (e)
      (mapcar #'(lambda (p) (cons e p))
        (permute
          (remove e bag :count 1))))
            bag)))

(defun permute_v2 (l)
  (if (null l) '(())
  (mapcan #'(lambda (x)
    (mapcar #'(lambda (y) (cons x y))
      (permute_v2 (remove x l :count 1)))) l)))

(defun range (start_idx end_idx)
  (if (> start_idx end_idx)
    (if (eql start_idx end_idx)
      (cons end_idx nil)
      (cons start_idx (range (- start_idx 1) end_idx)))
    (if (eql start_idx end_idx)
      (cons end_idx nil)
      (cons start_idx (range (+ start_idx 1) end_idx)))))

(print (permute (range 1 3)))
(print "====")
(permute (list 'a 'b 'c 'd 'e))
(print (permute (list 'a 'b 'c 'd 'e)))

(exit)
