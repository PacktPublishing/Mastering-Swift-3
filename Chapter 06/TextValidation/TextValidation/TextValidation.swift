//
//  TextValidation.swift
//  TextValidation
//
//  Created by Jon Hoffman on 8/11/15.
//  Copyright © 2015 Jon Hoffman. All rights reserved.
//

import Foundation

protocol TextValidationProtocol {
    var regExFindMatchString: String {get}
    var validationMessage: String {get}
}


extension TextValidationProtocol {
    
    var regExMatchingString: String { get {
        return regExFindMatchString + "$"
        }
    }
    
    func validateString(_ str: String) -> Bool {
        if let _ = str.range(of: regExMatchingString, options: .regularExpression) {
            return true
        } else {
            return false
        }
    }
    func getMatchingString(_ str: String) -> String? {
        if let newMatch = str.range(of: regExFindMatchString, options: .regularExpression) {
            return str.substring(with: newMatch)
        } else {
            return nil
        }
    }
}


struct AlphaValidation: TextValidationProtocol {
    static let sharedInstance = AlphaValidation()
    private init(){}
    
    let regExFindMatchString = "^[a-zA-Z]{0,10}"
    let validationMessage = "Can only contain Alpha characters"
}

struct AlphaNumericValidation: TextValidationProtocol {
    static let sharedInstance = AlphaNumericValidation()
    private init(){}
    
    let regExFindMatchString = "^[a-zA-Z0-9]{0,15}"
    let validationMessage = "Can only contain Alpha Numeric characters"
}


struct DisplayNameValidation: TextValidationProtocol {
    static let sharedInstance = DisplayNameValidation()
    private init(){}
    
    let regExFindMatchString = "^[\\s?[a-zA-Z0-9\\-_\\s]]{0,15}"
    let validationMessage = "Display Name can contain only contain Alphanumeric Characters"
}




