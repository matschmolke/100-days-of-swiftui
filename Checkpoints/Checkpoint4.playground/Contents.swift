//The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
//
//You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
//If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
//You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
//If you can’t find the square root, throw a “no root” error.

import Cocoa

enum inputError: Error {
    case outOfBounds, noRoot
}

func squareRoot(_ input: Int) throws -> Int {
    if input < 1 || input > 10_000 {
        throw inputError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == input {
            return i
        }
    }
    throw inputError.noRoot
}

do {
    let number = 169
    let result = try squareRoot(number)
    print("Square root of \(number) is: \(result)")
} catch inputError.outOfBounds {
    print("Number out of bounds.")
} catch {
    print("No root.")
}
