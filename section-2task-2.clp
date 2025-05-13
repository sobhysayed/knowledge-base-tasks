CLIPS> (deftemplate rect
  (slot width)
  (slot height))

CLIPS> (defrule perimeter
  (rect (width ?w) (height ?h))
  =>
  (bind ?p (* 2 (+ ?w ?h)))
  (printout t "Perimeter: " ?p crlf))

CLIPS> (assert (rect (width 5) (height 3)))
<Fact-1>
CLIPS> (run)
Perimeter: 16
