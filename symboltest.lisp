;;;; symbol test
;;; symbols in common lisp are case insensitive
;;; putting ' passes the parameter as data rather than code
(eq 'fooo 'FoOo) ; symbols are case insensitive so these two are the same