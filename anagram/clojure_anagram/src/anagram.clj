(require '[clojure.java.io :as io])

(ns anagram
  (:gen-class)
)

(def groups
  (with-open [r (io/reader wordfile)]
    (group-by sort (line-seq r)))
)

(let [wordlists (sort-by (comp - count) (vals groups))
      maxlength (count (first wordlists))]
  (doseq [wordlist (take-while #(= (count %) maxlength) wordlists)]
    (println wordlist))


(->> (slurp "http://www.puzzlers.org/pub/wordlists/unixdict.txt")
     clojure.string/split-lines
     (group-by sort)
     vals
     (sort-by count >)  ;; sort in reverse
     (partition-by count)
     first)

(defn -main
  "main entry point"
  [& args]
  (dotimes [x 10]
    (println "n:" x " result=" (example_function x))
    (println (format "example_function(%d)=<%d>" x (example_function x)))
  )
  )
)
