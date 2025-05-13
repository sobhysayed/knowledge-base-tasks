CLIPS> (deftemplate animal
         (slot type))
CLIPS> (defrule check_animal
  (animal (type ?animal-type&~dog&~cat))
  =>
  (printout t "Animal found: " ?animal-type crlf))
CLIPS> (assert (animal (type lion))
        (animal (type cat))
        (animal (type dog))
        (animal (type bird)))
<Fact-4>
CLIPS> (run)
Animal found: bird
Animal found: lion
