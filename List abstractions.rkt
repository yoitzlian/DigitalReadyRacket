;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Assignment 11|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 11 - List Abstractions
Submit on Google Classroom by the end of class.

If a question asks you to make a function,
it must follow the complete design recipe
including a purpose statement, signature
and appropriate tests to recieve full credit

If a question asks you to make a structure,
it must follow the complete design recipe
including a definition, interpretation,
and appropriate examples to recieve full credit
|#

#| Question 1
Briefly state all of the list abstractions,
and what their purposes are
|#
;map-applies a function to every element in a list.
;filter-removes items from a list that don't satisfy a predicate
;andmap- does every element in a list satisfy a predicate?(the quotation mark is because it is a boolean)
;ormap- does any element in a list satisfy a predicate.
;foldr- combines a list into a single element, from left to right.
;foldl-combines a list into a single element, from right to left.



#| Question 2
Remake the (list-product) function
from assignment 10 using list abstraction.
|#

#| Question 3
Remake the (all-caps) function
from assignment 10 using list abstraction
|#

#| Question 4
Remake the (has-large-numbers?) function
from assignment 10 using list abstraction

Hint: You will need to make a helper function
|#

#| Question 5
Here is the student structure you made in assignment 10:
|# (define-struct student (name id grades)) #|
Remake the (get-gpa) function
from assignment 10 using list abstraction
|#

#| Question 6
Here is the classroom structure as defined in assignment 10:
|# (define-struct classroom (room teacher students)) #|
Remake the (filter-grades) function
from assignment 10 using list abstraction
|#