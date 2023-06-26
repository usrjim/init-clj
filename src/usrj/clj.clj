(ns usrj.clj
  (:gen-class))

(defn -main []
  (println "ok"))

(comment
  (require '[dev.nu.morse :as morse])
  (morse/launch-in-proc)
  (morse/inspect {:a 1 :b 2})

  ,)
