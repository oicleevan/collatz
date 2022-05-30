(in-package :collatz)

(defun collatz (n)
  "Calculate the path n takes when applying the collatz conjecture"

  ;; check if n is really an integer. Note that declare must be the first thing in a function/let body to work.
  (declare (type integer n))

  ;; Note that lisp automatically returns the value of the last form in a function
  (loop
     ;; set x to n at the first iteration, then in all following iterations use the collatz rule
     for x = n then (if (evenp x)
			(/ x 2)
			(+ 1 (* x 3)))
     ;; collect n before checking if n is one, so that 1 also gets collected
     collect x
     while (< 1 x)))

(defparameter *default-start* 42)

(defun main ()
  ;; let* because the second binding uses the first one. Otherwise it would be just let.
  (let* ((arg (car (uiop:command-line-arguments)))
	 (n (if arg
		(parse-integer arg)
		(progn
		  (format t "Please enter a number: ")
		  ;; since there is no newline in there, my pc doesn't output the prompt.
		  ;; to prevent that, i use force-output
		  (force-output)
		  (parse-integer (read-line))))))
    ;; Use the ~{ and ~} format directives to loop over the list
    ;; ~a means format that thing for humans, ~% means output a newline
    (format t "~{~a~%~}" (collatz n))))
