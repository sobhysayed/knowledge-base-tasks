CLIPS> (deftemplate person
  (multislot name
    (type SYMBOL STRING)
    (cardinality 2 4))   
  (slot age
    (type INTEGER)        
    (range 20 25))) 
CLIPS> (defrule print_person
  (person (name $?name) 
     (age ?age))
  =>
  (printout t "Valid person: " (implode$ ?name) ", age " ?age crlf))
CLIPS> (assert 
    (person (name SOBHY SAYED) (age 23))
    (person (name AHMED SAYED) (age 21))
    (person (name RANIA SAYED) (age 25)))
<Fact-3>
CLIPS> (run)
Valid person: RANIA SAYED, age 25
Valid person: AHMED SAYED, age 21
Valid person: SOBHY SAYED, age 23
