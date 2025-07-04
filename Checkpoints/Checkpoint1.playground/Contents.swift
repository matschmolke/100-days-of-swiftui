//Your goal is to write a Swift playground that:
// - Creates a constant holding any temperature in Celsius.
// - Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
// - Prints the result for the user, showing both the Celsius and Fahrenheit values.

import Cocoa

let tempCelcius = 35.0
let tempFahrenheit = (tempCelcius * 9) / 5 + 32
print("Temp in Celcius:  \(tempCelcius)°")
print("Temp in Fahrenheit: \(tempFahrenheit)°")
