//
//  Checkers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 07/08/22.
//

import Foundation

// Validator rename.
class Validator {
//    enum DateError rename.
    enum Date: Error {
        case AlreadyExpired
        case UnformattedDate
        case IllegalDate
        case IllegalMonth
    }
    
    static func isDateValid(_ date: String) throws {
        if(date.count < 10){
            throw Date.UnformattedDate
        }
        
        let yearRange = date.index(date.startIndex, offsetBy: 0)...date.index(date.startIndex, offsetBy: 3)
        let year = String(date[yearRange])
        
        let monthRange = date.index(date.startIndex, offsetBy: 5)...date.index(date.startIndex, offsetBy: 6)
        let month = String(date[monthRange])
        
        let dateRange = date.index(date.startIndex, offsetBy: 8)...date.index(date.startIndex, offsetBy: 9)
        let date = (date[dateRange])
        
        
        
        guard let yearInt = Int(year) else {
            print("Failed to fetch year.")
            throw Date.UnformattedDate
        }
        guard let monthInt = Int(month) else{
            print("Failed to fetch month.")
            throw Date.UnformattedDate
        }

        guard let dateInt = Int(date) else{
            print("Failed to fetch date.")
            throw Date.UnformattedDate
        }
        
        if(yearInt < 2022){
            throw Date.AlreadyExpired
        }
        
        if(monthInt < 1 || monthInt > 12){
            throw Date.IllegalMonth
        }
        if(dateInt < 1 || dateInt > 31){
            throw Date.IllegalDate
        }
    }
    
    static func isPasswordValid(_ password: String) -> Bool {
//         The below line is our regex pattern.
        /*
         where * -> zero or more charecter, + -> represents one or more character, ? -> represents zero or one charecter.
         
         and in this pattern we can specify the type of pattern that we need.
         
         For Example in the below instance I've given the pattern where I need to have atleast one or more Capital Letters
         in the start followed by one or more small letters in the middle, which is inturn followed by numbers and it should
         have a minimum length of 6.
         
         */
//        let regexRequirment = "[A-Z]+[a-z]+[!@#$%^&]+[0-9]?.{6,}"
        let regexRequirment = "^(?=.*[A-Z])(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[0-9]).{6,}$"
        /*
         Meaning of the above regex :
         (?=.*[A-Z]) => Check if password contains any character from A-Z.
         (?=.*[a-z]) => Check if password contains anr character from a-z.
         (?=.*[$@$#!%*?&]) => Check if password contains any special Characters.
         (?=.*[0-9]) => Check if password contains any numbers from 0-9.
         .{6,} => Should have a minimum length of 6.
         */
        let range = NSRange(location: 0, length: password.utf16.count)
        let regex = try? NSRegularExpression(pattern: regexRequirment)
        let match = regex?.firstMatch(in: password,options: [], range: range)
        
        return match != nil
    }
    
    static func isMobileNumberValid(_ number: String) -> Bool {
        let regexPattern = "[0-9]{10}"
        let range = NSRange(location: 0, length: number.utf16.count)
        let regex = try? NSRegularExpression(pattern: regexPattern)
        let match = regex?.firstMatch(in: number, options: [], range: range)
        
        return match != nil
    }
}
