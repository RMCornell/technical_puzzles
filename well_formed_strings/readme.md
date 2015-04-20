#Technical Puzzles

##Puzzle One

9.3 Test a String for Well-Formedness

A string of characters like "({12}[34(56){67}])" is said to be well-formed
if every opening brace (square, curly, or parens) has a matching close AND
the closing brace comes in the opposite order of the opening.

* Valid: "({12}[34(56){67}])"
* Invalid "({12)"
* Invalid "({12)}"

Write a validator that can determine the well-formedness of an input string.

