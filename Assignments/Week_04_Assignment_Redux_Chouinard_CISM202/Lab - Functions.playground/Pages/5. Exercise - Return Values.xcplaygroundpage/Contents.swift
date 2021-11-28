/*:
## Exercise - Return Values

 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
func greet( name: String ) -> String {
  return ("Hi \(name)")
}

print( greet(name: "joe"))
//:  Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
func stupid( a: Int, b: Int) -> Int {
  return a * b + 2
}
print( stupid(a: 2, b: 3) )
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
 */
