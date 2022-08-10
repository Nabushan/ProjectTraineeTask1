//
//  Customer.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class CustomerManager: CustomerHelperProtocol{
    static var customerAdders: CustomerAdderUtil = CustomerAdderUtil()
    static var customerDisplayers: CustomerDisplayerUtil = CustomerDisplayerUtil()
    static var customerRemovers: CustomerRemoverUtil = CustomerRemoverUtil()
    static var customerUpdaters: CustomerUpdaterUtil = CustomerUpdaterUtil()
//    var customerEntity: CustomerEntity?
//
//    init(){
//        customerEntity = CustomerEntity()
//
//        Customer.customerAdders.setAdminObject(customerEntity!)
//        Customer.customerDisplayers.setAdminObject(customerEntity!)
//        Customer.customerRemovers.setAdminObject(customerEntity!)
//        Customer.customerUpdaters.setAdminObject(customerEntity!)
//    }
//
//    func setStorageState(_ storage: Storage){
//        Customer.customerAdders.setStorageState(storage)
//        Customer.customerDisplayers.setStorageState(storage)
//        Customer.customerRemovers.setStorageState(storage)
//        Customer.customerUpdaters.setStorageState(storage)
//    }
    
    func addCustomer(){
        CustomerManager.customerAdders.addCustomer()
        
//        customerEntity = CustomerEntity()
//
//        Customer.customerAdders.setAdminObject(customerEntity!)
//        Customer.customerDisplayers.setAdminObject(customerEntity!)
//        Customer.customerRemovers.setAdminObject(customerEntity!)
//        Customer.customerUpdaters.setAdminObject(customerEntity!)
    }
    
    func updateCustomer(){
        print("1 -> To update the Name of the User\n"
              + "2 -> To update the Contact Number of the User\n"
              + "3 -> To  update the Purchase Date of the User")
        let choice = readLine()
        
        print("Enter the Name of the Customer whose details you'd like to edit : ")
        let customerName = readLine()
        
        guard let name = customerName,name.count != 0 else{
            print("Empty Name passed during updation.")
            return
        }
        
        print("Enter the Contact Number of the Customer whose details you'd like to edit : ")
        let contactNumber = readLine()
        
        guard let number = contactNumber,number.count != 0 && number.count == 10 else{
            print("Empty or Improper number recieved during updation")
            return
        }
        
        let isNumberValid: Bool = Validator.isMobileNumberValid(number)
        
        if(!isNumberValid){
            print("The entered number is Invalid(before updation).")
            return
        }
        
        switch(choice){
        case "1":
            print("Enter the new Name of the Customer : ")
            let newCustomerName = readLine()
            
            guard let name = newCustomerName,name.count != 0 else{
                print("Empty Name passed during updation.")
                return
            }
            
            CustomerManager.customerUpdaters.updateCustomerName(from: customerName!, CustomerNumber: contactNumber!, to: newCustomerName!)
            
        case "2":
            print("Enter the new Contact Number of the Customer : ")
            let newContactNumber = readLine()
            
            guard let phone = newContactNumber,phone.count != 0 else{
                print("Empty value passed during number updation.")
                return
            }
            
            let isNumberValid: Bool = Validator.isMobileNumberValid(phone)
            
            if(!isNumberValid){
                print("The entered Contact number is Invalid during updation.")
                return
            }
            
            CustomerManager.customerUpdaters.updateCustomerContactNumber(CustomerName: customerName!, CustomerNumber: contactNumber!, ContactNumber: newContactNumber!)
        
        case "3":
            print("Enter the New Purchase Date(yyyy-mm-dd) : ")
            let newPurchaseDate = readLine()
            
            guard let date = newPurchaseDate,date.count != 0 && date.count == 10 else{
                print("Empty or Non Formatted Date passed during updation.")
                return
            }
            
            do{
                try Validator.isDateValid("2023-05-04")
            }
            catch Validator.Date.UnformattedDate{
                print("The entered date is Unformatted.")
            }
            catch Validator.Date.IllegalMonth{
                print("Entered Month value is out of bounds.")
            }
            catch Validator.Date.IllegalDate{
                print("Entered Date value is out of bounds.")
            }
            catch Validator.Date.AlreadyExpired{
                print("Entered Date is already Expired.")
            }
            catch{
                print("Unknown error caught : ",error)
            }
            
            CustomerManager.customerUpdaters.updatePurchaseDate(CustomerName: customerName!, CustomerNumber: contactNumber!, Date: newPurchaseDate!)
        
        default:
            print("Please enter a valid choice.")
        }
    }
    
    func displayCustomer(){
        print("1 -> To Display all Customer Detials\n"
              + "2 -> To Display Customer Detials using Name and Number\n"
              + "3 -> To Display Customer Details using Name")
        let choice = readLine()
        
        switch(choice){
        case "1":
            CustomerManager.customerDisplayers.displayAllCustomerDetails()
        case "2":
            print("Enter the Name of the Customer : ")
            let customerName = readLine()
            
            guard let name = customerName,name.count != 0 else{
                print("Empty value for Name passed during displaying.")
                return
            }
            
            print("Enter the Number of the Customer : ")
            let customerNumber = readLine()
            
            guard let number = customerNumber,number.count != 0 && number.count == 10 else{
                print("Empty or Improper number passed during displaying.")
                return
            }
            
            CustomerManager.customerDisplayers.displayCustomerDetail(customerName!, customerNumber!)
        case "3":
            print("Enter the Name of the Customer : ")
            let customerName = readLine()
            
            guard let name = customerName,name.count != 0 else{
                print("Empty value for Name passed during displaying.")
                return
            }
            
            CustomerManager.customerDisplayers.displayCustomerDetail(customerName!)
        default:
            print("Please enter a valid choice.")
        }
    }
    
    func removeCustomer(){
        print("Enter the Name of the Customer to remove : ")
        let customerName = readLine()
        
        guard let name = customerName,name.count != 0 else{
            print("Empty value for Name passed during displaying.")
            return
        }
        
        print("Enter the Number of the Customer to remove : ")
        let customerNumber = readLine()
        
        guard let number = customerNumber,number.count != 0 && number.count == 10 else{
            print("Empty or Improper number passed during displaying.")
            return
        }
        
        CustomerManager.customerRemovers.removeCustomer(customerName!, customerNumber!)
    }
}
