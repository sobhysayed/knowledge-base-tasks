CLIPS> (deftemplate num
         (slot value))
CLIPS> (defrule pos_int
         (num (value ?n&:(and (integerp ?n) (> ?n 0))))
         =>
         (printout t "The number " ?n " is a positive integer" crlf))
CLIPS> (assert 
         (num (value 7)) 
         (num (value -5)) 
         (num (value 6.1)))
<Fact-3>
CLIPS> (run)
The number 7 is a positive integer
CLIPS> 
