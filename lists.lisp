;;;; Lists
;;; Simple list examples

;;; cons will link two things together by making a cons cell.
;;; This is not a regular list, the . indicates it is a cons cell.
(cons 'first 'second)

;;; Different ways to constuct a list
(cons 'first (cons 'second 'nil))   ; this will result in a list
(cons 'first (cons 'second ()))     ; equivalent to the line above
(list 'first 'second)               ; equivalent to the line above
'(first second)                     ; equivalent to the line above but must be used in a function

;;; You can use cons to insert to the front of a list.
(cons 'first '(second third))

;;; car gets the first item of a list
(car '(first second third))         ; get first

;;; cdr gets the second item, which is connected to the rest of the list
(cdr '(first second third))         ; get second and third 

;;; Mixing car and cdr can get more specific parts of a list
;;; another function: 
;;; cadr - 2nd object in list
(cadr '(first second third))        ; get second

;;; You can nest lists
(cadr '(one (two three) four))      ; gets the list: two three