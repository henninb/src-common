(
ns bubble_sort (:gen-class)
  (:import java.util.ArrayList)
)

(defn bubble-sort
  "Sort in-place.
  arr must implement the Java List interface and should support
  random access, e.g. an ArrayList."
  ([arr] (bubble-sort compare arr))
  ([cmp arr]
     (letfn [(swap! [i j]
                    (let [t (.get arr i)]
                      (doto arr
                        (.set i (.get arr j))
                        (.set j t))))
             (sorter [stop-i]
                     (let [changed (atom false)]
                       (doseq [i (range stop-i)]
                         (if (pos? (cmp (.get arr i) (.get arr (inc i))))
                           (do
                             (swap! i (inc i))
                             (reset! changed true))))
                       @changed))]
       (doseq [stop-i (range (dec (.size arr)) -1 -1)
               :while (sorter stop-i)])
       arr)))

(defn -main
  "main"
  [& args]
  (println (ArrayList. [10, 2, 4, 1, 6, 5, 8, 7, 3, 9]))
  (println (bubble-sort (ArrayList. [10, 2, 4, 1, 6, 5, 8, 7, 3, 9])))
)
