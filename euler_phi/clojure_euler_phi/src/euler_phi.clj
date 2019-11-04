(ns euler_phi
  (:gen-class)
)

(defn gcd [a b]
  (if (zero? b)
    a
    (recur b (mod a b))
  )
)

(defn euler_phi [n]
  (let [x (atom 0)]
  (loop [idx_i 1]
    (when (= 1 (gcd idx_i n))
      (swap! x inc)
      ;(set! x (inc x))
      ;(print " * ")
    )
    (when (< idx_i n)
      (recur (inc idx_i))
    )
  )
  @x
  )
)

(defn -main
  "main entry point"
  [& args]
  (loop [idx_i 1]
    (when (< idx_i 25)
      (println (format "euler_phi(%d)=<%d>" idx_i (euler_phi idx_i)))
      ;(println (format "euler_phi(%d)=<%s>" 5 (euler_phi 5)))
      (recur (inc idx_i))
    )
  )
)
