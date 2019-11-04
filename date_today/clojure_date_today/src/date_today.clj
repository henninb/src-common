;commend
(ns date_today
  (:gen-class)
)

(require '[clj-time.core :as tcore])
(require '[clj-time.format :as tformat])

(defn -main
  "main entry point"
  [& args]
  (println (tcore/date-time 1986 10 14 4 3 27 456))
  (println (tcore/epoch))
  (println (tcore/now))
  (println (tcore/today))
  (println (tcore/last-day-of-the-month 2017 2))
  (println (.toDate (org.joda.time.DateTime.)))
  ;(tformat/unparse (f/formatter "d MMMM yyyy") (tcore/epoch))
)
