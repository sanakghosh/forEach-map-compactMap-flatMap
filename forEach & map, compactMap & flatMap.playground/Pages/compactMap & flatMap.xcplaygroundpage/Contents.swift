import UIKit

//CompactMap
let userInput = ["meow!", "15", "37.5", "seven"]

// `compactMap` as a `for` loop
var arrayForValidInput: [Int] = []
for input in userInput {
  guard let input = Int(input) else {
    continue
  }
  arrayForValidInput.append(input)
}
arrayForValidInput


let validInput = userInput.compactMap { input in
  Int(input)
}

//FlatMap
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
