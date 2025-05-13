CLIPS> (deftemplate person
    (slot name)
    (slot hair_color))
CLIPS> (defrule check_color
   (person (hair_color ?color))
   (test (neq ?color "black"))
   (test (neq ?color "brown"))
   =>
   (printout t "Person with hair color: " ?color crlf))
CLIPS> (assert 
   (person (name "Ahmed") (hair_color "white"))
   (person (name "Anwar") (hair_color "black"))
   (person (name "Ali") (hair_color "brown"))
   (person (name "Sobhy") (hair_color "red")))
<Fact-4>
CLIPS> (run)
Person with hair color: red
Person with hair color: white
