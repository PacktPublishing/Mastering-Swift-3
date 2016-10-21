// Playground - noun: a place where people can play

import UIKit

//Optional Variable
var stringOne : String?

//--------stringOne is nil ---------------//
//Explicitly check for nil
if stringOne != nil {
    print(stringOne)
} else {
    print("Explicit Check:  stringOne is nil")
}

//option binding
if let tmp = stringOne {
    print(tmp)
} else {
    print("Optional Binding: stringOne is nil")
}

//Optional chainging
var charCount1 = stringOne?.characters.count


//--------adding value to stringONe ---------------//
stringOne = "http://www.packtpub.com/all"

//--------stringOne is nil ---------------//
//Explicitly check for nil
if stringOne != nil {
    print(stringOne)
} else {
    print("Explicit Check:  stringOne is nil")
}

//option binding
if let tmp = stringOne {
    print(tmp)
} else {
    print("Optional Binding: stringOne is nil")
}

//Optional chainging
var charCount2 = stringOne?.characters.count

