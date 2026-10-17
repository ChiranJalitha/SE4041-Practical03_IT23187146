// Exercise 01 - Functions

// Step 1 - A Simple Function
func greet() {
    print("Welcome to SE4041")
}

greet()

// Step 2 - Function with a Parameter
func greetStudent(name: String) {
    print("Welcome \(name)")
}

greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")

// Returning a Value
func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    return "Fail"
}

let gradeResult = grade(for: 68)
print(gradeResult)

// Activity 1
func calculateAverage(_ first: Double, _ second: Double, _ third: Double) -> Double {
    return (first + second + third) / 3
}

let activity1Result = calculateAverage(75, 82, 68)
print(activity1Result)

// Argument Labels
func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}

travel(from: "Malabe", to: "Kandy")

// Removing an Argument Label
func double(_ number: Int) -> Int {
    return number * 2
}

print(double(10))

// Default Parameter Values
func result(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print(result(68))
print(result(68, passMark: 75))

// Activity 2
func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print(finalResult(mark: 45))
print(finalResult(mark: 75))
print(finalResult(mark: 75, passMark: 80))
