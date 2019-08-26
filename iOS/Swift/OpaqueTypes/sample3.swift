
// код не выведет ошибку
func generate<T: AnyProtocol>() -> T {
  return MainClass() as! T
}
// еще пример без force unwrapped
func collect<T: AnyProtocol>(value: T, and anotherValue: T) -> [T] {
  return [value, anotherValue]
}
