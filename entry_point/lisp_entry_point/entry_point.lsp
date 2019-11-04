(defun argv ()
  (or
   #+clisp (ext:argv)
   #+sbcl sb-ext:*posix-argv*
   #+abcl ext:*command-line-argument-list*
   #+clozure (ccl::command-line-arguments)
   #+gcl si:*command-args*
   #+ecl (loop for i from 0 below (si:argc) collect (si:argv i))
   #+cmu extensions:*command-line-strings*
   #+allegro (sys:command-line-arguments)
   #+lispworks sys:*line-arguments-list*
   nil)
)

(defun main()
  ;(format t "~&~S~&" *args*)
  (format t "lisp entry_point.lsp~%")
  (format t "not sure of the process~%")
  (print (argv))
)

(main)
(exit)
