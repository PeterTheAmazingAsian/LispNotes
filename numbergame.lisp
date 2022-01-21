;;;;
;;; you can load this file by pasting the following into CLISP:
;;; (load "numbergame.lisp")
(defparameter *small* 1); global var/ top level definition
(defparameter *big* 100); ** are called earmuffers, lispers like to make global variables with these
;;; defvar will not overwrite a value but defparameter will

;;; spaces and line breaks are ignored

;;; defun will return the name of the newly created global function
(defun guess-my-number ()
    (ash (+ *small* *big*) -1)); ash is arithmetic shift which will shift it by the second parameter
;;; final value calculated in body is returned automatically

;;; setf sets the value of variable
;;; 1- subtracts 1 to value, 1+ adds 1 to value
(defun smaller ()
    (setf *big* (1- (guess-my-number)))
    (guess-my-number))

(defun bigger ()
    (setf *small* (1+ (guess-my-number)))
    (guess-my-number))

(defun start-over ()
    (defparameter *small* 1)
    (defparameter *big* 100)
    (guess-my-number))