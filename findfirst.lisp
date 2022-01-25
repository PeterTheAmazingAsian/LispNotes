;;;; Find first atom
;;; This function finds the first atom in a list.

;;; I use defun instead of def, it should have the same functionality.
(defun ff-atom (l)
    (cond   ((equal () l) ())               ; base case for when our list is empty
            ((atom (car l)) (car l))        ; if the the first element of l is an atom then return it.
            (t (ff-atom (cdr l)))           ; otherwise we need to recursively look at the rest of the list.
    )
)

;;; a few tests
(ff-atom '(a b c d))                        ; A
(ff-atom '((d b) a b c))                    ; A
(ff-atom '((a b) (c d) e))                  ; E
(ff-atom ())                                ; NIL

(defun ff-nonatom (l)
    (cond   ((equal () l) ())               ; base case for when our list is empty
            ((not (atom (car l))) (car l))  ; if the the first element of l is not an atom then return it.
            (t (ff-nonatom (cdr l)))        ; otherwise we need to recursively look at the rest of the list.
    )
)

(ff-nonatom '(a b c d))                        ; NIL
(ff-nonatom '((d b) a b c))                    ; (D B)
(ff-nonatom '((a b) (c d) e))                  ; (A B)
(ff-nonatom ())                                ; NIL