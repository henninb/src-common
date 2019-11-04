(ns entry_point
  (:require [clojure.tools.cli :refer [parse-opts]])
  (:gen-class))

(def cli-options
  ;; An option with a required argument
  [
    ["-h" "--help"]
  ]
)

(defn -main [& args]
  (if (not (= 1 (count args)))
    ((println "Usage: entry_point <arg1>")
    ;(println "Usage: entry_point <arg1>")
    (System/exit 1))
  )
  (println (if args "<one or more args passed>" "<noargs passed>"))
    ;(System/exit 2)
  (parse-opts args cli-options)
  (println args)
  (println (count args))
)
