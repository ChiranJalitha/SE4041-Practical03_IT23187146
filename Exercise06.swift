// Exercise 06 - Structures, Computed Properties, Methods, Classes

enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

struct Student {
    var name: String
    var mark: Int
    var registered: Bool = true

    var grade: Grade {
        switch mark {
        case 75...100:
            return .a
        case 65..<75:
            return .b
        case 50..<65:
            return .c
        default:
            return .f
        }
    }

    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

// Basic struct usage
let student1 = Student(name: "Amal", mark: 72)
print(student1.name)
print(student1.mark)
print(student1.registered)

// Computed Properties - Rectangle
struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 4, height: 3)
print(rectangle.area)

// Computed Grade Property
let student2 = Student(name: "Amal", mark: 72)
print(student2.name)
print(student2.grade.rawValue)

// Methods
let student3 = Student(name: "Kamal", mark: 75)
student3.displayDetails()

// mutating Methods
struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
print(counter.count)

// Classes
class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()

// Struct vs Class - Value Type
struct Point {
    var x = 0
}

var firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99

print(firstPoint.x)
print(secondPoint.x)

// Struct vs Class - Reference Type
class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter
secondCounter.count = 99

print(firstCounter.count)
print(secondCounter.count)
