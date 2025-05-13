CLIPS> (deftemplate number
  (slot value))
CLIPS> (defrule odd_number
  (number (value ?n&:(integerp ?n)&:(= (mod ?n 2) 1)))
  =>
  (printout t "The number " ?n " is odd" crlf))
CLIPS> (assert (number (value 7))
        (number (value 4))
        (number (value 3))
        (number (value 0)))
<Fact-4>
CLIPS> (run)
The number 3 is odd
The number 7 is odd
