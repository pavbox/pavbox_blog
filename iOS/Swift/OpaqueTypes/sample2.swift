
protocol AnyProtocol: Equatable { }

struct MainClass: AnyProtocol { }

// код не вызывает ошибку
func generate() -> some AnyProtocol {
  return MainClass()
}

let main = generate()
