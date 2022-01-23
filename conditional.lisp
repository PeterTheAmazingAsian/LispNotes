;;;; Conditionals
;;; empty list () is false, non-empty list is true
;;; () == '() == nil == 'nil == empty list

(if '()
    'true
    'false)
    ;; returns false 

(if '(1)
    'true
    'false)
    ;; returns true

;;; This feature when paired with recursion and cdr can 
;;; be mixed to make other common functions.
(defun length-ex (list)
    (if list 
        (1+ (length-ex (cdr list)))     ; add one if list has something
        0))                             ; else return 0 (base case)
(length-ex '(one two three four))
;;; these two premade functions will also return the length of a list
(length '(one two three four))
(list-length '(one two three four))

;;; checking for eqaulity in if statements
(if (= 5 5)
    'true
    'false)

;;; having more than one statement in an if branch using progn
(defparameter *example* 0)
(if '(1)
    (progn (setf *example* 5)           ; set example variable to 5
        (+ *example* 25)))              ; add 25 to example then return

;;; more than one statement using when and unless
;;; when will run all statements when condition is true
(when '(1)
    (setf *example* 5)
    '"set example to 5")
;;; unless will run all statements when condition is false
(unless '()
    (setf *example* 5)
    '"set example to 5")
;;; when and unless return nil when they are not executed (no else)

;;; cond can do it all 
(defun cond-test (num)
    (cond   ((= num 1) (+ num 5)
                    '(added 5 to num))
            ((= num 2) (+ num 10)
                    '(added 10 to num))
            (t      '(did nothing to num))))
;;; the last condition will run if nothing else matches (equivalent to else)

;;; there is also case
;;; however it only checks for equality
(defun case-test (num)
    (case num
            ((1) (+ num 5)
                        '(added 5 to num))
            ((2) (+ num 10)
                        '(added 10 to num))
            (otherwise  '(did nothing to num))))

;;; lisp has shortcut boolean evaluation
(or (oddp 11) '(This will not return))  ; since 11 is odd it will return T immediately
(or (oddp 10) '(This will return))

;;; check if something is in a list using member
(if (member '1 '(1 2 3 4))
    'yes
    'no)

;;; = works on numbers
;;; eq should be used to compare symbols ()
;;; equal should be used on everything else
;;; eq checks if they are the same object
;;; equal checks if they are isomorphic

;;; there are a lot of comparison functions
;;; eql is like eq but supports numbers + characters
;;; equalp is like equal but can compare floats and ints and is case-insensitive for strings
