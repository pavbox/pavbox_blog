
struct ContentView: View {
  // возвращаемый тип реализует интерфейс View.
  // так как нам не нужно задавать тип данных в параметре
  // мы можем применять opaque types для computed properties
  static var body: some View {
    Text("Text")
  }
}
