;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Assignment 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 6 - Chapters 1 and 2 Review
Submit on Google Classroom by the end of class.

If a question asks you to make a function,
it must follow the complete design recipe
including a purpose statement, signature
and appropriate tests to recieve full credit
|#

#| Question 1:
On a *single line comment*,
write your name and today's date
|#
; Willians Nataniel Goncalves Varela

#| Question 2:
On a *multi line comment*,
answer the following question:
What does "define" do?
|#
#|
define creates data.
|#

#| Question 3:
Define the following data:

A variable called "first-name" containing your first name
A variable called "last-name" containing your last name
A variable called "age" containing your age

You MUST reference those variables to create these variables:
A variable called "vote?" that contains if you're old enough to vote
A variable called "intro" that says
  "Hi! My name is *first-name* *last-name* and I am *age* years old"
Hint: Use (number->string age) to convert your age to a string.
|#
(define First-name "Willians")
(define Last-name "Varela")
(define age 18)

(define vote? (>= age 18))
(define intro (string-append "Hi! My name is " First-name " " Last-name " I'm" " " (number->string age) "years old"))

#| Question 4:
Create a function called "next-squared"
that takes in a number and returns
the number 1 above it squared.

For example,
(next-squared 2) -> 9
|#
(define (next-squared n1)
  (expt (+ 1 n1) 2))

(check-expect (next-squared 1) 4)

#| Question 5
Create a function called "order-drink" that takes in
a number and a string representing an amount of money
and a preferred size.

If the size is "Small" and the person has more than 2.00 dollars,
print "Ordered Small"

If the size is "Medium" and the person has more than 3.50 dollars,
print "Ordered Medium"

If the size is "Large" and the person has more than 5.00 dollars,
print "Ordered Large"

If the size is not "Small", "Medium", or "Large", or the person
does not have enough money for the drink they ordered,
print "Invalid Order".

For example,
(order-drink "Small" 6.43) -> "Ordered Small"
(order-drink "McFlurry" 23.43) -> "Invalid Order"
(order-drink "Large" 2.32) -> "Invalid Order"
|#
(define (order-drink str price)
  (cond
    [(and (string=? "Small" str) (> price 2)) "Ordered small"]
    [(and (string=? "Medium" str) (> price 3.50)) "Ordered Medium"]
    [(and (string=? "Large" str) (> price 5)) "Ordered Large"]
    [ else "Invalid Order"]))
#| Question 6
Define variables called "username" and "password"
that contain a username and password of your choosing.

Create a function called "login" that takes in two strings
representing a username and password.
If the username and password both match, return "Logged In".
The username should NOT be case sensitive, the password should be.
If the username is incorrect, print "Incorrect Username"
If the password is incorrect, print "Incorrect Password"

For example, if username is "Account123" and password is "fishbowl12"...
(login account123 "fishbowl12") -> "Logged In"
(login ACCOunt123 "fishbowl12") -> "Logged In"
(login account123 "FISHBOWL12") -> "Incorrect Password"
(login account321 "fishbowl12") -> "Incorrect Username"
|#

#| Bonus Question:
Create a function called "string-invert"
that takes in a string and appends
the second half the string to the first
half of the string.

Hint: Use the "round" function to allow
this to work on odd length strings.

For example,
(string-invert "GoldFish") -> FishGold
(string-invert "Hello") -> "lloHe"
|#
