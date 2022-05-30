LISP ?= sbcl

build:
	$(LISP) --eval "(require 'asdf)" \
		--load collatz.asd \
		--eval "(asdf:load-system :collatz)" \
		--eval "(asdf:make :collatz)" \
		--eval "(quit)"
