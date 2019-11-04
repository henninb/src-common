;commend
(require '[clojure.java.io :as io])

(ns example
  (:gen-class)
)

(defn example_function [x]
  (* (- (+ x x) x) (/ x 1))
)

(defn -main
  "main entry point"
  [& args]
  (loop [x 1]
    (when (< x 10)
      (println (format "example_function(%d)=<%d>" x (example_function x)))
      (recur (inc x))
    )
  )
)
