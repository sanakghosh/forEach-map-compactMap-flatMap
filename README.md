# Understanding forEach, map, compactMap, and flatMap in Swift
When working with collections in Swift, you often need to apply operations to each element or transform the elements in some way. Swift provides several methods for this purpose: forEach, map, compactMap, and flatMap. In this README, we'll explore each of these methods and understand their differences.

forEach:

The forEach method iterates over each element of a collection and performs a given operation on each element.

var prices = [1.50, 10.00, 4.99, 2.30, 8.19]

// Using forEach to print each price
prices.forEach { price in
    print(price)
}

map:

The map method applies a transformation to each element of a collection and returns an array containing the transformed elements.

let salePrices = prices.map { $0 * 0.7 }

let priceLabels = prices.map { price in
    String(format: "%.2f", price)
}


compactMap:

The compactMap method is useful when you want to transform elements of a collection and filter out any resulting nil values.

let userInput = ["meow!", "15", "37.5", "seven"]

let validInput = userInput.compactMap { input in
    Int(input)
}

flatMap

The flatMap method is used when you have a collection of collections, and you want to flatten it into a single collection while applying a transformation.

let arrayOfDwarfArrays = [
    ["Sleepy", "Grumpy", "Doc", "Bashful", "Sneezy"],
    ["Thorin", "Nori", "Bombur"]
]

let dwarvesAfterM = arrayOfDwarfArrays.flatMap { dwarves -> [String] in
    var afterM: [String] = []
    for dwarf in dwarves where dwarf > "M" {
        afterM.append(dwarf)
    }
    return afterM
}

This README provides a brief overview of each method and how it can be used in Swift to work with collections efficiently. Feel free to explore further and experiment with these methods in your own projects!
