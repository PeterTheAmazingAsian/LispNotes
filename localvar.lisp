; local variables and functions
; let declares local variables
(let ((a 5) (b 6)) ; let a = 5 and b = 6
    (+ a b)) ; then return a + b

; flet declares a local function

; local function with parameter n
(flet ((f (n)
        (+ n 10))); add 10 to n
    (f 5)); call local function with parameter 5

; two local function example
(flet ((f (n)
        (+ n 10))
       (g (n)
        (- n 3)))
    (g (f 5)))

; but if you want to use function f in function g you must use the labels keyword
(labels ((f (n)
        (+ n 10))
       (g (n)
        (- (f n) 3)))
    (g 5))

;; these will both result in 12