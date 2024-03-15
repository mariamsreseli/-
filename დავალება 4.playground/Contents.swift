import UIKit
//1.while ციკლის გამოყენებით, 1-დან 20-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი.

var number = 1
var result = 1
while number <= 20 {
    result *= number
    number += 2
}
print(result)

//2.შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა მივიღოთ “tseT”
var word1 = "Mariam"
var word2 = ""
for name in word1 {
    word2 = String(name) + word2
}
print(word2)

//3.while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."

/* var number = 0
let colors = ["🔴", "🟡", "🟢"]

while true {
    switch number {
    case 0:
        print("🔴", terminator: "->")
    case 1:
        print("🟡", terminator: "->")
    default:
        print("🟢", terminator: "->")
    }
    number = (number + 1) % colors.count
}
*/

//4.Taylor Swift-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე”
var ticketnumber = 20
while ticketnumber > 0 {
    print("ბილეთი გაყიდულია, დარჩენილია მხოლოდ \(ticketnumber)")
    ticketnumber -= 1
}
print("ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე")

//5.შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)
let array = [1,3,56,76,5,998]
if Set(array).count == array.count {
    print("array-ში ყველა ელემენტი განსხვავებულია")
} else {
    print("array შეიცავს მსგავს ელემენტებს")
}

//6.დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას
let myClosure: (Int, Int) -> Int = { x, y in
    return x - y
}

let example = myClosure(453, 213)
print("ორ რიცხვს შორის სხვაობა არის \(example)")

//7.დაწერეთ ფუნქცია, რომელსაც გადააწვდით String ტიპის პარამეტრს. დაითვალეთ ამ პარამეტრში თანხმოვნების რაოდენობა და დაბეჭდეთ ის.
func Consonants(text: String) -> (Int) {
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var count = 0
    for cons in text {
        for char in consonants {
            if cons == char {
                count += 1
            }
        }
    }
    
    return count
}
    print(Consonants(text: "It's Raining"))
    
    
    
    
    
    
