//
//  UserEntity.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class Customer{
    private var customerName: String
    private var contactNumber: String
    private var purchaseDate: String
    private var userDescription: String{
        return "[Customer Name = \(customerName),\n Contact Number = \(contactNumber),\n Purchase Date = \(purchaseDate)]"
    }
    
    init(customerName: String, contactNumber: String, purchaseDate: String){
//        self.init()
        self.customerName = customerName
        self.contactNumber = contactNumber
        self.purchaseDate = purchaseDate
    }
    
    func getCustomerName()->String{
        return customerName
    }
    
    func setCustomerName(_ newCustomerName: String){
        customerName = newCustomerName
    }
    
    func getContactNumber()->String{
        return contactNumber
    }
    
    func setContactNumber(_ newContactNumber: String){
        contactNumber = newContactNumber
    }
    
    func getPurchaseDate()->String{
        return purchaseDate
    }
    
    func setPurchaseDate(_ newPurchaseDate: String){
        purchaseDate = newPurchaseDate
    }
    
    func showEntityDescription(){
        print(userDescription)
    }
}
