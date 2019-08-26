
protocol AnyProtocol: Equatable { }
struct MainClass: AnyProtocol { }

func generate() -> AnyProtocol { // error
  return MainClass()
}

let main = generate()
