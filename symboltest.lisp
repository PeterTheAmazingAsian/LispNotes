;;;; symbol test
;;; symbols in common lisp are case insensitive
;;; putting ' passes the parameter instead of parsing it as code
(eq 'fooo 'FoOo) ; symbols are case insensitive so these two are the same