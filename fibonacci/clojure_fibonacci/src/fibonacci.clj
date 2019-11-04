(ns fibonacci
  (:gen-class))

(defn fibonacci
  "fibonacci"
  [x]
  (cond
    (= x 0) 0
    (= x 1) 1
    :else (+ (fibonacci (dec x)) (fibonacci (- x 2))))
)

(defn -main
  "entry_point"
  [& args]
  (loop [idx_i 1]
    (when (< idx_i 25)
      (println (format "fibonacci(%d)=<%d>" idx_i (fibonacci idx_i)))
      (recur (inc idx_i))
    )
  )
)
