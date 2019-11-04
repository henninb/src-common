(ns factorial
  (:gen-class))

(defn factorial [x]
  "factorial"
   (loop [n x f 1]
     (if (= n 1)
       f
       (recur (dec n) (* f n)))))

(defn -main
  "entry_point"
  [& args]
  (loop [idx_i 1]
    (when (< idx_i 15)
      (println (format "factorial(%d)=<%d>" idx_i (factorial idx_i)))
      (recur (inc idx_i))
    )
  )
)
