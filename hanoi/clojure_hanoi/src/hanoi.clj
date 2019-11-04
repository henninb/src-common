(ns hanoi
  (:gen-class))

(defn hanoi [n from to via]
  (if (= n 1)
    (println (format "Move from %s to %s" from to))
    (do
      (hanoi (dec n) from via to)
      (println (format "Move from %s to %s" from to))
      (recur (dec n) via to from))))


(defn -main
  [& args]
  (hanoi 3, "A", "B", "C")
)
