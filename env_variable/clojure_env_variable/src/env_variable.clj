;commend
(require '[clojure.java.io :as io])

(ns env_variable
  (:gen-class)
)

(defn env_variable_function [x]
  (* (- (+ x x) x) (/ x 1))
)

(defn -main
  "main entry point"
  [& args]
  (loop [x 1]
    (when (< x 2)
      (println (format "env_variable_function(%d)=<%d>" x (env_variable_function x)))
      (println (System/getenv "OS"))
      (recur (inc x))
    )
  )
)
