// generics in source code
func compare<T: Comparable>(value: T, and anotherValue: T) -> Bool {
  return value == anotherValue
}
compare<Int>(value: 5, and: 10)
compare<Double>(value: 10.0, and: 5.0)
// generics after compile (by demand)
func compare(value: Int, and anotherValue: Int) -> Bool {
  return value == anotherValue
}
func compare(value: Double, and anotherValue: Double) -> Bool {
  return value == anotherValue
}
