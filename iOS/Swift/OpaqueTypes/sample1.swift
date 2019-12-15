
protocol AnyProtocol: Equatable { }

struct MainClass: AnyProtocol { }

// код вызывает ошибку
func generate() -> AnyProtocol {
  return MainClass()
}

let main = generate()
