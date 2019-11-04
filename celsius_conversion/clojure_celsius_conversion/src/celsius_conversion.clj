;commend
(require '[clojure.java.io :as io])

(ns celsius_conversion
  (:gen-class)
)

(defn toFahrenheit [x]
  (+ 32.0 (* (/ 9.0 5.0) x))
)
(defn toCelsius [x]
  (* (- x 32.0) (/ 5.0 9.0))
)

(defn -main
  "main entry point"
  [& args]
  (println (format "toFahrenheit(%d)=<%f>" 21 (toFahrenheit 21.0)))
  (println (format "toCelsius(%d)=<%f>" 70 (toCelsius 70.0)))
)
