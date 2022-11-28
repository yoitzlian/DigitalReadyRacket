;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Assignment 13|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 13 - File Input/Output
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

(require 2htdp/batch-io)

#| Question 1
Create a new text file anywhere on your computer
called "season.txt". In this text file,
write what your favorite season is,
and why it is your favorite season.

In a comment below, write the full file path
to the "season.txt" file
|#
;C:/Users/zouli/OneDrive/Documents/season.txt
#| Question 2
For a "season" file to be valid,
it should at some point contain
the words "Spring", "Summer",
"Fall", or "Autumn".

Make a function called (valid-season?)
that takes in a string representing a
file path. This function should read
the file at this path, and determine
if it contains one of "Spring",
"Summer", "Fall", or "Autumn".

Hint: There are two ways to
achieve this. One involves the
(string-contains?) function
and one involves using ormap.
|#
;text asnwering the question
;string string
(define (valid-season? str)
  (read-file "C:/Users/zouli/Downloads/season.txt"))
#| Question 3
A file called "students.csv"
has been provided with this assignment.
Download that file to your computer
and write the path to that file in
a comment below.
|#
;path for file
;string string
;C:/Users/zouli/Downloads/student.csv
#| Question 4
The structure definition for a student
is written below:
|# (define-struct student (name id gpa)) #|
Create a function called (csv-to-students)
that takes in a string representing a path
to a CSV file. This function should return
a list of Student structures created
using the student data in the CSV.
|#
;student-helper : list-of-string
(define (student-helper los)
  (make-student (first-los)
                (second los)
                (third los)))
;map the helper function
;to the imported csv data
#| Question 5
Create a function called (student-data)
that takes in a student and converts them
into a line of data with this format:

"Bob has ID 2 and a GPA of 3.2"

Save this text as a file on your computer
called "*STUDENT*_data.txt"

For example, this file would be called
"Bob_data.txt"
|#

#| Bonus Question
Adapt Question 5's function
so it can take in a list of students
and create one file called "class_data.txt"
that contains all of the students' data in one file.

Hint: Use the \n new line character to seperate lines.
|#