
protocol ComputerPart {}
struct SimplePart: ComputerPart { }
struct ComplexPart<T: ComputerPart, U: ComputerPart>: ComputerPart {}

struct PC<T: ComputerPart, U: ComputerPart>: ComputerPart {
  let part1: T
  let part2: U
}

let simolePart = SimplePart()
let complexPart = ComplexPart<SimplePart, SimplePart>()

//PC<ComplexPart<SimplePart, SimplePart>, SimplePart>.Type
let personalComputer = PC(part1: complexPart, part2: part1)

// use return OpaqueTypes
func show() -> some ComputerPart {
  let simolePart = SimplePart()
  let complexPart = ComplexPart<SimplePart, SimplePart>()
  let personalComputer = PC(part1: complexPart, part2: simolePart)
  return personalComputer
}

//ComputerPart
show()
