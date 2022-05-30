(asdf:defsystem :collatz
  :description "McModknowers version of collatz. See https://github.com/oicleevan/collatz for more info"
  :version "0.0.1"
  :author "McModknower <teetoll@t-online.de>"
  :license "MIT"
  :components ((:file "package")
	       (:file "collatz" :depends-on ("package")))
  :build-operation "program-op"
  :build-pathname "collatz"
  :entry-point "collatz:main"
  :depends-on (:uiop))
