/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
  var ram: Int,
      yearManufactured: Int

  init?( ram: Int, year: Int ) {
    if ram > 0 && ( year > 1970 && year < 2020 ) {
      self.ram = ram
      yearManufactured = year
    } else {
      return nil
    }
  }
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
let one: Computer? = Computer(ram: 2, year: 1972)
let two: Computer? = Computer(ram: 0, year: 1959)
if let test1 = one {
  print( "ram: \(test1.ram) year: \(test1.yearManufactured)")
}
if let test2 = two {
  print( "ram: \(test2.ram) year: \(test2.yearManufactured)")
}

/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
