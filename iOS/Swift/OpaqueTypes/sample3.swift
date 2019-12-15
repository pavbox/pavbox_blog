// generics

protocol AnyProtocol: Equatable { }

struct MainClass: AnyProtocol { }

// код не вызывает ошибку
func generate<T: AnyProtocol>() -> T {
  return MainClass() as! T
}

// еще пример без force unwrapped
func collect<T: AnyProtocol>(value: T, and anotherValue: T) -> [T] {
  return [value, anotherValue]
}

// применение функции с помощью auto infer types
// auto infer to collect<MainClass>
let result = collect(value: MainClass(), and: MainClass())
print(result) // [MainClass(), MainClass()]
