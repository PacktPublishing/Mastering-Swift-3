// Playground - noun: a place where people can play

import UIKit

var stringOne = "one,two,three,four"
print(stringOne.replacingOccurrences(of: "to", with: "two"))


var path = "/one/two/three/four"
//Create start and end indexes
let startIndex = path.index(path.startIndex, offsetBy: 4)
let endIndex = path.index(path.startIndex, offsetBy: 14)

let myRange = startIndex..<endIndex

path.substring(with: myRange)   //returns the String /two/three


path.substring(to:startIndex)  //returns the String /one
path.substring(from:endIndex)  //returns the String /four

path.characters.last
path.characters.first

var length = path.characters.count



