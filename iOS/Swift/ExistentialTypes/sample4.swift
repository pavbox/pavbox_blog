// определение условий экзистенциального типа
typealias AnySequence<Element> = Any<Sequence where .Iterator.Element == Element>
// элементы коллекции должны удовлетворять типу String
let strings: AnySequence<String> = ["a", "b", "c"]
