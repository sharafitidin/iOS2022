/*:
 ## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking on the variable name.
 */

var firstDecimal = 13.1
var secondDecimal = 10.2

/*:
 Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */

var trueOrFalse = true
print(firstDecimal == trueOrFalse)
print("It does not compile because they're different type")

/*:
 Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */

var string = ""
print(firstDecimal == str)
print("It does not compile because they're different type")

/*:
 Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */

var num = 10
print(firstDecimal == num)
print("It does not compile because they're different type, Double and Int")

//: [Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
