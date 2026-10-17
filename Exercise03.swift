// Exercise 03 - Tuples

func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    let total = marks.reduce(0, +)

    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

let summaryResult = summary(of: [72, 65, 48, 90])

print(summaryResult.minimum)
print(summaryResult.maximum)
print(summaryResult.average)

// Tuple Unpacking
let (low, high, average) = summary(of: [72, 65, 48, 90])

print(low)
print(high)
print(average)

// Activity 4
func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    let total = marks.reduce(0, +)
    let average = Double(total) / Double(marks.count)
    return (total, average)
}

let analysis = analyzeMarks([60, 70, 80, 90])
print("Total: \(analysis.total)")
print("Average: \(analysis.average)")
