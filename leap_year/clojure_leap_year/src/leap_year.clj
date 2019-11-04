(ns leap_year
  (:gen-class))

(defn leap-year? [year]
  "leap_year"
  (cond (zero? (mod year 400)) true
    (zero? (mod year 100)) false
    :else (zero? (mod year 4)))
)

(defn -main
  "main function"
  [& args]
  (println (leap-year? 2010))
  (println "msg1")
  (println "msg2")
(loop [x 1999]
  (when (< x 2101)
    (print (format "leap-year(%d)=" x)) (if (leap-year? x) (println "<true>") (println "<false>"))
    (recur (inc x))
  )
)
)

