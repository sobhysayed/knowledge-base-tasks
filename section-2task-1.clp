CLIPS> (deftemplate animal
  (slot type))

CLIPS> (defrule check_animal
  (animal (type ?t&:(or (eq ?t duck) (eq ?t turtle))))
  =>
  (printout t "Animal type: " ?t crlf))

CLIPS> (assert (animal (type lion))
        (animal (type duck)) 
        (animal (type dog)))
<Fact-3>
CLIPS> (run)
Animal type: duck
