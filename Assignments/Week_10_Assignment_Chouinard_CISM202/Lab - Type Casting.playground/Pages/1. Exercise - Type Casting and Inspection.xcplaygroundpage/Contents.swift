/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let coll: [Any] = [5, 3.4, 23, "one", true, "asdf", false]
print(coll)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in coll {
  if item is Int {
    print( "The Integer has value of \(item)")
  }
  if item is Double {
    print( "The Double has value of \(item)")
  }
  if item is String {
    print( "The String has value of \(item)")
  }
  if item is Bool {
    print( "The Bool has value of \(item)")
  }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let dict : [String: Any] = ["one": 5, "two": 3.4, "three": 23, "four": "99", "five": true, "six": "asdf", "seven": false]
for ( k, v ) in dict {
  print(" \(k): \(v)")
}
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

for (_, n) in dict {
  if let a = n as? Int {
    total += Double(a)
  }
  if let b = n as? Double {
    total += b
  }
  if let c = n as? Bool {
    if c {
      total += 2
    } else {
      total -= 3
    }
  }
  if n is String {
    total += 1
  }
}
print( "total: \(total)")

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for (_, n) in dict {
  if let a = n as? Int {
    print("a: \(a)")
    total2 += Double(a)
  }
  if let b = n as? Double {
    print("b: \(b)")
    total2 += b
  }
  if n is String {
    if let c = Int(n as! String ) {
      print("c: \(c)")
      total2 += Double(c)
    }
  }
}
print( "total2: \(total2)")

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
