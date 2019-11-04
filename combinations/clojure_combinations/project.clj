(defproject combinations "1.0"
  :description "description"
  :dependencies [[org.clojure/clojure "1.8.0"] [clj-time "0.14.0"] [joda-time "2.9.7"] [org.clojure/clojure-contrib "1.2.0"] [org.clojure/tools.cli "0.3.5"]]
  :main ^:skip-aot combinations
  :target-path "%s"
  :profiles {:uberjar {:aot :all}}
)
