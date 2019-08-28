
func collect<T: AnyProtocol>(value: T, and anotherValue: T) -> [T] {
  return [value, anotherValue]
}
