//
//  CustomerAdders.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class CustomerAdderUtil {
//    private static var customerEntity: CustomerEntity = CustomerEntity()
//    static var storeState: Storage?
//
//    func setAdminObject(_ customer: CustomerEntity){
//        CustomerAdders.customerEntity = customer
//    }
//
//    func setStorageState(_ storage: Storage){
//        CustomerAdders.storeState = storage
//    }
    
    func addCustomer(){
        print("Enter the Name of the Customer : ")
        let name = readLine()
        
        guard let customerName = name,customerName.count != 0 else {
            print("Empty value passed to customer name during record addition.")
            return
        }
        
        print("Enter the Contact number of the Customer : ")
        let phoneNumber = readLine()
        
        guard let phone = phoneNumber,phone.count != 0 && phone.count == 10 else {
            print("Empty value or Excess value entered to Contact Number during record addition.")
            return
        }
        
        let isNumberValid: Bool = Validator.isMobileNumberValid(phone)
        
        if(!isNumberValid){
            print("The entered Contact number is Invalid.")
            return
        }
        
        print("Enter the Purchase Date(yyyy-mm-dd) : ")
        let purchseDate = readLine()
        
        guard let date = purchseDate,date.count != 0 && date.count == 10 else{
            print("Emtpy date or non formated date passed during addition.")
            return
        }
        
        let customer = Customer(customerName: customerName, contactNumber: phone, purchaseDate: date)
        Storage.sharedInstance.addCustomer(customer)
        
//        CustomerAdders.customerEntity.setCustomerName(customerName!)
//        CustomerAdders.customerEntity.setContactNumber(phoneNumber!)
//        CustomerAdders.customerEntity.setPurchaseDate(purchseDate!)
        
//        To add Customer data to customer Storage.
//        CustomerAdders.storeState?.addCustomer(CustomerAdders.customerEntity)
    }
}
