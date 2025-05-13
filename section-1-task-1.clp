CLIPS> (deftemplate animal
         (slot type))
CLIPS> (defrule check_animal
         (animal (type ?animal-type&~dog))
         =>
         (printout t "The animal is a " ?animal-type crlf))
CLIPS> (assert 
         (animal (type lion))
         (animal (type giraffe))
         (animal (type dog)))
<Fact-3>
CLIPS> (run)
The animal is a giraffe
The animal is a lion
CLIPS> 
