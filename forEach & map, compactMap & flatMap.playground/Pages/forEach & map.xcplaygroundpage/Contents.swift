//: [Previous](@previous)

import Foundation

var prices = [1.50, 10.00, 4.99, 2.30, 8.19]

// `forEach` as a `for` loop
for price in prices {
    print(price)
}

prices.forEach { price in
    print(price)
}

prices.forEach { print($0) }


// `map` as a `for` loop
var arrayForSalePrice: [Double] = []

for price in prices {
    arrayForSalePrice.append(price * 0.5)
}
arrayForSalePrice
        
let salePrices = prices.map { $0 * 0.7 }

let priceLabels = prices.map { price in
    String(format: "%.2f", price)
}

