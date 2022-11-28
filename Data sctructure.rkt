;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Assignment 7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 7 - Structures
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

#| Question 1:
Define a new structure called "address"

An address should have a number, street, and town.

Follow the complete design recipe for data,
including a definition, interpretation,
and appropriate examples to recieve full credit.
|#
;An address is a (make-address Number String string number)
;An address represent datas as street name, house number and building.
(define-struct address ( number street town))
(define Boston (make-address 110 "Main st" "Boston"))
(define Roxbury (make-address 203 "Lua st" "Roxbury"))
#| Question 2:
Fill in the blanks with the correct functions:
|#

; The function to create a new address is: make-adress
; The function to access the number of an address is: address-number
; The function to access the street of an address is: address-street
; The function to access the town of an address is: address-town

#| Question 3:
If a house number is even, it is on the left side of the street.
If a house number is odd, it is on the right side of the street.

Make a function called "street-side" that takes in an address
and returns "Left" if the house is on the left side of the street,
and "Right" if the house is on the right side of the street.

Hint: You can use the functions (odd? num) or (even? num)
to determine is a number is even or odd.
|#
;Purpose statement:takes number of street and check if it is on the left or right side using "even? num" and "odd? num"
;signature: string number
(define (street-side adr)
  (if( odd? (address-number adr)) "Right" "Left"))
(check-expect (street-side Boston ) "Left")
(check-expect (street-side Roxbury ) "Right")
#| Question 4:
Define a new structure called "Student"
A student should have a name, gpa and address.
|#
(define-struct student( name gpa address))
(define kaly (make-student "Kaly" 4.9 Boston))
(define aq (make-student "AQ" 3.9 Roxbury))

#| Question 5:
Two students are neighbors if they live on the same street
and within 20 house numbers of eachother.

Create a function called "neighbors?" that takes in two students
and returns if they are neighbors.
|#
(define (neighbors? nei1 nei2)
     (string=? (address-town (student-address nei1)) (address-town (student-address nei2))))
(check-expect (neighbors? nei1 nei2) #t)

  
#| Bonus Question:
Create a structure called "coordinate"
that has an x value and y value.

Create a function called "distance-formula"
that takes in two coordinates and calculates
the distance between them.

Hint: If two points are (x1, y1), (x2, y2),
the distance between them is
(sqrt ((x2 - x1)^2 + (y2 - y1)^2))
|#