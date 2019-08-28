// Generics-like
func collect<T: Collection>(value: T, and anotherValue: T) -> [T] {
  return [value, anotherValue]
}
// Existential Types
func collect(value: Collection, and anotherValue: Collection) -> [Collection] {
  return [value, anotherValue]
}
