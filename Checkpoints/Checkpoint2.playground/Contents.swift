// Create an array of strings, then write some code that prints the number of items in the array
// and also the number of unique items in the array.

import Cocoa

let footballers: [String] = ["Robert Lewandowski", "Lionel Messi", "Cristiano Ronaldo", "Kylian Mbappé", "Lionel Messi"]
let numberOfFootballers = footballers.count

let uniqueFootballers = Set<String>(footballers)
let numberOfUniqueFootballers = uniqueFootballers.count

print("There are \(numberOfFootballers) footballers in the array and \(numberOfUniqueFootballers) of them are unique")
