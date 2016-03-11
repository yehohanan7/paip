(asdf:defsystem #:paip
  :description "Paip practice"
  :author "yehohanan7@gmail.com"
  :serial t
  :depends-on (#:dexador
               #:uuid)
  :components ((:module "src"
                :components
                ((:file "package")))))

(asdf:defsystem #:paip-test
  :description "Tests"
  :author "yehohanan7@gmail.com"
  :serial t
  :depends-on (#:paip #:prove)
  :defsystem-depends-on (#:prove-asdf)
  :components ((:module "test"
                :components
                ((:test-file "package")
                 (:test-file "paip-test")
                 (:test-file "run-tests"))))
  :perform (test-op :after (op c)
                    (funcall (intern #. (string :run) :prove) c)))

