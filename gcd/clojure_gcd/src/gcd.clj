(ns gcd
  (:gen-class))

(defn gcd [a b]
        (if (zero? b)
          a
          (recur b (mod a b))))

(defn -main
  "main entry point"
  [& args]
)
