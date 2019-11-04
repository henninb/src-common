;commend
(require '[clojure.java.io :as io])

(ns collection_model
  (:gen-class)
)

(defn collection_model_function [x]
  (* (- (+ x x) x) (/ x 1))
)

;hash map
{1 "a", "Q" 10}         ; commas are treated as whitespace
{1 "a" "Q" 10}         ; commas are treated as whitespace
(hash-map 1 "a" "Q" 10) ; equivalent to the above
(let [my-map {1 "a"}]
  (assoc my-map "Q" 10)) ; "adding" an element

;list - defined 3 ways
'(1 4 7)                ; a linked list
(list 1 4 7)            ; same as above
(cons 1 (cons 4 '(7)))  ; same as above


;; prepend 1 to a list
(cons 1 '(2 3 4 5 6))
;;=> (1 2 3 4 5 6)

;vector
['a 4 11]         ; somewhere between array and list
(vector 'a 4 11)
;(cons ['a 4] 11) ; vectors add at the *end*

;set
#{:pig :dog :bear}
;(assoc #{:pig :bear} :dog)
(set [:pig :bear :dog])

(defn -main
  "main entry point"
  [& args]
  (println "lists")
  (doseq [item (list 1 4 7)]
    (println item)
  )

  (doseq [item '(2 8 14)]
    (println item)
  )

  (doseq [item (cons 2 (cons 5 '(8)))]
    (println item)
  )
  (println "*****")
  (doseq [item (vector 'a 4 11)]
    (println item)
  )
)
